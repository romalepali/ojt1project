<?php
    include ('dbconnect.php');

    if(empty($_SESSION)){
        session_start();
    } 

    if (isset($_SESSION['TIMS_type']) && $_SESSION['TIMS_type']==1 && $_SESSION['TIMS_status']=='Active'){
    	header("location: views/TIMS/support/");
    	exit;
    } else if(isset($_SESSION['TIMS_type']) && $_SESSION['TIMS_type']==2 && $_SESSION['TIMS_status']=='Active'){
    	header("location: views/TIMS/admin/");
    	exit;
    } else if(isset($_SESSION['TIMS_type']) && $_SESSION['TIMS_type']==3 && $_SESSION['TIMS_status']=='Active'){
        header("location: views/TIMS/enduser/default/");
        exit;
    } else if(isset($_SESSION['TIMS_type']) && $_SESSION['TIMS_type']==4 && $_SESSION['TIMS_status']=='Active'){
        header("location: views/TIMS/enduser/orgs/");
        exit;
    } else if(isset($_SESSION['TIMS_type']) && $_SESSION['TIMS_type']==5 && $_SESSION['TIMS_status']=='Active'){
        header("location: views/TIMS/enduser/orgb/");
        exit;
    }
?>