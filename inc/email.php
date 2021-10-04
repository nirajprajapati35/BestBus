<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="icon" href="../images/logo.png" type="image/gif" sizes="16x16">
</head>
<body>
<?php
if (isset($_POST['email']))
{
	
if ($_POST['email'] != '')
{
	
  $email  = $_POST['email'] ;
  $name  = $_POST['name'] ;
  $subject  = $_POST['subject'] ;
  $Message  = $_POST['message'] ;


$to = "bluesantra2020@gmail.com";
$subject = $subject;
$headers = "From: $email " . "\r\n"; 
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n"; 

$txt .= '<table style=" width:500px;border:1px solid #ddd;margin: 0px auto;" class="table-bordered table" border="1px solid #000;">
<tbody>
<tr>
<td> <b>Name </b></td>
<td>'.$name.'</td>
</tr>
<tr>
<td> <b>Email </b></td>
<td>'.$email.' </td>
</tr>
<tr>
<td> <b>Message </b></td>
<td>'.$Message.' </td>
</tr>
</tbody>
</table>';
if(mail($to,$subject,$txt,$headers))
{
header("Location: email.php?success");
}
else
{
header("Location: ../email.php?error");
}
 
}
else
{
header("Location: ../email.php?error");
}

}
?>
<div class="jumbotron text-center">
  <h1 class="display-3">Thank You!</h1>
  <p class="lead"><strong>Please check your email</strong> for further instructions.</p>
  <hr>
  <p>
    Having trouble? <a href="http://v2travels.bluesantra.in/contact.php">Contact us</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="http://v2travels.bluesantra.in/" role="button">Continue to homepage</a>
  </p>
</div>
</body>
</html>