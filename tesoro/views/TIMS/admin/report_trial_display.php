<?php

	include('TIMS_verify.php');
	
if(isset($_POST['view'])){	
	if(isset($_POST['submit'])){
		$emptyDisplay = 'No Data';
		$andCount = $keyCount=0;
		$output="";	
		$sql_query="SELECT a.date_added,a.current_status,a.job_no AS 'jon',a.date_received,a.description AS 'des',a.due_date,a.agent,a.customer,a.artist,a.pages,a.current_note,a.initial_copies, a.payment, b.kind_of_job AS 'koj',c.job_type AS 'jt',d.status_name AS 'sn',d.id FROM jobbings a LEFT JOIN jobbings_kinds b ON a.job_kind=b.id LEFT JOIN jobbings_type c ON b.type=c.id LEFT JOIN jobbings_statuses d ON a.current_status=d.id WHERE ";
											
		 if(!empty($_POST['artist'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$artist = mysqli_real_escape_string($conn,$_POST['artist']);
			$sql_query .= " a.artist = ('$artist') ";
			$andCount = 1;
		}
		if(!empty($_POST['Status'])){
			if($andCount==1){
				$sql_query .= " &&";										
			}
			$Status = mysqli_real_escape_string($conn,$_POST['Status']);
			$sql_query .= " d.id = ('$Status') ";
			$andCount = 1;
		}
		if(!empty($_POST['jobType'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$jobType = mysqli_real_escape_string($conn,$_POST['jobType']);
			$sql_query .= " c.id = ('$jobType') ";
			$andCount = 1;
		}
		if(!empty($_POST['jobKind'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$jobKind = mysqli_real_escape_string($conn,$_POST['jobKind']);
			$sql_query .= " b.id = ('$jobKind') ";
			$andCount = 1;
		}
		if(!empty($_POST['agent'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$agent = mysqli_real_escape_string($conn,$_POST['agent']);
			$sql_query .= " a.agent = ('$agent')";
			$andCount = 1;
		}
		if(!empty($_POST['year'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$year = mysqli_real_escape_string($conn,$_POST['year']);
			$sql_query .= " YEAR(a.date_received) = ('$year')";
			$andCount = 1;
		}
		if(!empty($_POST['payment'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$payment = mysqli_real_escape_string($conn,$_POST['payment']);
			$sql_query .= " a.payment = ('$payment')";
			$andCount = 1;
		}
		if(!empty($_POST['monthFrom'])&&empty($_POST['monthTo'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$monthFrom = mysqli_real_escape_string($conn,$_POST['monthFrom']);
			$sql_query .= " MONTH(a.date_received) = ('$monthFrom') ";
			$andCount = 1;
		}
		if(!empty($_POST['monthTo'])&&empty($_POST['monthFrom'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$monthTo = mysqli_real_escape_string($conn,$_POST['monthTo']);
			$sql_query .= " MONTH(a.date_received) = ('$monthTo') ";
			$andCount = 1;
		}
		if(!empty($_POST['monthFrom'])&&!empty($_POST['monthTo'])){
			if($andCount==1){
				$sql_query .= " &&";
			}
			$monthFrom = mysqli_real_escape_string($conn,$_POST['monthFrom']);
			$monthTo = mysqli_real_escape_string($conn,$_POST['monthTo']);
			$sql_query .= " MONTH(a.date_received) >= ('$monthFrom') && MONTH(a.date_received) <= ('$monthTo') ";
			$andCount = 1;
		}
		if(empty($_POST['artist'])&&empty($_POST['Status'])&&empty($_POST['jobKind'])&&empty($_POST['jobType'])&&empty($_POST['agent'])&&empty($_POST['year'])&&empty($_POST['payment'])&&empty($_POST['monthFrom'])&&empty($_POST['monthTo'])) {			
			$sql_query="SELECT a.date_added,a.current_status,a.description AS 'des',a.job_no AS 'jon',a.date_received,a.due_date,a.agent,a.customer,a.artist,a.pages,a.current_note,a.initial_copies,b.kind_of_job AS 'koj',c.job_type AS 'jt',d.status_name AS 'sn' FROM jobbings a INNER JOIN jobbings_kinds b ON a.job_kind=b.id INNER JOIN jobbings_type c ON b.type=c.id LEFT JOIN jobbings_statuses d ON a.current_status=d.id ORDER BY  a.date_received DESC ";
			$andCount = 2;
		}
		if($andCount!=2){
			$sql_query .= " ORDER BY  a.date_received DESC ";
		}
	}
	else {
		$sql_query="SELECT a.date_added,a.current_status, a.job_no AS 'jon',a.date_received,a.due_date,a.description AS 'des',a.agent,a.customer,a.artist,a.pages,a.current_note,a.initial_copies,b.kind_of_job AS 'koj',c.job_type AS 'jt',d.status_name AS 'sn' FROM jobbings a INNER JOIN jobbings_kinds b ON a.job_kind=b.id INNER JOIN jobbings_type c ON b.type=c.id LEFT JOIN jobbings_statuses d ON a.current_status=d.id ORDER BY a.date_received DESC ";
		$emptyDisplay = 'No Data';
	}
		$colorCode = $stat = $ddateDisplay = $headYear = $prevHeadYear = $headMonth = $prevHeadMonth = "" ;
		$date = date('Y-m-d');
		$colorCode= $deadline = "";
		$result_set=mysqli_query($conn,$sql_query);
		if(mysqli_num_rows($result_set)>0){
			while($row=mysqli_fetch_assoc($result_set)){
				$headYear = date("Y", strtotime($row['date_received']));
					if($prevHeadYear!=$headYear){
						$output.='<tr height="10px">
						<td style="text-align:center; font-size: 13px; color: white; background: rgb(170,0,0); " colspan="12">'.$headYear.'</td>
						</tr>';												
					}
						$prevHeadYear = $headYear;
						$headMonth = date("F", strtotime($row['date_received']));
					if($prevHeadMonth!=$headMonth){
						$output.='<tr height="10px"  >
								<td style="text-align:left; font-size: 13px; color: rgb(170,0,0); background-color: #E0E0E0;  box-shadow: 0px 3px 1px 0px rgba(0,0,0,0.5); " colspan="12">'.$headMonth.'</td>
								</tr>';												
					}
						$prevHeadMonth = $headMonth;
						$ddate = strtotime($row['due_date']);
						$cdate = strtotime($date);
						$timeleft = $ddate - $cdate;
						$days = round((($timeleft/24)/60)/60);
						$stat = $row['current_status'];
						$id ='';

					if($stat==5){	//OUT 
						$colorCode = "green";								
						if($ddate==0){
							$deadline = "Due date not set";
						}
						else{
							$deadline = date('F d, Y',strtotime($row['due_date']));
						}
					}
					else if($stat==7){
						$colorCode = "gray";
						if($ddate==0){
							$deadline = "Due date not set";
						}
						else{
							$deadline = date('F d, Y',strtotime($row['due_date']));
						}
					}
					else{
						if($ddate!=0){
							if($days >20){
								$colorCode = "white";
								$deadline = date('F d, Y',strtotime($row['due_date']));
							}
							else if ($days <=20 && $days >=11) {
								$colorCode = "yellow";
								$deadline = "".date('F d, Y',strtotime($row['due_date']))."<b style='color: #666600;'><br> (".$days." day/s left)</em>";
							}
							else if ($days <=10 && $days >=6) {
								$colorCode = "orange";
								$deadline = "".date('F d, Y',strtotime($row['due_date']))."<b style='color: #994c00;'><br> &nbsp;(".$days." day/s left)</b>";
							}
							else if ($days <= 5 && $days >=2) {
								$colorCode = "red";
								$deadline = "".date('F d, Y',strtotime($row['due_date']))."<b style='color: red;'><br> (".$days." day/s left)</b>";
							}
							else if ($days == 1) {
								$colorCode = "red";
								$deadline = "<b style='color: #990000;'>TOMMOROW!</b>";
							}
							else if($days==0){
								$colorCode = "red";
								$deadline = "<b style='color:  #CC0000;'>TODAY!</b>";
							}
							else if($days==-1){
								$colorCode = "red";
								$deadline = "<b style='color:  darkred;'>YESTERDAY!</b>";
							}
							else if ($days <-1){
								$colorCode = "red";
								$deadline = "".date('F d, Y',strtotime($row['due_date']))."<b style='color: darkred;'><br> (".abs($days)." day/s late)</b>";
							} 
					    }
						else{
							$colorCode = "white";
							$deadline = "Due date not set!";
						}
					}
				$output.='<tr class="'.$colorCode.'"'.$id.'>  
						 <td>'. date('F d, Y',strtotime($row['date_received'])).'</td>	   
						 <td>'. $row['agent'].'</td>
						 <td>'.$row['jon'].'</td>
						 <td>'. $row['customer'].'</td>
						 <td>'.$row['jt'].'</td>
						 <td>'.
								if($row['des']!=NULL){
									echo $row['koj']." <br>(".$row['des'].")";
								}
								else{
									echo $row['koj'];
								}
							  .'
						 </td>
						 <td>'.$row['initial_copies'].'</td>
						 <td>'.$row['artist'].'</td>
						 <td>'.$row['pages'].'</td>	
						 <td>'.$row['sn'].'</td>
						 <td>'.$deadline.'</td>
						 <td>'.$row['current_note'].'</td>
						</tr>';
				
			}  
		}
		else{
			$output.='
					  <tr height="50px">
						<td align="center" colspan="11">'.$emptyDisplay.'</td>
					  </tr>';
				
		}

		$data = array(
			'notification' => $output
		);

		echo json_encode($data);
}								

?>