USE TestIndex
go

--CREATE TABLE orders(
--  id uniqueidentifier,
--  product_id uniqueidentifier,
--  customer_id uniqueidentifier,
--  price money
--)
--go

INSERT INTO orders
VALUES (
	NewId(), NewId(), NewId(),
	DatePart(MILLISECOND, GetDate())
)
go 10000