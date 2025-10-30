
-- Example: Category revenue ranking
SELECT category, SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY category
ORDER BY revenue DESC;
