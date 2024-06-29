-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_pb_epi
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbepi`
--

DROP TABLE IF EXISTS `tbepi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbepi` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `calca` varchar(2) DEFAULT NULL,
  `camisa` varchar(3) DEFAULT NULL,
  `sapato` varchar(2) DEFAULT NULL,
  `luva` varchar(1) DEFAULT NULL,
  `capacete` varchar(2) DEFAULT NULL,
  `oculos` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbepi`
--

LOCK TABLES `tbepi` WRITE;
/*!40000 ALTER TABLE `tbepi` DISABLE KEYS */;
INSERT INTO `tbepi` VALUES (2,'Antonio','44','XGG','40','P','58','Escuro'),(3,'Carlos','46','GG','39',' ',' ',' '),(4,'luciano','44','M','38','M','60','Amarelo'),(5,'Paulo','44','G','40','M','62','Branco'),(6,'Lucas','42','GG','37','G','56','Branco'),(7,'Lizandro','56','XGG','45','G','62','Amarelo'),(8,'Marcos','50','G','43','P','58','Branco'),(9,'Luiz ',' ',' ',' ','P',' ','Escuro');
/*!40000 ALTER TABLE `tbepi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-29 16:20:45
