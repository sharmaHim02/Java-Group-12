<%-- 
    Document   : consumerlogin
    Created on : Aug. 6, 2024, 3:25:56 a.m.
    Author     : yuvra
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="About me">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Consumer Login</title>
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
            <li class="navitem"><a class="active" href="/FoodWasteReductionPlatform/JSP/consumerlogin">Consumer</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/charitylogin">Charitable Organization</a></li>
            <li class="navitem"><a href="/FoodWasteReductionPlatform/JSP/consumptionpage">Consumption</a></li>
            </ul>    
        </nav>
      
        <h2>Welcome Consumer!</h2><br>
        <% boolean ret_val = false;
           try {
            ret_val = (boolean)request.getAttribute("ret_reg_val");
           if (ret_val) { %>
        Registration Success
        <% } else { %>
        Username Exists
       <% }
        } catch (Exception e) {} 
        try {
            ret_val = (boolean)request.getAttribute("ret_login_val");
            if (ret_val == false) { %>
                Authentication Error
         <% }
        } catch (Exception e) {} 
       %>        
        <div id="userlogin">
            <div class="userinfo">
                <p class="info"><b>Register as a New Consumer</b></p>
                <form method="post" name="register" action="/FoodWasteReductionPlatform/JSP/consumerregister">
                <label for="firstname">First Name</label><br>
                <input type="text" name="firstname"><br>  
                <label for="lastname">Last Name</label><br>
                <input type="text"  name="lastname"><br>
                <label for="username">Username</label><br>
                <input type="text" name="username"><br>  
                <label for="password">Password</label><br>
                <input type="text"  name="password"><br>
                <label for="subscribe">Subscribe</label>
                <input type="checkbox"  name="subscribe"><br>

                <input class="submitregistration" type="submit" value="Register">
                </form>
            </div>            
            <div class="userinfo">
                <p class="info"><b>Login as a Returning Consumer</b></p>
                <form method="post" name="register" action="/FoodWasteReductionPlatform/JSP/consumerlogin">
                <label for="username">Username</label><br>
                <input type="text" name="usernamelogin"><br>  
                <label for="password">Password</label><br>
                <input type="text"  name="passwordlogin"><br>
                <a href="./consumerpage.html">
                    <input class="submit" type="submit" value="Login">  
                </a>
                </form>
            </div>
        </div>
        
        <footer>
            <p>&copy; Final Project, 2024</p>
        </footer>
    </body>
</html>
