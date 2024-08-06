<%-- 
    Document   : retailerinsert
    Created on : Aug. 6, 2024, 3:28:23 a.m.
    Author     : yuvra
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta charset="UTF-8">
        <meta name="description" content="Retailer Update Item">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Charitable Organization Login</title>
        <link rel="stylesheet" href="../style.css">
    </head>
    <body>
        <header>
            <h1 id="title">Food Waste Reduction Platform</h1>
        </header>
        <nav>
        <ul id="navbar">
            <li class="navitem"><a href="/FoodWasteReductionPlatform/" >Home</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/retailerlogin">Retailer</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumerlogin">Consumer</a></li>
            <li class="navitem"><a class="active" href="/FoodWasteReductionPlatform/JSP/charitylogin">Charitable Organization</a></li>
        </ul>    
        </nav>
        <h2>Welcome Retailer Update Page!</h2><br>
                <form method="post" name="register" action="/FoodWasteReductionPlatform/JSP/retailerinsert">
                <label for="item_type">Item Type</label><br>
                <input type="text" name="item_type"><br> 
                <label for="item_name">Item Name</label><br>
                <input type="text" name="item_name"><br> 
                <label for="exp_date">Expiration Date</label><br>
                <input type="date"  name="exp_date"><br>
                <label for="price">Discounted Price</label><br>
                <input type="text"  name="price"><br>
                <label for="quantity">Quantity</label><br>
                <input type="number" name="quantity" min="1"><br>
                <label for="surplus">Surplus</label>
                <input type="checkbox"  name="surplus"><br>
                <input type="submit"  name="submit"><br>
                </form>
    </body>
</html>
