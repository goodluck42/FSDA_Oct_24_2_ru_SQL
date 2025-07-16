-- USE Northwind
----

DECLARE @MyVariable AS INT

SET @MyVariable = 42


-- ALTER PROCEDURE HasCategory
--     @CatID AS INT
-- AS
-- BEGIN
--     SET NOCOUNT ON
--
--     DECLARE @CategoryCount AS INT -- int CategoryCount;
--
--     SET @CategoryCount = 0 -- CategoryCount = 0;
--
--     SELECT @CategoryCount = COUNT(*)
--     FROM Categories
--     WHERE CategoryID = @CatID
--
--     IF @CategoryCount = 0
--     BEGIN
--         RETURN 0
--     END
--     ELSE
--     BEGIN
--        RETURN 1
--     END
-- END


-- ALTER PROCEDURE GetProductByCat @CatID AS INT
-- AS
-- BEGIN
--
--     DECLARE @Has int
--
--     EXEC @Has = HasCategory @CatID
--
--     SELECT @Has
--
--     IF @Has = 0
--         BEGIN
--             THROW 50111, 'Category does not exist.', 0
--         END
--
--     SELECT *
--     FROM Products
--     WHERE CategoryID = @CatID
-- END
--
--
--
-- CREATE PROCEDURE GetProductCountByCatID @CatID AS INT,
--                                         @ProductCount AS INT OUTPUT
-- AS
-- BEGIN
--     SELECT @ProductCount = COUNT(*)
--     FROM Products
--     WHERE CategoryID = @CatID
-- END
--     EXEC GetProductByCat 8
--
-- DECLARE @Count AS INT
--     EXEC GetProductCountByCatID 1, @Count OUTPUT
--
-- SELECT @Count


EXEC GetProductByCat 12



SELECT ContactName, ContactTitle
FROM Customers
UNION ALL
SELECT FirstName, Title
FROM Employees

