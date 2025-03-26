UPDATE Events
SET StartTime = DATEADD(HOUR, 2, StartTime)
WHERE eventID IN (
    SELECT e.eventID 
    FROM Events e
    JOIN workFor w ON e.eventID = w.eventID
    WHERE w.staffID = 2
);