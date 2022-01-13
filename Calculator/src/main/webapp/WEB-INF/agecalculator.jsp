<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form action="age" method="post">
            <label for="age">Enter your age: </label>
            <input type="number" name="age" id="age">
            <button type="submit">Age Next Birthday</button>
            <p>${message}</p>
            <a href="arithmetic">Arithmetic Calculator</a>
            
            
        </form>
    </body>
</html>
