# Customer Segmentation Analysis (SQL Server)

## 📌 Overview

This project analyzes customer purchase behavior using the AdventureWorks2022 database.
The goal was to identify how revenue is distributed across customers and uncover high-value segments that drive business performance.

## ❓ Business Problem

Companies often assume revenue is evenly distributed across customers.
In reality, a small group of customers typically generates the majority of revenue.

This analysis answers:

* How concentrated is revenue across customers?
* Which customer segments drive the most value?
* Where should the business focus retention and growth efforts?

## 🧠 Approach

* Aggregated total spending per customer using transactional data
* Applied percentile-based segmentation using SQL window functions (`NTILE`)
* Calculated key KPIs per segment:

  * number of customers
  * total revenue
  * average customer value
  * min/max customer value
  * % contribution to total revenue

## 🛠️ Tech Stack

* SQL Server (AdventureWorks2022)
* T-SQL (CTEs, window functions, aggregations)
* (Optional) Power BI / Excel for visualization

## 📊 Key Insight

The analysis revealed a highly skewed revenue distribution:

> **Top 20% of customers generate over 90% of total revenue**

This exceeds the typical 80/20 Pareto distribution.

## 💡 Business Implications

* The business is highly dependent on a small group of customers
* Losing top customers would have a significant revenue impact
* Mid-tier customers represent the strongest growth opportunity
* Low-value customers contribute marginally and should be handled cost-efficiently

## 🎯 Recommendations

* **Top segment (high-value customers):**

  * Loyalty programs
  * Personalized offers
  * Retention-focused strategies

* **Mid segment:**

  * Upselling and cross-selling
  * Targeted marketing campaigns

* **Low segment:**

  * Limit costly engagement
  * Focus on scalable, automated communication

## 📁 Project Structure

* `/sql` – SQL scripts used for analysis
* `/outputs` – query results (CSV or screenshots)
* `/visuals` – charts (revenue distribution, segmentation)
* `/docs` – optional explanation or notes

## 📈 Example Output

The segmentation results show a strong concentration of revenue in the top segment.

(See `/visuals` for charts)

## 🚀 Key Takeaway

This project demonstrates how simple SQL-based analysis can uncover critical business insights and support data-driven decision-making.
