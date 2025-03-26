DELETE FROM AppointmentTests
WHERE TestID IN (
    SELECT TestID FROM Tests WHERE Name IN ('Blood Test', 'CT Scan')
);

DELETE FROM Tests
WHERE Name IN ('Blood Test', 'CT Scan');
