SELECT TOP 3 co.ContinentName, COUNT(EventID) 'Number of Events'
FROM tblEvent e
JOIN tblCountry c ON e.CountryID = c.CountryID
JOIN tblContinent co ON c.ContinentID = co.ContinentID
GROUP BY co.ContinentName
ORDER BY COUNT(EventID) DESC

