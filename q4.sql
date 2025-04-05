-- Q4: Which city has the best customers? We would like to throw a promotional Music festival in the city 
-- we made the most money. Write a query that returns one city that has the highest sum of invoice totals/
-- Return both the city name and sum of all invoice totals

select SUM(total) as invoice_totl, billing_city 
from invoice
group by billing_city
order by invoice_totl desc
limit 1