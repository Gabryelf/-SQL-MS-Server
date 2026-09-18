USE ShopDB;
GO

CREATE TABLE Customers(
	id int IDENTITY(1,1) Primary key,
	full_name nvarchar(100) NOT NULL,
	city nvarchar(50),
	email nvarchar(100),
	reg_date date DEFAULT GetDate()
)

CREATE TABLE Categories(
	id int IDENTITY(1,1) Primary key,
	name nvarchar(75) NOT NULL,
)

CREATE TABLE Products(
	id int IDENTITY(1,1) Primary key,
	name nvarchar(100) NOT NULL,
	categoriy_id int FOREIGN KEY REFERENCES Categories(id),
	price decimal(10,2) NOT NULL,
	stock int DEFAULT 0
)

CREATE TABLE Orders(
	id int IDENTITY(1,1) Primary key,
	name nvarchar(100) NOT NULL,
	customer_id int FOREIGN KEY REFERENCES Customers(id),
	order_name date NOT NULL,
	status nvarchar(25) DEFAULT N'создан'
)

CREATE TABLE OrderItems(
	id int IDENTITY(1,1) Primary key,
	order_id int FOREIGN KEY REFERENCES Orders(id),
	product_id int FOREIGN KEY REFERENCES Products(id),
	quantity int NOT NULL,
	unit_price decimal(10,2) NOT NULL
)