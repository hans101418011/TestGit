<?php
	include("./conf/_conSql.php");
	include("./_func.php");

	if(isset($error_msg)){

	}

	$_POST['act']=1;
	$_POST['account']='asdfsadfas';
	$_POST['passwd']='asdfasf555';
	$_POST['birthday']='1990-11-28';
	$_POST['email']='fffff@asdf.cc';
	$_POST['mobileNumber']='0912345678';

	if(isset($_POST['act'])){
		$error_msg = NULL;
		$member['account'] = $_POST['account'];
		$member['passwd'] = $_POST['passwd'];
		$member['email'] = $_POST['email'];
		$member['name'] = isset($_POST['name'])?$_POST['name']:NULL;
		$member['sex'] = isset($_POST['sex'])?$_POST['sex']:NULL;
		$member['address'] = isset($_POST['address'])?$_POST['address']:NULL;
		$member['tel'] = isset($_POST['tel'])?$_POST['tel']:NULL;
		$member['mobileNumber'] = $_POST['mobileNumber'];
		$member['birthday'] = isset($_POST['birthday'])?$_POST['birthday']:NULL;
		$member['record'] = isset($_POST['record'])?$_POST['record']:NULL;

		if(!chkAcc($member['account'])){
			$error_msg = $error_msg.'1';
		}
		if(!chkPW($member['passwd'])){
			$error_msg = $error_msg.'2';
		}
		if(!chkEmail($member['email'])){
			$error_msg = $error_msg.'3';
		}
		if(!chkMobile($member['mobileNumber'])){
			$error_msg = $error_msg.'4';
		}
		if($member['tel']!=NULL){
			if(!chkTel($member['tel'])){
				$error_msg = $error_msg.'5';
			}	
		}
		if($member['birthday']!=NULL){
			if(!chkDate($member['birthday'])){
				$error_msg = $error_msg.'6';
			}
		}

		if($error_msg==NULL){
			$member['name'] = $conn->real_escape_string($member['name']);
			$member['sex'] = $conn->real_escape_string($member['sex']);
			$member['address'] = $conn->real_escape_string($member['address']);
			$member['record'] = $conn->real_escape_string($member['record']);

			$sql = "INSERT INTO `restaurant_toscano`.`member` (`account`, `passwd`, `email`, `name`, `sex`, `address`, `tel`, `mobileNumber`, `birthday`, `records`) VALUES ('"
				.$member['account']."','"
				.$member['passwd']."','"
				.$member['email']."','"
				.$member['name']."','"
				.$member['sex']."','"
				.$member['address']."','"
				.$member['tel']."','"
				.$member['mobileNumber']."','"
				.$member['birthday']."','"
				.$member['record']."')";

			if ($conn->query($sql) === TRUE) {
			  echo "New record created successfully";
			} else {
			  echo "Error: " . $sql . "<br>" . $conn->error;
			}

/*
			$sql = "SELECT * FROM `restaurant_toscano`.`member` LIMIT 1000";
			echo $sql;
			
			$result = $conn->query($sql);

			if ($result->num_rows > 0) {
			  // output data of each row
				while($row = $result->fetch_assoc()) {
			  		echo "<pre>";
					print_r($row);
					echo "</pre>";  
				}
			} else {
			  echo "0 results";
			}

*/
			$conn->close();
			
		}
	}
	echo "<h3>";
	echo $error_msg;
	echo "</h3>";
?>