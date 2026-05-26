SQL QUERIES (SQLITE)


1)Product Level Profitability Analysis
 
SELECT
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(gross_profit) AS Total_Profit,
    SUM(units) AS Total_Units,
    ROUND(SUM(gross_profit) / SUM(sales) * 100, 2) AS Gross_Margin_Percent,
    ROUND(SUM(gross_profit) / SUM(units), 2) AS Profit_Per_Unit
FROM NassauCandyDistributor
GROUP BY product_name
ORDER BY Total_Sales DESC;


2)Profitability Metrics Calculation

SELECT
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(gross_profit) AS Total_Profit,
    SUM(units) AS Total_Units,
    ROUND(SUM(gross_profit) / SUM(sales) * 100, 2) AS Gross_Margin_Percent,
    ROUND(SUM(gross_profit) / SUM(units), 2) AS Profit_Per_Unit
FROM NassauCandyDistributor
GROUP BY product_name
ORDER BY Total_Profit DESC;


3) Pareto Analysis

SELECT
    product_name,
    SUM(gross_profit) AS Total_Profit
FROM NassauCandyDistributor
GROUP BY product_name
ORDER BY Total_Profit DESC;


4) Division Level Analysis

SELECT
    division,
    SUM(sales) AS Total_Sales,
    SUM(gross_profit) AS Total_Profit,
    ROUND(SUM(gross_profit) / SUM(sales) * 100, 2) AS Gross_Margin_Percent
FROM NassauCandyDistributor
GROUP BY division
ORDER BY Total_Profit DESC;


5) Cost Structure Diagnostics
 
SELECT
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(cost) AS Total_Cost,
    SUM(gross_profit) AS Total_Profit,
    ROUND(SUM(gross_profit) / SUM(sales) * 100, 2) AS Gross_Margin_Percent
FROM NassauCandyDistributor
GROUP BY product_name
ORDER BY Gross_Margin_Percent ASC;