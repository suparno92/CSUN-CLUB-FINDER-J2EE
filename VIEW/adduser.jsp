<%-- 
    Document   : adduser
    Created on : Apr 12, 2017, 6:52:04 PM
    Author     : suparno92
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="ajaxfront" method="post">
            email: <input type="text" name="email"><br>
            password: <input type="text" name="password"><br>
            club_id : <input type="number" name="club_id" value="1"><br>
            <input  type="hidden" name="register" value="register">
            <input type="submit" value="Submit">
          </form>
    </body>
</html>
