SELECT COUNT(EventID) 'Number of Events in Asia'
FROM tblEvent e
JOIN tblCountry c ON e.CountryID = c.CountryID
JOIN tblContinent co ON c.ContinentID = co.ContinentID
WHERE co.ContinentName = 'Asia';
