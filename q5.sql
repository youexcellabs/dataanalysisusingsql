-- Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer.
-- write a query that returns the person who has spent the most money

-- select * from customer

select customer.customer_id,customer.first_name,customer.last_name, sum(invoice.total) as total
from customer
Join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1