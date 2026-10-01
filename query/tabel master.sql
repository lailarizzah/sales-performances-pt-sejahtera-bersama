SELECT 
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  (o.Quantity * p.Price) AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM `studied-jigsaw-471114-q1.sales_dataset.Orders` o
JOIN `studied-jigsaw-471114-q1.sales_dataset.Customers` c 
  ON o.CustomerID = c.CustomerID
JOIN `studied-jigsaw-471114-q1.sales_dataset.Products` p 
  ON o.ProdNumber = p.ProdNumber
JOIN `studied-jigsaw-471114-q1.sales_dataset.ProductCategory` pc 
  ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;