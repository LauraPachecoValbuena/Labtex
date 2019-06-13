-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: labtex
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `prenda`
--

DROP TABLE IF EXISTS `prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prenda` (
  `idPrenda` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` int(11) DEFAULT NULL,
  `talla` enum('XS','S','M','L','XL') DEFAULT NULL,
  `color` enum('Negro','Blanco','Amarillo','Rosa','Azul','Verde','Rojo') DEFAULT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imagen` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`idPrenda`),
  UNIQUE KEY `referencia` (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (1,1019001,'S','Amarillo','Camiseta manga corta con bordado en pecho ok',' '),(2,1019002,'M','Blanco','Bomberg doble cremallera pieza a contraste en mangas',''),(3,1019003,'XS','Negro','shorts guay!!',''),(4,1019004,'L','Blanco','bomber',''),(5,1019006,'M','Negro','shorts',''),(17,1019007,'XL','Negro','shorts','Shorts Leopardo.png'),(26,10194,'L','Negro','aaaaaaaaaaaaaaaaa','undefined'),(27,1019347,'XS','Negro','dwhjgfkjhgfkhjaGFKJlhgf','undefined'),(33,1019567,'M','Blanco','ssssssssssssssssssssssssssssssssshhhhhhhhh','undefined'),(36,1019867,'M','Amarillo','hhhhhhhhhhhhhhhhhhhh','undefined'),(37,1000006,'M','Negro','lalalalalalala','undefined'),(38,1058567,'M','Amarillo','ououououououououou','undefined'),(39,1099567,'M','Amarillo','lauralauralaura','undefined');
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-07  9:53:36
