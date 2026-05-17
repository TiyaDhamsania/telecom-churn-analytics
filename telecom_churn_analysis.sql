SELECT * FROM customers LIMIT 10;
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT Churn, COUNT(*) AS total
FROM customers
GROUP BY Churn;
SELECT 
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0
        / COUNT(*),2
    ) AS churn_rate
FROM customers;
SELECT AVG(MonthlyCharges) AS avg_monthly_charge
FROM customers;
SELECT Contract, Churn, COUNT(*) AS total
FROM customers
GROUP BY Contract, Churn;
SELECT InternetService, Churn, COUNT(*) AS total
FROM customers
GROUP BY InternetService, Churn;
SELECT customerID, MonthlyCharges
FROM customers
ORDER BY MonthlyCharges DESC
LIMIT 10;
SELECT SeniorCitizen, Churn, COUNT(*) AS total
FROM customers
GROUP BY SeniorCitizen, Churn;
SELECT 
    Churn,
    AVG(tenure) AS avg_tenure
FROM customers
GROUP BY Churn;
SELECT PaymentMethod, Churn, COUNT(*) AS total
FROM customers
GROUP BY PaymentMethod, Churn;