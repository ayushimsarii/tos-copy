<?php 
include('../../includes/config.php');
include(ROOT_PATH.'includes/connect.php');
session_start();
$idess=$_REQUEST['idess'];
$ctp=$_REQUEST['ctp'];
foreach($idess as $idess1){
   $subquery1 ="INSERT INTO acedemic_phase (phase,ctp_id) VALUES ('$idess1','$ctp')";
								$substatement1 = $connect->prepare($subquery1);
								$substatement1->execute();

}
$_SESSION['success'] = "Phase Added";
header("Location:acedemic_phase.php");
?>