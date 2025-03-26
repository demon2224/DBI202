SELECT EventID, EventName, EventDetails, EventDate, countryName
FROM tblEvent e
JOIN tblCountry c ON e.CountryID = c.CountryID
WHERE MONTH(EventDate) = 1 AND DAY(EventDate) = 1
ORDER BY EventDate ASC;
