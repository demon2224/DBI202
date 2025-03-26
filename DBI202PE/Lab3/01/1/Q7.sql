select s.id as SupplierId, 
			s.CompanyName, 
			s.ContactName, 
			s.City, 
			s.Country, 
			s.Phone
from Supplier s 
join Product p
on s.Id = p.SupplierId
group by s.id, s.CompanyName, s.ContactName, s.City, s.Country, s.Phone
having count(p.Id) = (
	select min(countP)
	from (select count(id) as countP
			from Product
			group by SupplierId) as sub
)