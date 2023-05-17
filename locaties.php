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
    <link rel="stylesheet" href="css\locatie.css">
    
    <title>Locaties</title>
</head>
<body>
    <div class="locatie-box">
        <div class="filter">
            <p class="user-not">

            <?php if (!isset($_SESSION['loggedin'])){
              echo "Niet ingelogd";
            } else {
              echo "Ingelogd als: " . " " . $_SESSION['name'];
            } ?>

            </p>
            <hr class="solid">
            <div class="filters">

            </div>
        </div>
        <div class="disp-blok">
            <?php  while ($row = $stmt->fetch()) { ?>
                
                <a class="updel" href="detailed.php?view=<?php echo $row['id']; ?>" class="btn">
                <div class="box">
                    <div class="foto"><img src="img/locatie-img/<?php echo $row['foto']?>" alt="fotos" height="auto"></div>

                    <div class="box-in">
                        <div class="titel"> <h3><?php echo $row['titel'] ?></h3></div>
                        <div class="info"><?php echo $row['info'] ?></div>
                    </div>
                </div>
            </a>
            <?php } ?>
        </div>
    </div>
</body>
</html> 