/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  yuvra
 * Created: Aug. 5, 2024
 */
INSERT INTO ITEMS (Item_Type, Name) VALUES
('Fruit', 'Pear'),
('Fruit', 'Guava'),
('Vegetable', 'Pepper'),
('Vegetable', 'Onion'),
('Grain', 'Wheat'),
('Grain', 'Rice'),
('Fruit', 'Watermenlon),
('Dairy', 'Milk'),
('Dairy', 'Cheese'),
('Meat', 'Chicken');

INSERT INTO RETAILERS (username, name, password) VALUES
('retailer1', 'Walmart', 'password123'),
('retailer2', 'Bulkbarn', 'password123'),
('retailer3', 'FreshCo', 'password123');

INSERT INTO Inventory (Item_ID, Retailer_ID, Expiration_Date, Quantity, Discounted_Price, Surplus) VALUES
(1, 1, '2025-07-31', 100, 19.99, FALSE),
(2, 1, '2025-05-30', 200, 29.99, TRUE),
(3, 2, '2025-04-31', 150, 9.99, FALSE),
(4, 2, '2025-03-30', 250, 14.99, TRUE),
(5, 3, '2025-02-31', 175, 4.99, FALSE),
(6, 3, '2025-01-31', 300, 7.99, TRUE),
(7, 1, '2024-12-30', 120, 24.99, FALSE),
(8, 2, '2024-11-31', 220, 34.99, TRUE),
(9, 3, '2024-10-30', 180, 11.99, FALSE),
(10, 1, '2024-09-31', 290, 6.99, TRUE),
(10, 1, '2024-08-28', 290, 0.00, TRUE);

