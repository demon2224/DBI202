WITH EventCounts AS (
    SELECT l.locationID, l.Name, COUNT(e.eventID) as EventCount
    FROM Locations l
    LEFT JOIN Events e ON l.locationID = e.locationID
    GROUP BY l.locationID, l.Name
)
SELECT Name
FROM EventCounts
WHERE EventCount = (
    SELECT MAX(EventCount)
    FROM EventCounts
);