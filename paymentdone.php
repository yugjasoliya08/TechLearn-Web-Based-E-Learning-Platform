<?php 
include('./dbConnection.php');
session_start();
if(!isset($_SESSION['stuLogEmail'])) {
 echo "<script> location.href='loginorsignup.php'; </script>";
} else { 
 date_default_timezone_set('Asia/Kolkata');
 $date = date('Y-m-d H:i:s');
 if(isset($_POST['ORDER_ID']) && isset($_POST['TXN_AMOUNT'])){
  $order_id = $_POST['ORDER_ID'];
  $stu_email = $_SESSION['stuLogEmail'];
  $course_id = $_SESSION['course_id'];
  $status = "Success";
  $respmsg = "Done";
  $amount = $_POST['TXN_AMOUNT'];
  $card_number = $_POST['card_number'];
    $expiry_date = $_POST['expiry_date'];
    $cvv = $_POST['cvv'];
  $date = $date;
  $sql = "INSERT INTO courseorder(order_id, stu_email, course_id, status, respmsg, amount, card_number, expiry_date, cvv,order_date) VALUES ('$order_id', '$stu_email', '$course_id', '$status', '$respmsg', '$amount','$card_number', '$expiry_date', '$cvv','$date')";
   if($conn->query($sql) == TRUE){ 
   echo "<script>
        var userChoice = confirm('🎉 Payment Successful! Do you want to go to My Courses?');
        if (userChoice) {
            
            window.location.href = './Student/myCourse.php';
        } else {
            alert('ℹ️ You can check your courses later!');
			 window.location.href = './index.php';
        }
    </script>";
   };
 } else {
 echo "<b>Transaction status is failure</b>" . "<br/>";
 }
}
?>
