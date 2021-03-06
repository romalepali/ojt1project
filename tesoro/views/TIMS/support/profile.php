<?php
	include ('TIMS_verify.php');
	$_SESSION['page']='profile.php';

	$profile_query="SELECT a.*,b.name FROM users a LEFT JOIN users_privileges b ON a.type=b.id WHERE a.id=".$_SESSION['TIMS_id'];
	$profile_result=mysqli_query($conn,$profile_query);
	$profile=mysqli_fetch_array($profile_result);

	$pic = '';
	if($profile['picture']!='default'){
		$pic = $profile['picture'].".png";
	}else{
		$pic = $profile['picture']."2.png";
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Profile</title>
	<?php include ('include/head.php')?>
</head>

<body>
	<?php include ('include/navbar.php')?>
	<div class="gap"></div>
	<div class="container-fluid">
		<div id="content">
			<div class="row my-2">
				<div class="col-lg-2 order-lg-1 text-center">
					<img src="../users/images/<?php echo $pic;?>" class="mx-auto img-fluid img-circle d-block profile" alt="avatar">
					<?php include ('account/profile_upload.php');?>
				</div>
				<div class="col-lg-10 order-lg-2">
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a href="#" data-target="#profile" data-toggle="tab" class="nav-link active">Profile</a>
						</li>
						<li class="nav-item">
							<a href="profile_edit.php" class="nav-link">Edit Profile</a>
						</li>
						<li class="nav-item">
							<a href="profile_change.php" class="nav-link">Change Password</a>
						</li>
					</ul>
					<div class="tab-content py-4">
						<div class="tab-pane active" id="profile">
							<h4 class="mb-0"><?php echo $profile['firstname']." ".$profile['middlename']." ".$profile['lastname'];?></h4>
							<h6 class="mb-3"><?php echo $profile['name'];?></h6>
							<div class="row">
								<div class="col-md-6">
									<p class="mb-1">
										<strong>Gender:</strong> <?php echo $profile['gender'];?>
									</p>
									<p class="mb-1">
										<strong>Birthdate:</strong> <?php echo date("F d, Y",strtotime($profile['birthdate']));?>
									</p>
									<p class="mb-1">
										<strong>Email:</strong> <?php echo '<a target="_T" href="mailto:'.$profile['email'].'">'.$profile['email'].'</a>';?>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	document.getElementById("file").onchange = function() {
		document.getElementById("form").submit();
	};
</script>
<script src="js/all_jobs_action.js"></script>
</html>