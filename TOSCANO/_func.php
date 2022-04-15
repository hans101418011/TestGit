<?php

function chkAcc($str){
	$pattern = "/^[a-zA-Z][a-zA-Z0-9_]{8,20}$/";
	return preg_match_all($pattern,$str);
}
function chkPW($str){
	$pattern = "/^[a-zA-Z][a-zA-Z0-9_]{8,20}$/";
	return preg_match_all($pattern,$str);
}
function chkEmail($str){
	$pattern = "/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/";
	return preg_match_all($pattern,$str);
}
function chkMobile($str){
	$pattern = "/09[0-9]{8}$/";
	return preg_match_all($pattern,$str);
}
function chkTel($str){
	$pattern = "/0[0-9]{7,9}$/";
	return preg_match_all($pattern,$str);
}
function chkDate($str){
	$pattern = "/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/";
	return preg_match_all($pattern,$str);
}

?>