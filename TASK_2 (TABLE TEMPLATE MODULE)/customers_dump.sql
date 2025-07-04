/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	11.4.7-MariaDB-0ubuntu0.25.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(1,'Ivan','Petrenko','+380501112233','ivan.petrenko@example.com'),
(2,'Olena','Kovalchuk','+380671234567','olena.kovalchuk@example.com'),
(3,'Serhii','Melnyk','+380931112233','serhii.melnyk@example.com'),
(4,'Natalia','Shevchenko','+380991234567','natalia.shevchenko@example.com'),
(5,'Andrii','Tkachenko','+380671112244','andrii.tkachenko@example.com'),
(6,'Yulia','Bondarenko','+380931234568','yulia.bondarenko@example.com'),
(7,'Oleh','Kravchenko','+380991112244','oleh.kravchenko@example.com'),
(8,'Kateryna','Boyko','+380501234569','kateryna.boyko@example.com'),
(9,'Vitalii','Tymoshenko','+380671112255','vitalii.tymoshenko@example.com'),
(10,'Anastasiia','Moroz','+380931234570','anastasiia.moroz@example.com'),
(11,'Dmytro','Kozak','+380991112256','dmytro.kozak@example.com'),
(12,'Iryna','Polishchuk','+380501234571','iryna.polishchuk@example.com'),
(13,'Vladyslav','Hnatiuk','+380671112266','vladyslav.hnatiuk@example.com'),
(14,'Oksana','Rudenko','+380931234572','oksana.rudenko@example.com'),
(15,'Taras','Hladiy','+380991112267','taras.hladiy@example.com'),
(16,'Maria','Yurchenko','+380501234573','maria.yurchenko@example.com'),
(17,'Oleksii','Zakharchenko','+380671112277','oleksii.zakharchenko@example.com'),
(18,'Halyna','Vasylenko','+380931234574','halyna.vasylenko@example.com'),
(19,'Roman','Stepanenko','+380991112278','roman.stepanenko@example.com'),
(20,'Svitlana','Nikolenko','+380501234575','svitlana.nikolenko@example.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-07-04 21:13:00
