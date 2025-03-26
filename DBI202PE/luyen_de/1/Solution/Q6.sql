SELECT 
    p.partID,
    p.partName,
    SUM(pu.numberUsed * pu.price) AS totalAmountPaid
FROM 
    dbo.Parts p
LEFT JOIN 
    dbo.PartsUsed pu
ON 
    p.partID = pu.partID
GROUP BY 
    p.partID, p.partName;