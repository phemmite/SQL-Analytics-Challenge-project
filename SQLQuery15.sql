/*
Insert into olist_orders....values
*/
SELECT TOP (1000) [Order Id]
      ,[Order Date]
      ,[Ship Mode]
      ,[Segment]
      ,[Country]
      ,[City]
      ,[State]
      ,[Postal Code]
      ,[Region]
      ,[Category]
      ,[Sub Category]
      ,[Product Id]
      ,[cost price]
      ,[List Price]
      ,[Quantity]
      ,[Discount Percent]
  FROM [Olist_db].[dbo].[olist_orders]

  /* 
  we have to join the two tables together now usnh sql joins statement
  */

SELECT *
FROM olist_customers_dataset;

SELECT *
FROM olist_orders

/*
here the customer table and the order table does not have any key column so we cross join the datasets
*/
SELECT *
FROM olist_customers_dataset
   CROSS JOIN olist_orders 
   AS olist_datasets

   /*What is the month-over-month order growth
   */
    SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(DISTINCT order_id) AS total_orders,
    LAG(COUNT(DISTINCT order_id)) OVER (ORDER BY DATE_FORMAT(order_date, '%Y-%m')) AS prev_month_orders,
    ROUND(
        (COUNT(DISTINCT order_id) - LAG(COUNT(DISTINCT order_id)) OVER (ORDER BY DATE_FORMAT(order_date, '%Y-%m')))
        / LAG(COUNT(DISTINCT order_id)) OVER (ORDER BY DATE_FORMAT(order_date, '%Y-%m')) * 100, 2
    ) AS month_over_month_growth_pct
FROM 
    order_details
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    order_month;