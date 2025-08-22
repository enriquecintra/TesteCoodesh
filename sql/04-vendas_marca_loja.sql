SELECT b.brand_name,
       st.store_name,
       COUNT(oi.order_id) AS total_vendas
FROM production.brands b
INNER JOIN production.products p ON b.brand_id = p.brand_id
CROSS JOIN sales.stores st
LEFT JOIN sales.order_items oi ON p.product_id = oi.product_id
LEFT JOIN sales.orders o ON oi.order_id = o.order_id AND o.store_id = st.store_id
GROUP BY b.brand_name, st.store_name
ORDER BY b.brand_name, st.store_name;