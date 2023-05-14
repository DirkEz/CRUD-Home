<?php 
// include_once 'config/config.php';
session_start();
?>

<!DOCTYPE html>
<!-- <link rel="stylesheet" href="../css/style.css"> -->
<header class="site-header">
      <div class="wrapper site-header__wrapper">
        <a href="index.php" class="brand">Lorem, ipsum.</a>
        <nav class="nav">
          <ul class="nav__wrapper">
            <ul class="nav__item"><a href="index.php">Home</a></ul>
            <ul class="nav__item"><a href="#">Zoeken</a></ul>
            <ul class="nav__item"><a href="locaties.php">Locaties</a></ul>
            <ul class="nav__item"><a href="#">Contact</a></ul>
            <ul class="nav__item"><button type="submit" ><a href="./login.php">

            <?php 
            
            if (!isset($_SESSION['loggedin'])){
              echo "Login";
            } else {
              echo "<p><b>Ingelogd als: </b></p>" . " " . $_SESSION['name'];
            }
            
            ?>

            </a></button></ul>
            
          </ul>
        </nav>
      </div>
    </header>
    <script src="../js/index.js"></script>