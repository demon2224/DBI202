select c.FirstName as Firstname, 
		c.LastName as Lastname, 
		sum(ord.Quantity) as TotalQuantity
from Customer c join [Order] o 
on c.id = o.CustomerId
join OrderItem ord 
on o.Id = ord.OrderId
join Product p
on p.Id = ord.ProductId
where p.ProductName = 'longlife tofu'
group by  c.FirstName, c.LastName
order by c.FirstName