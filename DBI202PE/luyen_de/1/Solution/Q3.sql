SELECT 
    c.custID,
    c.custName,
    c.cusAddress,
    COUNT(si.invoiceID) AS NumberOfInvoiceID
FROM 
    dbo.Customer c
LEFT JOIN 
    dbo.SalesInvoice si
ON 
    c.custID = si.custID
GROUP BY 
    c.custID, c.custName, c.cusAddress;
