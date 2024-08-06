<%-- 
    Document   : consumerpage
    Created on : Aug. 5, 2024, 4:30:42 p.m.
    Author     : yuvra
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.Entity,java.util.ArrayList,Model.Inventory" %>

<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="About me">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Consumer Page</title>
        <link rel="stylesheet" href="../style.css">
    </head>
    <body>
        <header>
            <h1 id="title">Food Waste Reduction Platform</h1>
        </header>
        <nav>
            <ul id="navbar">
            <li class="navitem"><a href="/FoodWasteReductionPlatformP/" >Home</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/retailerlogin">Retailer</a></li>
            <li class="navitem"><a class="active">Consumer</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/charitylogin">Charitable Organization</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumptionpage">Consumption</a></li>
            </ul>    
        </nav>
        
         <% Entity en = (Entity)session.getAttribute("individual");%>
         <a href="/FoodWasteReductionPlatform/JSP/consumerlogout" class="item" style="float: right;">Logout</a>
        <h2>Welcome Consumer!<%=en.getName()%>! ID:<%=en.getId()%></h2><br>
        <form  action="/FoodWasteReductionPlatform/JSP/purchasepage">
        
        
        <table border="1">
            <tr>
                <th>Item Name/Id</th>
                <th>Retailer Id</th>
                <th>Expiration</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Purchase</th>
            </tr>
                <% ArrayList<Inventory> list = (ArrayList)request.getAttribute("item_list"); 
                    for (Inventory st: list) { %>
             <tr>
                <td><%=st.getItemNameStr() + "["+st.getItemId()+"]"%></td>
                <td><%=st.getRetailerId()%></td>
                <td><%=st.getExpiryDateStr()%></td>
                <td><%=st.getQuantity()%></td>
                <td><%=st.getDiscountedPrice()%></td>
                <td>
                    <div class=buttons>
            <button class=item name="inventoryupd" value="<%=st.getItemId() + "_" + st.getRetailerId()+ "_" + st.getExpiryDateStr()%>" type="submit">Purchase</button>
            
        </div>
                </td>
            </tr>
            <% } %>
        </table>
        </form>
          
        <footer>
            <p>&copy; Final Project, 2024</p>
        </footer>
    </body>
</html>

