--checking for years of sales in the business

select
min(order_date) first_order_date,
max(order_date) last_order_date,
datediff(year, min(order_date), max(order_date)) as years_of_sales
FROM .fact_sales;

--Checking for youngest and oldest customer

select
min(birthdate) oldest_birthday,
datediff(year, min(birthdate), getdate()) as oldest_age,
max(birthdate) as youngest_birthdate,
datediff(year, max(birthdate), getdate()) as youngest_age
FROM .dim_customers;