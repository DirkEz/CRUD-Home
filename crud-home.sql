-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for crud-home
CREATE DATABASE IF NOT EXISTS `crud-home` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `crud-home`;

-- Dumping structure for table crud-home.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table crud-home.accounts: ~2 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
	(1, 'test', 'test', 'test@test.com'),
	(4, 'Dirk', 'Dirk123', 'dirk.schaafstra@gmail.com');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table crud-home.boekingen
CREATE TABLE IF NOT EXISTS `boekingen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_id` int(11) NOT NULL DEFAULT 0,
  `titel` varchar(50) DEFAULT NULL,
  `beschrijving` mediumtext DEFAULT NULL,
  `boek_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ac_id` (`ac_id`),
  KEY `boek_id` (`boek_id`),
  CONSTRAINT `FK_boekingen_items` FOREIGN KEY (`boek_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_items_accounts` FOREIGN KEY (`ac_id`) REFERENCES `accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table crud-home.boekingen: ~0 rows (approximately)
/*!40000 ALTER TABLE `boekingen` DISABLE KEYS */;
/*!40000 ALTER TABLE `boekingen` ENABLE KEYS */;

-- Dumping structure for table crud-home.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL,
  `titel` varchar(50) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `foto` varchar(254) DEFAULT 'placeholder.png',
  `pl_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pl_id` (`pl_id`),
  CONSTRAINT `FK_items_plaatsen` FOREIGN KEY (`pl_id`) REFERENCES `plaatsen` (`pl_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table crud-home.items: ~4 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `titel`, `info`, `foto`, `pl_id`) VALUES
	(1, 'Vakantie 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at imperdiet orci, vitae dictum lectus. Curabitur vitae vestibulum mi. Donec euismod erat sed erat fermentum fermentum. Nunc ullamcorper libero quis neque aliquet, eu fringilla magna fermentum. Maecenas nec vehicula ligula. Sed bibendum mi massa, efficitur sollicitudin ante pulvinar et. Phasellus semper mauris maximus, rhoncus felis maximus, eleifend ex. Morbi eget neque ac diam malesuada feugiat vitae eget lacus. Proin sed augue lorem. In et vulputate nisl, sit amet elementum magna. Aliquam ante lacus, sodales non interdum id, varius non enim.', 'placeholder.png', 3),
	(2, 'Vakantie 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at imperdiet orci, vitae dictum lectus. Curabitur vitae vestibulum mi. Donec euismod erat sed erat fermentum fermentum. Nunc ullamcorper libero quis neque aliquet, eu fringilla magna fermentum. Maecenas nec vehicula ligula. Sed bibendum mi massa, efficitur sollicitudin ante pulvinar et. Phasellus semper mauris maximus, rhoncus felis maximus, eleifend ex. Morbi eget neque ac diam malesuada feugiat vitae eget lacus. Proin sed augue lorem. In et vulputate nisl, sit amet elementum magna. Aliquam ante lacus, sodales non interdum id, varius non enim.', 'placeholder.png', 1),
	(3, 'Vakantie 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at imperdiet orci, vitae dictum lectus. Curabitur vitae vestibulum mi. Donec euismod erat sed erat fermentum fermentum. Nunc ullamcorper libero quis neque aliquet, eu fringilla magna fermentum. Maecenas nec vehicula ligula. Sed bibendum mi massa, efficitur sollicitudin ante pulvinar et. Phasellus semper mauris maximus, rhoncus felis maximus, eleifend ex. Morbi eget neque ac diam malesuada feugiat vitae eget lacus. Proin sed augue lorem. In et vulputate nisl, sit amet elementum magna. Aliquam ante lacus, sodales non interdum id, varius non enim.', 'placeholder.png', 3),
	(4, 'Vakantie 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at imperdiet orci, vitae dictum lectus. Curabitur vitae vestibulum mi. Donec euismod erat sed erat fermentum fermentum. Nunc ullamcorper libero quis neque aliquet, eu fringilla magna fermentum. Maecenas nec vehicula ligula. Sed bibendum mi massa, efficitur sollicitudin ante pulvinar et. Phasellus semper mauris maximus, rhoncus felis maximus, eleifend ex. Morbi eget neque ac diam malesuada feugiat vitae eget lacus. Proin sed augue lorem. In et vulputate nisl, sit amet elementum magna. Aliquam ante lacus, sodales non interdum id, varius non enim.', 'placeholder.png', 3);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table crud-home.plaatsen
CREATE TABLE IF NOT EXISTS `plaatsen` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `land` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table crud-home.plaatsen: ~2 rows (approximately)
/*!40000 ALTER TABLE `plaatsen` DISABLE KEYS */;
INSERT INTO `plaatsen` (`pl_id`, `land`) VALUES
	(1, 'Nederland'),
	(2, 'Belgie'),
	(3, 'Duitsland');
/*!40000 ALTER TABLE `plaatsen` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
