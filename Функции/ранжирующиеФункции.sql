-- -- Ранжирующие (оконные) функции

--SELECT 
--    name,
--    price,
--    ROW_NUMBER() OVER (ORDER BY price DESC) AS Номер,
--    RANK()       OVER (ORDER BY price DESC) AS Ранг,
--    DENSE_RANK() OVER (ORDER BY price DESC) AS ПлотныйРанг
--FROM Products;


--SELECT 
--    category_id,
--    name,
--    price,
--    ROW_NUMBER() OVER (PARTITION BY category_id ORDER BY price DESC)
--    AS НомерВКатегории
--FROM Products;
