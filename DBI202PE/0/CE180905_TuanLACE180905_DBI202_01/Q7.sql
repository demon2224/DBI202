SELECT c.CountryID, c.CountryName, c.ContinentID
FROM tblCountry c
LEFT JOIN tblEvent e ON c.CountryID = e.CountryID
WHERE e.EventID IS NULL;
