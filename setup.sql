-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: security_transactions_db
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `sec_acc_master`
--

DROP TABLE IF EXISTS `sec_acc_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_acc_master` (
  `rec_id` varchar(20) NOT NULL,
  `sam_id` varchar(45) DEFAULT NULL,
  `customer_number` int NOT NULL,
  `reference_currency` varchar(45) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_officer` int NOT NULL,
  `valuation_currency` varchar(45) NOT NULL,
  `managed_account` int NOT NULL,
  `start_date` varchar(10) NOT NULL,
  `dealer_book` text,
  `clean_book_cost` varchar(45) DEFAULT NULL,
  `portfolio_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_master`
--

DROP TABLE IF EXISTS `security_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_master` (
  `ysm_id` varchar(20) NOT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `short_name` varchar(45) DEFAULT NULL,
  `mnemonic` varchar(45) DEFAULT NULL,
  `company_domicile` varchar(10) DEFAULT NULL,
  `security_domicile` varchar(10) DEFAULT NULL,
  `security_currency` varchar(10) DEFAULT NULL,
  `bond_or_share` tinytext,
  `sub_asset_type` varchar(20) DEFAULT NULL,
  `price_currency` varchar(20) DEFAULT NULL,
  `price_type` tinytext,
  `last_price` float DEFAULT NULL,
  `date_last_price` varchar(45) DEFAULT NULL,
  `price_update_code` varchar(20) DEFAULT NULL,
  `industry_code` varchar(20) DEFAULT NULL,
  `stock_exchange` varchar(20) DEFAULT NULL,
  `stk_exchange_price` varchar(20) DEFAULT NULL,
  `par_value` float DEFAULT NULL,
  `trading_units` float DEFAULT NULL,
  `default_depository` int DEFAULT NULL,
  `isin` varchar(45) DEFAULT NULL,
  `sedol_no` varchar(45) DEFAULT NULL,
  `qouted_listed_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ysm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_transactions`
--

DROP TABLE IF EXISTS `security_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_transactions` (
  `rec_id` varchar(45) NOT NULL,
  `entry_id` varchar(45) DEFAULT NULL,
  `security_account` varchar(20) DEFAULT NULL,
  `security_number` varchar(20) DEFAULT NULL,
  `depository` varchar(20) DEFAULT NULL,
  `trade_date` varchar(20) DEFAULT NULL,
  `value_date` varchar(20) DEFAULT NULL,
  `trans_type` varchar(45) DEFAULT NULL,
  `security_currency` varchar(45) DEFAULT NULL,
  `price_type` int DEFAULT NULL,
  `trade_currency` varchar(45) DEFAULT NULL,
  `no_nominal` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `gross_amt_trd_curr` float DEFAULT NULL,
  `broker_comms` float DEFAULT NULL,
  `net_amt_trade` float DEFAULT NULL,
  `account_number` varchar(45) DEFAULT NULL,
  `account_currency` tinytext,
  `ref_currency` tinytext,
  `delivery_instr` tinytext,
  `cost_invst_sec_ccy` float DEFAULT NULL,
  `cost_invst_ref_ccy` varchar(45) DEFAULT NULL,
  `prof_loss_sec_ccy` varchar(45) DEFAULT NULL,
  `reversal_date` varchar(45) DEFAULT NULL,
  `date_updated` varchar(20) DEFAULT NULL,
  `book_cost_sec_ccy` float DEFAULT NULL,
  `book_cost_ref_ccy` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 14:27:43
