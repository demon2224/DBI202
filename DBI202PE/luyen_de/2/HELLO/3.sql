SELECT e.name AS EventName, l.Name AS LocationName
FROM Events e
JOIN Locations l ON e.locationID = l.locationID;