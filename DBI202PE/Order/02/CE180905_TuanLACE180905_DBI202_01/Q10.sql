CREATE TRIGGER trgins_2
ON staffs
AFTER INSERT
AS
BEGIN
    -- Cập nhật cột email thành chữ thường cho bản ghi vừa chèn
    UPDATE staffs
    SET email = LOWER(i.email)
    FROM staffs s
    JOIN inserted i ON s.staff_id = i.staff_id;
END;

/*INSERT INTO staffs(first_name, last_name, email, phone, active, store_id, manager_id)
VALUES('Anna', 'Nguyen', 'ANNA.NGUYEN@hotmail.com', NULL, 1, 3, 1);

SELECT first_name, last_name, email, phone, active, store_id, manager_id
FROM staffs 
WHERE staff_id = (SELECT max(staff_id) FROM staffs)*/
