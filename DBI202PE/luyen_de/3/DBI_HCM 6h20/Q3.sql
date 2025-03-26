SELECT locationID, COUNT(*) AS TotalEvents
FROM Events
GROUP BY locationID
ORDER BY locationID;
