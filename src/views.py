import datetime
import random

from flask import request, session, redirect, url_for, render_template, flash, jsonify

from . models import Models
from . forms import AddReaderForm, SignUpForm, SignInForm

from src import app

models = Models()

@app.route('/')
def index():
    return render_template('index.html')


@app.route('/books')
def show_books():
    try:
        if session['user_available']:
            booksAndAssignments = models.getBooksAndAssignments()
            return render_template('books.html', booksAndAssignments=booksAndAssignments)
        flash('User is not Authenticated')
        return redirect(url_for('index'))
    except Exception as e:
        flash(str(e))


@app.route('/add', methods=['GET', 'POST'])
def add_reader():
    try:
        if session['user_available']:
            reader = AddReaderForm(request.form)
            if request.method == 'POST':
                models.addAssignment({"email": reader.email.data, "isbn": reader.isbn.data})
                return redirect(url_for('show_books'))
            return render_template('add.html', reader=reader)
    except Exception as e:
        flash(str(e))
    flash('User is not Authenticated')
    return redirect(url_for('index'))


@app.route('/delete/<email>/<isbn>', methods=('GET', 'POST'))
def delete_book(isbn, email):
    try:
        models.deleteAssignment({"email": email, "isbn": isbn})
        return redirect(url_for('show_books'))
    except Exception as e:
        flash(str(e))
        return redirect(url_for('index'))


@app.route('/update/<email>/<isbn>', methods=('GET', 'POST'))
def update_book(isbn, email):
    try:
        br = models.getAssignment({"email": email, "isbn": isbn})
        reader = AddReaderForm(request.form, obj=br)
        if request.method == 'POST':
            models.updateAssignment({"email": reader.email.data, "isbn": reader.isbn.data})
            return redirect(url_for('show_books'))
        return render_template('update.html', reader=reader)
    except Exception as e:
        flash(str(e))
        return redirect(url_for('index'))


@app.route('/signup', methods=['GET', 'POST'])
def signup():
    try:
        signupform = SignUpForm(request.form)
        if request.method == 'POST':
            models.addProfessor({"email": signupform.email.data, "password": signupform.password.data})
            return redirect(url_for('signin'))
        return render_template('signup.html', signupform=signupform)
    except Exception as e:
        flash(str(e))
        return redirect(url_for('index'))


@app.route('/signin', methods=['GET', 'POST'])
def signin():
    try:
        signinform = SignInForm(request.form)
        if request.method == 'POST':
            em = signinform.email.data
            log = models.getProfessorByEmail(em)
            if log.password == signinform.password.data:
                session['current_user'] = em
                session['user_available'] = True
                return redirect(url_for('show_books'))
            else:
                flash('Cannot sign in')
        return render_template('signin.html', signinform=signinform)
    except Exception as e:
        flash(str(e))
        return redirect(url_for('index'))


@app.route('/about_user')
def about_user():
    try:
        if session['user_available']:
            user = models.getProfessorByEmail(session['current_user'])
            return render_template('about_user.html', user=user)
        flash('You are not a Authenticated User')
        return redirect(url_for('index'))
    except Exception as e:
        flash(str(e))
        return redirect(url_for('index'))


@app.route('/logout')
def logout():
    try:
        session.clear()
        session['user_available'] = False
        return redirect(url_for('index'))
    except Exception as e:
        flash(str(e))
        return redirect(url_for('index'))

if __name__ == '__main__':
    app.run()


@app.route('/order', methods=['POST', 'GET'])
def order():
    page = (int(request.args.get("page", 1)) - 1) * 10
    size = 10
    buyers = models.getBuyers()
    factors = models.getFactorys()
    products = models.getProduct()
    transportations = models.getTransportation()

    value = {
        'page': page,
        'size': size
    }
    orders = models.getOrders(value)
    return render_template(
        'order.html', buyers=buyers, orders=orders, factors=factors, products=products, transportations=transportations
    )


@app.route('/add_order/<factory_name>/<buyer_id>/<product_name>/<trans_mode>/<quantity>', methods=['POST'])
def add_order(factory_name, buyer_id, product_name, trans_mode, quantity):
    order_id = ""
    for i in range(8):
        order_id += str(random.randint(0, 9))
    values = ({
        "order_id": order_id,
        "factory_name": factory_name,
        "buyer_id": buyer_id,
        "product_name": product_name,
        "trans_mode": trans_mode,
        "quantity": quantity,
        "order_time": datetime.datetime.now()
    })

    product = models.getProductByProductName(product_name)
    try:
        if int(product['quantity']) >= int(quantity):
            models.addOrder(values)
            return jsonify("Add success")
        else:
            return jsonify("Insufficient inventory")
    except:
        return jsonify("Quantity type must be Int")


@app.route('/delete_order/<order_id>', methods=['POST'])
def delete_order(order_id):
    models.deleteOrderById(order_id)
    return jsonify("Delete success")


@app.route('/update_order/<order_id>/<factory_name>/<buyer_id>/<product_name>/<trans_mode>/<quantity>',
           methods=['POST'])
def update_order(order_id, factory_name, buyer_id, product_name, trans_mode, quantity):
    values = ({
        "order_id": order_id,
        "factory_name": factory_name,
        "buyer_id": buyer_id,
        "product_name": product_name,
        "trans_mode": trans_mode,
        "quantity": quantity
    })
    product = models.getProductByProductName(product_name)
    try:
        if int(product['quantity']) >= int(quantity):
            models.updateOrder(values)
            return jsonify("Modify success")
        else:
            return jsonify("Insufficient inventory")
    except:
        return jsonify("Quantity type must be Int")


if __name__ == '__main__':
    app.run()