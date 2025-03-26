
CREATE PROCEDURE proc_mechanic_service_Ticket
    @mechanic decimal(18, 0),       
    @numberOfserviceTicket int OUTPUT  
AS
BEGIN
   
    SELECT 
        @numberOfserviceTicket = COUNT(DISTINCT serviceTicketID)
    FROM 
        dbo.ServiceMehanic
    WHERE 
        mechanicID = @mechanic;
END;