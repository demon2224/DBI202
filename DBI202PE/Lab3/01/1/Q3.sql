select o.Id as OrderID, 
	o.TotalAmount, 
	c.FirstName + ', ' + c.LastName as Fullname, 
	Country
from Customer c join [Order] o
on c.Id = o.CustomerId
where o.TotalAmount between 6400 and 10000
order by o.TotalAmount