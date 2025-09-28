-- GOAL 1: Top 5 best-selling products per month using RANK()

SELECT * FROM (
    SELECT 
        p.product_name,
        TO_CHAR(t.transaction_date, 'YYYY-MM') as month,
        SUM(t.amount) as total_revenue,
        RANK() OVER (
            PARTITION BY TO_CHAR(t.transaction_date, 'YYYY-MM') 
            ORDER BY SUM(t.amount) DESC
        ) as revenue_rank
    FROM transactions t
    JOIN products p ON t.product_id = p.product_id
    GROUP BY p.product_name, TO_CHAR(t.transaction_date, 'YYYY-MM')
)
WHERE revenue_rank <= 5
ORDER BY month, revenue_rank;

-- GOAL 2: Running monthly sales totals using SUM() OVER()

SELECT 
    TO_CHAR(transaction_date, 'YYYY-MM-DD') as sale_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY TO_CHAR(transaction_date, 'YYYY-MM')
        ORDER BY transaction_date
    ) as monthly_running_total
FROM transactions
ORDER BY transaction_date;

-- GOAL 3: Month-over-month growth percentages using LAG()

WITH monthly_sales AS (
    SELECT 
        TO_CHAR(transaction_date, 'YYYY-MM') as month,
        SUM(amount) as total_sales
    FROM transactions
    GROUP BY TO_CHAR(transaction_date, 'YYYY-MM')
)
SELECT 
    month,
    total_sales,
    LAG(total_sales, 1) OVER (ORDER BY month) as previous_month,
    ROUND(
        (total_sales - LAG(total_sales, 1) OVER (ORDER BY month)) / 
        LAG(total_sales, 1) OVER (ORDER BY month) * 100, 
        2
    ) as growth_percentage
FROM monthly_sales
ORDER BY month;

-- GOAL 4: Customer quartiles using NTILE(4)

SELECT 
    c.customer_name,
    SUM(t.amount) as total_spent,
    NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) as customer_quartile,
    CASE 
        WHEN NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) = 1 THEN 'Premium'
        WHEN NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) = 2 THEN 'Regular'
        WHEN NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) = 3 THEN 'Occasional'
        ELSE 'New'
    END as customer_segment
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_name
ORDER BY customer_quartile, total_spent DESC;

-- GOAL 5: 3-month moving averages using AVG() OVER()

SELECT DISTINCT
    TO_CHAR(transaction_date, 'YYYY-MM') as month,
    ROUND(AVG(amount) OVER (
        ORDER BY TO_CHAR(transaction_date, 'YYYY-MM')
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ), 2) as moving_avg_3_months
FROM transactions
ORDER BY month;
