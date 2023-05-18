
use PlantInventory

ALTER TABLE plants ADD category_id INT;
Alter table plants 
add constraint fk_plants_category
foreign key (category_id)
references CATEGORIES (category_id); 


CREATE TABLE Categories 
(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);
	--store different categories and their respective IDs
	--associate each plant with a specific category using a foreign key.

	--GETTING ERROR HERE
	INSERT INTO Categories 
(
category_id INT PRIMARY KEY, 
category_name INT
)
VALUES 
	(1, 'Indoor'),
    (2, 'Outdoor'),
    (3, 'Flowering'),
    (4, 'Non-Flowering'),
    (5, 'Succulents'),
    (6, 'Foliage'),
    (7, 'Herbs'),
    (8, 'Shrubs'),
    (9, 'Trees'),
    (10, 'Perennials');

	--in works, need to assign categories to the plants 


	drop table if exists Suppliers

CREATE TABLE Suppliers 
(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    number VARCHAR(20),
    address VARCHAR(255)
);
INSERT INTO Suppliers 
	(id, 
	name, 
	number, 
	address)
VALUES
    (1, 'Plant Nursery', '1234567890', '456 Elm St'),
    (2, 'Your Favourite Plants', '9876543210', '789 Oak St'),
    (3, 'Green Thumb Growers', '5551234567', '123 Main St'),
    (4, 'Floral Gardens', '4449876543', '321 Pine St'),
    (5, 'Botanical Suppliers.', '1112223333', '987 Maple Ave'),
    (6, 'Plant Paradise', '9998887777', '654 Cedar Ln'),
    (7, 'Nature Paradise', '2223334444', '246 Birch Rd'),
    (8, 'Sunshine Viridis', '7778889999', '135 Spruce Dr'),
    (9, 'Flower Power', '6665554444', '753 Willow Ave'),
    (10, 'Green Obsessed', '3331112222', '369 Oak Ln');

drop table if exists Locations

CREATE TABLE Locations 
(
    location_id INT PRIMARY KEY,
    address VARCHAR(255),
    contact_number VARCHAR(20),
    operating_hours VARCHAR(100)
);
INSERT INTO Locations 
	(location_id, 
	address, 
	contact_number, 
	operating_hours)
VALUES
    (1, '123 Main St', '1234567890', 'Mon-Fri: 9am-5pm'),
    (2, '456 Elm St', '9876543210', 'Mon-Fri: 8am-6pm'),
    (3, '789 Oak St', '5551234567', 'Mon-Fri: 9am-5pm'),
    (4, '321 Pine St', '4449876543', 'Mon-Fri: 9am-5pm'),
    (5, '987 Maple Ave', '1112223333', 'Mon-Fri: 8am-6pm'),
    (6, '654 Cedar Ln', '9998887777', 'Mon-Fri: 9am-5pm');
--for multiple physical locations or store branches

drop table if exists transactions

CREATE TABLE Transactions 
(
    transactionid INT PRIMARY KEY,
	date DATE,
    type VARCHAR(20),
    amount DECIMAL(10, 2),
    notes VARCHAR(255)
);

ALTER TABLE transactions ADD plantid INT;
Alter table transactions 
add constraint fk_plants_id
foreign key (plantid)
references plants (plantid); 

INSERT INTO Transactions 
	(transactionid, 
	plantid,
	date, 
	amount, 
	notes)
VALUES
    (1, 3, '2023-01-05', 50.00, 'Online purchase'),
    (2, 5, '2023-01-07', 75.00, 'In-store purchase'),
    (3, 23, '2023-01-10', 200.00, 'In-store purchase'),
    (4, 28,  '2023-01-12', 30.00, 'In-store purchase'),
    (5, 32, '2023-01-15', 45.00, 'Online purchase'),
    (6, 2, '2023-01-18', 150.00, 'Online purchase'),
    (7, 6,  '2023-01-20', 60.00, 'In-store purchase'),
    (8, 5, '2023-01-22', 25.00, 'Online purchase'),
    (9, 3, '2023-01-25', 100.00, 'Online order'),
    (10, 39,  '2023-01-28', 60.00, 'In-store purchase'),
	(11, 12, '2023-01-18', 75.00, 'In-store purchase'),
	(12, 30,  '2023-01-25', 30.00, 'Online purchase'),
	(13, 40, '2023-01-25', 15.00, 'Online purchase'),
	(14, 15, '2023-01-22', 250.00, 'Online purchase'),
	(15, 25, '2023-01-20', 50.00, 'Online purchase'),
	(16, 27, '2023-01-10', 60.00, 'Online purchase'),
	(17, 20, '2023-01-11', 30.00, 'Online purchase');
--track all the financial transactions related to plant sales and purchases
--store details such as the transaction date, type (sale or purchase), amount etc 






	



	
