-- -- 1. Who is the senior most employee based on job title?

-- select * from employee
-- order by levels desc
-- limit 1


-- 2. Which countries have the most Invoices?

--select * from invoice


-- select COUNT(*) as counted_country, billing_country from invoice --counted_country (new column), where i am getting all the counts from, billing_country from invoice
-- group by billing_country
-- order by counted_country desc
-- limit 5

--3. What are top 3 values of total invoice?

-- select * from invoice
-- order by total desc
-- limit 3


-- 4. Which city has the best customers? We would like to throw a promotional Music
-- Festival in the city we made the most money. Write a query that returns one city that
-- has the highest sum of invoice totals. Return both the city name & sum of all invoice
-- totals


--select * from invoice

-- select sum(total) as invoice_total, count(*) as c_city, billing_city 
-- from invoice
-- group by billing_city
-- order by  invoice_total desc
-- limit 1

-- 5. Who is the best customer? The customer who has spent the most money will be
-- declared the best customer. Write a query that returns the person who has spent the
-- most money

-- select customer.customer_id, customer.first_name,customer.last_name, ROUND(sum(invoice.total)) as sales_cust
-- from customer
-- Join invoice on customer.customer_id = invoice.customer_id
-- group by customer.customer_id
-- order by sales_cust desc
-- limit 1;


-- 1. Write query to return the email, first name, last name, & Genre of all Rock Music
-- listeners. Return your list ordered alphabetically by email starting with A

select distinct email,first_name,last_name from customer
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id in (

	select track_id from track
	join genre on track.genre_id = genre.genre_id
	where genre.name like 'Rock'


)
order by email;






















