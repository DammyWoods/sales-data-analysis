# Sales Data Analysis
A comprehensive analysis of sales data, showcasing insights on profitability, commission structures, and employee performance using SQL queries.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Dataset Information](#dataset-information)
3. [Tasks and Solutions](#tasks-and-solutions)
4. [Future Enhancements](#future-enhancements)
5. [Contact Information](#contact-information)

## Project Overview
This project contains a summative SQL test to analyze sales data from a small electronics retailer. The company employs two sales representatives who work in separate day and night shifts, with differing pay rates. The dataset records sales transactions, allowing us to explore profitability, employee commissions, shift counts, and profitability trends across days of the week.

The project involves six key tasks, each addressing a specific aspect of sales data analysis, implemented using SQL queries.

## Dataset Information
The dataset contains the following fields:
- **date**: Date of each sales transaction
- **sales_rep**: Identifier for each sales representative
- **shift**: Type of shift (Day or Night)
- **cost_price**: Total cost of items sold per shift per day
- **selling_price**: Total sales value of items sold per shift per day
- **profit**: Calculated field for profit (selling price - cost price)
- **profit_percentage**: Profit margin as a percentage
- **commission_percentage**: Commission rate based on profit margin
- **commission**: Calculated commission amount based on percentage
- **weekday**: Day of the week for each transaction
- **shiftpay**: Payment per shift (e.g., $40 for day, $50 for night)
- **income**: Total income from each shift including shift pay and commission

## Tasks and Solutions
1. **Calculate the Profit for Each Sale**  
   Updates each record to calculate profit by subtracting `cost_price` from `selling_price`.
2. **Find the Profit Percentage for Each Sale**  
   Computes `profit_percentage` by dividing profit by `cost_price` and multiplying by 100.
3. **Calculate Commission for Each Sale**  
   Assigns a commission rate based on the profit percentage and calculates the commission amount:
   - **0%** for profit below 12%
   - **0.5%** for profit between 12% and 20%
   - **1.5%** for profit above 20%
4. **Determine the Number of Shifts by Each Employee**  
   Counts shifts worked by each sales representative.
5. **Determine the Income for Both Employees**  
   Calculates income per shift by adding shift pay and commission, then totals income per employee.
6. **Identify the Most Profitable Day of the Week**  
   Determines the average profit per weekday and identifies the most profitable day.

## Future Enhancements
Extend analysis with visualizations for profitability and employee performance trends.

## Contact Information
For questions or collaboration, reach out via GitHub or email at damilolaobimuyiwa@gmail.com
