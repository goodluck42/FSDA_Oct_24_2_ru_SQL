-- COUNT, COUNT_BIG

-- SELECT COUNT(*) AS Count, P.SupplierID
-- FROM Products AS P
-- GROUP BY P.SupplierID
-- HAVING COUNT(*) > 3

-- MIN/MAX

-- SELECT MAX(OD.Quantity) AS MaxQuantity, OD.ProductID
-- FROM [Order Details] AS OD
-- GROUP BY OD.ProductID

-- SUM/AVG

-- SELECT SUM(P.UnitPrice), P.CategoryID
-- FROM Products AS P
-- GROUP BY P.CategoryID





SELECT R.Count, S.CompanyName
FROM (SELECT COUNT(*) AS Count, P.SupplierID
      FROM Products AS P
      GROUP BY P.SupplierID
      HAVING COUNT(*) > 3) AS R
JOIN Suppliers AS S ON S.SupplierID = R.SupplierID


SELECT *
FROM (SELECT COUNT(*) AS Count, P.SupplierID
      FROM Products AS P
      GROUP BY P.SupplierID) AS R
WHERE R.Count > 3
