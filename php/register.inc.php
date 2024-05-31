<?php

if ($_SERVER["REQUEST METHOD"] === "POST"){

    $customer_fname = $_POST["customer_fname"];
    $customer_lname = $_POST["customer_lname"];
    $customer_DOB = $_POST["customer_DOB"];
    $customer_email = $_POST["customer_email"];
    $customer_username = $_POST["customer_username"];
    $customer_password = $_POST["customer_password"];
    $customer_country = $_POST["customer_country"];
    
} else {
    header("Location: ../hayshop-register.php");
    die();
}