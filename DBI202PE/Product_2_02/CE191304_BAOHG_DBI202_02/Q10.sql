/*Delete all Customers who did not order any products*/
DELETE c
FROM Customer c
LEFT JOIN [Order] o ON c.Id = o.CustomerId
WHERE o.CustomerId IS NULL;

