SELECT c.CategoryID, c.CategoryName, COUNT (EventID) AS 'Number of Events'
FROM tblEvent e
JOIN tblCategory c ON e.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName
HAVING COUNT(e.EventID) > 10
ORDER BY COUNT (EventID);