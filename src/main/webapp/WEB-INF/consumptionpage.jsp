<%-- 
    Document   : consumptionpage
    Created on : Aug. 5, 2024, 4:31:25 p.m.
    Author     : yuvra
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,Model.Consumption" %>
<!DOCTYPE html>
    <html lang = "en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Consumed Items Entry">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Food Waste Reduction Platform - Consumed Items Entry</title>
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
                <li class="navitem"><a href="/FoodWasteReductionPlatformP/JSP/charitylogin">Charitable Organization</a></li>
                <li class="navitem"><a class="active">Consumption</a></li>
            </ul>    
        </nav>
            
        <main>
        <h2>Purchase Table Entry</h2>
        <form>
            <table>
                <tr>
                    <th>Item ID</th>
                    <th>Retailer ID</th>
                    <th>Expiration Date</th>
                    <th>Consumer ID</th>
                    <th>Quantity</th>
                    <th>Date Purchased/Claimed</th>
                    <th>Price Purchased</th>
                </tr>
             <% ArrayList<Consumption> list = (ArrayList)request.getAttribute("item_list"); 
     for (Consumption ent: list) { %>
                <tr>
                    <td><input type="number" name="itemId" required readonly="true" value="<%=ent.getItemId()%>"></td>
                    <td><input type="number" name="retailerId" required readonly="true" value="<%=ent.getRetailerId()%>"></td>
                    <td><input type="text" name="expirationDate" required readonly="true" value="<%=ent.getExpirationDateStr()%>"></td>
                    <td><input type="number" name="consumerId" required readonly="true" value="<%=ent.getConsumerId()%>"></td>
                    <td><input type="number" name="quantity" min="1" required readonly="true" value="<%=ent.getQuantity()%>"></td>
                    <td><input type="text" name="datePurchased" required readonly="true" value="<%=ent.getPurchaseDateStr()%>"></td>
                    <td><input type="text" name="pricePurchased" required readonly="true" value="<%=ent.getPrice()%>"></td>
                </tr>
    <%}%>
            </table>
        </form>
    </main>
    <footer>
        <p>&copy; Final Project, 2024</p>
    </footer>
</body>
</html>