-- Information about suppliers and the number of products they provide
CREATE VIEW View_SupplierProductCount AS
SELECT s.SupplierName, COUNT(p.ProductID) AS NumberOfProducts
FROM Supplier s
JOIN Product p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierName;


-- 10 best-selling products with the total amount and their supplier
CREATE VIEW View_Top10SellingProducts AS
SELECT p.Name AS ProductName, s.SupplierName, SUM(oi.Quantity) AS TotalSold
FROM OrderItem oi
JOIN Product p ON oi.ProductID = p.ProductID
JOIN Supplier s ON p.SupplierID = s.SupplierID
GROUP BY p.Name, s.SupplierName
ORDER BY TotalSold DESC
LIMIT 10;


-- List of customers and their total purchases
CREATE VIEW View_CustomerTotalPurchases AS
SELECT c.FullName, SUM(p.Price * oi.Quantity) AS TotalPurchases
FROM Customer c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID
GROUP BY c.FullName;


-- List of returned items
CREATE VIEW View_ReturnedItems AS
SELECT ri.ReturnDate, p.Name AS ProductName, c.FullName AS CustomerName, ri.Reason
FROM ReturnedItem ri
JOIN OrderItem oi ON ri.OrderItemID = oi.OrderItemID
JOIN Orders o ON oi.OrderID = o.OrderID
JOIN Customer c ON o.CustomerID = c.CustomerID
JOIN Product p ON oi.ProductID = p.ProductID;


-- List of products in the fashion category that were sold last month
CREATE VIEW View_FashionProductsSoldLastMonth AS
SELECT p.Name AS ProductName, SUM(oi.Quantity) AS QuantitySold
FROM OrderItem oi
JOIN Orders o ON oi.OrderID = o.OrderID
JOIN Product p ON oi.ProductID = p.ProductID
JOIN Category c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Clothing')
AND o.OrderDate BETWEEN '2024-04-01' AND '2024-04-30'
GROUP BY p.Name;