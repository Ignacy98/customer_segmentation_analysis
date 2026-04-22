WITH customers AS (
SELECT c.CustomerID,
	SUM(soh.TotalDue) AS total_spent
FROM Sales.Customer c
LEFT JOIN Sales.SalesOrderHeader soh
ON c.CustomerID=soh.CustomerID
GROUP BY c.CustomerID
),

segments AS (
SELECT *,
	NTILE(5) OVER (ORDER BY total_spent DESC) AS segment
FROM customers
)

SELECT segment,
	ROUND(AVG(total_spent), 2) AS average_money_spent,
	SUM(total_spent) * 100.0 / SUM(SUM(total_spent)) OVER () AS percent_total_revenue
FROM segments
GROUP BY segment
ORDER BY segment