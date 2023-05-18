 use PlantInventory
 
 drop table if exists plants; 
 drop table if exists orders
 drop table if exists customers 
 GO
 
CREATE TABLE Plants (
    plantid INT PRIMARY KEY,
    name VARCHAR(100),
    species VARCHAR(100),
    origincountry VARCHAR(100),
    price DECIMAL(10, 2),
    sunlightdemand VARCHAR(100),
    size VARCHAR(100),
	quantity INT
);
INSERT INTO Plants 
(plantid, 
name, 
species, 
origincountry, 
price, 
sunlightdemand, 
size,
quantity)
VALUES 
	(1, 'Rose', 'Rosa', 'England', 10.99, 'High', 'Medium', 100),
    (2, 'Tulip', 'Tulipa', 'Netherlands', 5.99, 'Medium', 'Small', 100),
    (3, 'Lavender', 'Lavandula', 'France', 7.99, 'High', 'Small', 100),
    (4, 'Sunflower', 'Helianthus', 'United States', 3.99, 'High', 'Large', 100),
    (5, 'Orchid', 'Orchidaceae', 'Various', 12.99, 'Medium', 'Small', 100),
    (6, 'Fern', 'Polypodiopsida', 'Various', 6.99, 'Medium', 'Medium', 100),
    (7, 'Cactus', 'Cactaceae', 'Mexico', 8.99, 'Low', 'Small', 100),
    (8, 'Daisy', 'Bellis perennis', 'Europe', 4.99, 'Medium', 'Small', 100),
    (9, 'Bamboo', 'Bambusoideae', 'China', 9.99, 'High', 'Large', 100),
    (10, 'Palm', 'Arecaceae', 'Tropical regions', 11.99, 'High', 'Large', 100),
    (11, 'Jasmine', 'Jasminum', 'Asia', 7.99, 'Medium', 'Medium', 100),
    (12, 'Daffodil', 'Narcissus', 'Spain', 5.99, 'Medium', 'Small', 100),
    (13, 'Lily', 'Lilium', 'Asia', 8.99, 'High', 'Medium', 100),
    (14, 'Carnation', 'Dianthus caryophyllus', 'Mediterranean', 6.99, 'Medium', 'Small', 100),
    (15, 'Geranium', 'Pelargonium', 'South Africa', 7.99, 'Medium', 'Medium', 100),
    (16, 'Hydrangea', 'Hydrangea', 'Asia', 10.99, 'Medium', 'Large', 100),
    (17, 'Peony', 'Paeonia', 'China', 9.99, 'Medium', 'Medium', 100),
    (18, 'Aloe Vera', 'Aloe vera', 'Arabian Peninsula', 5.99, 'High', 'Small', 100),
    (19, 'Chrysanthemum', 'Chrysanthemum', 'Asia', 6.99, 'Medium', 'Medium', 100),
    (20, 'Succulent', 'Succulenta', 'Various', 4.99, 'Low', 'Small', 100),
    (21, 'Carnation', 'Dianthus', 'Europe', 5.99, 'Medium', 'Small', 100),
    (22, 'Dahlia', 'Dahlia', 'Mexico', 8.99, 'Medium', 'Large', 100),
    (23, 'Peacock Fern', 'Selaginella uncinata', 'Tropical regions', 6.99, 'High', 'Small', 100),
    (24, 'Snake Plant', 'Sansevieria', 'West Africa', 9.99, 'Low', 'Medium', 100),
    (25, 'Lemon Tree', 'Citrus limon', 'Mediterranean', 12.99, 'High', 'Large', 100),
    (26, 'Pansy', 'Viola tricolor', 'Europe', 3.99, 'Medium', 'Small', 100),
    (27, 'Bonsai Tree', 'Various', 'Japan', 19.99, 'Medium', 'Small', 100),
    (28, 'Bird of Paradise', 'Strelitzia reginae', 'South Africa', 14.99, 'High', 'Large', 100),
    (29, 'African Violet', 'Saintpaulia', 'Tanzania', 7.99, 'Medium', 'Small', 100),
    (30, 'Peace Lily', 'Spathiphyllum', 'Central America', 11.99, 'Medium', 'Medium', 100),
    (31, 'Moss Rose', 'Portulaca grandiflora', 'South America', 4.99, 'High', 'Small', 100),
    (32, 'Hibiscus', 'Hibiscus', 'Tropical regions', 9.99, 'High', 'Large', 100),
    (33, 'Morning Glory', 'Ipomoea', 'North America', 5.99, 'High', 'Large', 100),
    (34, 'Ficus Tree', 'Ficus', 'Various', 17.99, 'Medium', 'Large', 100),
    (35, 'Snapdragon', 'Antirrhinum', 'Mediterranean', 6.99, 'Medium', 'Medium', 100),
    (36, 'Marigold', 'Tagetes', 'Mexico', 3.99, 'High', 'Medium', 100),
    (37, 'Fiddle Leaf Fig', 'Ficus lyrata', 'West Africa', 24.99, 'Medium', 'Large', 100),
    (38, 'Lupine', 'Lupinus', 'North America', 8.99, 'High', 'Medium', 100),
    (39, 'Canna Lily', 'Canna', 'South America', 7.99, 'High', 'Large', 100),
    (40, 'Dumb Cane', 'Dieffenbachia', 'Tropical regions', 11.99, 'Medium', 'Medium', 100);


CREATE TABLE Customers (
    customerid INT PRIMARY KEY,
    name VARCHAR(100),
    contactnumber VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(200),
    country VARCHAR(100)
);
INSERT INTO Customers 
	(customerid, 
	name, 
	contactnumber, 
	email, 
	address, 
	country)
VALUES
    (1, 'John Smith', '1234567890', 'john.smith@example.com', '123 Main St', 'USA'),
    (2, 'Jane Doe', '2345678901', 'jane.doe@example.com', '456 Elm St', 'USA'),
    (3, 'Bob Johnson', '3456789012', 'bob.johnson@example.com', '789 Oak Ave', 'USA'),
    (4, 'Mary Brown', '4567890123', 'mary.brown@example.com', '321 Maple Ln', 'USA'),
    (5, 'Tom Davis', '5678901234', 'tom.davis@example.com', '654 Pine Dr', 'USA'),
    (6, 'Samantha Lee', '6789012345', 'samantha.lee@example.com', '987 Cedar Rd', 'USA'),
    (7, 'David Kim', '7890123456', 'david.kim@example.com', '159 Walnut Blvd', 'USA'),
    (8, 'Michelle Chen', '8901234567', 'michelle.chen@example.com', '357 Birch Rd', 'USA'),
    (9, 'Eric Liu', '9012345678', 'eric.liu@example.com', '753 Spruce Dr', 'USA'),
    (10, 'Jennifer Nguyen', '0123456789', 'jennifer.nguyen@example.com', '246 Willow Ave', 'USA'),
    (11, 'William Johnson', '3456789012', 'william.johnson@example.com', '987 Oak Ln', 'USA'),
    (12, 'Amanda Davis', '4567890123', 'amanda.davis@example.com', '321 Pine Rd', 'USA'),
    (13, 'Tommy Lee', '5678901234', 'tommy.lee@example.com', '654 Cedar Dr', 'USA'),
    (14, 'Emily Wang', '6789012345', 'emily.wang@example.com', '987 Walnut Ave', 'USA'),
    (15, 'Henry Chen', '7890123456', 'henry.chen@example.com', '159 Birch Blvd', 'USA'),
    (16, 'Karen Kim', '8901234567', 'karen.kim@example.com', '357 Spruce Rd', 'USA'),
    (17, 'Sean Park', '9012345678', 'sean.park@example.com', '753 Willow Dr', 'USA'),
    (18, 'Sarah Johnson', '0123456789', 'sarah.johnson@example.com', '246 Oak Ave', 'USA'),
    (19, 'Brandon Davis', '1234567890', 'brandon.davis@example.com', '369 Pine Ln', 'USA'),
    (20, 'Linda Lee', '2345678901', 'linda.lee@example.com', '135 Cedar Rd', 'USA'),
    (21, 'Jeffrey Chen', '3456789012', 'jeffrey.chen@example.com', '246 Walnut Blvd', 'USA'),
    (22, 'Kimberly Kim', '4567890123', 'kimberly.kim@example.com', '753 Birch Rd', 'USA'),
    (23, 'Paul Kim', '5678901234', 'paul.kim@example.com', '369 Spruce Dr', 'USA'),
    (24, 'Laura Davis', '6789012345', 'laura.davis@example.com', '135 Willow Ave', 'USA'),
    (25, 'Matthew Lee', '7890123456', 'matthew.lee@example.com', '246 Oak Ln', 'USA'),
    (26, 'Natalie Chen', '8901234567', 'natalie.chen@example.com', '753 Pine Rd', 'USA'),
    (27, 'Oscar Johnson', '9012345678', 'oscar.johnson@example.com', '369 Cedar Dr', 'USA'),
    (28, 'Julia Davis', '0123456789', 'julia.davis@example.com', '135 Walnut Ave', 'USA'),
    (29, 'Kevin Smith', '1234567890', 'kevin.smith@example.com', '246 Birch Blvd', 'USA'),
    (30, 'Sophie Johnson', '2345678901', 'sophie.johnson@example.com', '753 Spruce Rd', 'USA');

	
CREATE TABLE Orders (
    orderid INT PRIMARY KEY,
    orderdate DATE,
    customerid INT,
    plantid INT,
    quantity INT,
    FOREIGN KEY (customerid) REFERENCES customers (customerid),
    FOREIGN KEY (plantid) REFERENCES plants (plantid)
);
INSERT INTO Orders 
	(orderid,
	orderdate, 
	customerid, 
	plantid, 
	quantity)
VALUES
    (1, '2022-05-20', 1, 1, 5),
    (2, '2022-05-22', 2, 2, 2),
    (3, '2022-05-23', 3, 3, 1),
    (4, '2022-05-25', 4, 4, 3),
    (5, '2022-05-27', 5, 5, 2),
    (6, '2022-05-30', 6, 6, 1),
    (7, '2022-06-02', 7, 7, 4),
    (8, '2022-06-05', 8, 8, 2),
    (9, '2022-06-08', 9, 9, 3),
    (10, '2022-06-11', 10, 10, 1),
    (11, '2022-06-14', 11, 11, 5),
    (12, '2022-06-17', 12, 12, 2),
    (13, '2022-06-20', 13, 13, 1),
    (14, '2022-06-23', 14, 14, 3),
    (15, '2022-06-26', 15, 15, 2),
    (16, '2022-06-29', 16, 16, 1),
    (17, '2022-07-02', 17, 17, 4),
    (18, '2022-07-05', 18, 18, 2),
    (19, '2022-07-08', 19, 29, 3),
	(20, '2022-07-11', 20, 20, 4),
    (21, '2022-07-11', 21, 31, 1),
	(22, '2022-07-11', 22, 22, 4),
	(23, '2022-07-08', 23, 23, 1),
	(24, '2022-05-22', 24, 40, 1),
	(25, '2022-07-08', 25, 25, 2),
	(26, '2022-06-11', 26, 26, 3),
	(27, '2022-05-20', 27, 27, 1),
	(28,'2022-05-20', 28, 38, 1),
	(29, '2022-06-02', 29, 19, 8),
	(30,'2022-07-11', 30, 30, 1);

