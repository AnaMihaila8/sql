select plantid, name
from plants
order by name asc;
--arranging plants alphabetically 

select plantid, name, price
from plants 
where price < 10;
--plants under 10 dollars

select customerid, sum(quantity) as total_quantity
from orders
group by customerid;
--determining how many orders a customer has placed

select customerid, count(*) as order_count
from orders
group by customerid
having count(*) > 10;
--retrieving customers who places more than 10 orders

select top 5 plantid, name, price
from plants
order by price desc;
--retrieving most 5 expensive plants

select o.orderid, o.orderdate, c.name
from orders o
join customers c on o.customerid=c.customerid;
-- retrieving order with the corresponding customer info


