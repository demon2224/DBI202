UPDATE dbo.Parts
SET retailPrice = retailPrice * 0.9
WHERE partID NOT IN (
    SELECT DISTINCT partID
    FROM dbo.PartsUsed
);