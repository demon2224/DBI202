/*Write a procedure List_product to display the list information of
Product, Quantity, Unitprice
(of OrderItem), Price (calculated by Quantity * Unitprice) 
when knowing the Id of Customer.
Display the result sorted by Product name*/
CREATE OR ALTER PROCEDURE Create_an_invoice
(@in INT)
AS 
BEGIN 
SELECT p.ProductName, o.Quantity, o.UnitPrice, (o.Quantity * o.UnitPrice) AS Price
FROM OrderItem o
JOIN Product p ON p.Id = o.ProductId
WHERE O.OrderId = @in
ORDER BY p.ProductName ASC
END;
