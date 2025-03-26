select p.id as ProductId, 
	p.ProductName, 
	sum(o.Quantity) as Quantity
from Product p 
join OrderItem o on p.Id = o.ProductId
join [Order] ord on o.OrderId = ord.Id
where month(ord.OrderDate) = 12
group by p.id, p.ProductName
having sum(o.Quantity) >= 120 
order by Quantity