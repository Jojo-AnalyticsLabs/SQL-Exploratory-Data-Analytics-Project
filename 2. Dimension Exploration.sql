--Explore all countries our customers came from.
select
distinct country
from .dim_customers

--explore all category 'The major division'
select
distinct category,
subcategory,
product_name
from .dim_products