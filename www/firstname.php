
<?php
    /*
        localhost is the location where the server is located
        root is the global username of server
        ' ' this root has no password protection, hence empty
        my_db is db with which we want to connect
    */
    $con = mysqli_connect('127.0.0.1','root','NO','mydb') or die ('unable to connect');

    $ID = $_POST['ID'];
    $pass = $_POST['pass'];
    $sql = "INSERT INTO 'my_table'('firstname','lastname') VALUES('$ID','$pass')";
    $result = mysqli_query($con,$sql);
    if($result) {
        echo $ID." ".$pass;
    }
    else {
        echo "unable to insert data";
    }
?>
