SELECT 
    c.custName,
    c.cusAddress,
    st.serviceTicketID,
    st.dateReturned
FROM 
    dbo.Customer c
INNER JOIN 
    dbo.ServiceTicket st
ON 
    c.custID = st.custID
ORDER BY 
    st.dateReturned DESC;