USE ShopDB
GO

EXEC sp_rename 'Products.categoriy_id', 'category_id', 'COLUMN'

EXEC sp_rename 'Orders.order_name', 'order_date', 'COLUMN'