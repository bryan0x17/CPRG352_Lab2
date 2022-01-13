<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <%
            session.setAttribute("message", "---");
        %>
        <h1>Arithmetic Calculator</h1>
        <form action="arithmetic" method="post">
            <label for="first">First</label>
            <input type="number" name="first" id="first" value="${first}">
            <label for="second">Second</label>
            <input type="number" name="second" id="second" value="${second}">
            <button type="submit" name="calculation" value="add">+</button>
            <button type="submit" name="calculation" value="subtract">-</button>
            <button type="submit" name="calculation" value="multiply">*</button>
            <button type="submit" name="calculation" value="modulus">%</button>
            <p>Result: ${message}</p>
            <a href="age">Age Calculator</a>
            
            
        </form>
    </body>
</html>
