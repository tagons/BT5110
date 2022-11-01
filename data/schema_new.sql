CREATE TABLE IF NOT EXISTS factory (
	factory_name VARCHAR(50) NOT NULL PRIMARY KEY,
	address VARCHAR(50) NOT NULL,
	contact VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS buyer (
	buyer_id VARCHAR(50) NOT NULL PRIMARY KEY,
	buyer_name VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	contact VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS transportation (
	trans_mode VARCHAR(50) NOT NULL PRIMARY KEY,
	unit_cost INT NOT NULL,
	capacity INT NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
	product_name VARCHAR(50) NOT NULL PRIMARY KEY,
	quantity INT NOT NULL,
	manufacture_date DATE NOT NULL,
	price DECIMAL(3,1) NOT NULL
);

CREATE TABLE IF NOT EXISTS order_info (
	order_id VARCHAR(40) NOT NULL PRIMARY KEY,
	factory_name VARCHAR(50) NOT NULL,
	buyer_id VARCHAR(50) NOT NULL, 
	product_name VARCHAR(50) NOT NULL,
	trans_mode VARCHAR(50) NOT NULL,
	FOREIGN KEY (factory_name) REFERENCES factory(factory_name),
	FOREIGN KEY (buyer_id) REFERENCES buyer(buyer_id),
	FOREIGN KEY (product_name) REFERENCES product(product_name),
	FOREIGN KEY (trans_mode) REFERENCES transportation(trans_mode),
	quantity INT NOT NULL,
	order_time TIMESTAMP NOT NULL
);