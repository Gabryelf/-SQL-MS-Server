USE ShopDB
GO

INSERT INTO Categories(name)
VALUES(N'Бытовая Техника'),
	(N'Смартфоны'),
	(N'Компьютеры')	

INSERT INTO Products(name, category_id, price, stock)
VALUES
	(N'Iphon 17 Pro', 2, 90000, 3),
	(N'ASUS Vivo Book',  3, 60000, 5),
	(N'Toshiba',    1, 5800, 7),
	(N'Xiomi',  2, 11500, 10),
	(N'Lenovo', 3, 70200, 4)	

INSERT INTO Customers(full_name, city, email) 
VALUES
 (N'Иванов Иван',  N'Москва',      'ivanov@mail.ru'),
 (N'Петров Пётр',  N'Санкт-Петербург','petrov@mail.ru'),
 (N'Сидорова Анна',N'Москва',      'sidorova@mail.ru')

 INSERT INTO Orders(name, customer_id, order_date, status) 
 VALUES
 ('123are1', 1, '2024-01-10', N'завершен'),
 ('124are1', 1, '2024-02-15', N'новый'),
 ('125are1', 2, '2024-02-20', N'завершен'),
 ('126are2', 3, '2024-03-01', N'завершен')

 INSERT INTO OrderItems(order_id, product_id, quantity, unit_price) 
 VALUES
 (1, 1, 1, 30000),
 (1, 3, 2, 800),
 (2, 5, 3, 1200),
 (3, 2, 1, 60000),
 (3, 4, 1, 1500),
 (4, 1, 1, 30000)
GO
