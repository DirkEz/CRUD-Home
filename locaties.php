<?php 

include_once 'layout\header.php';
include_once 'user-creation\config.php';

$stmt = $connect->query("SELECT * FROM items");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Locaties</title>
</head>
<body>
    <div class="locatie-box">
    <?php  while ($row = $stmt->fetch()) { ?>
        <div class="box">
            <div class="titel"><?php echo $row['id'] ?></div>
        </div>


    <?php } ?>
    </div>
</body>
</html> 