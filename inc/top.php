<?php  include('abzy_admin/db/dbconnect.php'); ?>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!--Font-Family Link 
		============================================ -->	
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

		<!--Bootstrap File 
		============================================ -->
		<link rel="stylesheet" type="text/css" media="all" href="css/bootstrap.min.css" />


		<!--POPO Icon File 
		============================================ -->
		<link rel="stylesheet" type="text/css" media="all" href="css/popo-fonts.css" />

		<!--Main Style File 
		============================================ -->
		<link rel="stylesheet" type="text/css" media="all" href="css/mainstyle.css" />

		<!--Mobile-View File 
		============================================ -->
		<link rel="stylesheet" type="text/css" media="all" href="css/mobileview.css" />

		<!--Popo Home Css File 
		============================================ -->
		<link rel="stylesheet" type="text/css" media="all" href="css/popo-style.css" />

		<!--Font-Awesome-link
		============================================ -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<link rel="icon" sizes="16x16" href="images/ABZY-favicon.png">
<?php
// Function to create read more link of a content with link to full page
function readMore($content , $limit) {

$content = substr($content,0,$limit);
$content = substr($content,0,strrpos($content,' '));
$content = $content;
return $content;
}
?>