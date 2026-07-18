--Generate a report that shows all key metrics of the business

select 'total_sales' as measure_name, sum(sales_amount) as measure_value From .fact_sales
union all
select 'total_items_sold', sum(quantity) From .fact_sales
union all
select 'Avg_price', AVG(price) From .fact_sales
union all
select 'total_orders', Count(distinct order_number) From .fact_sales
union all
select 'total_products', Count(product_number) From .dim_products
union all
select 'total_Nr_customer', Count(customer_key) From .dim_customers