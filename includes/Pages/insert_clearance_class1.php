
<?php
    include('../../includes/config.php');
include(ROOT_PATH.'includes/connect.php');
 $id=$_GET['id'];
 $std=$_REQUEST['std'];
$class_table=$_REQUEST['class_table'];
$class_cl=$_REQUEST['class_cl'];
$class_id=$_REQUEST['class_id'];
$type=$_REQUEST['type'];
$get_data= "SELECT * FROM clearance_student_id where stud_id='$std' and clearance_id='$id'";
        $get_datast= $connect->prepare($get_data);
        $get_datast->execute();
 
         if($get_datast->rowCount() <= 0)
            {
echo $query_ac ="INSERT INTO clearance_student_id (clearance_id,stud_id,class_id,class_table,clone_cid) VALUES ('$id','$std','$class_cl','$class_table','$class_id')";
$statement_ac = $connect->prepare($query_ac);
$statement_ac->execute();
            }else{
               echo $query="UPDATE `clearance_student_id`
                SET `class_id`='$class_cl',`class_table`='$class_table',clone_cid='$class_id'
                where stud_id='$std' and clearance_id='$id'";
              
                $statement = $connect->prepare($query);
    
                $statement->execute();

            }
//  echo "updated data";
?>