/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  yuvra
 * Created: Aug. 6, 2024
 */
DROP DATABASE IF EXISTS fooddistributiondb;
CREATE DATABASE fooddistributiondb;
USE fooddistributiondb;

CREATE TABLE user (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    user_type VARCHAR(50)
);

CREATE TABLE charitableorganization (
    charitable_org_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    orgName VARCHAR(255),
    orgAddress TEXT,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE retailer (
    retailer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    storeName VARCHAR(255),
    address TEXT,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE consumer (
    consumer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    address TEXT,
    phoneNum VARCHAR(15),
    mailAddress VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    retailer_id INT,
    nameInv VARCHAR(255),
    quantityInv INT,
    FOREIGN KEY (retailer_id) REFERENCES retailer(retailer_id)
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    consumer_id INT,
    inventory_id INT,
    FOREIGN KEY (consumer_id) REFERENCES consumer(consumer_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

CREATE TABLE subscription (
    subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    locationUser TEXT,
    communication_method VARCHAR(50),
    subsDate DATE,
    last_notification_date DATE,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE surplusfood (
    surplus_food_id INT AUTO_INCREMENT PRIMARY KEY,
    retailer_id INT,
    foodName VARCHAR(255),
    quantity INT,
    expirationDate DATE,
    subscription_id INT,
    FOREIGN KEY (retailer_id) REFERENCES retailer(retailer_id),
    FOREIGN KEY (subscription_id) REFERENCES subscription(subscription_id)
);

CREATE TABLE claim (
    claim_id INT AUTO_INCREMENT PRIMARY KEY,
    charitable_org_id INT,
    inventory_id INT,
    FOREIGN KEY (charitable_org_id) REFERENCES charitableorganization(charitable_org_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

-- Views to list surplus items and donations for consumers and charitable organizations
CREATE VIEW LIST_SURPLUS AS
SELECT 
    R.storeName AS Retailer,
    I.nameInv AS 'Item Name',
    I.quantityInv AS Quantity
FROM 
    inventory I
INNER JOIN 
    retailer R ON R.retailer_id = I.retailer_id
WHERE 
    I.quantityInv > 0;

CREATE VIEW LIST_DONATION AS
SELECT 
    R.storeName AS Retailer,
    I.nameInv AS 'Item Name',
    I.quantityInv AS Quantity
FROM 
    inventory I
INNER JOIN 
    retailer R ON R.retailer_id = I.retailer_id
INNER JOIN 
    claim C ON C.inventory_id = I.inventory_id
INNER JOIN 
    charitableorganization CO ON CO.charitable_org_id = C.charitable_org_id
WHERE 
    I.quantityInv > 0;
    
-- Trigger to update quantity in Inventory table
DELIMITER $$
CREATE TRIGGER AfterTransactionInsert
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    UPDATE inventory
    SET quantityInv = quantityInv - 1
    WHERE inventory_id = NEW.inventory_id;
END$$
DELIMITER ;

-- Trigger to delete record from inventory table if the quantity is updated to 0
DELIMITER $$
CREATE TRIGGER AfterInventoryUpdate
AFTER UPDATE ON inventory
FOR EACH ROW
BEGIN
    IF NEW.quantityInv = 0 THEN
        DELETE FROM inventory WHERE inventory_id = NEW.inventory_id;
    END IF;
END$$
DELIMITER ;

