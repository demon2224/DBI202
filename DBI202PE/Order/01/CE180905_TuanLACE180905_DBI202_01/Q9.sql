UPDATE oi
SET oi.discount = 0.50
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
WHERE CAST(o.order_date AS DATE) = '2018-02-14';