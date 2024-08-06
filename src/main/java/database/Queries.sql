/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  yuvra
 * Created: Aug. 6, 2024
 */
-- Item Insert
INSERT INTO ITEMS (Item_Type, Name) VALUES (?, ?);

-- Item Delete
DELETE FROM ITEMS WHERE Item_ID = ?;

-- List Items
select Item_ID,Item_Type,Name from ITEMS;

-- Insert Stock
INSERT INTO Inventory (Item_ID, Retailer_ID, Expiration_Date, Quantity, Discounted_Price, Surplus) 
    VALUES (?,?,?,?,?,?);

-- Update stock for quantity,price and expiration date

UPDATE Inventory SET Quantity = ? , Expiration_Date = ? , Discounted_Price = ? WHERE Item_ID = ? AND
Retailer_ID = ? and Expiration_Date = ?;

-- Mark Surplus
UPDATE Inventory SET Surplus = TRUE WHERE Item_ID = ? AND
Retailer_ID = ? and Expiration_Date = ?;

-- Claim/ Purchase item
INSERT INTO CONSUMPTION (Item_ID, Retailer_ID, Expiration_Date, ConsumerType,Consumer_ID, Quantity,Date_Purchased, Price_Purchased) 
    VALUES (?,?,?,?,?,?,CURDATE(),?);
