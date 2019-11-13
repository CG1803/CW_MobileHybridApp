
<?php
    /*
        localhost is the location where the server is located
        root is the global username of server
        ' ' this root has no password protection, hence empty
        my_db is db with which we want to connect
    */
    $con = mysqli_connect('localhost','root','','mydb') or die ('unable to connect');

    $_ID = $_POST['firstname'];
    $pass = $_POST['lastname'];
    $sql = "INSERT INTO 'my_table'('firstname','lastname') VALUES('$_ID','$pass')";
    $result = mysqli_query($con,$sql);
    if($result) {
        echo $_ID." ".$pass;
    }
    else {
        echo "unable to insert data";
    }
?>
