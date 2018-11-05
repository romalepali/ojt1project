<?php
	include ('OVERALL_verify.php');

 	if(isset($_POST['signup']))
    {
        $status = 'Inactive';
        $username = $_POST['username'];
        $password = md5($_POST['password']);
        $rpassword = md5($_POST['rpassword']);
        $email = $_POST['email'];
        $fname = $_POST['fname'];
        $mname = $_POST['mname'];
        $lname = $_POST['lname'];
        $bdate = $_POST['bdate'];
        $gender = $_POST['gender'];
        $picture = 'default';
        

        if(strcmp($password,$rpassword) != 0){
            $_SESSION['username'] = $username = $_POST['username'];
            $_SESSION['email'] = $email = $_POST['email'];
            $_SESSION['fname'] = $fname = $_POST['fname'];
            $_SESSION['mname'] = $mname = $_POST['mname'];
            $_SESSION['lname'] = $lname = $_POST['lname'];
            $_SESSION['bdate'] = $bdate = $_POST['bdate'];
            $_SESSION['gender'] = $gender = $_POST['gender'];
            ?>
                <script type="text/javascript">
                    alert('Passwords does not match!');
                    window.location.href='TIMS_login.php';
                </script>
            <?php
        }
        else{
            $sql_query2="SELECT * FROM users WHERE BINARY (firstname='$fname' && middlename='$mname' && lastname='$lname') || (username='$username') || (email='$email')";
            $result_set2=mysqli_query($conn,$sql_query2);
            $fetched_row2=mysqli_num_rows($result_set2);
        
            if($fetched_row2>0){
                $_SESSION['username'] = $username = $_POST['username'];
                $_SESSION['email'] = $email = $_POST['email'];
                $_SESSION['fname'] = $fname = $_POST['fname'];
                $_SESSION['mname'] = $mname = $_POST['mname'];
                $_SESSION['lname'] = $lname = $_POST['lname'];
                $_SESSION['bdate'] = $bdate = $_POST['bdate'];
                $_SESSION['gender'] = $gender = $_POST['gender'];
                ?>
                    <script type="text/javascript">
                        alert('Account already exists!');
                        window.location.href='TIMS_login.php';
                    </script>
                <?php
            }
            else{
                $sql_query = "INSERT INTO users (status,username,password,email,firstname,middlename,lastname,birthdate,gender,picture) VALUES ('$status','$username','$password','$email','$fname','$mname','$lname','$bdate','$gender','$picture')";

                if(mysqli_query($conn,$sql_query))
                {
                    $_SESSION['username'] = NULL;
                    $_SESSION['email'] = NULL;
                    $_SESSION['fname'] = NULL;
                    $_SESSION['mname'] = NULL;
                    $_SESSION['lname'] = NULL;
                    $_SESSION['bdate'] = NULL;
                    $_SESSION['gender'] = NULL;
                    ?>
                         <script type="text/javascript">
                            alert("Successfully created your account, please verify it to the administrator!");
                            window.location.href='TIMS_login.php';
                          </script>
                    <?php
                }
                else
                {
                    $_SESSION['username'] = $username = $_POST['username'];
                    $_SESSION['email'] = $email = $_POST['email'];
                    $_SESSION['fname'] = $fname = $_POST['fname'];
                    $_SESSION['mname'] = $mname = $_POST['mname'];
                    $_SESSION['lname'] = $lname = $_POST['lname'];
                    $_SESSION['bdate'] = $bdate = $_POST['bdate'];
                    $_SESSION['gender'] = $gender = $_POST['gender'];
                    ?>
                        <script type="text/javascript"> 
                            alert("Error occured while creating your account!");
                            window.location.href='TIMS_login.php';
                        </script>
                    <?php
                }
            }
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
	<?php include ('include/head.php');?>
	<title>TIMS | Log In</title>
</head>
<body>
	<?php include ('include/login.php'); ?>
</body>
</html>