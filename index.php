<?php
//These are the defined authentication environment in the db service

    // The MySQL service named in the docker-compose.yml.
    $host = 'db';

    // Database use name
    $user = 'MYSQL_USER';

    //database user password
    $pass = 'MYSQL_PASSWORD';

    //database name
    $mydatabase = 'MY_DATABASE';

$conn = new mysqli($host, $user, $pass, $mydatabase);

    $errors = [];

    $rollno = '';
    $name = '';
    $email = '';
    $phone='';
    $city='';
        
if($_SERVER['REQUEST_METHOD'] === 'POST'){

    // validate form
    $rollno= $_REQUEST['rollno'];
    $name = $_REQUEST['name'];
    $email = $_REQUEST['email'];
    $phone = $_REQUEST['phone'];
    $city = $_REQUEST['city'];

    if(!$rollno){
        $errors[] = 'Enter First Name';
    }
    if(!$name){
        $errors[] = 'Enter Last Name';
    }
    if(!$email){
        $errors[] = 'Enter email';
    }
    if(!$phone){
        $errors[] = 'Enter password';
    }

    if(!$city){
        $errors[] = 'Enter phone_no';
    }

    if(empty($errors)){


        $sql = "INSERT INTO details VALUES ('$rollno','$name','$email','$phone','$city')";

        if(mysqli_query($conn, $sql)){
                
        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }
        
        $rollno = '';
        $name = '';
        $email = '';
        $phone= '';
        $city = '';
    }
}

mysqli_close($conn);
?>
<!DOCTYPE html>
<html>

<head>
    <title>Form</title>
</head>

<body>

    <p>Form</p>
    <form name="frmContact" method="post">
        <p>
            <label> Roll No</label>
            <input type="text" name="rollno" id="txtRollno" </p>
        <p>
            <label> Name </label>
            <input type="text" name="name" id="txtName">
        </p>
        <p>
            <label> Email</label>
            <input type="text" name="email" id="txtEmail">
        </p>
        <p>
            <label> Phone no</label>
            <input type="text" name="phone" id="txtPhone">
        </p>
        <p>
            <label> City</label>
            <input type="text" name="city" id="txtCity">
        </p>
        <p>
            <input type="submit" name="Submit" id="Submit" value="Submit">
        </p>
        
    </form>

</body>

</html>