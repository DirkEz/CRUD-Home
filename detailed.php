<?php
include_once('layout/header.php');
include_once('user-creation\config.php');

$id = $_GET['view'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css\details.css">
</head>
<body>

<?php
   if(isset($message)){
      foreach($message as $message){
         echo '<span class="message">'.$message.'</span>';
      }
   }
?>

<div class="container">


<div class="centre">

   <?php
      
      $stmt = $connect->query("SELECT * FROM items WHERE id = '$id'");
      while ($row = $stmt->fetch()){

   ?>

   <h1><?php  echo $row['titel']  ?></h1>


   <?php }; ?>

   

</div>

</div>

</body>
</html>