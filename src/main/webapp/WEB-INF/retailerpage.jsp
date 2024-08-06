<%-- 
    Document   : retailerpage
    Created on : Aug. 5, 2024, 4:37:35 p.m.
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
        <title>Retailer Page</title>
        <link rel="stylesheet" href="../style.css">
    </head>
    <body>
        <header>
            <h1 id="title">Food Waste Reduction Platform</h1>
        </header>

        <%ArrayList<Entity> notList = (ArrayList)request.getAttribute("notify_list");%>
        <% if (notList != null) { %>
        <span> 
        New Stock&nbsp;<%=request.getAttribute("inserted_item")%>. Notifying:
        <% for (Entity en: notList)  { %>
        <%=en.getUsername()%>&nbsp;
        <%}%>
        </span>
           <% }%>
        <nav>
            <ul id="navbar">
              <li class="navitem"><a href="/FoodWasteReductionPlatform/" >Home</a></li>
              <li class="navitem"><a class="active">Retailer</a></li>
              <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumerlogin">Consumer</a></li>
              <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/charitylogin">Charitable Organization</a></li>
              <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumptionpage">Consumption</a></li>
            </ul>    
          </nav>
        <% Entity en = (Entity)session.getAttribute("retail");%>    
        <h2>Welcome Retailer <%=en.getName()%>! ID:<%=en.getId()%></h2><br>
        <a href="/FoodWasteReductionPlatform/JSP/retaillogout" class="item" style="float: right;">Logout</a>
        <form action="/FoodWasteReductionPlatform/JSP/retailerinsert">
        <div class=buttons>
            <button name="insert" type="submit"class=item>Insert Item</button>
        </div>
        </form>
        
        <form action="/FoodWasteReductionPlatform/JSP/retailerupd">
        <table border="1">
  <tr>
    <th>Item Name/Id</th>
    <th>Expiration</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Surplus</th>
    <th>Actions</th>
  </tr>
  <% ArrayList<Inventory> list = (ArrayList)request.getAttribute("item_list"); 
     for (Inventory st: list) { %>
  <tr>
      <td><%=st.getItemNameStr() + "["+st.getItemId()+"]"%></td>
    <td><%=st.getExpiryDateStr()%></td>
    <td><%=st.getQuantity()%></td>
    <td><%=st.getDiscountedPrice()%></td>
    <td><%=st.IsSurplus()%></td>
    <td>
          <div class=buttons>
            <button class=item name="inventoryupd" value="<%=st.getItemId() + "_" + st.getExpiryDateStr()%>" type="submit">Update Item</button>
            <button class=item name="inventorydel" value="<%=st.getItemId() + "_" + st.getExpiryDateStr()%>" type="submit">Delete Item</button>
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
