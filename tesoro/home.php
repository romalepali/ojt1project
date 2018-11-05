<?php
	include ('OVERALL_verify.php');
?>

<!DOCTYPE html>
<html>
<head>
	<?php include ('include/head.php');?>
	<title>Tesoro's | Home</title>

	<script type="text/javascript">
		$(document).ready(function(){
			$("a").on('click', function(event) {
				if (this.hash !== "") {
					event.preventDefault();
					var hash = this.hash;
					$('html, body').animate({
						scrollTop: $(hash).offset().top
					}, 800, function(){
						window.location.hash = hash;
					});
				}
			});
		});
	</script>
</head>

<body>
	<?php include ('include/navbar.php'); ?>
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
  		<div class="carousel-inner">
			<div class="carousel-item active">
	  			<img class="d-block w-100" src="images/image.png" style="height: 100vh;" alt="First slide">
	  			<div class="carousel-caption d-none d-md-block">
					<h5>Caption Head</h5>
					<p>Caption</p>
					<a href="#scrolldown"><img src="images/arrow-down.png" alt="Scroll Down"></a>
				</div>
			</div>
			<div class="carousel-item">
	  			<img class="d-block w-100" src="images/image.png" style="height: 100vh;" alt="Second slide">
	  			<div class="carousel-caption d-none d-md-block">
					<h5>Caption Head</h5>
					<p>Caption</p>
				</div>
			</div>
			<div class="carousel-item">
	  			<img class="d-block w-100" src="images/image.png" style="height: 100vh;" alt="Third slide">
	  			<div class="carousel-caption d-none d-md-block">
					<h5>Caption Head</h5>
					<p>Caption</p>
				</div>
			</div>
  		</div>
  		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
  		</a>
  		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
  		</a>
	</div>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 50%; margin-right: 15px;" class="rounded float-left" alt="">
				<p class="text-justify">
				hi every body hi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every bodyhi every body</p>
			</div>
		</div>

		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
		<div class="row mb-4">
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
			<div class="col-lg" id="scrolldown">
				<img src="images/content/img1.jpg" style="width: 100%; margin-right: 15px;" class="rounded float-left" alt="">
			</div>
		</div>
	</div>
</body>
</html>