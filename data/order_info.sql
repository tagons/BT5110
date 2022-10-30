create table order_info (
	order_ID VARCHAR(50),
	factory_name VARCHAR(50),
	buyer_ID VARCHAR(50),
	product_name VARCHAR(50),
	raw_name VARCHAR(50),
	trans_mode VARCHAR(50),
	quantity INT,
	order_time DATE
);
insert into order_info (order_ID, factory_name, buyer_ID, product_name, raw_name, trans_mode, quantity, order_time) values ('1', 'McGlynn, Mraz and Hermann', '82-169-2657', 'Chocolate_Vanilla', 'Vanilla', 'Trunk', 30, '2022-09-28 19:14:27');
insert into order_info (order_ID, factory_name, buyer_ID, product_name, raw_name, trans_mode, quantity, order_time) values ('2', 'Kessler-Hackett', '84-780-6897', 'Chocolate_White', 'Butter', 'Ship', 50, '2022-10-23 13:05:10');
