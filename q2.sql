--q2: which countries have the most invoices?

select COUNT(*) as c, billing_country
from invoice
group by billing_country
order by c desc