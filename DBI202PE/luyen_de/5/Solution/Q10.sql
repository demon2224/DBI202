BEGIN TRANSACTION;

-- Step 1: Delete from AppointmentTests where the TestID corresponds to 'MRI Scan' or 'X-Ray'
DELETE FROM AppointmentTests
WHERE TestID IN (
    SELECT TestID FROM Tests WHERE Name IN ('MRI Scan', 'X-Ray')
);

-- Step 2: Delete from Tests table where the test names are 'MRI Scan' and 'X-Ray'
DELETE FROM Tests
WHERE Name IN ('MRI Scan', 'X-Ray');

COMMIT TRANSACTION;
