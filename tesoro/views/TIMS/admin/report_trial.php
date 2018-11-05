<?php
	include ('TIMS_verify.php');
	$_SESSION["filter"] = "report_trial_display";
	$_SESSION['page'] = "report_trial_display";
	date_default_timezone_set('Asia/Manila');
?>

<!DOCTYPE html>
<html>
<head>
	<?php include ('include/head.php');?>
	<title>TIMS | Reports</title>
</head>

<style type="text/css">
	.nav-reports {
		text-decoration: none;
		color: #fff;
		background: rgba(0,0,0,.4);
	}

	th{
		font-size: 11px;
		position: static;
	}

	td{
		font-size: 12px;
	}
	.btn-secondary{
		background-color: #8B0000;
	}

	.yellow{
		background-color: #FFFF66;
	}
	.orange{
		background-color: #FFB266;
	}
	.red{
		background-color: #FF9999;
	}
	.white{
		background-color: white;
	}
	.green{
		background-color:#99FF99;
	}
	.gray{
		background-color:#A0A0A0;
	}
</style>

<body>
	<?php include ('include/navbar.php'); ?>
	<div class="gap"></div>
	<div class="container-fluid">
		<div id="content">
			<div class="row">
				<div class="col-md-12">
					<div id="search_clients" class="tab-pane fade active show">
					<?php   
						include('reports/reports_Tab.php');
						$month = date("m");
						$year = date("Y");
						$curMonth= date('F', mktime(0, 0, 0, $month, 10));
						$lastMonth= date('F', mktime(0, 0, 0, $month-1, 10));
						$emptyDisplay = "No Results Found.";
					?>
					</div>
					<ul id="tabsJustified" class="nav nav-tabs">
						<li class="nav-item"><a href="reports.php" class="nav-link small text-uppercase active">All </a></li>
						<li class="nav-item"><a href="reports_recent.php" class="nav-link small text-uppercase ">Recent</a></li>
						<li class="nav-item"><a href="reports_small_jobs.php" class="nav-link small text-uppercase"> Small Jobs</a></li>
						<li class="nav-item"><a href="reports_big_jobs.php" class="nav-link small text-uppercase"> Big Jobs</a></li>
						<li class="nav-item"><a href="reports_this_month.php" class="nav-link small text-uppercase"> This <?php echo $curMonth;?></a></li>
						<li class="nav-item"><a href="reports_last_month.php" class="nav-link small text-uppercase"> Last <?php echo $lastMonth;?></a></li>
						<li class="nav-item"><a href="reports_this_year.php" class="nav-link small text-uppercase">This <?php echo $year;?></a></li>
						<li class="nav-item"><a href="reports_last_year.php" class="nav-link small text-uppercase">Last <?php echo $year-1;?></a></li>
					</ul>
					<div id="tabsJustifiedContent" class="tab-content">
						<div id="all_jobs" class="tab-pane fade active show">
							<div class="table-responsive" style="max-height: 70vh;">
								<table class="table table-hover " id="myTable">
									<thead>
										<tr>
											<th>Date Recieved</th>
											<th>Agent</th>
											<th>J.O. No.</th>
											<th>Customer</th>
											<th>Type of Job</th>
											<th>Kind of Job</th>
											<th>Quantity</th>
											<th>Artist</th>
											<th>Pages</th>
											<th>Status</th>
											<th>Due date</th>
											<th>Notes</th>
										</tr>
									</thead>
									<tbody id="table-body">
									</tbody>
								</table>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){ 
			function display(view = ''){
				$.ajax({
					url:"report_trial_display.php",
					method:"POST",
					data:{view:view},
					dataType:"json",
					success:function(data){
						$('#table-body').html(data.notification);
					}
				});
			}
		
			display();
			setInterval(function(){display();;}, 5000);
		});
	</script>
	<?php include ('export/export_to_csv.php')?>
	<script src="js/view_jobs.js"></script>
</body>
</html>