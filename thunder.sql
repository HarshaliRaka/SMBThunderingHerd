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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'harsha',67,'Male','','atisni@gmail.com','',NULL,0,'2015-03-31 14:49:24','2015-03-31 14:49:24'),(2,'harsha',67,'Male','','atisni@gmail.com','',NULL,0,'2015-03-31 14:53:35','2015-03-31 14:53:35'),(3,'harsha',67,'Male','','atisni@gmail.com','',NULL,0,'2015-03-31 14:59:39','2015-03-31 14:59:39'),(4,'Harshali',22,'Female','8787897878','harshali.raka@gmail.com','67687hgjh',NULL,0,'2015-03-31 17:49:29','2015-03-31 17:49:29'),(5,'Nikita G',23,'Female','','nikigupta@ebay.com','',NULL,0,'2015-03-31 20:21:06','2015-03-31 20:21:06');
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
  `item` int(11) DEFAULT NULL,
  `qtity` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrolls`
--

LOCK TABLES `payrolls` WRITE;
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
INSERT INTO `payrolls` VALUES (1,89769,87987,56576,9898,87687,0,0,2400,10772,78979,0,9899,0,0,0,0,0,0,0,0,9899,0,0,0,0,0,0,0,0,0,20152,0,0,0,0,210070,0,0,109549,0,0,1,'2015-03-31 14:49:24','2015-03-31 14:49:24'),(2,89769,87987,56576,9898,87687,0,0,2400,10772,78979,0,9899,0,0,0,0,0,0,0,0,9899,0,0,0,0,0,0,0,0,0,20152,0,0,0,0,210070,0,0,109549,0,0,2,'2015-03-31 14:53:35','2015-03-31 14:53:35'),(3,897690,87987,56576,9898,87687,0,0,2400,107722,78979,0,9899,0,0,0,0,0,0,0,0,9899,0,0,0,0,0,0,0,0,0,77135,120508,3615,0,0,977540,124123,10343,150000,0,0,3,'2015-03-31 14:59:39','2015-03-31 14:59:39'),(4,500000,200000,300000,8000,60000,2000,0,2400,60000,30000,0,7891,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,73728,117341,3520,0,0,961709,120862,10071,97891,0,0,4,'2015-03-31 17:49:29','2015-03-31 17:49:29'),(5,500000,200000,280000,10000,300000,5000,0,2400,60000,100000,0,0,0,0,0,0,0,0,4000,0,0,0,0,0,0,0,0,0,0,0,68156,164780,4943,0,0,1132600,169723,14143,150000,0,0,5,'2015-03-31 20:21:06','2015-03-31 20:21:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_taxes`
--

LOCK TABLES `save_taxes` WRITE;
/*!40000 ALTER TABLE `save_taxes` DISABLE KEYS */;
INSERT INTO `save_taxes` VALUES (1,3,'Deductions under section 80CCG (Rajiv Gandhi Equity Saving Scheme)','Upon fulfillment of conditions laid down in the section, the deduction is lower of - 50% of amount invested in equity shares or Rs 25,000. ','2015-03-31 14:59:39','2015-03-31 14:59:39'),(2,3,'Section 10(13A) of the Income Tax Act and Rule 2A (House Rent Allowance)','In case you stay in an rented house, submit lease agreement copy, rent receipts and pancard of the owner (in case total rent per year > 100000)','2015-03-31 14:59:39','2015-03-31 14:59:39'),(3,3,'Section 80E(Education loan interest)','Tax saving is available for interest paid for education loans taken for higher studies.','2015-03-31 14:59:39','2015-03-31 14:59:39'),(4,3,'Section 80EE(First time Housing loan)','The deduction under this section is available only to Individuals for first house purchased where the value of the house is Rs 40lakhs or less and loan taken for the house is Rs 25lakhs or less. The total deduction allowed under this section is Rs 1,00,000. ','2015-03-31 14:59:39','2015-03-31 14:59:39'),(5,3,'Section 80D(Medical Insurance)','Tax saving on premiums paid towards medical insurance and health checkup upto 15000 for self, spouse & children and 15000 for parents.','2015-03-31 14:59:40','2015-03-31 14:59:40'),(6,3,'Section 80DD, 80DDB and 80U (Medical Expenditure for disability)','In case any expenses are incurred towards treatment of disabled or disabilities for self or dependent, please submit proofs.','2015-03-31 14:59:40','2015-03-31 14:59:40'),(7,3,'Section 80G(Donations towards social causes)','100%, 50% or 10% deductions based on organisation available on donations made for social causes. Submit all your donation receipts.','2015-03-31 14:59:40','2015-03-31 14:59:40'),(8,4,'Deductions under section 80C, 80CCC and 80CCD','The total limit for this section is INR 150000. Thus, you can still save tax on INR52109. You can invest in any of these : PPF, VPF, LIC, Pension schemes, Mutual Funds, ULIPs, etc.','2015-03-31 17:49:29','2015-03-31 17:49:29'),(9,4,'Deductions under section 80CCG (Rajiv Gandhi Equity Saving Scheme)','Upon fulfillment of conditions laid down in the section, the deduction is lower of - 50% of amount invested in equity shares or Rs 25,000. ','2015-03-31 17:49:29','2015-03-31 17:49:29'),(10,4,'Section 10(13A) of the Income Tax Act and Rule 2A (House Rent Allowance)','In case you stay in an rented house, submit lease agreement copy, rent receipts and pancard of the owner (in case total rent per year > 100000)','2015-03-31 17:49:29','2015-03-31 17:49:29'),(11,4,'Section 80E(Education loan interest)','Tax saving is available for interest paid for education loans taken for higher studies.','2015-03-31 17:49:29','2015-03-31 17:49:29'),(12,4,'Section 80EE(First time Housing loan)','The deduction under this section is available only to Individuals for first house purchased where the value of the house is Rs 40lakhs or less and loan taken for the house is Rs 25lakhs or less. The total deduction allowed under this section is Rs 1,00,000. ','2015-03-31 17:49:29','2015-03-31 17:49:29'),(13,4,'Section 80D(Medical Insurance)','Tax saving on premiums paid towards medical insurance and health checkup upto 15000 for self, spouse & children and 15000 for parents.','2015-03-31 17:49:29','2015-03-31 17:49:29'),(14,4,'Section 80DD, 80DDB and 80U (Medical Expenditure for disability)','In case any expenses are incurred towards treatment of disabled or disabilities for self or dependent, please submit proofs.','2015-03-31 17:49:29','2015-03-31 17:49:29'),(15,4,'Section 80G(Donations towards social causes)','100%, 50% or 10% deductions based on organisation available on donations made for social causes. Submit all your donation receipts.','2015-03-31 17:49:29','2015-03-31 17:49:29'),(16,4,'Section 80TTA(Income from savings account)','If your income from other sources includes interest on savings account, submit appropriate proofs to avail a rebate on upto Rs.10000.','2015-03-31 17:49:29','2015-03-31 17:49:29'),(17,5,'Deductions under section 80CCG (Rajiv Gandhi Equity Saving Scheme)','Upon fulfillment of conditions laid down in the section, the deduction is lower of - 50% of amount invested in equity shares or Rs 25,000. ','2015-03-31 20:21:06','2015-03-31 20:21:06'),(18,5,'Section 10(13A) of the Income Tax Act and Rule 2A (House Rent Allowance)','In case you stay in an rented house, submit lease agreement copy, rent receipts and pancard of the owner (in case total rent per year > 100000)','2015-03-31 20:21:06','2015-03-31 20:21:06'),(19,5,'Section 80E(Education loan interest)','Tax saving is available for interest paid for education loans taken for higher studies.','2015-03-31 20:21:06','2015-03-31 20:21:06'),(20,5,'Section 80EE(First time Housing loan)','The deduction under this section is available only to Individuals for first house purchased where the value of the house is Rs 40lakhs or less and loan taken for the house is Rs 25lakhs or less. The total deduction allowed under this section is Rs 1,00,000. ','2015-03-31 20:21:06','2015-03-31 20:21:06'),(21,5,'Section 80D(Medical Insurance)','Tax saving on premiums paid towards medical insurance and health checkup upto 15000 for self, spouse & children and 15000 for parents.','2015-03-31 20:21:06','2015-03-31 20:21:06'),(22,5,'Section 80DD, 80DDB and 80U (Medical Expenditure for disability)','In case any expenses are incurred towards treatment of disabled or disabilities for self or dependent, please submit proofs.','2015-03-31 20:21:06','2015-03-31 20:21:06'),(23,5,'Section 80G(Donations towards social causes)','100%, 50% or 10% deductions based on organisation available on donations made for social causes. Submit all your donation receipts.','2015-03-31 20:21:06','2015-03-31 20:21:06'),(24,5,'Section 80TTA(Income from savings account)','If your income from other sources includes interest on savings account, submit appropriate proofs to avail a rebate on upto Rs.10000.','2015-03-31 20:21:06','2015-03-31 20:21:06');
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

-- Dump completed on 2015-04-01 10:24:46
