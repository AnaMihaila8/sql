use PlantInventory

--Retrieve all plants
SELECT * FROM plants;


-- Retrieve plants with low quantity in stock
SELECT * FROM plants WHERE quantity > 1;


-- Retrieve total quantity sold for each plant
SELECT p.plantid, p.name, SUM(o.quantity) AS total_sold
FROM plants AS p
JOIN orders AS o ON p.plantid = o.plantid
GROUP BY p.plantid, p.name;

-- Retrieve plant details with stock status
SELECT p.plantid, p.name, p.species, p.quantity,
       CASE
           WHEN p.quantity > 0 THEN 'In Stock'
           ELSE 'Out of Stock'
       END AS stock_status
FROM plants AS p;


-- Calculate total sales for a specific date range
SELECT SUM(p.quantity * o.quantity) AS total_sales
FROM plants AS p
JOIN orders AS o ON p.plantid = o.plantid
WHERE o.orderdate BETWEEN '01.01.2021' AND '12.01.2023';


-- Calculate total revenue within a date range
SELECT SUM(p.quantity * o.quantity) AS total_revenue
FROM plants AS p
JOIN orders AS o ON p.plantid = o.plantid
WHERE o.orderdate BETWEEN '2022-06-01' AND '2023-05-10';


-- Retrieve the highest sales value by plant
select plants.name, sum(plants.price * orders.quantity) as total_sales
from orders
inner join plants on orders.plantid=plants.plantid
group by plants.name
order by total_sales desc;


-- getting error on quantity
select p.plantid, p.name, p.quantity - isnull(sum(t.quantity), 0) as plants_left
from plants p
left join transactions t on p.plantid = t.plantid
group by p.plantid, p.name, p.quantity


SELECT
    t.transactionid,
    t.date,
    t.amount AS sales_amount,
    (t.amount - p.price) AS profit
FROM
    Transactions t
JOIN
    plants p ON t.plantid = p.plantid;

--profit through sales