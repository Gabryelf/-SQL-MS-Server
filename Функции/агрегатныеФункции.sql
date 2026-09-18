USE ShopDB
go
SELECT
	Count(*) AS Всего_покупателей
FROM Customers
SELECT
	Sum(price)
FROM Products
SELECT
	AVG(stock)
FROM Products
SELECT
	Min(price),
	Max(price)
FROM Products

SELECT COUNT(*) FROM Customers;
SELECT COUNT(email) FROM Customers;