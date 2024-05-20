<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/login.css">
    <script src="hayfunction.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Schibsted+Grotesk:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    <script src="hayfunction.js"></script>
    <title>Hayshop</title>
</head>
<body class="animate-in">
    
    <div id='haymain'>
        
    <h1 class="valkom">Hayshop.</h1>
    <b class="def">For the farmers and the like.</b>

</div>
     
    <h1 class="header2">Log in.</h1>

    <div class="loginelements">
    <form>
        <label for="uname">Username</label><br>
        <input type="text" id="uname"><br><br>
        <label for="pword">Password:</label><br>
        <input type="password" id="pword"><br>
    </form>
    </div>

    <button type="button" onclick="location.href='hayshop-mainstore.html'">Login</button>
    <a href="hayshop-register.html">Don't have an account?</a>

</body>
</html>

<?php 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Replace with your database credentials
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "hayshop";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Sanitize user inputs
    $uname = $conn->real_escape_string($_POST['uname']);
    $pword = $conn->real_escape_string($_POST['pword']);

    // Query to check if the user exists
    $sql = "SELECT * FROM users WHERE username = '$uname' AND password = '$pword'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // User found, redirect to main store page
        header("Location: hayshop-mainstore.html");
        exit();
    } else {
        // User not found
        echo "<p style='color:red;'>Invalid username or password.</p>";
    }

    // Close connection
    $conn->close();
}



?>