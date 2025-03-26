SELECT 
    m.mechanicName,
    SUM(sm.hours) AS sumHours
FROM 
    dbo.ServiceTicket st
INNER JOIN 
    dbo.ServiceMehanic sm
ON 
    st.serviceTicketID = sm.serviceTicketID
INNER JOIN 
    dbo.Mechanic m
ON 
    sm.mechanicID = m.mechanicID
WHERE 
    YEAR(st.dateReturned) = 2022
GROUP BY 
    m.mechanicName;