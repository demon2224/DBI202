SELECT SubcategoryID,
	   Category,
	   Name
FROM ProductSubcategory p
WHERE SubcategoryID >= 15 AND SubcategoryID <=20
ORDER BY SubcategoryID DESC