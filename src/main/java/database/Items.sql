/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  yuvra
 * Created: Aug. 6, 2024
 */


DROP DATABASE IF EXISTS FWRP;
CREATE DATABASE FWRP;
USE FWRP;

CREATE TABLE ITEMS (
    Item_ID INT AUTO_INCREMENT PRIMARY KEY,
    Item_Type VARCHAR(64),
    Name VARCHAR(255)
);



INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('NUTS', 'PEANUT');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('NUTS', 'WALNUT');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('GRAINS', 'RICE');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('GRAINS', 'WHEAT');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('FRUITS', 'BANANA');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('FRUITS', 'APPLE');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('NON-VEG', 'MEAT');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('NON-VEG', 'FISH');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('VEGETABLE', 'POTATO');
  INSERT INTO ITEMS (Item_Type,Name)
  VALUES ('VEGETABLE', 'TOMATO');
