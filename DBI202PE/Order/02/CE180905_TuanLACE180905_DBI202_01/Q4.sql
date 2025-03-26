SELECT
	b.brand_id,
	b.brand_name,
	COUNT(p.product_id) AS [Number of Products]
FROM
	brands b
LEFT JOIN
	products p ON b.brand_id = p.brand_id
GROUP BY
	b.brand_id,
	b.brand_name
HAVING
	COUNT(p.product_id) >= 10
ORDER BY
	[Number of Products];