from sqlalchemy import create_engine
from sqlalchemy.sql import text
import os


class Models:
    def __init__(self):
        self.engine = create_engine(os.environ.get(
            'DB_URL', 'postgresql://postgres:postgre@localhost:3307/bt5110'))

    def executeRawSql(self, statement, params={}):
        out = None
        with self.engine.connect() as con:
            out = con.execute(text(statement), params)
        return out

    def addProfessor(self, value):
        return self.executeRawSql("""INSERT INTO professor (email, password) VALUES(:email, :password);""", value)

    def addBook(self, value):
        # value has the form { "isbn": 2, "title": "The Silmarillion", "author": "Tolkien" }
        return self.executeRawSql("""INSERT INTO book(isbn, title, author) VALUES(:isbn, :title, :author);""", value)

    def updateAssignment(self, value):
        return self.executeRawSql("""UPDATE assignment SET email=:email WHERE isbn=:isbn;""", value)

    def addAssignment(self, value):
        return self.executeRawSql("""INSERT INTO assignment(email, isbn) VALUES(:email, :isbn);""", value)

    def getAllAssignments(self):
        return self.executeRawSql("SELECT * FROM assignment;").mappings().all()

    def deleteAssignment(self, value):
        return self.executeRawSql("DELETE FROM assignment where email=:email and isbn=:isbn;", value)

    def getAssignment(self, value):
        values = self.executeRawSql(
            """SELECT * FROM assignment WHERE email=:email and isbn=:isbn;""", value).mappings().all()
        if len(values) == 0:
            raise Exception("Book {} has not been assignment by {}".format(
                value["isbn"], value["email"]))
        return values[0]

    def getAllBooks(self):
        return self.executeRawSql("SELECT * FROM book;").mappings().all()

    def getAllUsers(self):
        return self.executeRawSql("SELECT * FROM student;").mappings().all()

    def getBooksAndAssignments(self):
        return self.executeRawSql("SELECT book.isbn, email, title, author FROM book LEFT JOIN assignment ON book.isbn = assignment.isbn;").mappings().all()

    def getProfessorByEmail(self, email):
        values = self.executeRawSql(
            """SELECT * FROM professor WHERE email=:email;""", {"email": email}).mappings().all()
        if len(values) == 0:
            raise Exception("Professor {} does not exist".format(email))
        return values[0]

    def getStudentByEmail(self, email):
        values = self.executeRawSql(
            """SELECT * FROM student WHERE email=:email;""", {"email": email}).mappings().all()
        if len(values) == 0:
            raise Exception("Student {} does not exist".format(email))
        return values[0]

    def getBuyers(self):
        values = self.executeRawSql("""SELECT * FROM buyer""").mappings().all()
        return values

# def getOrders(self, value):
    #     values = self.executeRawSql("""SELECT * FROM order_info ORDER BY order_time DESC LIMIT :page,:size""",
    #                                 value).mappings().all()
    #     return values

    def getOrders(self, value):
        values = self.executeRawSql("""SELECT * FROM order_info ORDER BY order_time DESC LIMIT :size offset :page""",
                                    value).mappings().all()
        return values

    def getFactorys(self):
        values = self.executeRawSql(
            """SELECT * FROM factory""").mappings().all()
        return values

    def getProduct(self):
        values = self.executeRawSql(
            """SELECT * FROM product""").mappings().all()
        return values

    def getTransportation(self):
        values = self.executeRawSql(
            """SELECT * FROM transportation""").mappings().all()
        return values

    def addOrder(self, value):
        return self.executeRawSql(
            """
            INSERT INTO order_info(order_id,factory_name, buyer_id, product_name, trans_mode, quantity,order_time) 
            VALUES(:order_id,:factory_name, :buyer_id, :product_name, :trans_mode, :quantity,:order_time);
            """,
            value)

    def rollup_func(self):
        return self.executeRawSql(
            """
            SELECT SUM(quantity) as sum,product_name,buyer_id
            FROM order_info 
            GROUP BY ROLLUP(product_name, buyer_id);
            """
        )

    def cube_func(self):
        return self.executeRawSql(
            """
            SELECT SUM(quantity),product_name,buyer_id
            FROM order_info 
            GROUP BY CUBE(product_name, buyer_id);
            """
        )

    def rollup_at_product_name(self):
        return self.executeRawSql(
            """
            SELECT product_name,SUM(quantity)
            FROM order_info 
            GROUP BY product_name;
            """
        )

    def rollup_at_trans_mode(self):
        return self.executeRawSql(
            """
            SELECT trans_mode, SUM(quantity)
            FROM order_info 
            GROUP BY trans_mode;
            """
        )

    def rollup_at_buyer_id(self):
        return self.executeRawSql(
            """
            SELECT buyer_id, SUM(quantity)
            FROM order_info 
            GROUP BY (buyer_id);
            """
        )

    def rollup_at_factory_name(self):
        return self.executeRawSql(
            """
            SELECT factory_name, SUM(quantity)
            FROM order_info 
            GROUP BY (factory_name);
            """
        )

    def rollup_at_order_time(self):
        return self.executeRawSql(
            """
            SELECT order_time, SUM(quantity)
            FROM order_info 
            GROUP BY (product_name);
            """
        )

    def getProductByProductName(self, product_name):
        values = self.executeRawSql("""SELECT * FROM product where product_name = :product_name""",
                                    {"product_name": product_name}).mappings().first()
        return values

    def deleteOrderById(self, order_id):
        return self.executeRawSql("DELETE FROM order_info where order_id=:order_id;", {"order_id": order_id})

    def updateOrder(self, value):
        return self.executeRawSql(
            """UPDATE order_info SET 
            factory_name = :factory_name, buyer_id =:buyer_id, product_name = :product_name, trans_mode = :trans_mode, 
            quantity = :quantity WHERE order_id = :order_id""",
            value)

    def createModels(self):
        self.executeRawSql(
            """CREATE TABLE IF NOT EXISTS student (
            email TEXT PRIMARY KEY
        );
        """)

        self.executeRawSql(
            """CREATE TABLE IF NOT EXISTS professor (
            email TEXT PRIMARY KEY,
            password TEXT NOT NULL
        );
        """)

        self.executeRawSql(
            """CREATE TABLE IF NOT EXISTS book (
                isbn TEXT PRIMARY KEY,
                title TEXT NOT NULL,
                author TEXT NOT NULL
            );
            """)

        self.executeRawSql(
            """CREATE TABLE IF NOT EXISTS assignment (
                email TEXT REFERENCES student(email),
                isbn TEXT REFERENCES book(isbn),
                PRIMARY KEY (isbn, email)
            );
            """)

# data = ( { "id": 1, "title": "The Hobbit", "primary_author": "Tolkien" },
    #              { "id": 2, "title": "The Silmarillion", "primary_author": "Tolkien" },
    #     )

    # statement = text("""INSERT INTO book(id, title, primary_author) VALUES(:id, :title, :primary_author)""")
