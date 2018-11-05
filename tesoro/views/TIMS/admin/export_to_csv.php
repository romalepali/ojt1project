<?php 
function export ($db_record, $where){
	$csv_filename = 'db_export_'.date('Y-m-d').'.csv';
	$csv_export = '';
	$query = "SELECT * FROM ".$db_record." ".$where;
	$result = mysqli_query($conn,$query);
	$field = mysqli_num_fields($result);

	for($i = 0; $i < $field; $i++) {
  		$csv_export.= mysqli_field_name($result,$i).',';
	}

	$csv_export.= '
	';

	while($row = mysqli_fetch_array($result)) {
		for($i = 0; $i < $field; $i++) {
			$csv_export.= '"'.$row[mysqli_field_name($result,$i)].'",';
		}	
		$csv_export.= '
		';
	}

	header("Content-type: text/x-csv");
	header("Content-Disposition: attachment; filename=".$csv_filename."");
	echo($csv_export);
}
?>