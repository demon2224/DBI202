select top 10 p.id as Productid,
			p.ProductName as Productname,
			sum(o.UnitPrice*o.Quantity) as Revenue
from Product p join OrderItem o on p.Id = o.ProductId
join [Order] ord on ord.Id = o.OrderId
where year(ord.OrderDate) = 2014
group by p.Id, p.ProductName
order by sum(o.UnitPrice*o.Quantity) desc