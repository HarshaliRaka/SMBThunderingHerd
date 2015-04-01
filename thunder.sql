-- MySQL dump 10.13  Distrib 5.1.73, for Win64 (unknown)
--
-- Host: localhost    Database: thunder
-- ------------------------------------------------------
-- Server version	5.1.73-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pancard` varchar(255) DEFAULT NULL,
  `joined` varchar(255) DEFAULT NULL,
  `left` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Nikita Gupta',22,'Female','','nikigupta@ebay.com','',NULL,0,'2015-04-01 06:08:11','2015-04-01 06:08:11'),(2,'Harshali Raka',22,'Female','','harshali.raka@gmail.com','',NULL,0,'2015-04-01 06:14:11','2015-04-01 06:14:11'),(3,'Nikita G',23,'Male','','nikks3591@gmail.com','',NULL,0,'2015-04-01 06:18:32','2015-04-01 06:18:32'),(4,'Shikha Singh',23,'Female','','shiksingh@ebay.com','',NULL,0,'2015-04-01 08:43:55','2015-04-01 08:43:55');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payrolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basic` int(11) DEFAULT '0',
  `hra` int(11) DEFAULT '0',
  `special` int(11) DEFAULT '0',
  `conveyance` int(11) DEFAULT '0',
  `bonus` int(11) DEFAULT '0',
  `income_others` int(11) DEFAULT '0',
  `hra_exempt` int(11) DEFAULT '0',
  `prof_tax` int(11) DEFAULT '2400',
  `pf` int(11) DEFAULT '0',
  `ppf` int(11) DEFAULT '0',
  `vpf` int(11) DEFAULT '0',
  `lic` int(11) DEFAULT '0',
  `hlpr` int(11) DEFAULT '0',
  `ulip` int(11) DEFAULT '0',
  `elss` int(11) DEFAULT '0',
  `nsc` int(11) DEFAULT '0',
  `infrastructure` int(11) DEFAULT '0',
  `nss` int(11) DEFAULT '0',
  `mutual_fund` int(11) DEFAULT '0',
  `child_edu` int(11) DEFAULT '0',
  `fixed_deposit` int(11) DEFAULT '0',
  `pension` int(11) DEFAULT '0',
  `national_pension` int(11) DEFAULT '0',
  `rgess` int(11) DEFAULT '0',
  `mediclaim` int(11) DEFAULT '0',
  `education_loan` int(11) DEFAULT '0',
  `housing_loan` int(11) DEFAULT '0',
  `handicap_self` int(11) DEFAULT '0',
  `handicap_dependent` int(11) DEFAULT '0',
  `donations` int(11) DEFAULT '0',
  `sal` int(11) DEFAULT '0',
  `income_tax` int(11) DEFAULT '0',
  `education_cess` int(11) DEFAULT '0',
  `surcharge` int(11) DEFAULT '0',
  `rebate` int(11) DEFAULT '0',
  `taxable_income` int(11) DEFAULT '0',
  `total_tax` int(11) DEFAULT '0',
  `tax_month` int(11) DEFAULT '0',
  `sec80c` int(11) DEFAULT '0',
  `sec80cg` int(11) DEFAULT '0',
  `rent` int(11) DEFAULT '0',
  `employee_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrolls`
--

LOCK TABLES `payrolls` WRITE;
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
INSERT INTO `payrolls` VALUES (1,500000,200000,300000,9000,120000,2000,0,2400,60000,100000,0,9847,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,73676,118920,3567,0,0,969600,122487,10207,150000,0,0,1,'2015-04-01 06:08:11','2015-04-01 06:08:11'),(2,48587,15790,87479,8787,67676,0,0,2400,5830,9898,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13186,0,0,0,0,201404,0,0,15728,0,0,2,'2015-04-01 06:14:11','2015-04-01 06:14:12'),(3,500000,200000,300000,8000,60000,3000,50000,2400,60000,30000,0,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74468,108720,3261,0,0,918600,111981,9331,92000,0,100000,3,'2015-04-01 06:18:32','2015-04-01 06:18:32'),(4,348121,139259,165405,6684,439839,0,77187,2400,41774,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,44519,119252,3577,0,0,971262,122829,10235,41774,0,112000,4,'2015-04-01 08:43:55','2015-04-01 08:43:55');
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_taxes`
--

DROP TABLE IF EXISTS `save_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `save_taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `act_name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_taxes`
--

LOCK TABLES `save_taxes` WRITE;
/*!40000 ALTER TABLE `save_taxes` DISABLE KEYS */;
INSERT INTO `save_taxes` VALUES (1,1,'2','','2015-04-01 06:08:11','2015-04-01 06:08:11'),(2,1,'4','','2015-04-01 06:08:11','2015-04-01 06:08:11'),(3,1,'5','','2015-04-01 06:08:12','2015-04-01 06:08:12'),(4,1,'6',' ','2015-04-01 06:08:12','2015-04-01 06:08:12'),(5,1,'7','','2015-04-01 06:08:12','2015-04-01 06:08:12'),(6,1,'8','','2015-04-01 06:08:12','2015-04-01 06:08:12'),(7,1,'9','','2015-04-01 06:08:12','2015-04-01 06:08:12'),(8,1,'10','','2015-04-01 06:08:12','2015-04-01 06:08:12'),(9,3,'1','58000','2015-04-01 06:18:32','2015-04-01 06:18:32'),(10,3,'2','','2015-04-01 06:18:33','2015-04-01 06:18:33'),(11,3,'5','','2015-04-01 06:18:33','2015-04-01 06:18:33'),(12,3,'6',' ','2015-04-01 06:18:33','2015-04-01 06:18:33'),(13,3,'7','','2015-04-01 06:18:33','2015-04-01 06:18:33'),(14,3,'8','','2015-04-01 06:18:33','2015-04-01 06:18:33'),(15,3,'9','','2015-04-01 06:18:33','2015-04-01 06:18:33'),(16,3,'10','','2015-04-01 06:18:33','2015-04-01 06:18:33'),(17,4,'1','108226','2015-04-01 08:43:55','2015-04-01 08:43:55'),(18,4,'2','','2015-04-01 08:43:55','2015-04-01 08:43:55'),(19,4,'5','','2015-04-01 08:43:55','2015-04-01 08:43:55'),(20,4,'6',' ','2015-04-01 08:43:55','2015-04-01 08:43:55'),(21,4,'7','','2015-04-01 08:43:55','2015-04-01 08:43:55'),(22,4,'8','','2015-04-01 08:43:55','2015-04-01 08:43:55'),(23,4,'9','','2015-04-01 08:43:55','2015-04-01 08:43:55');
/*!40000 ALTER TABLE `save_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150329071702'),('20150329091053'),('20150329103335'),('20150329103440'),('20150329103516'),('20150330124655'),('20150330125806');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-01 14:16:55
