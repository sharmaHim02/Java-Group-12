<%-- 
    Document   : purchasepage
    Created on : Aug. 5, 2024, 4:36:58 p.m.
    Author     : yuvra
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.Entity,Model.Inventory,Model.Item,Model.EntityType" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Unified Purchase and Claim Entry">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Food Waste Reduction Platform - Unified Purchase/Claim Entry</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <header>
        <h1 id="title">Food Waste Reduction Platform</h1>
    </header>
    <nav>
        <ul id="navbar">
            <li class="navitem"><a href="/FoodWasteReductionPlatform/">Home</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/retailerlogin">Retailer</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumerlogin">Consumer</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumptionpage">Consumption</a></li>
        </ul>    
    </nav>
    <main>
        

         <% Entity en = null;
            try {
                en = (Entity)session.getAttribute("charity");
                if (en == null) {
                    en = (Entity)session.getAttribute("individual");
                }
             } catch (Exception e) {
                en = (Entity)session.getAttribute("individual");
             }
             Inventory inventory = (Inventory)request.getAttribute("stock");
             Item item = (Item)request.getAttribute("item");
             String type = "Purchase";
             if (en.getType() == EntityType.CHARITY) {
                type = "Claim";
             }
         %>
         <h2><%=type%> Entry Form</h2>

        <form method="post" name="Purchase Form" action="/FoodWasteReductionPlatform/JSP/purchasepage">
            <label for="itemType">Item Type:</label>
            <input type="text" id="itemType" name="itemType" readonly="true" value="<%=item.getItemtype()%>"><br>
           
            <label for="itemName">Item Name:</label>
            <input type="text" id="itemName" name="itemName" readonly="true" value="<%=item.getName()%>"><br><br>
            
            <label for="expirationDate">Expiration Date:</label>
            <input type="text" id="expirationDate" name="expirationDate" readonly="true" value="<%=inventory.getExpiryDateWidgetFmt()%>"><br><br>
            
            <label for="quantity">Quantity:</label>

            <input type="number" id="quantity" name="quantity" min="1" max="<%=inventory.getQuantity()%>" value="<%=inventory.getQuantity()%>"><br><br>
                
            <label for="retailer">Retailer ID:</label>
            <input type="text" name="retailer" value="<%=inventory.getRetailerId()%>"><br><br>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" readonly="true" value="<%=inventory.getDiscountedPrice()%>"><br><br>

            <input type="submit" value="Submit">
        </form>
    </main>
    <footer>
        <p>&copy; Final Project, 2024</p>
    </footer>
</body>
</html>