use dwh;

-- Sara's Query: Total Sales by Product Category

SELECT
  p.category,
  SUM(f.sales_amount) AS total_sales
FROM
  sales_fact f
JOIN
  product_dim p
ON
  f.product_id = p.product_id
GROUP BY
  p.category
ORDER BY
  total_sales DESC;
