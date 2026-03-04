-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

select *
from [PC_Salesdb].[dbo].[PC_Data]

-- 1. Count the total number of sales records.
select count(sale_price) as sales_record
from [PC_Salesdb].[dbo].[PC_Data]
-- 2. Count the number of sales per Continent.
select count(sale_price) as sales_record,
       continent
from [PC_Salesdb].[dbo].[PC_Data]
group by Continent

-- 3. Count the number of sales per Country or State.

select count(sale_price) as sales_record,
       Country_or_State
from [PC_Salesdb].[dbo].[PC_Data]
group by Country_or_State

-- 4. List all distinct Shop Name values.

select distinct(shop_name)
from [PC_Salesdb].[dbo].[PC_Data] 
-- 5. Find the average Sale Price.

select avg(Sale_Price) as avg_sale_price
from [PC_Salesdb].[dbo].[PC_Data] 

-- 6. Find the highest and lowest Sale Price.

select min(Sale_Price) as min_sale_price,
       max(Sale_Price) as max_sale_price
from [PC_Salesdb].[dbo].[PC_Data] 

-- 7. Count the number of sales by Payment Method.

select count(Sale_Price) as sale_price_by_payment_method,
       Payment_Method
from [PC_Salesdb].[dbo].[PC_Data] 
group by Payment_Method

-- 8. Count the number of sales by Channel (Online vs Offline).

select count(Sale_Price) as sale_price_online_vs_offline,
       Channel
from [PC_Salesdb].[dbo].[PC_Data] 
group by Channel

-- 9. Count the number of sales by Priority level.

select count(Sale_Price) as sale_price_priority,
       Priority
from [PC_Salesdb].[dbo].[PC_Data] 
group by Priority

-- 10. Count the number of distinct PC Make values.

select count (distinct(PC_Make)) as value_by_pc_make
from [PC_Salesdb].[dbo].[PC_Data] 

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

select sum(Sale_Price) as total_revenue
from [PC_Salesdb].[dbo].[PC_Data]

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

select sum(Sale_Price - Cost_Price) as total_profit
from [PC_Salesdb].[dbo].[PC_Data]

-- 13. Find the average Discount Amount.

select avg(discount_amount) avg_discount_amount
from [PC_Salesdb].[dbo].[PC_Data]

-- 14. Calculate total Finance Amount issued.

select sum(convert(money,(Finance_Amount))) as total_finance_amount 
from [PC_Salesdb].[dbo].[PC_Data]

select sum(convert(int,(finance_amount))) as total_finance_amount
from [PC_Salesdb].[dbo].[PC_Data]

select sum(convert(float,(finance_amount))) as total_finance_amount
from [PC_Salesdb].[dbo].[PC_Data]

-- 15. Find total revenue per PC Make.

select PC_Make,
       sum(Sale_Price) as total_revenue
from [PC_Salesdb].[dbo].[PC_Data]
group by PC_Make

-- 16. Find average Sale Price per Storage Type.

select Storage_Type,
       avg(sale_price) as avg_sale_price
from [PC_Salesdb].[dbo].[PC_Data]
group by Storage_Type

-- 17. Calculate total revenue per Shop Name.

select Shop_Name,
       sum(sale_price) as total_revenue
from [PC_Salesdb].[dbo].[PC_Data]
group by Shop_Name

-- 18. Calculate total revenue per Sales Person Name.

select Sales_Person_Name,
       sum(sale_price) as total_revenue_sales
from [PC_Salesdb].[dbo].[PC_Data]
group by Sales_Person_Name

-- 19. Find average Credit Score per Payment Method.

select Payment_Method,
       avg(Credit_Score) as avg_credit_score
from [PC_Salesdb].[dbo].[PC_Data]
group by Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.

select Sales_Person_Department,
       sum(convert(money,(Cost_of_Repairs))) as total_revenue
from [PC_Salesdb].[dbo].[PC_Data]
group by Sales_Person_Department

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

select Shop_Name,
       sum(Sale_Price - Cost_Price) as total_profit_per_shop_name
from [PC_Salesdb].[dbo].[PC_Data]
group by Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) /Sale Price).

select sum((Sale_Price - Cost_Price)/Sale_Price) as total_profit_margin
from [PC_Salesdb].[dbo].[PC_Data]

-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

