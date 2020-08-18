SELECT * FROM classic_model.customers;

-- select by primary key
select * from customrs
where customernumber = 131;

-- count function
select count(*) from customers;

-- count with an alias
select count(*) as row_count  
from customers;

-- sum function
select sum(creditlimit);

-- avg and format and concat function
select concat('$',format(avg(creditlimit),2)) as avg_credit_limit
from customers;

-- group by avg, format, concat function by country
select country, concat('$', format(avg(creditlimit),2)) as avg_credit_limit
from customers
group by country
order by avg(creditlimit) desc;

-- max credit limit
select max(creditlimit)
from customers;

-- min credit limit
select min(creditlimit)
from customers;

