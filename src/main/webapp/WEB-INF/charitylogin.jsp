<%-- 
    Document   : charitylogin
    Created on : Aug. 5, 2024, 3:24:18 a.m.
    Author     : yuvra
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="About me">
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
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumptionpage">Consumption</a></li>
        </ul>    
        </nav>
     
        <h2>Welcome Charitable Organization!</h2><br>
         <% boolean cha_val = false;
           try {
            cha_val = (boolean)request.getAttribute("cha_reg_val");
           if (cha_val) { %>
            Registration Success
        <% } else { %>
        Username Exists
       <% }
        } catch (Exception e) {} 
        try {
            cha_val = (boolean)request.getAttribute("cha_login_val");
            if (cha_val == false) { %>
                Authentication Error
         <% }
        } catch (Exception e) {} 
       %> 
        <div id="userlogin">
            <div class="userinfo">
                <p class="info"><b>Register as a New User</b></p>
                <form method="post" name="register" action="/FoodWasteReductionPlatform/JSP/charityregister">
                <label for="charityname">Name of Charitable Organization</label><br>
                <input type="text" name="name"><br>  
                <label for="username">Username</label><br>
                <input type="text" name="username"><br>  
                <label for="password">Password</label><br>
                <input type="text"  name="password"><br>
                <label for="subscribe">Subscribe</label>
                <input type="checkbox"  name="subscribe"><br>
                <input class="submit" type="submit" value="Register">  
               
                </form>
            </div>
            
            <div class="userinfo">
                <p class="info"><b>Login as a Returning User</b></p>
                <form method="post" name="login" action="/FoodWasteReductionPlatform/JSP/charitylogin">
                <label for="username">Username</label><br>
                <input type="text" name="usernamelogin"><br>  
                <label for="password">Password</label><br>
                <input type="text"  name="passwordlogin"><br>
            
                    <input class="submit" type="submit" value="Login">  
                 </form>
            </div>
        </div>
        <footer>
            <p>&copy; Final Project, 2024</p>
        </footer>
    </body>
</html>
