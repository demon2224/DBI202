SELECT w.eventID, COUNT(w.staffID) as NumberStaff
FROM workFor w
GROUP BY w.eventID
HAVING COUNT(w.staffID) >= 2;