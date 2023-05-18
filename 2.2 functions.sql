use PlantInventory

select count(*) as total_plants
from plants;
--numbers of plants available in inventory

select sum(price) as total_price
from plants;
--calculating total price in the price table

select avg(price) as average_price
from plants;
--retrieving the average price

