DELETE FROM staffs
WHERE staff_id NOT IN (
    -- Lấy danh sách staff_id là manager
    SELECT DISTINCT manager_id 
    FROM staffs 
    WHERE manager_id IS NOT NULL
)
AND staff_id NOT IN (
    -- Lấy danh sách staff_id đã xử lý đơn hàng
    SELECT DISTINCT staff_id 
    FROM orders
);