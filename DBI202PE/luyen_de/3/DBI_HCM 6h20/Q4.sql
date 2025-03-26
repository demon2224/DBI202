SELECT eventID, COUNT(staffID) AS NumberStaff
FROM workFor
GROUP BY eventID
HAVING COUNT(staffID) >= 2;
