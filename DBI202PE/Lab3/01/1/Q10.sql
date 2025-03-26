delete from Product
where Id NOT IN (select distinct ProductId from OrderItem);