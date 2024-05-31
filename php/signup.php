<?php
    session_start();
    include_once "config.php";
    $fname = mysqli_real_escape_string($conn, $_POST['customer_fname']);
    $lname = mysqli_real_escape_string($conn, $_POST['customer_lname']);
    $email = mysqli_real_escape_string($conn, $_POST['customer_email']);
    $password = mysqli_real_escape_string($conn, $_POST['customer_password']);
    $bdate = mysqli_real_escape_string($conn, $_POST['customer_DOB']);
    $country = mysqli_real_escape_string($conn, $_POST['customer_land']);
    if(!empty($fname) && !empty($lname) && !empty($email) && !empty($password)){
        if(filter_var($email, FILTER_VALIDATE_EMAIL)){
            $sql = mysqli_query($conn, "SELECT * FROM tblcustomer WHERE email = '{$customer_email}'");
            if(mysqli_num_rows($sql) > 0){
                echo "$email - This email already exist!";
            }else{
        
            $ran_id = rand(time(), 100000000);
                $encrypt_pass = md5($password);
                                $insert_query = mysqli_query($conn, "INSERT INTO tblusers (unique_id, fname, lname, email, password, img)
                                VALUES ({$ran_id}, '{$fname}','{$lname}', '{$email}', '{$encrypt_pass}', '{$bdate}', '{$country}')");
                                if($insert_query){
                                    $select_sql2 = mysqli_query($conn, "SELECT * FROM tblusers WHERE email = '{$email}'");
                                    if(mysqli_num_rows($select_sql2) > 0){
                                        $result = mysqli_fetch_assoc($select_sql2);
                                        $_SESSION['unique_id'] = $result['unique_id'];
                                        echo "success";
                                    }else{
                                        echo "This email address not Exist!";
                                    }
                                }else{
                                    echo "Something went wrong. Please try again!";
                                }
                            }
                        }
                    }                
                
?>
