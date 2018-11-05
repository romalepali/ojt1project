<?php
if(isset($_POST['login'])){
    $query="SELECT * FROM users WHERE BINARY (username='$username' || email='$username') AND BINARY password='$password'";
    $result=mysqli_query($conn, $query);
    if(mysqli_num_rows($result)>0)
    {
        while($row=mysqli_fetch_row($result)){
            $_SESSION["searchPrev"]="";
            $_SESSION['TIMS_id']=$row[0];
            $_SESSION['TIMS_type']=$row[1];
            $_SESSION['TIMS_status']=$row[2];
            $_SESSION['search']="";
        }

        if(($_SESSION['TIMS_type']== 1) && $_SESSION['TIMS_status']=='Active'){
            ?>
            <script type="text/javascript">
                swal({
                    title: "Success!",
                    text: "You are logged as Maintenance Support",
                    type: "success",
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false,
                },
                function(isConfirm){
                if (isConfirm) {
                    window.location='views/TIMS/support/';
                }
            });
            </script><?php
        }else if($_SESSION['TIMS_type']== 2 && $_SESSION['TIMS_status']=='Active'){
            ?>
            <script type="text/javascript">
                swal({
                    title: "Success!",
                    text: "You are logged as Administrator",
                    type: "success",
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false,
                },
                function(isConfirm){
                if (isConfirm) {
                    window.location='views/TIMS/admin/';
                }
            });
            </script><?php
        }else if($_SESSION['TIMS_type']== 3 && $_SESSION['TIMS_status']=='Active'){
            ?>
            <script type="text/javascript">
                swal({
                    title: "Success!",
                    text: "You are logged as End-User",
                    type: "success",
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false,
                },
                function(isConfirm){
                if (isConfirm) {
                    window.location='views/TIMS/enduser/default/';
                }
            });
            </script><?php
        }else if($_SESSION['TIMS_type']== 4 && $_SESSION['TIMS_status']=='Active'){
            ?>
            <script type="text/javascript">
                swal({
                    title: "Success!",
                    text: "You are logged as End-User(S)",
                    type: "success",
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false,
                },
                function(isConfirm){
                if (isConfirm) {
                    window.location='views/TIMS/enduser/orgs/';
                }
            });
            </script><?php
        }else if($_SESSION['TIMS_type']== 5 && $_SESSION['TIMS_status']=='Active'){
            ?>
            <script type="text/javascript">
                swal({
                    title: "Success!",
                    text: "You are logged as End-User(B)",
                    type: "success",
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false,
                },
                function(isConfirm){
                if (isConfirm) {
                    window.location='views/TIMS/enduser/orgb/';
                }
            });
            </script><?php
        }else {
            ?>
            <script type="text/javascript">
                swal({
                    title: "Account Existed!",
                    text: "Please verify it to the Maintenance Support",
                    type: "info",
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false,
                },
                function(isConfirm){
                if (isConfirm) {
                    window.location='TIMS_login.php';
                }
            });
            </script><?php
        }
    }else {
    ?>
        <script type="text/javascript">
            swal({
                title: "Failed!",
                text: "Incorrect Username/Password",
                type: "error",
                confirmButtonClass: "btn-primary",
                confirmButtonText: "OK",
                closeOnConfirm: false,
            },
            function(isConfirm){
                if (isConfirm) {
                    window.location='TIMS_login.php';
                }
            });
        </script><?php
    }
}
?>