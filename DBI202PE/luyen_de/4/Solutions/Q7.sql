-- Subquery 2022
WITH PatientsIn2022 AS (
    SELECT 
        d.DepartmentID,
        a.PatientID
    FROM 
        Appointments a
    JOIN 
        Doctors d ON a.DoctorID = d.DoctorID
    WHERE 
        YEAR(a.AppointmentDate) = 2022
    GROUP BY 
        d.DepartmentID, a.PatientID
),

-- Subquery 2023
PatientsIn2023 AS (
    SELECT 
        d.DepartmentID,
        a.PatientID
    FROM 
        Appointments a
    JOIN 
        Doctors d ON a.DoctorID = d.DoctorID
    WHERE 
        YEAR(a.AppointmentDate) = 2023
    GROUP BY 
        d.DepartmentID, a.PatientID
),

-- Subquery 2024
PatientsIn2024 AS (
    SELECT 
        d.DepartmentID,
        a.PatientID
    FROM 
        Appointments a
    JOIN 
        Doctors d ON a.DoctorID = d.DoctorID
    WHERE 
        YEAR(a.AppointmentDate) = 2024
    GROUP BY 
        d.DepartmentID, a.PatientID
)

SELECT 
    dept.DepartmentID,
    dept.Name,
    COALESCE(COUNT(DISTINCT p2022.PatientID), 0) AS NumberOfPatientsIn2022,
    COALESCE(COUNT(DISTINCT p2023.PatientID), 0) AS NumberOfPatientsIn2023,
    COALESCE(COUNT(DISTINCT p2024.PatientID), 0) AS NumberOfPatientsIn2024
FROM 
    Departments dept
LEFT JOIN 
    PatientsIn2022 p2022 ON dept.DepartmentID = p2022.DepartmentID
LEFT JOIN 
    PatientsIn2023 p2023 ON dept.DepartmentID = p2023.DepartmentID
LEFT JOIN 
    PatientsIn2024 p2024 ON dept.DepartmentID = p2024.DepartmentID
GROUP BY 
    dept.DepartmentID, dept.Name
ORDER BY 
    dept.DepartmentID;
