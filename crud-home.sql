-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versie:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Databasestructuur van crud-home wordt geschreven
CREATE DATABASE IF NOT EXISTS `crud-home` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `crud-home`;

-- Structuur van  tabel crud-home.accounts wordt geschreven
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumpen data van tabel crud-home.accounts: ~2 rows (ongeveer)
INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
	(1, 'test', 'test', 'test@test.com'),
	(4, 'Dirk', 'Dirk123', 'dirk.schaafstra@gmail.com');

-- Structuur van  tabel crud-home.boekingen wordt geschreven
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

-- Dumpen data van tabel crud-home.boekingen: ~0 rows (ongeveer)

-- Structuur van  tabel crud-home.items wordt geschreven
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL,
  `titel` varchar(50) DEFAULT NULL,
  `naam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel crud-home.items: ~2 rows (ongeveer)
INSERT INTO `items` (`id`, `titel`, `naam`) VALUES
	(1, NULL, NULL),
	(2, NULL, NULL),
	(3, NULL, NULL);

-- Structuur van  tabel crud-home.plaatsen wordt geschreven
CREATE TABLE IF NOT EXISTS `plaatsen` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `plaats` varchar(50) DEFAULT NULL,
  `provincie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pl_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpen data van tabel crud-home.plaatsen: ~0 rows (ongeveer)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
