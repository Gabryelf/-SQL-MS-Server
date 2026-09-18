USE TestIndex
go

--SET STATISTICS IO ON

SELECT *
FROM orders
WHERE id = '9F00CE9A-E750-44EA-B466-9F9F5E9E8171'

-- стоймость поддрева scan heap 0.089 vs 0.003 clustered index seek
-- logic reads scan heap 100 vs 2 clustered index seek

CREATE CLUSTERED INDEX index_1
	ON orders(id)