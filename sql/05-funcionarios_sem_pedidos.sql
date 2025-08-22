SELECT s.staff_id, s.first_name, s.last_name, s.email
FROM sales.staffs s
LEFT JOIN sales.orders o ON s.staff_id = o.staff_id
WHERE o.order_id IS NULL;