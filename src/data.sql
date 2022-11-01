insert into student (email) values ('kellcock0@trellian.com');
insert into student (email) values ('eburchett1@mozilla.com');
insert into student (email) values ('kmathieu2@miibeian.gov.cn');
insert into student (email) values ('aoven3@163.com');
insert into student (email) values ('kblankau4@indiegogo.com');
insert into student (email) values ('asandyfirth5@livejournal.com');
insert into student (email) values ('fshirer6@state.tx.us');
insert into student (email) values ('kshalloo7@usda.gov');
insert into student (email) values ('maustins8@wikimedia.org');
insert into student (email) values ('vmacilraith9@rediff.com');

insert into book (isbn, title, author) values ('718229515-6', 'Riverworld', 'Danie Osmond');
insert into book (isbn, title, author) values ('994203207-X', 'NATO''s Secret Armies (Gladio: L''esercito segreto della Nato)', 'Shellie Snazle');
insert into book (isbn, title, author) values ('597971252-6', 'Pretty/Handsome', 'Evyn Thirlwell');
insert into book (isbn, title, author) values ('081175910-5', 'Lake City', 'Wolf Nyssen');
insert into book (isbn, title, author) values ('276030421-3', 'Calendar Girl', 'Hermann Shegog');
insert into book (isbn, title, author) values ('066093023-4', 'Sam Peckinpah''s West: Legacy of a Hollywood Renegade', 'Lionel Cansdall');
insert into book (isbn, title, author) values ('166106603-8', 'Charlie''s Country', 'Henrie Heinzler');
insert into book (isbn, title, author) values ('032728936-8', 'Goldene Zeiten', 'Cortney Wennam');
insert into book (isbn, title, author) values ('693974864-4', 'Kummelin jackpot', 'Rafaelia Bollini');
insert into book (isbn, title, author) values ('823819572-1', 'You Can Count on Me', 'Reube Heyns');

delete from assignment;
insert into assignment (isbn, email) (select isbn, email from student, book where random() < 0.1);

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


insert into buyer (buyer_ID, buyer_name, address, contact) values ('88-043-5868', 'Demizz', '5 Straubel Circle', '341-223-7051');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('97-594-3740', 'Brainsphere', '08374 Homewood Alley', '441-135-1633');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('54-411-1467', 'Skimia', '019 Nobel Crossing', '950-275-0067');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('77-639-8358', 'Devpoint', '419 Swallow Hill', '992-576-7488');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('10-491-2446', 'Avavee', '44 Maple Wood Court', '682-357-2926');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('07-455-6634', 'Twitterworks', '53 Stuart Road', '777-970-6256');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('59-044-7580', 'Buzzshare', '69074 Monument Court', '841-367-0213');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('30-000-1093', 'Nlounge', '1 Meadow Valley Hill', '336-478-2106');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('57-347-6202', 'Riffpedia', '821 Upham Center', '352-605-0334');
insert into buyer (buyer_ID, buyer_name, address, contact) values ('05-531-1158', 'Yakijo', '8 Manley Pass', '426-423-8331');


insert into factory (factory_name, address, contact) values ('Douglas, Hoppe and Stark', '5772 Warner Point', '109-844-1431');
insert into factory (factory_name, address, contact) values ('Glover LLC', '1079 Dorton Circle', '674-330-6666');
insert into factory (factory_name, address, contact) values ('Kling Inc', '497 Waywood Terrace', '335-135-8280');
insert into factory (factory_name, address, contact) values ('Greenfelder LLC', '182 Oak Valley Lane', '665-862-6972');
insert into factory (factory_name, address, contact) values ('Rippin, Strosin and Champlin', '428 Iowa Park', '302-757-3270');
insert into factory (factory_name, address, contact) values ('Luettgen, Cremin and Bahringer', '6140 Jenna Road', '468-115-3210');
insert into factory (factory_name, address, contact) values ('Dibbert, Mitchell and Dooley', '50224 Kenwood Terrace', '184-908-5354');
insert into factory (factory_name, address, contact) values ('Weissnat, Bernhard and Kuhlman', '5 Kipling Circle', '501-916-5380');
insert into factory (factory_name, address, contact) values ('Kuhic-Ullrich', '1548 Warner Alley', '660-799-8365');
insert into factory (factory_name, address, contact) values ('Howell Group', '75 Independence Hill', '136-167-3104');


insert into transportation (trans_mode, unit_cost, capacity) values ('Trunk', 20, 20);
insert into transportation (trans_mode, unit_cost, capacity) values ('Train', 5, 500);
insert into transportation (trans_mode, unit_cost, capacity) values ('Plane', 100, 3);
insert into transportation (trans_mode, unit_cost, capacity) values ('Ship', 1, 2000);


insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Vanilla', 1000, '2022-10-10 08:41:07', 5.3);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Almond', 500, '2022-08-07 06:02:48', 6.2);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Strawberry', 1000, '2021-07-11 00:38:10', 6.1);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Cinnamon', 800, '2021-05-08 04:14:29', 5.8);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Cake', 750, '2022-07-25 00:11:16', 15.8);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Milk', 600, '2022-06-04 11:50:12', 3.2);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Spread', 300, '2022-10-15 15:27:55', 4.5);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_Dark', 1900, '2022-08-19 14:26:16', 5.2);
insert into product (product_name, quantity, manufacture_date, price) values ('Chocolate_White', 300, '2022-10-14 15:30:39', 4.9);


/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DNH-1022-5287-3W', 'Kling Inc',
    '88-043-5868', 'Chocolate_Cake',
    'Train', 119, '2022-02-20 11:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EEA-9680-9649-FB', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Vanilla',
    'Train', 64, '2022-10-03 19:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CIN-1280-5728-3I', 'Weissnat, Bernhard and Kuhlman',
    '59-044-7580', 'Chocolate_White',
    'Trunk', 116, '2021-10-09 05:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DUW-2666-2922-LC', 'Kling Inc',
    '54-411-1467', 'Chocolate_Strawberry',
    'Plane', 69, '2022-10-25 21:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZCU-8677-0846-T6', 'Weissnat, Bernhard and Kuhlman',
    '57-347-6202', 'Chocolate_Cake',
    'Train', 26, '2022-06-26 10:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UND-9699-7074-BN', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_Milk',
    'Ship', 53, '2022-05-21 15:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FMB-5712-6202-YE', 'Howell Group',
    '97-594-3740', 'Chocolate_Spread',
    'Plane', 16, '2022-04-21 06:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LSL-0074-1377-ZT', 'Rippin, Strosin and Champlin',
    '54-411-1467', 'Chocolate_Spread',
    'Train', 130, '2022-09-26 20:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NZG-8981-1987-3W', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_Dark',
    'Train', 69, '2022-07-24 11:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GVP-5930-3746-Y2', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Dark',
    'Plane', 129, '2022-03-01 13:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TDQ-3448-4122-PI', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_White',
    'Plane', 152, '2022-02-09 09:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LTG-4974-7105-NF', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Train', 133, '2022-08-07 14:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ARL-3887-6959-2L', 'Rippin, Strosin and Champlin',
    '88-043-5868', 'Chocolate_Vanilla',
    'Ship', 62, '2022-01-05 13:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MCN-9384-5314-PP', 'Glover LLC',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 30, '2021-11-03 13:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QQI-9399-3795-7I', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_Cinnamon',
    'Train', 43, '2021-11-03 17:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YGY-8104-2196-QX', 'Weissnat, Bernhard and Kuhlman',
    '59-044-7580', 'Chocolate_Dark',
    'Ship', 197, '2022-07-25 07:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BMF-5475-1358-LH', 'Greenfelder LLC',
    '77-639-8358', 'Chocolate_White',
    'Ship', 164, '2022-09-18 20:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RUG-3946-1764-7W', 'Howell Group',
    '07-455-6634', 'Chocolate_Strawberry',
    'Plane', 9, '2022-02-21 18:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KBD-2391-7620-VP', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_Spread',
    'Plane', 129, '2022-04-18 01:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WYB-4218-4832-YM', 'Glover LLC',
    '97-594-3740', 'Chocolate_Milk',
    'Ship', 13, '2021-11-17 13:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GYE-3440-2241-K1', 'Dibbert, Mitchell and Dooley',
    '88-043-5868', 'Chocolate_White',
    'Plane', 88, '2021-11-06 08:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'URL-6049-5922-D1', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_Cake',
    'Ship', 54, '2022-01-21 05:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HKR-0937-8075-YE', 'Howell Group',
    '07-455-6634', 'Chocolate_Milk',
    'Train', 48, '2021-12-18 09:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EWZ-0193-6729-E5', 'Dibbert, Mitchell and Dooley',
    '59-044-7580', 'Chocolate_Milk',
    'Ship', 77, '2022-07-26 09:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JJJ-4608-3073-EV', 'Dibbert, Mitchell and Dooley',
    '97-594-3740', 'Chocolate_White',
    'Ship', 170, '2022-02-13 08:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TUV-1988-0615-LD', 'Howell Group',
    '54-411-1467', 'Chocolate_Strawberry',
    'Plane', 42, '2022-03-03 01:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YKF-8599-2997-12', 'Howell Group',
    '07-455-6634', 'Chocolate_Spread',
    'Ship', 45, '2022-08-09 20:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'APA-1665-6278-U2', 'Glover LLC',
    '07-455-6634', 'Chocolate_Vanilla',
    'Train', 103, '2022-02-09 14:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RGB-8289-0738-GH', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_White',
    'Plane', 94, '2022-03-29 16:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NQH-3020-0069-VG', 'Howell Group',
    '88-043-5868', 'Chocolate_White',
    'Plane', 137, '2022-07-06 03:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ARJ-9338-3808-V9', 'Luettgen, Cremin and Bahringer',
    '59-044-7580', 'Chocolate_Spread',
    'Trunk', 136, '2021-10-19 23:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YRW-2960-1249-JS', 'Howell Group',
    '88-043-5868', 'Chocolate_White',
    'Train', 8, '2021-11-02 09:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PSU-9113-4590-VJ', 'Rippin, Strosin and Champlin',
    '97-594-3740', 'Chocolate_Cake',
    'Train', 198, '2021-11-24 22:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YWZ-3998-8133-7L', 'Kling Inc',
    '10-491-2446', 'Chocolate_Almond',
    'Ship', 122, '2022-09-19 04:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KFH-8449-2078-X6', 'Greenfelder LLC',
    '07-455-6634', 'Chocolate_Spread',
    'Trunk', 76, '2021-12-07 22:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CVF-5751-6618-NK', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_Milk',
    'Trunk', 19, '2021-12-22 23:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ACR-6559-8891-GU', 'Glover LLC',
    '10-491-2446', 'Chocolate_Strawberry',
    'Trunk', 52, '2022-03-04 00:52:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SRF-5267-7213-IG', 'Glover LLC',
    '97-594-3740', 'Chocolate_White',
    'Ship', 153, '2022-10-09 16:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NBV-5264-1862-PM', 'Howell Group',
    '54-411-1467', 'Chocolate_White',
    'Trunk', 6, '2022-01-13 12:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZQM-7604-1690-C9', 'Howell Group',
    '59-044-7580', 'Chocolate_Spread',
    'Plane', 12, '2021-10-13 19:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XIC-9262-2166-7T', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_Cake',
    'Train', 147, '2021-10-27 19:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VZN-7388-8839-C3', 'Howell Group',
    '57-347-6202', 'Chocolate_Spread',
    'Ship', 116, '2022-03-26 09:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WTD-6673-7856-JR', 'Glover LLC',
    '30-000-1093', 'Chocolate_Almond',
    'Ship', 64, '2022-07-02 16:22:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KQS-1383-4751-A7', 'Kling Inc',
    '97-594-3740', 'Chocolate_Dark',
    'Plane', 151, '2022-05-01 15:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IFZ-2135-3065-YS', 'Glover LLC',
    '57-347-6202', 'Chocolate_Vanilla',
    'Train', 10, '2022-06-06 12:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DZQ-4284-8802-89', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Spread',
    'Train', 160, '2022-09-21 19:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VKT-9035-5027-NI', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Ship', 86, '2021-12-23 07:52:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZMS-2608-5488-DF', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Cake',
    'Train', 73, '2021-10-04 22:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JIA-7525-3620-E4', 'Howell Group',
    '59-044-7580', 'Chocolate_Vanilla',
    'Plane', 183, '2022-08-24 09:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KZO-3583-2881-S6', 'Weissnat, Bernhard and Kuhlman',
    '88-043-5868', 'Chocolate_Almond',
    'Trunk', 45, '2022-07-23 18:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ACY-6100-1762-YG', 'Howell Group',
    '05-531-1158', 'Chocolate_White',
    'Train', 21, '2022-06-25 11:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BDF-6366-7556-0N', 'Kling Inc',
    '77-639-8358', 'Chocolate_Cake',
    'Plane', 158, '2021-11-19 20:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FLA-8288-6754-U8', 'Douglas, Hoppe and Stark',
    '88-043-5868', 'Chocolate_Milk',
    'Ship', 8, '2022-09-10 04:22:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WFN-5322-8230-LQ', 'Luettgen, Cremin and Bahringer',
    '54-411-1467', 'Chocolate_Milk',
    'Ship', 106, '2022-10-12 20:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AUU-1606-4072-AX', 'Dibbert, Mitchell and Dooley',
    '05-531-1158', 'Chocolate_Cinnamon',
    'Ship', 95, '2022-01-16 23:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ODT-8255-5829-QX', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_Dark',
    'Train', 92, '2022-08-13 18:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QAN-1227-7959-2R', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_Strawberry',
    'Trunk', 101, '2022-05-25 04:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TCT-5367-5368-PI', 'Glover LLC',
    '54-411-1467', 'Chocolate_Spread',
    'Plane', 60, '2022-03-04 02:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ORJ-9333-5556-LQ', 'Rippin, Strosin and Champlin',
    '97-594-3740', 'Chocolate_White',
    'Ship', 67, '2021-11-01 00:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FVK-3815-9350-1E', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Cake',
    'Train', 134, '2021-12-25 17:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WTI-6258-9625-F8', 'Kling Inc',
    '77-639-8358', 'Chocolate_Milk',
    'Trunk', 162, '2021-11-09 16:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MQG-5477-3374-HV', 'Howell Group',
    '77-639-8358', 'Chocolate_Vanilla',
    'Plane', 23, '2021-12-15 22:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VCB-7595-4300-IC', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_White',
    'Plane', 172, '2022-08-26 10:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HWJ-4765-1122-3Y', 'Douglas, Hoppe and Stark',
    '59-044-7580', 'Chocolate_Strawberry',
    'Trunk', 93, '2022-05-29 20:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZKM-1592-2371-CQ', 'Howell Group',
    '30-000-1093', 'Chocolate_White',
    'Plane', 4, '2022-03-29 11:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FCS-5594-4866-M8', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Strawberry',
    'Trunk', 122, '2022-02-25 05:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HIE-0281-6504-93', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Strawberry',
    'Ship', 176, '2022-10-25 10:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BKU-8471-9303-0X', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Ship', 165, '2021-11-14 20:40:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MLS-2847-3106-5Y', 'Kling Inc',
    '10-491-2446', 'Chocolate_Cake',
    'Train', 159, '2022-03-10 08:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WTD-3161-9324-0J', 'Dibbert, Mitchell and Dooley',
    '54-411-1467', 'Chocolate_Strawberry',
    'Train', 53, '2022-02-13 20:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TYY-1738-9567-HY', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Spread',
    'Train', 79, '2022-01-25 19:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EBV-0546-2465-4A', 'Howell Group',
    '10-491-2446', 'Chocolate_Cake',
    'Ship', 167, '2022-07-26 12:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VEM-8688-3828-OY', 'Kuhic-Ullrich',
    '07-455-6634', 'Chocolate_White',
    'Plane', 194, '2021-11-27 13:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TKW-8324-4027-8Y', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Milk',
    'Train', 101, '2022-01-03 08:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FSV-3996-8644-G9', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_Almond',
    'Plane', 127, '2022-06-22 09:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YTM-4033-8203-6A', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_Milk',
    'Trunk', 41, '2021-11-10 08:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CES-3213-6223-6Z', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Cinnamon',
    'Ship', 89, '2022-07-16 21:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MTM-3683-4282-TS', 'Glover LLC',
    '88-043-5868', 'Chocolate_Spread',
    'Ship', 188, '2022-08-31 14:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BSM-6960-3013-L7', 'Douglas, Hoppe and Stark',
    '77-639-8358', 'Chocolate_Vanilla',
    'Train', 193, '2022-05-15 04:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XHX-9458-0637-A5', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Spread',
    'Train', 79, '2022-10-17 02:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VTB-7077-4210-32', 'Kuhic-Ullrich',
    '57-347-6202', 'Chocolate_White',
    'Train', 195, '2022-10-12 21:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HUP-4850-8596-VN', 'Dibbert, Mitchell and Dooley',
    '59-044-7580', 'Chocolate_Dark',
    'Trunk', 38, '2022-08-11 15:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UUZ-5870-8070-3G', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Cake',
    'Plane', 97, '2021-10-24 22:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CAU-9673-6027-7S', 'Rippin, Strosin and Champlin',
    '10-491-2446', 'Chocolate_White',
    'Train', 92, '2022-06-28 05:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PVU-0674-7301-F8', 'Luettgen, Cremin and Bahringer',
    '54-411-1467', 'Chocolate_Cake',
    'Trunk', 82, '2022-07-14 19:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AVA-7319-5377-OX', 'Glover LLC',
    '77-639-8358', 'Chocolate_Spread',
    'Train', 103, '2022-03-06 10:58:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IWX-6618-7568-WR', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_Vanilla',
    'Train', 115, '2022-10-20 21:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WST-7713-2738-78', 'Howell Group',
    '57-347-6202', 'Chocolate_Strawberry',
    'Plane', 99, '2022-02-17 22:16:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EKJ-2884-6557-5T', 'Kling Inc',
    '10-491-2446', 'Chocolate_Vanilla',
    'Train', 176, '2022-03-18 15:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XZH-1581-8851-3J', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_Strawberry',
    'Plane', 88, '2022-05-15 19:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WJL-8853-6108-U2', 'Howell Group',
    '57-347-6202', 'Chocolate_Milk',
    'Train', 54, '2022-03-08 22:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DXF-3454-5643-FL', 'Luettgen, Cremin and Bahringer',
    '59-044-7580', 'Chocolate_White',
    'Ship', 150, '2022-06-04 04:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MXI-2688-1549-RM', 'Dibbert, Mitchell and Dooley',
    '10-491-2446', 'Chocolate_Milk',
    'Train', 196, '2022-02-15 03:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UTC-6183-8911-7T', 'Kling Inc',
    '07-455-6634', 'Chocolate_White',
    'Plane', 46, '2022-07-16 17:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OLW-3346-6072-95', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Train', 36, '2022-09-21 04:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NYQ-4431-8026-6D', 'Howell Group',
    '30-000-1093', 'Chocolate_Spread',
    'Ship', 134, '2022-09-30 00:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IXC-4037-2553-LP', 'Glover LLC',
    '88-043-5868', 'Chocolate_Spread',
    'Trunk', 128, '2022-04-21 00:52:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MRB-8993-6114-P9', 'Weissnat, Bernhard and Kuhlman',
    '88-043-5868', 'Chocolate_White',
    'Train', 63, '2021-12-28 08:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MSH-3684-4056-J1', 'Kuhic-Ullrich',
    '97-594-3740', 'Chocolate_Spread',
    'Ship', 198, '2021-11-10 12:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ETL-4366-8429-1H', 'Weissnat, Bernhard and Kuhlman',
    '07-455-6634', 'Chocolate_Milk',
    'Plane', 90, '2021-12-30 19:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DHH-4461-8186-ZS', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Cinnamon',
    'Ship', 173, '2022-05-24 01:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XNS-2509-1556-6N', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Almond',
    'Plane', 5, '2021-10-18 21:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RUN-0844-2181-9B', 'Howell Group',
    '57-347-6202', 'Chocolate_Vanilla',
    'Ship', 139, '2021-10-19 18:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CGF-5185-7326-72', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Vanilla',
    'Ship', 132, '2022-09-16 04:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'STX-0773-6900-4N', 'Douglas, Hoppe and Stark',
    '54-411-1467', 'Chocolate_Vanilla',
    'Plane', 81, '2021-11-04 08:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JFT-0734-8538-XB', 'Rippin, Strosin and Champlin',
    '54-411-1467', 'Chocolate_Dark',
    'Ship', 71, '2022-04-23 11:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RNU-1185-0900-2H', 'Weissnat, Bernhard and Kuhlman',
    '54-411-1467', 'Chocolate_Vanilla',
    'Trunk', 46, '2021-12-18 11:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JGU-0373-6430-7F', 'Glover LLC',
    '05-531-1158', 'Chocolate_Milk',
    'Plane', 182, '2022-08-28 13:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TNS-7877-8800-PL', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_Strawberry',
    'Plane', 134, '2021-12-15 16:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SAH-2025-3145-UJ', 'Douglas, Hoppe and Stark',
    '88-043-5868', 'Chocolate_Vanilla',
    'Ship', 62, '2022-08-26 19:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FHJ-6777-0884-M9', 'Dibbert, Mitchell and Dooley',
    '10-491-2446', 'Chocolate_Milk',
    'Ship', 4, '2021-12-19 01:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JYI-1321-3720-TH', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Cake',
    'Train', 195, '2022-04-02 11:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WWR-0943-4104-UW', 'Greenfelder LLC',
    '07-455-6634', 'Chocolate_Strawberry',
    'Train', 33, '2022-04-22 02:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JXM-2173-8431-RE', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Cake',
    'Plane', 23, '2022-02-05 19:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LDF-5460-7893-IP', 'Howell Group',
    '97-594-3740', 'Chocolate_Cake',
    'Train', 85, '2022-04-26 21:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'COU-0699-2502-JI', 'Kling Inc',
    '05-531-1158', 'Chocolate_Spread',
    'Plane', 159, '2022-05-06 08:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KZP-5711-7480-57', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_Spread',
    'Ship', 18, '2022-07-01 15:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TSR-0954-5409-XA', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Cake',
    'Train', 5, '2022-07-13 04:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZMF-7695-1997-ZW', 'Weissnat, Bernhard and Kuhlman',
    '57-347-6202', 'Chocolate_Dark',
    'Plane', 180, '2022-07-21 04:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ISA-6989-6209-5G', 'Howell Group',
    '97-594-3740', 'Chocolate_Strawberry',
    'Trunk', 18, '2021-11-26 12:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QFY-8454-1161-GP', 'Glover LLC',
    '59-044-7580', 'Chocolate_Milk',
    'Trunk', 175, '2022-10-20 11:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HER-1684-3380-3C', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Vanilla',
    'Train', 95, '2021-12-12 03:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NWS-3426-4539-YR', 'Kling Inc',
    '59-044-7580', 'Chocolate_Milk',
    'Ship', 50, '2021-11-27 14:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RPI-3306-9109-1F', 'Kling Inc',
    '97-594-3740', 'Chocolate_Cake',
    'Trunk', 184, '2022-08-06 17:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AQH-9377-5887-ZY', 'Rippin, Strosin and Champlin',
    '07-455-6634', 'Chocolate_Almond',
    'Ship', 152, '2021-11-23 15:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'URZ-6826-0299-QO', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Spread',
    'Trunk', 136, '2022-03-27 22:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QOH-6187-1288-XO', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Dark',
    'Trunk', 145, '2022-01-09 12:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IXM-0756-2633-SN', 'Weissnat, Bernhard and Kuhlman',
    '07-455-6634', 'Chocolate_Almond',
    'Train', 77, '2022-08-26 18:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YVA-2597-0382-H0', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Almond',
    'Plane', 183, '2022-10-14 22:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RSI-4988-1753-HM', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Milk',
    'Train', 124, '2022-09-25 05:40:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KOI-1853-6828-8M', 'Kling Inc',
    '77-639-8358', 'Chocolate_Vanilla',
    'Ship', 145, '2022-09-11 08:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ANC-7220-2649-I7', 'Weissnat, Bernhard and Kuhlman',
    '07-455-6634', 'Chocolate_Dark',
    'Train', 13, '2022-08-13 09:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GYE-6721-0496-9X', 'Glover LLC',
    '05-531-1158', 'Chocolate_Dark',
    'Trunk', 89, '2022-07-06 00:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QIP-8457-1506-H7', 'Kling Inc',
    '10-491-2446', 'Chocolate_Dark',
    'Train', 73, '2021-12-03 21:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DFK-2284-7808-EH', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Cinnamon',
    'Trunk', 168, '2021-10-21 23:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HDA-2109-4247-8R', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Strawberry',
    'Trunk', 161, '2021-12-26 00:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MRV-4319-6876-Q3', 'Dibbert, Mitchell and Dooley',
    '88-043-5868', 'Chocolate_Spread',
    'Plane', 89, '2022-05-15 21:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NPS-9953-9838-3H', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Dark',
    'Plane', 63, '2022-08-20 14:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PYH-8262-8999-QI', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_Vanilla',
    'Train', 10, '2022-07-10 02:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PIV-7284-5205-RC', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Milk',
    'Trunk', 128, '2022-10-29 03:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JGO-4663-1380-0Y', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Almond',
    'Train', 19, '2022-02-06 17:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SFS-5871-1968-CV', 'Kling Inc',
    '57-347-6202', 'Chocolate_Vanilla',
    'Train', 25, '2022-08-23 07:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YFD-2365-6635-FJ', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_Cake',
    'Plane', 125, '2022-09-20 14:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LFU-4570-1751-4O', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Milk',
    'Trunk', 35, '2021-12-12 05:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RYU-9501-7850-T2', 'Weissnat, Bernhard and Kuhlman',
    '54-411-1467', 'Chocolate_Vanilla',
    'Ship', 95, '2021-12-30 11:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QXW-4769-0431-EC', 'Glover LLC',
    '07-455-6634', 'Chocolate_Milk',
    'Ship', 84, '2021-10-08 12:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WZM-1893-2399-OV', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Strawberry',
    'Train', 135, '2021-12-20 22:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XZO-5223-2370-UC', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Cake',
    'Plane', 15, '2021-12-19 14:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JLY-4959-6317-QB', 'Rippin, Strosin and Champlin',
    '07-455-6634', 'Chocolate_Almond',
    'Ship', 123, '2022-03-17 23:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YED-4371-0800-Z6', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Vanilla',
    'Trunk', 193, '2022-09-24 13:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JCQ-8603-0620-0E', 'Greenfelder LLC',
    '05-531-1158', 'Chocolate_Dark',
    'Trunk', 172, '2021-10-21 09:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WEX-0418-0865-RJ', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Cinnamon',
    'Ship', 68, '2021-12-19 20:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GLF-5099-5845-VB', 'Greenfelder LLC',
    '05-531-1158', 'Chocolate_Cake',
    'Trunk', 36, '2022-08-02 01:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OWV-1752-4910-N3', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_Strawberry',
    'Plane', 193, '2022-03-27 08:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CTM-7593-9836-NO', 'Glover LLC',
    '30-000-1093', 'Chocolate_Almond',
    'Train', 96, '2021-10-02 00:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MIV-6125-1598-Y6', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Plane', 29, '2021-12-18 20:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PGI-2871-5782-G9', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Vanilla',
    'Ship', 122, '2022-04-10 21:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TQV-9498-6547-TM', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_White',
    'Ship', 107, '2022-02-11 19:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LLX-1569-5978-MG', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Dark',
    'Plane', 22, '2022-07-09 01:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SBA-5087-5064-3I', 'Howell Group',
    '59-044-7580', 'Chocolate_Almond',
    'Train', 6, '2022-03-24 20:52:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BBK-3995-2751-RN', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_White',
    'Ship', 40, '2022-03-07 19:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HWL-9685-2681-FO', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Trunk', 141, '2022-10-25 21:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FOT-8309-8454-4R', 'Dibbert, Mitchell and Dooley',
    '59-044-7580', 'Chocolate_Cake',
    'Ship', 63, '2022-03-27 06:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WCN-4636-3127-F5', 'Luettgen, Cremin and Bahringer',
    '57-347-6202', 'Chocolate_Spread',
    'Trunk', 7, '2022-03-06 09:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WZB-1920-0789-83', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_White',
    'Ship', 190, '2022-06-22 10:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IDC-8447-3491-VI', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Milk',
    'Train', 113, '2022-09-22 07:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UHE-7022-6462-XI', 'Glover LLC',
    '10-491-2446', 'Chocolate_Cake',
    'Train', 172, '2022-04-28 11:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IMK-5486-4705-TZ', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Trunk', 50, '2022-06-11 09:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PMZ-7651-8660-Z1', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Almond',
    'Train', 66, '2022-05-28 18:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UPI-9491-8301-O4', 'Douglas, Hoppe and Stark',
    '59-044-7580', 'Chocolate_Spread',
    'Train', 55, '2022-01-16 21:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GXI-5508-7243-RB', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Vanilla',
    'Ship', 183, '2021-10-21 20:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BZM-7586-5884-05', 'Glover LLC',
    '77-639-8358', 'Chocolate_White',
    'Plane', 15, '2022-03-14 21:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LLF-3457-7814-N3', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_White',
    'Plane', 5, '2022-01-03 16:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NRQ-5824-9180-6A', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Cake',
    'Trunk', 178, '2022-07-24 04:40:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZSG-3389-1343-T1', 'Luettgen, Cremin and Bahringer',
    '59-044-7580', 'Chocolate_Spread',
    'Ship', 14, '2022-02-05 18:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BDJ-8655-7735-JH', 'Luettgen, Cremin and Bahringer',
    '88-043-5868', 'Chocolate_White',
    'Plane', 149, '2022-07-21 12:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JQW-4434-1626-WZ', 'Rippin, Strosin and Champlin',
    '57-347-6202', 'Chocolate_Cinnamon',
    'Plane', 70, '2022-06-22 16:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KKD-3000-3738-4L', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Cake',
    'Ship', 29, '2021-12-28 20:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ELL-1242-9609-UD', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_White',
    'Ship', 38, '2021-12-12 23:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RSM-0690-1256-Y0', 'Howell Group',
    '77-639-8358', 'Chocolate_White',
    'Plane', 24, '2022-07-12 23:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JMF-2268-7451-I8', 'Dibbert, Mitchell and Dooley',
    '59-044-7580', 'Chocolate_Milk',
    'Plane', 172, '2021-12-16 09:58:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SSH-9021-8668-RJ', 'Glover LLC',
    '54-411-1467', 'Chocolate_Strawberry',
    'Plane', 4, '2022-01-22 15:22:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZKM-2060-0789-0R', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_White',
    'Ship', 165, '2022-07-09 00:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UOA-5169-7945-U5', 'Weissnat, Bernhard and Kuhlman',
    '59-044-7580', 'Chocolate_Spread',
    'Ship', 29, '2021-12-18 15:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ARJ-4440-3133-SZ', 'Glover LLC',
    '77-639-8358', 'Chocolate_Spread',
    'Plane', 71, '2022-09-04 13:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QQG-5289-8607-LO', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Almond',
    'Train', 70, '2022-03-07 06:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WGI-8398-0818-UP', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Vanilla',
    'Train', 135, '2022-01-14 00:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TYT-4527-1963-HQ', 'Luettgen, Cremin and Bahringer',
    '59-044-7580', 'Chocolate_Cake',
    'Ship', 138, '2021-12-10 16:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EAX-4123-9321-KU', 'Howell Group',
    '57-347-6202', 'Chocolate_Cake',
    'Train', 167, '2021-10-24 05:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'POU-5661-4512-2J', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_White',
    'Ship', 58, '2021-10-17 00:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IWW-6546-9240-SH', 'Glover LLC',
    '07-455-6634', 'Chocolate_Milk',
    'Trunk', 87, '2022-10-06 13:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JGX-1233-1124-Y1', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Train', 175, '2021-10-02 10:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WTD-5855-7847-P7', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Cake',
    'Ship', 148, '2022-03-07 18:16:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GES-6000-5874-QF', 'Glover LLC',
    '59-044-7580', 'Chocolate_Milk',
    'Train', 53, '2022-04-29 08:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MGT-5037-8172-E2', 'Douglas, Hoppe and Stark',
    '30-000-1093', 'Chocolate_Almond',
    'Train', 137, '2022-02-03 01:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DEY-0738-9913-BL', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Cake',
    'Plane', 16, '2021-11-28 12:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FOJ-2806-1381-3C', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 164, '2022-05-10 11:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DVZ-4180-4302-5W', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Vanilla',
    'Trunk', 59, '2021-11-12 04:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CHG-3597-8548-HC', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Cinnamon',
    'Trunk', 168, '2022-07-27 10:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GZZ-4502-8975-MK', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_Dark',
    'Trunk', 5, '2022-06-29 07:22:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QWN-2429-0487-0S', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Spread',
    'Train', 13, '2022-03-23 13:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZJT-5073-7661-59', 'Howell Group',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 128, '2022-02-26 10:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LPI-2845-7881-68', 'Kuhic-Ullrich',
    '05-531-1158', 'Chocolate_Strawberry',
    'Trunk', 76, '2022-09-03 20:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VPE-1869-1439-L6', 'Kuhic-Ullrich',
    '77-639-8358', 'Chocolate_Cake',
    'Ship', 110, '2022-05-10 09:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UPZ-0687-2896-TE', 'Rippin, Strosin and Champlin',
    '54-411-1467', 'Chocolate_Almond',
    'Trunk', 120, '2022-08-29 08:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SYX-5738-1567-VI', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_White',
    'Plane', 195, '2022-02-23 11:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PMN-9339-0651-DI', 'Dibbert, Mitchell and Dooley',
    '05-531-1158', 'Chocolate_Spread',
    'Plane', 125, '2021-11-16 11:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MGW-1831-6039-T6', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Strawberry',
    'Trunk', 31, '2022-08-04 14:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NXC-4855-4594-IM', 'Luettgen, Cremin and Bahringer',
    '05-531-1158', 'Chocolate_Milk',
    'Trunk', 100, '2021-10-04 21:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JDZ-6955-8766-DS', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Dark',
    'Plane', 151, '2021-10-08 03:42:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TDZ-2545-7789-KB', 'Greenfelder LLC',
    '77-639-8358', 'Chocolate_Spread',
    'Trunk', 159, '2021-10-23 00:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LPG-7454-3487-S0', 'Kuhic-Ullrich',
    '57-347-6202', 'Chocolate_White',
    'Trunk', 81, '2022-03-31 14:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MKY-7917-0013-QU', 'Howell Group',
    '57-347-6202', 'Chocolate_Almond',
    'Ship', 194, '2022-08-17 20:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YWO-1671-6045-KU', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_Milk',
    'Trunk', 145, '2022-04-26 10:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OET-8413-3427-CW', 'Kling Inc',
    '30-000-1093', 'Chocolate_Vanilla',
    'Train', 187, '2021-12-04 09:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZNF-8268-4797-UT', 'Howell Group',
    '77-639-8358', 'Chocolate_Cake',
    'Plane', 52, '2022-09-29 01:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GJB-0294-0886-6L', 'Howell Group',
    '59-044-7580', 'Chocolate_Almond',
    'Train', 149, '2022-05-02 01:16:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NZC-8836-1074-DA', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Dark',
    'Trunk', 83, '2022-09-04 11:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PRB-3546-1473-X0', 'Glover LLC',
    '30-000-1093', 'Chocolate_Cinnamon',
    'Ship', 3, '2022-08-12 13:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FEH-7622-1004-4M', 'Luettgen, Cremin and Bahringer',
    '54-411-1467', 'Chocolate_Spread',
    'Ship', 73, '2022-06-28 15:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SYU-6852-2314-86', 'Rippin, Strosin and Champlin',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Train', 95, '2022-01-20 02:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BOE-1726-1396-08', 'Kling Inc',
    '57-347-6202', 'Chocolate_Strawberry',
    'Trunk', 120, '2022-01-09 23:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TOG-1134-1801-2A', 'Douglas, Hoppe and Stark',
    '54-411-1467', 'Chocolate_Vanilla',
    'Trunk', 59, '2022-10-22 21:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'APF-8166-8591-KB', 'Glover LLC',
    '57-347-6202', 'Chocolate_Milk',
    'Trunk', 147, '2022-09-14 11:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZVS-9200-6771-7L', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Cake',
    'Trunk', 132, '2022-06-01 11:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CPT-8748-2914-Y5', 'Weissnat, Bernhard and Kuhlman',
    '77-639-8358', 'Chocolate_Strawberry',
    'Trunk', 101, '2022-09-21 11:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KDI-5346-1025-HB', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Vanilla',
    'Ship', 26, '2022-05-09 23:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MSV-3895-4729-Q4', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_Cinnamon',
    'Trunk', 99, '2022-02-09 14:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WAO-5336-0039-04', 'Greenfelder LLC',
    '07-455-6634', 'Chocolate_Spread',
    'Train', 33, '2022-10-11 16:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZSS-1068-9571-N1', 'Howell Group',
    '10-491-2446', 'Chocolate_Cake',
    'Plane', 137, '2022-08-06 15:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MTB-7923-0529-KQ', 'Howell Group',
    '54-411-1467', 'Chocolate_Spread',
    'Plane', 10, '2022-01-20 23:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AOT-0013-0168-OV', 'Luettgen, Cremin and Bahringer',
    '88-043-5868', 'Chocolate_Almond',
    'Plane', 152, '2022-03-25 11:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TPP-0116-6698-W4', 'Kuhic-Ullrich',
    '30-000-1093', 'Chocolate_Milk',
    'Plane', 159, '2022-10-15 19:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NPC-0330-7898-GB', 'Glover LLC',
    '59-044-7580', 'Chocolate_Cake',
    'Trunk', 82, '2022-07-20 06:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BLG-3984-6765-FQ', 'Dibbert, Mitchell and Dooley',
    '97-594-3740', 'Chocolate_Dark',
    'Trunk', 70, '2022-09-24 23:52:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KYN-8981-2678-TH', 'Howell Group',
    '07-455-6634', 'Chocolate_Spread',
    'Trunk', 122, '2021-12-30 09:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YYJ-3564-7242-M1', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_White',
    'Trunk', 79, '2022-05-24 04:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XMV-4207-3030-15', 'Dibbert, Mitchell and Dooley',
    '05-531-1158', 'Chocolate_Milk',
    'Trunk', 91, '2021-12-12 07:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TUT-3539-9763-NX', 'Douglas, Hoppe and Stark',
    '88-043-5868', 'Chocolate_Cake',
    'Plane', 140, '2022-04-10 13:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MPG-3948-6554-TA', 'Weissnat, Bernhard and Kuhlman',
    '54-411-1467', 'Chocolate_Cake',
    'Ship', 47, '2022-04-01 06:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RAE-9086-7698-WY', 'Kuhic-Ullrich',
    '97-594-3740', 'Chocolate_Cake',
    'Trunk', 178, '2022-06-25 03:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TRN-7973-5188-7R', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Cake',
    'Ship', 44, '2022-10-22 17:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FLG-4310-2359-GV', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Almond',
    'Ship', 3, '2021-12-03 04:22:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TKL-0401-3197-AJ', 'Kuhic-Ullrich',
    '05-531-1158', 'Chocolate_Strawberry',
    'Trunk', 99, '2022-02-25 23:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AMC-7987-5881-PG', 'Glover LLC',
    '54-411-1467', 'Chocolate_Dark',
    'Ship', 89, '2022-06-10 06:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GRM-0098-6152-YL', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Almond',
    'Train', 7, '2022-05-11 20:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AIC-7536-4791-2K', 'Luettgen, Cremin and Bahringer',
    '57-347-6202', 'Chocolate_Almond',
    'Ship', 7, '2021-11-22 04:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YWY-9886-6114-Y8', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Cinnamon',
    'Plane', 151, '2022-07-18 14:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TRJ-2711-9228-PL', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_Cake',
    'Plane', 119, '2021-10-18 23:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WWW-9151-6120-FJ', 'Glover LLC',
    '10-491-2446', 'Chocolate_Dark',
    'Plane', 107, '2022-08-21 23:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AFE-0005-2486-EL', 'Greenfelder LLC',
    '05-531-1158', 'Chocolate_Almond',
    'Train', 43, '2021-12-06 17:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FWF-9570-5234-JT', 'Kling Inc',
    '30-000-1093', 'Chocolate_Almond',
    'Trunk', 41, '2022-05-13 18:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CRE-2107-6363-YR', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_White',
    'Plane', 46, '2022-05-23 17:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HFP-5217-2797-YP', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_Strawberry',
    'Train', 148, '2021-12-21 15:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FOQ-3935-7395-AG', 'Howell Group',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Train', 105, '2022-03-03 08:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AIL-6338-7476-FT', 'Howell Group',
    '30-000-1093', 'Chocolate_Vanilla',
    'Train', 126, '2022-09-15 17:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MWL-6660-8648-T4', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Dark',
    'Ship', 160, '2022-10-29 17:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZRD-8715-1335-MR', 'Kling Inc',
    '54-411-1467', 'Chocolate_Spread',
    'Ship', 134, '2022-10-08 06:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MAH-7389-5090-U8', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Almond',
    'Train', 121, '2022-03-22 21:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XTK-5531-0232-G1', 'Douglas, Hoppe and Stark',
    '77-639-8358', 'Chocolate_Strawberry',
    'Ship', 46, '2021-12-22 12:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LNC-6243-1973-3E', 'Glover LLC',
    '59-044-7580', 'Chocolate_Milk',
    'Plane', 197, '2022-05-26 16:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IQL-6091-3801-XZ', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_Cake',
    'Plane', 156, '2021-12-28 20:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MWU-9601-0132-XJ', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_Strawberry',
    'Plane', 29, '2022-03-03 13:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FYN-1114-1103-BX', 'Glover LLC',
    '54-411-1467', 'Chocolate_Almond',
    'Train', 33, '2022-10-08 02:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NFU-5069-6954-QD', 'Kuhic-Ullrich',
    '10-491-2446', 'Chocolate_Dark',
    'Train', 170, '2022-10-06 20:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KFZ-6602-0354-1K', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Ship', 198, '2022-04-05 01:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ENI-0980-6063-GH', 'Howell Group',
    '10-491-2446', 'Chocolate_Almond',
    'Plane', 76, '2022-03-12 04:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BTB-6705-4769-6E', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_Almond',
    'Trunk', 120, '2022-06-06 14:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TXD-7833-6621-6F', 'Howell Group',
    '10-491-2446', 'Chocolate_Strawberry',
    'Trunk', 117, '2022-10-24 18:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OKC-3384-4381-3I', 'Kling Inc',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Ship', 122, '2022-09-30 13:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WIT-5112-9104-CP', 'Glover LLC',
    '59-044-7580', 'Chocolate_Vanilla',
    'Trunk', 187, '2022-02-21 15:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KHB-2320-9708-3K', 'Howell Group',
    '77-639-8358', 'Chocolate_Strawberry',
    'Ship', 129, '2022-02-21 11:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GBI-5512-5123-ER', 'Howell Group',
    '10-491-2446', 'Chocolate_Milk',
    'Ship', 97, '2022-09-01 04:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UWY-8908-2193-VE', 'Howell Group',
    '30-000-1093', 'Chocolate_Spread',
    'Trunk', 124, '2022-08-01 08:52:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BZH-5973-2353-MF', 'Howell Group',
    '07-455-6634', 'Chocolate_Dark',
    'Plane', 138, '2022-06-17 12:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XPI-3649-1337-ZK', 'Howell Group',
    '07-455-6634', 'Chocolate_White',
    'Train', 90, '2022-04-11 05:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TGA-3503-2893-B6', 'Kling Inc',
    '05-531-1158', 'Chocolate_Almond',
    'Ship', 86, '2022-10-23 00:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MSE-7610-0839-NF', 'Kling Inc',
    '05-531-1158', 'Chocolate_Dark',
    'Train', 106, '2022-08-07 17:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KIU-5142-8994-W7', 'Glover LLC',
    '97-594-3740', 'Chocolate_Vanilla',
    'Ship', 45, '2022-02-10 20:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NLH-3128-0219-BN', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_Strawberry',
    'Ship', 112, '2022-09-04 02:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZEY-1988-5216-WV', 'Kling Inc',
    '88-043-5868', 'Chocolate_Strawberry',
    'Plane', 104, '2022-02-18 11:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MGW-8955-4279-V7', 'Glover LLC',
    '10-491-2446', 'Chocolate_Milk',
    'Train', 146, '2022-06-24 20:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZPI-2015-6288-HX', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Milk',
    'Ship', 16, '2022-01-17 12:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XIJ-4929-3016-NB', 'Howell Group',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 191, '2022-02-25 05:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UVJ-5497-9619-IR', 'Rippin, Strosin and Champlin',
    '07-455-6634', 'Chocolate_Cake',
    'Trunk', 46, '2022-03-04 10:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PKR-9856-7179-YR', 'Kuhic-Ullrich',
    '57-347-6202', 'Chocolate_Cake',
    'Ship', 17, '2022-03-19 23:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VWZ-2065-9092-AD', 'Douglas, Hoppe and Stark',
    '77-639-8358', 'Chocolate_Cake',
    'Trunk', 129, '2022-01-12 09:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WBH-2123-1602-JE', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Vanilla',
    'Train', 72, '2022-02-24 18:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EJY-8783-9961-OD', 'Douglas, Hoppe and Stark',
    '54-411-1467', 'Chocolate_Milk',
    'Train', 79, '2022-03-14 18:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DEH-2597-8142-LG', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Almond',
    'Ship', 120, '2021-12-13 13:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FVC-2185-3538-TH', 'Kling Inc',
    '97-594-3740', 'Chocolate_White',
    'Plane', 63, '2022-01-07 01:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QYT-5904-4729-2U', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_White',
    'Plane', 188, '2022-04-24 22:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BXI-7655-6027-TX', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_White',
    'Train', 112, '2022-09-04 23:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GAT-3032-9257-TX', 'Dibbert, Mitchell and Dooley',
    '10-491-2446', 'Chocolate_Vanilla',
    'Ship', 8, '2021-10-08 16:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TFX-1185-8229-LP', 'Dibbert, Mitchell and Dooley',
    '10-491-2446', 'Chocolate_Cinnamon',
    'Plane', 180, '2022-06-27 02:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XTT-4116-0853-Q3', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Almond',
    'Train', 172, '2021-12-06 06:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UUE-1583-0466-38', 'Douglas, Hoppe and Stark',
    '77-639-8358', 'Chocolate_Cinnamon',
    'Trunk', 37, '2021-10-12 12:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YST-5007-6374-X1', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Spread',
    'Trunk', 7, '2022-03-23 21:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TAZ-0302-7404-1S', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Cake',
    'Ship', 155, '2022-10-09 06:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CAE-2681-8022-T7', 'Howell Group',
    '05-531-1158', 'Chocolate_Dark',
    'Ship', 81, '2022-02-20 09:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HTB-0661-8133-XC', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_Almond',
    'Plane', 3, '2022-07-20 15:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YKQ-9137-1735-ME', 'Dibbert, Mitchell and Dooley',
    '54-411-1467', 'Chocolate_Milk',
    'Train', 36, '2022-05-24 20:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UHT-0433-9291-7A', 'Douglas, Hoppe and Stark',
    '77-639-8358', 'Chocolate_Dark',
    'Plane', 103, '2021-11-22 09:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UUO-5335-1561-06', 'Kuhic-Ullrich',
    '30-000-1093', 'Chocolate_Strawberry',
    'Trunk', 43, '2022-06-22 12:58:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BCA-4801-1617-5U', 'Howell Group',
    '88-043-5868', 'Chocolate_Cake',
    'Train', 105, '2022-03-27 05:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QDB-8663-1050-19', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Strawberry',
    'Ship', 52, '2022-03-24 07:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SWZ-3177-4477-0U', 'Weissnat, Bernhard and Kuhlman',
    '59-044-7580', 'Chocolate_Vanilla',
    'Ship', 5, '2022-05-19 19:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FCU-7128-4969-EN', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Milk',
    'Ship', 135, '2022-08-04 13:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WIR-6609-1292-9X', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Almond',
    'Trunk', 192, '2021-11-01 08:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QZU-4129-0570-S1', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Trunk', 120, '2021-10-09 22:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LRQ-4555-8475-KB', 'Glover LLC',
    '57-347-6202', 'Chocolate_Milk',
    'Trunk', 56, '2021-11-10 10:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QQG-7843-3629-JB', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Dark',
    'Train', 127, '2022-02-11 23:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IQX-1281-7465-T9', 'Glover LLC',
    '30-000-1093', 'Chocolate_Cinnamon',
    'Trunk', 97, '2022-01-21 10:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OWA-4991-7827-0V', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Vanilla',
    'Trunk', 200, '2022-10-10 12:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FZK-0717-7065-4Z', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Strawberry',
    'Plane', 5, '2022-10-15 18:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EUR-6451-3693-IP', 'Greenfelder LLC',
    '77-639-8358', 'Chocolate_Strawberry',
    'Train', 40, '2022-10-16 05:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HKT-9287-1194-V7', 'Glover LLC',
    '97-594-3740', 'Chocolate_Cake',
    'Train', 194, '2021-11-28 03:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WTO-1308-2258-AM', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Almond',
    'Ship', 192, '2022-07-16 08:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KYS-5743-6837-3H', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Vanilla',
    'Trunk', 32, '2022-04-11 10:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SRA-1296-4397-W2', 'Rippin, Strosin and Champlin',
    '97-594-3740', 'Chocolate_White',
    'Plane', 89, '2021-10-09 03:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XQH-9174-6460-1Q', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_Almond',
    'Plane', 138, '2022-05-31 05:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IVC-6220-0233-X6', 'Glover LLC',
    '97-594-3740', 'Chocolate_Almond',
    'Trunk', 174, '2022-06-16 10:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MAC-4637-7442-RK', 'Douglas, Hoppe and Stark',
    '30-000-1093', 'Chocolate_Milk',
    'Train', 26, '2022-05-11 17:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ONX-8584-9541-8G', 'Howell Group',
    '77-639-8358', 'Chocolate_Spread',
    'Trunk', 181, '2022-02-13 16:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NGQ-3002-0310-TX', 'Dibbert, Mitchell and Dooley',
    '05-531-1158', 'Chocolate_Cake',
    'Plane', 99, '2021-10-26 06:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CMR-3513-2584-1B', 'Weissnat, Bernhard and Kuhlman',
    '54-411-1467', 'Chocolate_Milk',
    'Train', 61, '2022-08-17 05:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MQE-4258-4828-8D', 'Glover LLC',
    '57-347-6202', 'Chocolate_Strawberry',
    'Train', 72, '2022-03-07 18:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GQG-1637-0578-VM', 'Luettgen, Cremin and Bahringer',
    '57-347-6202', 'Chocolate_Almond',
    'Plane', 60, '2021-12-18 21:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QYW-6883-5291-GC', 'Douglas, Hoppe and Stark',
    '54-411-1467', 'Chocolate_Almond',
    'Train', 131, '2022-08-08 21:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UJU-8061-6853-UU', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Almond',
    'Trunk', 129, '2022-07-06 22:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QXO-9426-0722-TE', 'Howell Group',
    '54-411-1467', 'Chocolate_Strawberry',
    'Plane', 33, '2022-05-14 15:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ERF-7241-5637-K5', 'Howell Group',
    '05-531-1158', 'Chocolate_White',
    'Plane', 158, '2022-03-23 08:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YJA-8429-8651-YZ', 'Rippin, Strosin and Champlin',
    '10-491-2446', 'Chocolate_Milk',
    'Train', 6, '2022-09-14 18:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QAT-2767-8080-TK', 'Kuhic-Ullrich',
    '10-491-2446', 'Chocolate_Milk',
    'Train', 80, '2021-12-08 14:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JTY-7652-2551-KQ', 'Howell Group',
    '77-639-8358', 'Chocolate_Dark',
    'Trunk', 109, '2022-08-01 10:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FZZ-1461-8203-2H', 'Dibbert, Mitchell and Dooley',
    '05-531-1158', 'Chocolate_Cinnamon',
    'Train', 136, '2021-12-10 13:42:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MHM-6121-4496-2V', 'Dibbert, Mitchell and Dooley',
    '88-043-5868', 'Chocolate_Spread',
    'Plane', 63, '2021-11-25 05:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BON-0047-1922-AL', 'Kling Inc',
    '59-044-7580', 'Chocolate_Dark',
    'Plane', 147, '2021-11-03 01:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FOB-4501-3272-5Z', 'Kuhic-Ullrich',
    '07-455-6634', 'Chocolate_White',
    'Trunk', 132, '2022-01-24 07:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QTW-0729-2909-O4', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Dark',
    'Trunk', 97, '2022-07-13 12:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XBF-4219-2749-X2', 'Kling Inc',
    '57-347-6202', 'Chocolate_Vanilla',
    'Plane', 27, '2022-02-12 02:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NHE-4081-7771-D7', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Cake',
    'Train', 15, '2022-04-13 15:58:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XVD-8460-4669-4R', 'Howell Group',
    '88-043-5868', 'Chocolate_White',
    'Trunk', 8, '2021-10-16 07:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JGM-5238-0515-GC', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_White',
    'Ship', 186, '2022-07-18 23:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'COZ-2700-2612-SC', 'Luettgen, Cremin and Bahringer',
    '54-411-1467', 'Chocolate_White',
    'Plane', 178, '2022-04-22 13:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AMD-3164-9645-5S', 'Glover LLC',
    '10-491-2446', 'Chocolate_Vanilla',
    'Plane', 105, '2022-03-26 22:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FPB-3174-2259-VX', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Cake',
    'Plane', 199, '2021-10-20 19:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QBW-4762-9451-BD', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_Cake',
    'Plane', 180, '2021-10-06 23:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OQD-1585-6641-0Z', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_White',
    'Trunk', 104, '2022-08-29 11:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LGU-2664-2364-YQ', 'Howell Group',
    '07-455-6634', 'Chocolate_Dark',
    'Train', 25, '2022-09-04 17:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QNN-7843-4279-4L', 'Kling Inc',
    '77-639-8358', 'Chocolate_Strawberry',
    'Trunk', 75, '2022-02-23 03:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HDV-7852-1663-OZ', 'Douglas, Hoppe and Stark',
    '59-044-7580', 'Chocolate_Milk',
    'Plane', 34, '2022-08-08 00:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ETB-8705-0357-T7', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Cinnamon',
    'Train', 165, '2022-10-28 13:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MRQ-4564-9598-90', 'Glover LLC',
    '05-531-1158', 'Chocolate_Spread',
    'Train', 136, '2021-11-24 14:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PBV-5054-2794-M1', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Strawberry',
    'Ship', 22, '2021-10-10 19:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RYY-8437-9118-PG', 'Howell Group',
    '54-411-1467', 'Chocolate_Spread',
    'Trunk', 26, '2022-08-12 04:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RUN-0300-3155-YK', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Cake',
    'Train', 195, '2022-02-02 07:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EHI-6059-8473-86', 'Howell Group',
    '77-639-8358', 'Chocolate_Milk',
    'Plane', 82, '2022-03-19 17:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XOT-7657-7644-W8', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_Vanilla',
    'Train', 168, '2021-12-08 10:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NCG-2526-8437-YK', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_Milk',
    'Trunk', 48, '2022-01-03 17:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YQD-8469-3312-25', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Strawberry',
    'Train', 28, '2022-01-30 21:16:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GOS-5341-0297-CQ', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_White',
    'Ship', 43, '2022-08-23 07:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EGV-8599-0679-H1', 'Glover LLC',
    '59-044-7580', 'Chocolate_Dark',
    'Plane', 186, '2021-11-07 12:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NFC-5942-4125-1G', 'Glover LLC',
    '10-491-2446', 'Chocolate_Dark',
    'Trunk', 27, '2022-02-21 22:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IUR-9708-7537-OU', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_White',
    'Plane', 112, '2022-10-04 19:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZWI-9265-2632-LL', 'Kling Inc',
    '88-043-5868', 'Chocolate_Almond',
    'Ship', 196, '2022-06-29 10:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BRC-1422-4321-HT', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Vanilla',
    'Ship', 140, '2021-11-22 15:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TRZ-3369-7592-50', 'Howell Group',
    '57-347-6202', 'Chocolate_Cake',
    'Train', 36, '2022-02-16 09:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LIF-7396-1187-LJ', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Cinnamon',
    'Train', 104, '2022-08-04 09:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DCZ-5912-2055-3V', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_White',
    'Ship', 157, '2022-04-08 00:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZRL-7734-9457-89', 'Howell Group',
    '07-455-6634', 'Chocolate_Spread',
    'Train', 2, '2021-12-22 21:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SSK-3092-6933-4T', 'Glover LLC',
    '59-044-7580', 'Chocolate_Cake',
    'Trunk', 67, '2022-06-30 15:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QNR-4099-9686-UU', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_Strawberry',
    'Trunk', 96, '2022-09-12 11:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NMK-6720-2866-OH', 'Rippin, Strosin and Champlin',
    '57-347-6202', 'Chocolate_Dark',
    'Train', 187, '2022-05-14 20:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VCA-0570-5833-06', 'Kling Inc',
    '77-639-8358', 'Chocolate_Milk',
    'Trunk', 21, '2022-05-01 18:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DLN-7311-9651-HE', 'Glover LLC',
    '97-594-3740', 'Chocolate_Dark',
    'Plane', 194, '2022-03-17 05:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UDT-5289-2428-4O', 'Luettgen, Cremin and Bahringer',
    '57-347-6202', 'Chocolate_Dark',
    'Plane', 127, '2022-02-07 06:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SDL-0841-2688-I1', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Spread',
    'Train', 43, '2022-03-04 04:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LJQ-1232-8331-5N', 'Glover LLC',
    '59-044-7580', 'Chocolate_White',
    'Train', 150, '2022-02-02 07:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HIQ-6827-0496-EF', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_White',
    'Ship', 154, '2021-11-09 06:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PRZ-8116-5071-I8', 'Glover LLC',
    '05-531-1158', 'Chocolate_White',
    'Ship', 197, '2022-03-03 18:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FGT-2115-7530-XZ', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Dark',
    'Ship', 126, '2022-05-05 18:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MJO-1400-7616-J8', 'Glover LLC',
    '10-491-2446', 'Chocolate_Dark',
    'Ship', 109, '2021-10-14 02:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TVF-3979-5007-PC', 'Luettgen, Cremin and Bahringer',
    '88-043-5868', 'Chocolate_Dark',
    'Trunk', 93, '2021-12-24 01:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CKX-0780-4594-QG', 'Kling Inc',
    '77-639-8358', 'Chocolate_Dark',
    'Ship', 100, '2021-11-22 10:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RMH-3200-5150-2J', 'Kling Inc',
    '30-000-1093', 'Chocolate_Cinnamon',
    'Train', 73, '2022-08-18 00:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YKF-9109-9694-JD', 'Howell Group',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Ship', 118, '2022-08-04 01:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KXM-0705-0373-84', 'Howell Group',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Ship', 67, '2022-09-12 01:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZTM-9294-2058-X7', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Vanilla',
    'Trunk', 38, '2021-12-22 08:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PNV-6447-4249-Y5', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Vanilla',
    'Plane', 19, '2022-01-23 13:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DGI-0805-7101-KD', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_Cake',
    'Ship', 40, '2021-11-01 08:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GYH-3637-0545-49', 'Kuhic-Ullrich',
    '05-531-1158', 'Chocolate_Spread',
    'Train', 167, '2022-08-20 19:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XOA-2372-3114-E4', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Cake',
    'Trunk', 69, '2022-08-11 22:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FRS-6921-9559-BO', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Milk',
    'Train', 165, '2022-01-27 03:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KFA-4482-8316-LD', 'Douglas, Hoppe and Stark',
    '30-000-1093', 'Chocolate_Spread',
    'Trunk', 49, '2022-01-23 17:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UIU-6477-6844-O8', 'Howell Group',
    '97-594-3740', 'Chocolate_Dark',
    'Ship', 165, '2021-11-06 03:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YPE-6190-3657-HQ', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Almond',
    'Trunk', 131, '2022-08-02 10:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XMP-0193-0452-E4', 'Howell Group',
    '77-639-8358', 'Chocolate_Dark',
    'Plane', 60, '2022-09-04 13:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JJQ-2753-4596-W8', 'Greenfelder LLC',
    '77-639-8358', 'Chocolate_Dark',
    'Train', 139, '2021-11-13 18:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BFA-0805-3483-FZ', 'Kling Inc',
    '54-411-1467', 'Chocolate_Strawberry',
    'Plane', 100, '2022-02-17 15:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OPV-3991-8588-Y2', 'Douglas, Hoppe and Stark',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Plane', 170, '2022-03-28 02:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LVB-4214-1945-44', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_Milk',
    'Train', 170, '2021-10-11 10:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QKA-2922-8035-RA', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Cinnamon',
    'Train', 160, '2021-10-16 02:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TDI-8553-7054-76', 'Kuhic-Ullrich',
    '57-347-6202', 'Chocolate_Cake',
    'Trunk', 198, '2022-05-10 09:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LBW-9389-0836-GM', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Milk',
    'Trunk', 27, '2021-10-12 00:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QRO-7901-0898-DE', 'Howell Group',
    '88-043-5868', 'Chocolate_White',
    'Plane', 33, '2021-12-25 09:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GAX-4653-8860-YG', 'Kuhic-Ullrich',
    '97-594-3740', 'Chocolate_Vanilla',
    'Plane', 120, '2022-04-03 15:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XSL-5687-0140-3J', 'Douglas, Hoppe and Stark',
    '54-411-1467', 'Chocolate_Dark',
    'Ship', 8, '2021-10-14 03:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QVL-9193-8208-70', 'Dibbert, Mitchell and Dooley',
    '54-411-1467', 'Chocolate_Milk',
    'Trunk', 91, '2022-05-20 07:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NLX-4346-4962-PL', 'Rippin, Strosin and Champlin',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Plane', 11, '2022-08-22 09:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JBH-8325-2076-ER', 'Howell Group',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Ship', 169, '2021-10-09 02:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XPV-5255-4783-PV', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_Milk',
    'Plane', 56, '2022-07-06 23:40:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ORG-5021-0963-EB', 'Kling Inc',
    '77-639-8358', 'Chocolate_Strawberry',
    'Train', 40, '2022-06-10 05:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OGC-4659-4862-2V', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_White',
    'Plane', 59, '2022-09-08 08:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TGF-4072-3654-KP', 'Howell Group',
    '97-594-3740', 'Chocolate_White',
    'Plane', 119, '2022-01-27 16:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OWJ-5654-2906-4Q', 'Glover LLC',
    '30-000-1093', 'Chocolate_Cake',
    'Plane', 112, '2022-10-24 18:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TZV-3654-7293-MR', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Cake',
    'Train', 143, '2022-08-06 22:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YOQ-0489-8107-AB', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_White',
    'Train', 48, '2022-05-04 22:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZQY-4874-2602-CZ', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_Cake',
    'Ship', 111, '2021-10-24 21:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VOV-3879-9413-XK', 'Weissnat, Bernhard and Kuhlman',
    '57-347-6202', 'Chocolate_Almond',
    'Ship', 127, '2022-04-26 06:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YPM-7908-4577-OA', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Train', 178, '2021-12-14 07:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BUI-1121-8430-TS', 'Douglas, Hoppe and Stark',
    '05-531-1158', 'Chocolate_Cinnamon',
    'Ship', 94, '2022-05-04 03:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YZS-0291-4035-B8', 'Kling Inc',
    '54-411-1467', 'Chocolate_White',
    'Plane', 167, '2022-08-20 10:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VWD-5914-4382-QS', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_Almond',
    'Ship', 95, '2022-10-07 13:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JVH-1658-0664-1I', 'Greenfelder LLC',
    '88-043-5868', 'Chocolate_Cake',
    'Train', 99, '2022-01-27 01:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WGD-4543-0742-BS', 'Rippin, Strosin and Champlin',
    '88-043-5868', 'Chocolate_Vanilla',
    'Plane', 133, '2022-08-13 15:42:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VEI-2221-0334-ZS', 'Kuhic-Ullrich',
    '30-000-1093', 'Chocolate_Dark',
    'Ship', 64, '2022-02-22 06:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YMB-5486-3194-NJ', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_Dark',
    'Train', 167, '2022-01-05 20:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FTJ-6602-0222-0W', 'Dibbert, Mitchell and Dooley',
    '54-411-1467', 'Chocolate_Vanilla',
    'Ship', 38, '2022-03-31 05:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VUA-2664-4292-8W', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_Vanilla',
    'Ship', 86, '2021-12-19 22:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OYL-2145-0383-3H', 'Greenfelder LLC',
    '77-639-8358', 'Chocolate_Dark',
    'Plane', 51, '2022-04-26 11:40:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SHN-8506-3722-SY', 'Kling Inc',
    '59-044-7580', 'Chocolate_Cake',
    'Plane', 67, '2022-06-09 02:37:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RPI-0704-8543-X8', 'Dibbert, Mitchell and Dooley',
    '59-044-7580', 'Chocolate_Cake',
    'Plane', 18, '2022-02-22 08:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YKR-4896-9730-UA', 'Luettgen, Cremin and Bahringer',
    '88-043-5868', 'Chocolate_Cinnamon',
    'Train', 70, '2022-02-18 08:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HMV-3550-4366-7F', 'Kling Inc',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Ship', 177, '2022-10-17 23:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EJS-9550-7665-7M', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_Almond',
    'Trunk', 189, '2022-06-16 00:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HJJ-7935-1355-M2', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Dark',
    'Trunk', 112, '2022-09-23 20:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IPS-8486-0076-PM', 'Dibbert, Mitchell and Dooley',
    '07-455-6634', 'Chocolate_Cinnamon',
    'Train', 188, '2022-03-22 09:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NLW-4805-9175-1B', 'Kling Inc',
    '77-639-8358', 'Chocolate_Almond',
    'Plane', 71, '2021-10-16 15:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AAG-1716-8778-XJ', 'Kuhic-Ullrich',
    '07-455-6634', 'Chocolate_Strawberry',
    'Ship', 32, '2022-03-02 10:45:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PBC-1304-2439-DP', 'Kuhic-Ullrich',
    '10-491-2446', 'Chocolate_Cake',
    'Ship', 85, '2022-06-10 03:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ARG-3846-5911-JR', 'Kling Inc',
    '05-531-1158', 'Chocolate_Dark',
    'Train', 127, '2022-03-09 01:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CJO-5548-8268-IS', 'Howell Group',
    '10-491-2446', 'Chocolate_Vanilla',
    'Plane', 122, '2022-01-10 02:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FDB-4734-5992-D6', 'Rippin, Strosin and Champlin',
    '59-044-7580', 'Chocolate_Cinnamon',
    'Trunk', 133, '2022-08-27 17:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CUZ-1234-4827-FP', 'Douglas, Hoppe and Stark',
    '59-044-7580', 'Chocolate_Vanilla',
    'Trunk', 148, '2021-12-10 20:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NCB-7345-7429-EO', 'Douglas, Hoppe and Stark',
    '10-491-2446', 'Chocolate_White',
    'Trunk', 88, '2022-01-29 11:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YSM-7174-7818-LC', 'Weissnat, Bernhard and Kuhlman',
    '59-044-7580', 'Chocolate_Cake',
    'Ship', 156, '2022-09-05 12:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QDG-1178-1135-X9', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Cake',
    'Ship', 193, '2022-02-14 07:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AMU-3888-9265-4Q', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Strawberry',
    'Ship', 175, '2022-04-05 16:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KWX-4595-4278-B3', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Vanilla',
    'Train', 192, '2021-12-27 20:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ILR-4357-0094-RA', 'Howell Group',
    '30-000-1093', 'Chocolate_Cinnamon',
    'Trunk', 82, '2021-11-02 11:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LXJ-5616-6904-M9', 'Dibbert, Mitchell and Dooley',
    '88-043-5868', 'Chocolate_Vanilla',
    'Plane', 112, '2022-01-23 15:26:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IRU-6146-5668-4O', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Milk',
    'Trunk', 102, '2022-08-10 05:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BKI-9611-9448-KN', 'Kuhic-Ullrich',
    '07-455-6634', 'Chocolate_White',
    'Trunk', 34, '2022-08-18 00:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZZU-5115-3347-SV', 'Greenfelder LLC',
    '07-455-6634', 'Chocolate_Almond',
    'Trunk', 197, '2022-02-07 19:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PVO-8168-3973-QX', 'Howell Group',
    '05-531-1158', 'Chocolate_Almond',
    'Ship', 27, '2022-07-28 22:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BZZ-6078-1013-SZ', 'Douglas, Hoppe and Stark',
    '30-000-1093', 'Chocolate_Milk',
    'Trunk', 89, '2022-01-25 06:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GFF-6626-1471-OD', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_White',
    'Trunk', 172, '2022-01-06 04:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MSH-1666-6481-JN', 'Luettgen, Cremin and Bahringer',
    '59-044-7580', 'Chocolate_Milk',
    'Plane', 52, '2022-06-09 07:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JCN-7360-9594-8Q', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_Dark',
    'Plane', 31, '2022-08-01 08:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PUV-1952-9126-6O', 'Rippin, Strosin and Champlin',
    '10-491-2446', 'Chocolate_Almond',
    'Train', 185, '2022-08-20 07:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GPU-9839-5384-6Z', 'Howell Group',
    '88-043-5868', 'Chocolate_Cake',
    'Ship', 152, '2022-07-22 17:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QTZ-6630-9214-UE', 'Howell Group',
    '07-455-6634', 'Chocolate_Vanilla',
    'Plane', 198, '2022-06-25 10:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GHK-4347-3153-X3', 'Howell Group',
    '07-455-6634', 'Chocolate_Cake',
    'Trunk', 146, '2022-03-18 21:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZZO-4177-2974-8P', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Spread',
    'Trunk', 79, '2022-01-18 19:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WLY-8097-6375-RR', 'Kling Inc',
    '57-347-6202', 'Chocolate_White',
    'Trunk', 14, '2021-12-06 12:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HZU-5673-1929-MD', 'Glover LLC',
    '88-043-5868', 'Chocolate_White',
    'Plane', 120, '2022-01-08 20:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FOR-9357-5518-9N', 'Kling Inc',
    '10-491-2446', 'Chocolate_White',
    'Trunk', 162, '2022-04-26 23:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NAQ-8123-2546-7V', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_White',
    'Ship', 131, '2022-03-31 05:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FID-7523-7428-VV', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Almond',
    'Train', 57, '2021-10-28 16:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TFC-6001-9975-5E', 'Kling Inc',
    '59-044-7580', 'Chocolate_Milk',
    'Train', 163, '2021-12-12 04:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JAR-5359-5638-H3', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Spread',
    'Trunk', 98, '2022-04-13 02:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KRW-3120-1406-TW', 'Dibbert, Mitchell and Dooley',
    '97-594-3740', 'Chocolate_Dark',
    'Trunk', 18, '2021-11-16 17:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MFR-7682-7938-19', 'Howell Group',
    '05-531-1158', 'Chocolate_Strawberry',
    'Train', 129, '2022-05-11 11:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AVE-5598-2314-34', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Almond',
    'Trunk', 114, '2022-05-12 06:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RCO-0542-8486-12', 'Howell Group',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Trunk', 49, '2022-08-02 14:50:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IID-5290-1072-D1', 'Dibbert, Mitchell and Dooley',
    '10-491-2446', 'Chocolate_Cinnamon',
    'Ship', 47, '2022-08-14 14:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SRM-3050-2375-NX', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Vanilla',
    'Train', 64, '2021-11-27 22:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XXB-2528-1751-LD', 'Greenfelder LLC',
    '10-491-2446', 'Chocolate_Spread',
    'Ship', 161, '2022-10-15 05:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FFV-1115-8954-92', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Strawberry',
    'Plane', 155, '2022-02-06 07:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IUW-5040-4106-1U', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_Cake',
    'Plane', 140, '2022-07-05 19:03:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TDG-6072-1956-84', 'Glover LLC',
    '88-043-5868', 'Chocolate_White',
    'Ship', 135, '2022-04-01 13:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SPN-2714-3451-TH', 'Greenfelder LLC',
    '07-455-6634', 'Chocolate_Spread',
    'Plane', 57, '2022-08-25 15:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UAV-4460-2148-G7', 'Rippin, Strosin and Champlin',
    '05-531-1158', 'Chocolate_White',
    'Train', 175, '2022-09-12 12:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LTP-2099-5130-05', 'Greenfelder LLC',
    '07-455-6634', 'Chocolate_Dark',
    'Train', 49, '2022-01-27 08:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BTI-4542-1461-3L', 'Howell Group',
    '57-347-6202', 'Chocolate_Cinnamon',
    'Ship', 141, '2022-04-12 18:16:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QWQ-8225-9079-Y6', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Vanilla',
    'Trunk', 77, '2021-11-29 05:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KEV-2330-3439-4O', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_Spread',
    'Ship', 76, '2022-07-25 22:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WUU-8961-9594-J9', 'Douglas, Hoppe and Stark',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Ship', 94, '2022-05-07 14:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YOO-0604-4428-3D', 'Rippin, Strosin and Champlin',
    '57-347-6202', 'Chocolate_Vanilla',
    'Trunk', 48, '2021-10-19 22:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DEF-2026-5156-V2', 'Luettgen, Cremin and Bahringer',
    '05-531-1158', 'Chocolate_Vanilla',
    'Ship', 127, '2022-09-11 20:35:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PDN-4820-2520-XE', 'Howell Group',
    '77-639-8358', 'Chocolate_Strawberry',
    'Train', 82, '2021-12-11 11:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'COZ-5983-3469-SK', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Spread',
    'Ship', 197, '2022-07-09 18:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BRR-4631-1767-BK', 'Glover LLC',
    '77-639-8358', 'Chocolate_Cake',
    'Train', 173, '2021-11-26 19:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SXY-7456-1061-IS', 'Luettgen, Cremin and Bahringer',
    '54-411-1467', 'Chocolate_Dark',
    'Plane', 160, '2021-10-07 17:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TJV-3871-5792-8S', 'Kuhic-Ullrich',
    '30-000-1093', 'Chocolate_Milk',
    'Ship', 195, '2022-09-22 16:43:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'STP-1569-9603-3Z', 'Rippin, Strosin and Champlin',
    '07-455-6634', 'Chocolate_White',
    'Ship', 162, '2022-04-13 12:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GJN-3161-5546-KM', 'Kuhic-Ullrich',
    '30-000-1093', 'Chocolate_Milk',
    'Train', 7, '2022-07-17 23:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GJH-2206-9945-L4', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Almond',
    'Plane', 27, '2022-05-08 05:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OKG-3648-6008-FN', 'Rippin, Strosin and Champlin',
    '97-594-3740', 'Chocolate_Spread',
    'Plane', 36, '2021-10-15 16:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LCC-6861-0234-0W', 'Glover LLC',
    '97-594-3740', 'Chocolate_Strawberry',
    'Plane', 155, '2022-06-02 03:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'APG-7328-4757-CV', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Cake',
    'Trunk', 181, '2022-01-26 22:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GXJ-4517-4595-Q2', 'Kling Inc',
    '05-531-1158', 'Chocolate_Cinnamon',
    'Plane', 94, '2021-10-19 04:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PSP-8671-6069-3O', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Train', 152, '2022-01-04 21:48:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ROK-1870-2865-CS', 'Luettgen, Cremin and Bahringer',
    '57-347-6202', 'Chocolate_Strawberry',
    'Train', 94, '2022-08-29 16:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EDJ-4296-4257-D0', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Strawberry',
    'Trunk', 7, '2022-03-04 01:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OBC-3663-6704-30', 'Howell Group',
    '54-411-1467', 'Chocolate_Dark',
    'Ship', 195, '2021-10-31 12:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HOA-5957-8668-22', 'Douglas, Hoppe and Stark',
    '88-043-5868', 'Chocolate_Strawberry',
    'Train', 128, '2022-09-30 08:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BNS-3712-2544-TA', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Milk',
    'Ship', 43, '2022-07-30 03:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FGJ-5063-5541-47', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Milk',
    'Ship', 77, '2022-08-20 20:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XKO-2664-4223-0D', 'Weissnat, Bernhard and Kuhlman',
    '57-347-6202', 'Chocolate_Cinnamon',
    'Ship', 96, '2022-03-24 01:18:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BHP-9498-1837-XC', 'Howell Group',
    '54-411-1467', 'Chocolate_White',
    'Train', 138, '2022-07-06 08:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FZQ-4039-3023-DT', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Almond',
    'Plane', 171, '2022-04-30 14:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QSH-9749-8001-RV', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Ship', 56, '2022-05-29 08:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NSO-6392-3496-TD', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Dark',
    'Trunk', 73, '2022-05-06 19:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YXN-6920-6749-LB', 'Kling Inc',
    '88-043-5868', 'Chocolate_Almond',
    'Ship', 198, '2022-05-18 07:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XNY-5655-5424-ZO', 'Dibbert, Mitchell and Dooley',
    '88-043-5868', 'Chocolate_Strawberry',
    'Trunk', 38, '2022-10-06 23:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LVA-0675-9025-IA', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Cake',
    'Plane', 94, '2022-09-29 09:42:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MEQ-9664-6184-N4', 'Greenfelder LLC',
    '05-531-1158', 'Chocolate_Cinnamon',
    'Trunk', 160, '2022-10-09 02:49:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MGT-0069-0482-6S', 'Kling Inc',
    '57-347-6202', 'Chocolate_Strawberry',
    'Plane', 176, '2022-05-17 09:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WSI-7722-0452-1S', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Cake',
    'Trunk', 56, '2022-09-17 18:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KAW-9950-3551-7I', 'Rippin, Strosin and Champlin',
    '07-455-6634', 'Chocolate_Almond',
    'Ship', 123, '2021-10-23 10:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UEF-8233-6980-IO', 'Howell Group',
    '59-044-7580', 'Chocolate_Vanilla',
    'Ship', 81, '2021-12-21 03:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NMO-7146-9567-36', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Almond',
    'Ship', 8, '2021-10-22 16:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XUN-2521-7962-Y4', 'Kling Inc',
    '59-044-7580', 'Chocolate_Vanilla',
    'Plane', 193, '2022-05-30 08:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FIK-5295-7023-8D', 'Luettgen, Cremin and Bahringer',
    '05-531-1158', 'Chocolate_White',
    'Ship', 26, '2022-08-31 11:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZVC-6645-0496-2L', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Strawberry',
    'Train', 197, '2022-09-21 02:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FKZ-1826-3143-C8', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Strawberry',
    'Trunk', 27, '2021-12-01 01:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SRE-9163-4989-8C', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Almond',
    'Plane', 80, '2022-09-27 14:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SCT-0775-4660-IL', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Almond',
    'Ship', 108, '2022-07-01 13:36:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SGB-3598-1219-KG', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Cinnamon',
    'Ship', 16, '2022-10-13 10:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LST-6976-6592-TL', 'Howell Group',
    '59-044-7580', 'Chocolate_Spread',
    'Train', 121, '2022-06-23 07:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HWW-9610-1202-BY', 'Rippin, Strosin and Champlin',
    '54-411-1467', 'Chocolate_Milk',
    'Ship', 145, '2022-05-04 07:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NPT-1118-0062-IQ', 'Kling Inc',
    '97-594-3740', 'Chocolate_Strawberry',
    'Train', 35, '2022-05-12 11:34:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VNL-7607-2641-QA', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 169, '2022-03-18 14:13:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HIX-3851-7729-Y1', 'Kling Inc',
    '10-491-2446', 'Chocolate_Vanilla',
    'Plane', 41, '2022-02-02 01:42:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IMZ-9349-0870-KE', 'Weissnat, Bernhard and Kuhlman',
    '05-531-1158', 'Chocolate_White',
    'Plane', 129, '2021-11-12 01:15:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RFF-0840-4366-N6', 'Luettgen, Cremin and Bahringer',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 11, '2022-03-07 04:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QVS-7964-0137-KM', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_White',
    'Plane', 146, '2021-12-11 12:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CSV-8946-0833-KR', 'Weissnat, Bernhard and Kuhlman',
    '88-043-5868', 'Chocolate_Almond',
    'Train', 25, '2022-03-12 00:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'CYX-0126-9304-2F', 'Kling Inc',
    '88-043-5868', 'Chocolate_Almond',
    'Ship', 88, '2021-10-03 01:51:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OKA-5149-5656-DD', 'Rippin, Strosin and Champlin',
    '07-455-6634', 'Chocolate_Vanilla',
    'Ship', 160, '2022-10-08 01:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VDC-3177-0648-GJ', 'Dibbert, Mitchell and Dooley',
    '77-639-8358', 'Chocolate_Cake',
    'Trunk', 101, '2021-10-04 22:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OVO-9935-1282-ZM', 'Howell Group',
    '77-639-8358', 'Chocolate_White',
    'Trunk', 178, '2022-10-08 11:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HDK-0301-9240-8Q', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_Spread',
    'Train', 141, '2022-05-30 00:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GYU-7791-6479-P4', 'Kling Inc',
    '88-043-5868', 'Chocolate_White',
    'Plane', 74, '2021-12-25 18:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KEL-7286-8769-BW', 'Howell Group',
    '07-455-6634', 'Chocolate_Almond',
    'Ship', 27, '2022-09-06 19:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WDR-3694-3551-2P', 'Luettgen, Cremin and Bahringer',
    '57-347-6202', 'Chocolate_Vanilla',
    'Trunk', 143, '2022-07-19 22:04:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LEM-0459-1586-0P', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_Dark',
    'Plane', 51, '2021-11-19 13:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YTR-8185-7120-ME', 'Kuhic-Ullrich',
    '05-531-1158', 'Chocolate_Spread',
    'Ship', 169, '2022-01-10 15:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FUQ-2896-3153-FX', 'Luettgen, Cremin and Bahringer',
    '77-639-8358', 'Chocolate_White',
    'Train', 20, '2022-02-12 07:46:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JSL-9120-1913-6D', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Dark',
    'Plane', 71, '2022-06-27 04:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KME-0621-5815-39', 'Howell Group',
    '88-043-5868', 'Chocolate_Cake',
    'Ship', 41, '2022-04-11 20:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VCU-3836-6063-CG', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_White',
    'Train', 124, '2022-01-08 20:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SUN-1372-7683-4K', 'Weissnat, Bernhard and Kuhlman',
    '88-043-5868', 'Chocolate_Cinnamon',
    'Train', 58, '2022-08-31 17:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SHV-9334-5328-LX', 'Weissnat, Bernhard and Kuhlman',
    '97-594-3740', 'Chocolate_Vanilla',
    'Plane', 80, '2022-08-19 20:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XNY-9849-6054-BW', 'Douglas, Hoppe and Stark',
    '77-639-8358', 'Chocolate_Strawberry',
    'Train', 48, '2022-06-14 05:33:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UXJ-8035-9581-I9', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_Vanilla',
    'Trunk', 107, '2022-01-27 12:22:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QWY-3904-0527-BS', 'Howell Group',
    '30-000-1093', 'Chocolate_Almond',
    'Trunk', 55, '2022-04-27 18:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FSE-9518-3030-WF', 'Kuhic-Ullrich',
    '10-491-2446', 'Chocolate_Almond',
    'Train', 103, '2022-02-20 16:39:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IOQ-2643-1109-AQ', 'Glover LLC',
    '97-594-3740', 'Chocolate_Dark',
    'Ship', 21, '2022-01-14 16:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NZG-2405-9647-FY', 'Glover LLC',
    '10-491-2446', 'Chocolate_Milk',
    'Trunk', 30, '2022-05-03 22:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VFW-7481-7789-6M', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Cake',
    'Ship', 41, '2021-12-07 21:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UJE-7491-6539-I9', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_Cinnamon',
    'Ship', 41, '2022-03-12 01:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GQF-5424-7537-TI', 'Weissnat, Bernhard and Kuhlman',
    '07-455-6634', 'Chocolate_Almond',
    'Trunk', 32, '2022-05-03 18:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FOH-1664-5618-KR', 'Glover LLC',
    '97-594-3740', 'Chocolate_Spread',
    'Train', 49, '2022-05-05 06:21:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VXU-7980-3701-7A', 'Luettgen, Cremin and Bahringer',
    '88-043-5868', 'Chocolate_Spread',
    'Plane', 186, '2022-02-18 18:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JIE-1803-7376-2P', 'Luettgen, Cremin and Bahringer',
    '10-491-2446', 'Chocolate_Strawberry',
    'Trunk', 175, '2022-07-12 22:38:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XHK-7153-1587-XZ', 'Howell Group',
    '07-455-6634', 'Chocolate_White',
    'Train', 71, '2022-02-02 17:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'DJA-6323-4710-KQ', 'Glover LLC',
    '07-455-6634', 'Chocolate_Almond',
    'Trunk', 131, '2021-11-11 11:20:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MXS-6918-5293-OL', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Cake',
    'Ship', 165, '2022-02-22 13:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RWS-4824-9263-HE', 'Rippin, Strosin and Champlin',
    '57-347-6202', 'Chocolate_Dark',
    'Plane', 192, '2021-11-18 09:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'HLD-3093-0891-OP', 'Kling Inc',
    '30-000-1093', 'Chocolate_Strawberry',
    'Ship', 53, '2021-11-30 23:26:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'GEZ-2454-3670-2H', 'Kling Inc',
    '88-043-5868', 'Chocolate_Milk',
    'Trunk', 153, '2022-09-23 10:17:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IFN-9478-8157-V8', 'Douglas, Hoppe and Stark',
    '97-594-3740', 'Chocolate_Vanilla',
    'Trunk', 3, '2022-03-20 12:10:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RRL-7464-8377-A8', 'Luettgen, Cremin and Bahringer',
    '07-455-6634', 'Chocolate_Almond',
    'Train', 45, '2021-11-19 11:25:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'XBP-7478-7417-J3', 'Howell Group',
    '05-531-1158', 'Chocolate_Vanilla',
    'Trunk', 13, '2021-12-04 16:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KMP-8178-5882-4X', 'Dibbert, Mitchell and Dooley',
    '30-000-1093', 'Chocolate_Almond',
    'Plane', 184, '2021-12-15 07:12:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'AAN-4205-2254-V9', 'Howell Group',
    '57-347-6202', 'Chocolate_Spread',
    'Trunk', 78, '2022-10-10 11:05:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZCD-8904-4072-PB', 'Luettgen, Cremin and Bahringer',
    '30-000-1093', 'Chocolate_Dark',
    'Trunk', 196, '2022-02-20 01:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WRS-4706-3489-TM', 'Dibbert, Mitchell and Dooley',
    '05-531-1158', 'Chocolate_Cinnamon',
    'Train', 169, '2022-09-04 05:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SRM-8315-2612-MU', 'Greenfelder LLC',
    '57-347-6202', 'Chocolate_Strawberry',
    'Trunk', 107, '2021-10-14 04:53:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JOC-0938-0177-YP', 'Douglas, Hoppe and Stark',
    '05-531-1158', 'Chocolate_Cake',
    'Trunk', 12, '2022-03-18 14:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'UAN-5153-1784-8F', 'Luettgen, Cremin and Bahringer',
    '54-411-1467', 'Chocolate_White',
    'Trunk', 155, '2022-04-23 11:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MSY-9352-3771-0D', 'Kling Inc',
    '88-043-5868', 'Chocolate_Cake',
    'Ship', 47, '2021-11-03 00:01:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'OUZ-5902-6375-DR', 'Howell Group',
    '10-491-2446', 'Chocolate_Strawberry',
    'Ship', 6, '2022-07-21 16:07:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RED-8390-2885-B2', 'Howell Group',
    '97-594-3740', 'Chocolate_Almond',
    'Train', 101, '2022-02-16 22:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZAV-6639-1245-IN', 'Greenfelder LLC',
    '54-411-1467', 'Chocolate_Spread',
    'Trunk', 58, '2021-10-20 20:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NKC-3675-5506-OW', 'Dibbert, Mitchell and Dooley',
    '54-411-1467', 'Chocolate_Dark',
    'Train', 107, '2021-10-05 20:57:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LIN-6909-4116-DU', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Strawberry',
    'Train', 172, '2021-10-26 06:44:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'QZR-9591-5225-KQ', 'Kling Inc',
    '77-639-8358', 'Chocolate_White',
    'Trunk', 42, '2022-07-29 21:29:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'WRI-0880-6813-FY', 'Glover LLC',
    '05-531-1158', 'Chocolate_White',
    'Plane', 109, '2021-10-04 16:47:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LNA-6343-7400-H1', 'Glover LLC',
    '88-043-5868', 'Chocolate_Cake',
    'Ship', 193, '2022-05-14 06:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'LED-2862-6233-7V', 'Kuhic-Ullrich',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Plane', 75, '2022-05-31 14:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NXH-7859-0900-O6', 'Luettgen, Cremin and Bahringer',
    '88-043-5868', 'Chocolate_Cinnamon',
    'Trunk', 141, '2022-03-13 23:27:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KFT-1108-0147-20', 'Kuhic-Ullrich',
    '57-347-6202', 'Chocolate_Vanilla',
    'Ship', 26, '2022-10-04 01:24:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'RQI-1693-7050-JV', 'Rippin, Strosin and Champlin',
    '77-639-8358', 'Chocolate_Cinnamon',
    'Ship', 104, '2022-07-23 11:28:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'VXP-3860-8896-Q8', 'Kuhic-Ullrich',
    '07-455-6634', 'Chocolate_Spread',
    'Ship', 167, '2022-05-27 01:31:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PTC-8826-3458-RR', 'Howell Group',
    '57-347-6202', 'Chocolate_Spread',
    'Plane', 190, '2022-10-05 01:09:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JQM-0218-0510-AY', 'Douglas, Hoppe and Stark',
    '57-347-6202', 'Chocolate_Cake',
    'Train', 108, '2021-11-17 05:16:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'JZV-9713-6616-O2', 'Dibbert, Mitchell and Dooley',
    '57-347-6202', 'Chocolate_Spread',
    'Ship', 106, '2022-09-27 09:19:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'EFJ-3845-6332-KI', 'Kuhic-Ullrich',
    '77-639-8358', 'Chocolate_Almond',
    'Ship', 83, '2022-01-31 00:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'YDQ-8389-7933-CQ', 'Glover LLC',
    '88-043-5868', 'Chocolate_Vanilla',
    'Ship', 194, '2022-03-15 09:14:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SUF-1089-7995-O9', 'Dibbert, Mitchell and Dooley',
    '59-044-7580', 'Chocolate_Strawberry',
    'Train', 123, '2022-02-28 14:06:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'TRQ-4794-8924-S2', 'Rippin, Strosin and Champlin',
    '30-000-1093', 'Chocolate_Vanilla',
    'Train', 135, '2022-03-05 13:23:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ZMT-5835-8140-YJ', 'Kuhic-Ullrich',
    '30-000-1093', 'Chocolate_Almond',
    'Plane', 18, '2022-03-20 16:55:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'SEQ-7458-5435-6H', 'Greenfelder LLC',
    '97-594-3740', 'Chocolate_Spread',
    'Trunk', 133, '2022-02-21 09:30:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MXY-9061-5909-VD', 'Kling Inc',
    '30-000-1093', 'Chocolate_Milk',
    'Plane', 143, '2022-10-29 20:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PUF-5623-4440-BA', 'Kuhic-Ullrich',
    '88-043-5868', 'Chocolate_White',
    'Ship', 147, '2022-02-26 08:00:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PNX-3223-9811-CF', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Milk',
    'Train', 155, '2022-01-08 00:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'NJA-6986-9020-T6', 'Kuhic-Ullrich',
    '59-044-7580', 'Chocolate_Spread',
    'Train', 113, '2022-06-16 03:42:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MXT-4441-8841-MG', 'Greenfelder LLC',
    '30-000-1093', 'Chocolate_Cake',
    'Plane', 179, '2022-01-09 22:56:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'ICB-2223-2829-PA', 'Glover LLC',
    '54-411-1467', 'Chocolate_Spread',
    'Plane', 11, '2022-06-19 19:02:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IHQ-8788-4939-AJ', 'Douglas, Hoppe and Stark',
    '07-455-6634', 'Chocolate_Cinnamon',
    'Train', 47, '2022-08-08 06:08:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'FHC-5589-0010-O1', 'Luettgen, Cremin and Bahringer',
    '05-531-1158', 'Chocolate_Milk',
    'Trunk', 97, '2022-03-12 10:32:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'PAF-1887-5330-6C', 'Greenfelder LLC',
    '59-044-7580', 'Chocolate_Almond',
    'Trunk', 126, '2022-09-18 15:41:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'IUO-4632-8519-3T', 'Weissnat, Bernhard and Kuhlman',
    '10-491-2446', 'Chocolate_Cinnamon',
    'Train', 148, '2021-10-25 16:11:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'KGH-2480-6102-T6', 'Weissnat, Bernhard and Kuhlman',
    '30-000-1093', 'Chocolate_Milk',
    'Plane', 180, '2022-02-05 10:59:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'MVS-6082-6408-DQ', 'Kling Inc',
    '10-491-2446', 'Chocolate_Vanilla',
    'Train', 4, '2022-05-12 03:54:00'
  );
/* INSERT QUERY */
INSERT INTO order_info(
  order_id, factory_name, buyer_id,
  product_name, trans_mode, quantity,
  order_time
)
VALUES
  (
    'BOB-8491-4855-IG', 'Glover LLC',
    '54-411-1467', 'Chocolate_Cinnamon',
    'Ship', 124, '2022-08-08 21:43:00'
  );
