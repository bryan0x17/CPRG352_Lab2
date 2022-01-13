<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form action="arithmetic" method="post">
            <label for="first">First</label>
            <input type="number" name="first" id="first">
            <label for="second">Second</label>
            <input type="number" name="second" id="second">
            <button type="submit">+</button>
            <button type="submit">-</button>
            <button type="submit">*</button>
            <button type="submit">%</button>
            <p>Result: ${message}</p>
            <a href="age">Age Calculator</a>
            
            
        </form>
    </body>
</html>
