SELECT p.product_id, p.product_name, s.quantity
FROM production.products p
LEFT JOIN production.stocks s ON p.product_id = s.product_id
WHERE COALESCE(s.quantity, 0) = 0;