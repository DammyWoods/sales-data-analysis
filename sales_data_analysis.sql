-- Sales Data Analysis SQL Queries

-- Create the sales_data table
CREATE TABLE sales_data 
(
    date DATE NOT NULL,
    sales_rep VARCHAR NOT NULL,
    shift VARCHAR NOT NULL,
    cost_price NUMERIC(10, 2) NOT NULL,
    selling_price NUMERIC(10, 2) NOT NULL,
    profit NUMERIC(10, 2),
    profit_percentage NUMERIC(10, 2),
    commission_percentage NUMERIC(10, 2),
    weekday VARCHAR
);

-- Initial select to view data
SELECT *
FROM sales_data;

-- Task 01: Calculate the Profit of each sale
UPDATE sales_data
SET profit = selling_price - cost_price;

-- Task 02: Find the Profit Percentage for each Sale
UPDATE sales_data
SET profit_percentage = (profit/cost_price) * 100;

-- Task 03: Calculate Commission for each sale
UPDATE sales_data
SET commission_percentage = CASE
    WHEN profit_percentage < 12 THEN 0
    WHEN profit_percentage BETWEEN 12 AND 20 THEN 0.5
    ELSE 1.5
END;

-- Introduce a new column to calculate the commission amount 
ALTER TABLE sales_data
ADD COLUMN commission NUMERIC(10, 2);

-- Calculate the commission amount          
UPDATE sales_data
SET commission = (commission_percentage / 100) * selling_price;

-- Task 04: Derive the Number of Shifts done by each employee
SELECT sales_rep, COUNT(shift) AS totalshift
FROM sales_data
GROUP BY sales_rep;

-- Task 05: Determine the Income for Both
ALTER TABLE sales_data
ADD COLUMN income NUMERIC(10, 2), 
ADD COLUMN shiftpay NUMERIC;

-- Update the table to show the shiftpay based on shift 
UPDATE sales_data
SET shiftpay = CASE
    WHEN shift = 'Day' THEN 40
    WHEN shift = 'Night' THEN 50
END;

-- Calculate the income for each shift
UPDATE sales_data
SET income = shiftpay + commission;

-- Calculate total income by each sales rep
SELECT sales_rep, SUM(income) AS totalincome
FROM sales_data
GROUP BY sales_rep;

-- Task 06: On Average, which day of the week is the most profitable for the company?
UPDATE sales_data
SET weekday = TO_CHAR(date, 'Day');

SELECT weekday, ROUND(AVG(profit), 2) AS averageprofit
FROM sales_data
GROUP BY weekday
ORDER BY averageprofit
LIMIT 1;

