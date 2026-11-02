CREATE DATABASE  IF NOT EXISTS `car_rental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `car_rental`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: car_rental
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `car_id` bigint NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `rental_days` bigint NOT NULL,
  `price_per_day` decimal(19,2) NOT NULL,
  `sub_total` decimal(19,2) DEFAULT NULL,
  `deposit_amount` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_id` (`booking_id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `booking_details_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (1,1,7,'2026-05-20 16:36:00','2026-05-23 00:00:00',2,2800000.00,5600000.00,2000.00),(2,2,6,'2026-05-24 17:39:00','2026-05-27 07:00:00',3,2000000.00,6000000.00,2000.00),(3,3,7,'2026-05-26 08:00:00','2026-05-29 08:00:00',3,2800000.00,8400000.00,2000.00),(4,4,5,'2026-05-22 08:00:00','2026-05-24 00:00:00',2,1400000.00,2800000.00,2000.00),(5,5,6,'2026-05-26 08:00:00','2026-05-28 08:00:00',2,2000000.00,4000000.00,2000.00),(6,6,5,'2026-05-27 22:15:00','2026-05-29 08:00:00',1,1400000.00,1400000.00,2000.00),(7,7,5,'2026-05-25 23:20:00','2026-05-29 00:00:00',4,1400000.00,5600000.00,2000.00),(8,8,8,'2026-05-31 08:00:00','2026-06-04 08:00:00',4,4500000.00,18000000.00,2000.00),(9,9,7,'2026-06-01 06:00:00','2026-05-29 00:00:00',4,2800000.00,11200000.00,20000.00),(10,10,6,'2026-06-03 08:00:00','2026-06-09 08:00:00',6,2000000.00,12000000.00,2000.00),(11,11,7,'2026-06-16 08:00:00','2026-06-24 08:00:00',8,2800000.00,22400000.00,2000.00),(12,12,7,'2026-06-03 08:00:00','2026-06-05 08:00:00',2,2800000.00,5600000.00,2000.00),(13,13,7,'2026-06-10 08:00:00','2026-06-16 08:00:00',6,2800000.00,16800000.00,2000.00),(14,14,21,'2026-06-15 08:00:00','2026-06-18 08:00:00',3,3000000.00,9000000.00,2000.00),(15,15,7,'2026-06-22 08:00:00','2026-06-26 08:00:00',4,2800000.00,11200000.00,2000.00),(16,16,8,'2026-06-28 08:00:00','2026-06-30 08:00:00',2,4500000.00,9000000.00,2000.00),(17,17,20,'2026-07-01 08:00:00','2026-07-03 08:00:00',2,2800000.00,5600000.00,8000000.00),(18,18,20,'2026-06-06 08:00:00','2026-06-10 00:00:00',2,2800000.00,5600000.00,2000.00),(19,19,8,'2026-06-09 08:21:00','2026-06-11 08:00:00',2,4500000.00,9000000.00,2000.00),(20,20,21,'2026-06-26 08:00:00','2026-06-30 00:00:00',4,3000000.00,12000000.00,2000.00),(21,21,10,'2026-06-17 08:00:00','2026-06-19 08:00:00',2,1500000.00,3000000.00,5500000.00),(22,22,8,'2026-06-14 08:00:00','2026-06-16 08:00:00',2,4500000.00,9000000.00,50000.00),(23,23,8,'2026-06-14 11:00:00','2026-06-16 09:00:00',2,4500000.00,9000000.00,2000.00),(24,24,20,'2026-06-17 11:21:00','2026-06-19 00:00:00',2,2800000.00,5600000.00,2000.00),(25,25,21,'2026-06-23 06:00:00','2026-06-27 08:00:00',4,3000000.00,12000000.00,2000.00),(26,26,21,'2026-06-22 08:00:00','2026-06-26 08:00:00',3,3000000.00,9000000.00,2000.00),(27,27,16,'2026-07-03 08:00:00','2026-07-06 00:00:00',3,1300000.00,3900000.00,2000.00),(28,28,20,'2026-07-06 08:00:00','2026-07-09 08:00:00',3,2800000.00,8400000.00,2000.00),(29,29,7,'2026-06-29 08:00:00','2026-07-01 08:00:00',2,2800000.00,5600000.00,2000.00),(30,30,20,'2026-07-02 08:00:00','2026-07-04 08:00:00',2,2800000.00,5600000.00,2000.00),(31,31,20,'2026-11-03 08:00:00','2026-11-06 08:00:00',3,2800000.00,8400000.00,2000.00);
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_status_history`
--

DROP TABLE IF EXISTS `booking_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_status_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `changed_by` bigint DEFAULT NULL,
  `old_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `note` text,
  `changed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_history_booking` (`booking_id`),
  KEY `fk_history_user` (`changed_by`),
  CONSTRAINT `fk_history_booking` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status_history`
--

LOCK TABLES `booking_status_history` WRITE;
/*!40000 ALTER TABLE `booking_status_history` DISABLE KEYS */;
INSERT INTO `booking_status_history` VALUES (1,1,3,NULL,'PENDING','Người dùng đã tạo đơn',NULL,'2026-05-24 02:37:07'),(2,1,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-24 02:38:03'),(3,1,3,'CONFIRMED','CANCELLED','Khách hàng hủy đơn',NULL,'2026-05-24 02:38:53'),(4,2,3,NULL,'PENDING','Người dùng đã tạo đơn',NULL,'2026-05-24 02:39:58'),(5,2,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-24 02:40:16'),(6,2,1,'CONFIRMED','RENTED',NULL,'ko co','2026-05-24 02:41:45'),(7,2,1,'RENTED','RETURNING',NULL,'Xe bi hu ...','2026-05-24 02:43:54'),(8,2,1,'RETURNING','COMPLETED','Đã thu đủ tiền','','2026-05-24 03:02:10'),(9,3,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-25 14:37:58'),(10,3,3,'CONFIRMED','CANCELLED','Khách hàng hủy đơn',NULL,'2026-05-25 14:39:54'),(11,4,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-25 14:47:54'),(12,4,1,'CONFIRMED','RENTED',NULL,'ko co','2026-05-25 14:49:07'),(13,4,1,'RETURNING','RETURNING',NULL,'hu xe ','2026-05-25 15:02:10'),(14,4,1,'RENTED','RETURNING',NULL,'hu xe ','2026-05-25 15:02:10'),(15,4,1,'COMPLETED','COMPLETED','dax thanh toan du','','2026-05-25 15:03:51'),(16,4,1,'RETURNING','COMPLETED','dax thanh toan du','','2026-05-25 15:03:51'),(17,5,3,'PENDING','PENDING','Bạn đã tạo đơn đặt xe thành công',NULL,'2026-05-25 15:11:42'),(18,5,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-25 15:12:09'),(19,5,1,'RENTED','RENTED',NULL,'ko','2026-05-25 15:12:56'),(20,5,1,'RETURNING','RETURNING',NULL,'ko','2026-05-25 15:14:12'),(21,5,1,'COMPLETED','COMPLETED','da thanh toan du','','2026-05-25 15:14:41'),(22,6,3,'PENDING','PENDING','Bạn đã tạo đơn đặt xe thành công',NULL,'2026-05-25 15:15:47'),(23,6,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-25 15:16:12'),(24,6,3,'CONFIRMED','CANCELLED','Khách hàng hủy đơn',NULL,'2026-05-25 15:17:02'),(25,7,3,'PENDING','PENDING','Bạn đã tạo đơn đặt xe thành công',NULL,'2026-05-25 15:20:59'),(26,7,3,'PENDING','CANCELLED','Khách hàng hủy đơn',NULL,'2026-05-25 15:21:08'),(27,8,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-05-30 01:14:25'),(28,8,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-30 01:15:25'),(29,8,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: BMW 520i M Sport → Xe mới: BMW 7 Series 740Li','2026-05-30 01:24:59'),(30,9,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-05-30 01:48:24'),(31,9,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-05-30 01:48:44'),(32,9,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: BMW 7 Series 740Li → Xe mới: BMW 520i M Sport','2026-05-30 01:50:03'),(33,9,1,'RENTED','RENTED',NULL,'','2026-05-30 01:53:28'),(34,9,1,'RETURNING','RETURNING',NULL,'','2026-05-30 01:57:42'),(35,9,1,'COMPLETED','COMPLETED','da thanh toan du','','2026-05-30 01:58:48'),(36,10,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-02 02:40:50'),(37,11,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-02 02:49:27'),(38,12,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-02 02:51:24'),(39,10,2,NULL,'CANCELLED','Hết hạn thanh toán - Auto cancel',NULL,'2026-06-02 14:09:11'),(40,11,2,NULL,'CANCELLED','Hết hạn thanh toán - Auto cancel',NULL,'2026-06-02 14:09:11'),(41,12,2,NULL,'CANCELLED','Hết hạn thanh toán - Auto cancel',NULL,'2026-06-02 14:09:11'),(42,13,7,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-09 16:07:49'),(43,13,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-09 16:13:18'),(44,13,1,'RENTED','RENTED',NULL,'','2026-06-09 16:14:41'),(45,13,1,'RETURNING','RETURNING',NULL,'','2026-06-10 01:37:23'),(46,13,1,'COMPLETED','COMPLETED','da thanh toan du','','2026-06-10 01:39:17'),(47,8,1,'RENTED','RENTED',NULL,'ko co','2026-06-10 01:40:57'),(48,8,1,'RETURNING','RETURNING',NULL,'Thu tien mat','2026-06-10 01:42:31'),(49,8,1,'COMPLETED','COMPLETED','Đã nhận thanh toan hoan tat','da thanh toan du','2026-06-10 01:43:22'),(50,14,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 15:28:19'),(51,14,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-11 15:29:00'),(52,15,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 16:12:52'),(53,15,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-11 16:13:13'),(54,16,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 16:18:07'),(55,16,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-11 16:18:25'),(56,17,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 16:19:05'),(57,17,8,'PENDING','CANCELLED','Khách hàng hủy đơn',NULL,'2026-06-11 16:20:39'),(58,18,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 16:20:57'),(59,18,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-11 16:21:12'),(60,19,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 16:22:03'),(61,19,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-11 16:22:19'),(62,20,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-11 16:26:25'),(63,20,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-11 16:26:43'),(64,20,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Audi A6 S-Line 2024 → Xe mới: BMW 520i M Sport','2026-06-11 16:27:28'),(65,20,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: BMW 520i M Sport → Xe mới: Audi A6 S-Line 2024','2026-06-11 16:27:53'),(66,19,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Lexus ES250 Luxury 2024 → Xe mới: Audi A6 S-Line 2024','2026-06-11 16:28:12'),(67,20,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Audi A6 S-Line 2024 → Xe mới: BMW 520i M Sport','2026-06-11 16:28:41'),(68,20,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: BMW 520i M Sport → Xe mới: Lexus ES250 Luxury 2024','2026-06-11 16:30:15'),(69,19,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Audi A6 S-Line 2024 → Xe mới: BMW 7 Series 740Li','2026-06-11 16:31:41'),(70,20,1,'RENTED','RENTED',NULL,'','2026-06-12 13:54:54'),(71,14,10,'RENTED','RENTED',NULL,'','2026-06-12 14:08:35'),(72,14,10,'RETURNING','RETURNING',NULL,'','2026-06-12 14:14:45'),(73,14,10,'COMPLETED','COMPLETED','da thanh toan du','','2026-06-12 14:15:26'),(74,15,10,'RENTED','RENTED',NULL,'','2026-06-12 14:33:19'),(75,15,10,'RETURNING','RETURNING',NULL,'','2026-06-12 14:36:51'),(76,15,10,'COMPLETED','COMPLETED','Khách hàng thanh toán thành công','','2026-06-12 14:37:32'),(77,16,10,'RENTED','RENTED',NULL,'ko có j','2026-06-12 14:40:28'),(78,16,10,'RETURNING','RETURNING',NULL,'','2026-06-12 14:57:10'),(79,19,10,'RENTED','RENTED',NULL,'','2026-06-12 15:10:55'),(80,18,10,'RENTED','RENTED',NULL,'','2026-06-12 15:21:31'),(81,20,10,'RETURNING','RETURNING',NULL,'','2026-06-12 15:23:41'),(82,20,10,'COMPLETED','COMPLETED','khach da thanh toan du','','2026-06-12 15:24:01'),(83,19,10,'RETURNING','RETURNING',NULL,'','2026-06-12 15:27:14'),(84,19,10,'COMPLETED','COMPLETED','','','2026-06-12 15:39:38'),(85,18,10,'RETURNING','RETURNING','','','2026-06-12 15:59:20'),(86,16,10,'COMPLETED','COMPLETED','','','2026-06-12 15:59:51'),(87,18,10,'COMPLETED','COMPLETED','','','2026-06-12 15:59:55'),(88,21,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-16 01:12:21'),(89,21,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-16 01:13:07'),(90,21,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Toyota Fortuner 2023 → Xe mới: Hyundai Santa Fe Premium 2024','2026-06-16 01:23:35'),(91,21,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Hyundai Santa Fe Premium 2024 → Xe mới: Kia Sorento Signature 2024','2026-06-16 01:44:08'),(92,21,1,'RENTED','RENTED','','','2026-06-16 01:50:17'),(93,21,1,'RETURNING','RETURNING','','','2026-06-16 02:11:26'),(94,21,1,'COMPLETED','COMPLETED','','','2026-06-16 02:14:20'),(95,22,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-16 02:16:23'),(96,22,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-16 02:16:49'),(97,22,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Audi A6 S-Line 2024 → Xe mới: BMW 7 Series 740Li','2026-06-16 02:18:44'),(98,22,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: BMW 7 Series 740Li → Xe mới: Audi A6 S-Line 2024','2026-06-16 02:23:47'),(99,22,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Audi A6 S-Line 2024 → Xe mới: BMW 7 Series 740Li','2026-06-16 02:24:05'),(100,22,1,'RENTED','RENTED','','','2026-06-16 02:25:49'),(101,22,1,'RETURNING','RETURNING','','','2026-06-16 02:50:11'),(102,22,1,'COMPLETED','COMPLETED','','','2026-06-16 02:59:47'),(103,23,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-16 03:02:43'),(104,23,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-16 03:03:26'),(105,23,1,'CONFIRMED','CONFIRMED','Đổi xe trong đơn đặt xe','Xe cũ: Audi A6 S-Line 2024 → Xe mới: BMW 7 Series 740Li','2026-06-16 03:06:26'),(106,23,1,'RENTED','RENTED','','','2026-06-16 03:54:58'),(107,24,12,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-16 04:24:08'),(108,24,2,NULL,'CANCELLED','Hết hạn thanh toán - Auto cancel',NULL,'2026-06-16 13:33:51'),(109,25,8,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-19 15:12:15'),(110,25,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-19 15:12:55'),(111,25,8,'CONFIRMED','CANCELLED','Khách hàng hủy đơn',NULL,'2026-06-19 15:13:33'),(112,23,1,'RETURNING','RETURNING','asdasdas','dasxcxz','2026-06-20 15:08:59'),(113,23,1,'COMPLETED','COMPLETED','da thanh toan du','','2026-06-20 15:23:00'),(114,26,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-26 15:43:31'),(115,26,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-26 15:44:10'),(116,27,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-26 15:51:14'),(117,27,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-26 15:52:10'),(118,28,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-26 15:53:38'),(119,28,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-26 15:53:52'),(120,26,1,'RENTED','RENTED','Đã bàn giao xe','','2026-06-26 15:54:58'),(121,29,4,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-27 00:34:18'),(122,29,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-27 00:38:42'),(123,30,15,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-06-27 02:45:28'),(124,30,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-06-27 02:46:30'),(125,26,1,'RETURNING','RETURNING','Đã nhận lại xe','','2026-06-27 02:56:19'),(126,26,1,'COMPLETED','COMPLETED','','','2026-06-27 02:56:51'),(127,30,15,'CONFIRMED','CANCELLED','Khách hàng hủy đơn',NULL,'2026-06-27 03:02:09'),(128,29,1,'CANCELLED','CANCELLED','','','2026-11-01 13:45:13'),(129,28,1,'CANCELLED','CANCELLED','','','2026-11-01 13:45:18'),(130,27,1,'CANCELLED','CANCELLED','','','2026-11-01 13:45:21'),(131,31,1,'PENDING','PENDING','Đã tạo đơn đặt xe thành công',NULL,'2026-11-01 13:46:57'),(132,31,2,NULL,'CONFIRMED','Thanh toán cọc thành công',NULL,'2026-11-01 13:48:25');
/*!40000 ALTER TABLE `booking_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_code` varchar(20) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `total_deposit_amount` decimal(19,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `note` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_deadline` datetime DEFAULT NULL,
  `qr_code_url` text,
  `late_reminder_sent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking_code` (`booking_code`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'BK_15365AD2',3,'Nam Nguyễn','0123456789','nam8122k4@gmail.com',5600000.00,5000000.00,'CANCELLED',NULL,'2026-05-24 02:37:07','2026-05-24 10:37:07','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_15365AD2',0),(2,'BK_B943BDDA',3,'Nam Nguyễn','0123456789','nam8122k4@gmail.com',6000000.00,2000.00,'COMPLETED',NULL,'2024-04-24 02:39:58','2026-04-24 10:39:58','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_B943BDDA',0),(3,'BK_FD46BF7D',3,'Nam Nguyễn','0123456789','nam8122k4@gmail.com',8400000.00,2000.00,'CANCELLED',NULL,'2026-05-25 14:37:34','2026-05-25 22:37:34','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_FD46BF7D',0),(4,'BK_20C1820A',3,'Nam Nguyễn','0123456789','nam8122k4@gmail.com',2800000.00,2000.00,'COMPLETED',NULL,'2026-03-25 14:46:30','2026-03-25 22:46:30','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_20C1820A',0),(5,'BK_1C12D02F',3,'Nam Nguyễn','0936106205','nam8122k4@gmail.com',4000000.00,2000.00,'COMPLETED',NULL,'2026-05-25 15:11:42','2026-05-25 23:11:42','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_1C12D02F',0),(6,'BK_1B76B349',3,'Nam Nguyễn','0123456789','nam8122k4@gmail.com',1400000.00,2000.00,'CANCELLED',NULL,'2026-05-25 15:15:47','2026-05-25 23:15:47','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_1B76B349',0),(7,'BK_1A40E617',3,'Nam Nguyễn','0123456789','nam8122k4@gmail.com',5600000.00,2000.00,'CANCELLED',NULL,'2026-05-25 15:20:58','2026-05-25 23:20:58','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_1A40E617',0),(8,'BK_B1621E7F',4,'userTest','0336568931','user1@gmail.com',18000000.00,2000.00,'COMPLETED',NULL,'2026-05-30 01:14:25','2026-05-30 09:14:25','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_B1621E7F',0),(9,'BK_12B8A19C',4,'userTest','0236568931','user1@gmail.com',11200000.00,20000.00,'COMPLETED',NULL,'2026-05-30 01:48:24','2026-05-30 09:48:24','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=20000.00&addInfo=BK_12B8A19C',0),(10,'BK_218EB5BC',8,'user32','0936106208','user3123@gmail.com',12000000.00,2000.00,'CANCELLED',NULL,'2026-06-02 02:40:50','2026-06-02 10:40:50','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_218EB5BC',0),(11,'BK_9BF5C0EB',8,'user32','0936106208','user3123@gmail.com',22400000.00,2000.00,'CANCELLED',NULL,'2026-06-02 02:49:27','2026-06-02 10:49:27','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_9BF5C0EB',0),(12,'BK_F4078190',8,'user32','0936106208','user3123@gmail.com',5600000.00,2000.00,'CANCELLED',NULL,'2026-06-02 02:51:24','2026-06-02 10:51:24','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_F4078190',0),(13,'BK_8443FD55',7,'userTest1','0123456789','test12345@gmail.com',16800000.00,2000.00,'COMPLETED',NULL,'2026-06-09 16:07:49','2026-06-10 00:07:49','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_8443FD55',0),(14,'BK_F2A9DFB4',8,'user32','0936106208','user3123@gmail.com',9000000.00,2000.00,'COMPLETED',NULL,'2026-06-11 15:28:19','2026-06-11 23:28:19','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_F2A9DFB4',0),(15,'BK_2F96293E',8,'user32','0936106208','user3123@gmail.com',11200000.00,2000.00,'COMPLETED',NULL,'2026-06-11 16:12:52','2026-06-12 00:12:52','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_2F96293E',0),(16,'BK_01E80ED6',8,'user32','0936106208','user3123@gmail.com',9000000.00,2000.00,'COMPLETED',NULL,'2026-06-12 03:18:07','2026-06-12 00:18:07','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_01E80ED6',0),(17,'BK_F80C741F',8,'user32','0936106208','user3123@gmail.com',5600000.00,8000000.00,'CANCELLED',NULL,'2026-06-11 16:19:05','2026-06-12 00:19:05','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=8000000.00&addInfo=BK_F80C741F',0),(18,'BK_E50F4848',8,'user32','0936106208','user3123@gmail.com',5600000.00,2000.00,'COMPLETED',NULL,'2026-06-11 16:20:57','2026-06-12 00:20:57','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_E50F4848',0),(19,'BK_403110E2',8,'user32','0936106208','user3123@gmail.com',9000000.00,2000.00,'COMPLETED',NULL,'2026-06-12 08:22:03','2026-06-12 00:22:03','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_403110E2',0),(20,'BK_E6F1748A',8,'user32','0936106208','user3123@gmail.com',12000000.00,2000.00,'COMPLETED',NULL,'2026-06-11 16:26:25','2026-06-12 00:26:25','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_E6F1748A',0),(21,'BK_3A274F2C',4,'userTest','0836568931','user1@gmail.com',8498000.00,5500000.00,'COMPLETED',NULL,'2026-06-16 01:12:21','2026-06-16 09:12:21','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_3A274F2C',0),(22,'BK_CA1F170E',4,'userTest','0936568931','user1@gmail.com',9000000.00,50000.00,'COMPLETED',NULL,'2026-06-16 02:16:23','2026-06-16 10:16:23','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_CA1F170E',0),(23,'BK_F7C5D8F8',4,'userTest','0856568931','user1@gmail.com',9000000.00,2000.00,'COMPLETED',NULL,'2026-06-16 03:02:43','2026-06-16 11:02:43','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_F7C5D8F8',1),(24,'BK_352BF4CD',12,'Nguyễn Văn Test','0936106205','nvtest123@gmail.com',5600000.00,2000.00,'CANCELLED',NULL,'2026-06-16 04:24:08','2026-06-16 12:24:08','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_352BF4CD',0),(25,'BK_FFA9FC88',8,'user32','0936106208','user3123@gmail.com',12000000.00,2000.00,'CANCELLED',NULL,'2026-06-19 15:12:15','2026-06-19 23:12:15','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_FFA9FC88',NULL),(26,'BK_970B639D',4,'userTest','0987654321','user1@gmail.com',9000000.00,2000.00,'COMPLETED',NULL,'2026-06-26 15:43:31','2026-06-26 23:43:31','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_970B639D',1),(27,'BK_3BD19881',4,'userTest','0987654321','user1@gmail.com',3900000.00,2000.00,'CANCELLED',NULL,'2026-06-26 15:51:14','2026-06-26 23:51:14','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_3BD19881',NULL),(28,'BK_F187FC69',4,'userTest','0987654321','user1@gmail.com',8400000.00,2000.00,'CANCELLED',NULL,'2026-06-26 15:53:38','2026-06-26 23:53:38','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_F187FC69',NULL),(29,'BK_9A76B07F',4,'userTest','0987654321','user1@gmail.com',5600000.00,2000.00,'CANCELLED',NULL,'2026-06-27 00:34:18','2026-06-27 08:34:18','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_9A76B07F',NULL),(30,'BK_FA947633',15,'UserTestKLTT','0836568931','userTest0@gmail.com',5600000.00,2000.00,'CANCELLED',NULL,'2026-06-27 02:45:28','2026-06-27 10:45:28','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_FA947633',NULL),(31,'BK_956A35C4',1,'Nguyễn Doãn Nam','0936106205','nam08122004@gmail.com',8400000.00,2000.00,'CONFIRMED',NULL,'2026-11-01 13:46:57','2026-11-01 21:46:57','https://img.vietqr.io/image/MB-0936106205-compact2.png?amount=2000.00&addInfo=BK_956A35C4',NULL);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_details`
--

DROP TABLE IF EXISTS `car_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `car_id` bigint DEFAULT NULL,
  `seat_count` int DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `transmission` varchar(50) DEFAULT NULL,
  `manufacture_year` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `delivery_available` tinyint(1) DEFAULT '0',
  `delivery_fee` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_id` (`car_id`),
  KEY `idx_car_detail_car` (`car_id`),
  CONSTRAINT `car_details_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_details`
--

LOCK TABLES `car_details` WRITE;
/*!40000 ALTER TABLE `car_details` DISABLE KEYS */;
INSERT INTO `car_details` VALUES (1,1,7,'DIESEL','AUTOMATIC',2023,'15 Phạm Hùng','Hà Nội',0,NULL),(2,2,5,'GASOLINE','MANUAL',2021,'102 Lê Lợi, Phường Bến Thành, Quận 1','TP. Hồ Chí Minh',1,100000.00),(3,3,5,'GASOLINE','AUTOMATIC',2020,'45 Nguyễn Văn Linh, Phường Nam Dương, Quận Hải Châu','Đà Nẵng',0,NULL),(4,4,4,'GASOLINE','AUTOMATIC',2019,'78 Trần Phú, Phường Lộc Thọ, TP. Nha Trang','Khánh Hòa',0,NULL),(5,5,5,'DIESEL','MANUAL',2022,'12 Hùng Vương, Phường 1, TP. Vũng Tàu, Bà Rịa','Vũng Tàu',0,NULL),(6,6,5,'GASOLINE','AUTOMATIC',2023,'56 Nguyễn Trãi, Phường Ninh Kiều','TP. Cần Thơ',0,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,'',0,NULL),(8,7,5,'GASOLINE','AUTOMATIC',2023,'12 Nguyễn Trãi','Hà Nội',0,NULL),(9,8,5,'GASOLINE','AUTOMATIC',2023,'123 Nguyễn Trãi','Hà Nội',0,NULL),(10,9,7,'DIESEL','AUTOMATIC',2024,'25 Trần Duy Hưng','Hà Nội',0,NULL),(11,10,7,'DIESEL','AUTOMATIC',2024,'88 Phạm Hùng','Hà Nội',0,NULL),(12,11,5,'GASOLINE','MANUAL',2024,'15 Nguyễn Chí Thanh','Hà Nội',0,NULL),(13,12,5,'GASOLINE','AUTOMATIC',2023,'45 Láng Hạ','Hà Nội',0,NULL),(14,13,5,'GASOLINE','AUTOMATIC',2023,'12 Xuân Thủy','Hà Nội',0,NULL),(15,14,5,'GASOLINE','AUTOMATIC',2024,'98 Cầu Giấy','Hà Nội',0,NULL),(16,15,5,'DIESEL','AUTOMATIC',2024,'150 Mỹ Đình','Hà Nội',0,NULL),(17,16,5,'DIESEL','AUTOMATIC',2024,'50 Hồ Tùng Mậu','Hà Nội',0,NULL),(18,20,5,'GASOLINE','AUTOMATIC',2024,'10 Tràng Tiền','Hà Nội',0,NULL),(19,21,5,'GASOLINE','AUTOMATIC',2024,'22 Hai Bà Trưng','Hà Nội',0,NULL);
/*!40000 ALTER TABLE `car_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_features`
--

DROP TABLE IF EXISTS `car_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_features` (
  `car_detail_id` bigint NOT NULL,
  `feature_id` bigint NOT NULL,
  PRIMARY KEY (`car_detail_id`,`feature_id`),
  KEY `idx_car_feature_detail` (`car_detail_id`),
  KEY `idx_car_feature_feature` (`feature_id`),
  CONSTRAINT `car_features_ibfk_1` FOREIGN KEY (`car_detail_id`) REFERENCES `car_details` (`id`),
  CONSTRAINT `car_features_ibfk_2` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_features`
--

LOCK TABLES `car_features` WRITE;
/*!40000 ALTER TABLE `car_features` DISABLE KEYS */;
INSERT INTO `car_features` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(2,5),(2,7),(2,8),(2,9),(3,2),(3,3),(3,4),(3,5),(3,7),(3,11),(4,2),(4,7),(4,8),(4,9),(4,11),(5,1),(5,2),(5,3),(5,4),(5,6),(5,7),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,8),(6,9),(6,11),(8,1),(8,2),(8,3),(8,4),(8,6),(8,8),(8,9),(8,11),(9,4),(9,5),(9,7),(9,8),(9,9),(9,11),(10,3),(10,4),(10,5),(10,6),(10,8),(10,9),(11,1),(11,2),(11,3),(11,4),(11,5),(11,7),(11,9),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(13,1),(13,3),(13,6),(13,7),(13,8),(13,9),(14,1),(14,3),(14,4),(14,5),(14,6),(14,8),(14,9),(15,1),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(16,2),(16,3),(16,4),(16,5),(16,6),(16,8),(16,9),(16,11),(18,3),(18,4),(18,5),(18,6),(18,8),(19,3),(19,4),(19,5),(19,6),(19,7),(19,8),(19,9),(19,11);
/*!40000 ALTER TABLE `car_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_images`
--

DROP TABLE IF EXISTS `car_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `car_id` bigint DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `car_images_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_images`
--

LOCK TABLES `car_images` WRITE;
/*!40000 ALTER TABLE `car_images` DISABLE KEYS */;
INSERT INTO `car_images` VALUES (1,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777300113/car_rental/cars/toyota_fortuner_2023/kxunwh2woata4hutpysx.webp','car_rental/cars/toyota_fortuner_2023/kxunwh2woata4hutpysx'),(2,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777300110/car_rental/cars/toyota_fortuner_2023/askkqdzcakj49v5s3zbu.jpg','car_rental/cars/toyota_fortuner_2023/askkqdzcakj49v5s3zbu'),(3,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777300117/car_rental/cars/toyota_fortuner_2023/flfb49dkla9u5jdl4ca7.webp','car_rental/cars/toyota_fortuner_2023/flfb49dkla9u5jdl4ca7'),(4,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777300113/car_rental/cars/toyota_fortuner_2023/kxunwh2woata4hutpysx.webp','car_rental/cars/toyota_fortuner_2023/kxunwh2woata4hutpysx'),(5,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777300110/car_rental/cars/toyota_fortuner_2023/askkqdzcakj49v5s3zbu.jpg','car_rental/cars/toyota_fortuner_2023/askkqdzcakj49v5s3zbu'),(6,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302009/car_rental/cars/honda_civic_2021/mtsxzc61kdj2kdjhnenq.jpg','car_rental/cars/honda_civic_2021/mtsxzc61kdj2kdjhnenq'),(7,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302010/car_rental/cars/honda_civic_2021/br6yiacw2epwprhohxiw.jpg','car_rental/cars/honda_civic_2021/br6yiacw2epwprhohxiw'),(8,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302011/car_rental/cars/honda_civic_2021/qctooexc7sdpgw3ab0et.jpg','car_rental/cars/honda_civic_2021/qctooexc7sdpgw3ab0et'),(9,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302013/car_rental/cars/honda_civic_2021/gxoffusjnbkkmgtdebvk.jpg','car_rental/cars/honda_civic_2021/gxoffusjnbkkmgtdebvk'),(10,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302015/car_rental/cars/honda_civic_2021/nk8rsq1ojefiomf9bcwz.jpg','car_rental/cars/honda_civic_2021/nk8rsq1ojefiomf9bcwz'),(11,3,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302015/car_rental/cars/honda_civic_2021/nk8rsq1ojefiomf9bcwz.jpg','car_rental/cars/toyota_camry/gen6rm4634slln3fsteu'),(12,3,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302116/car_rental/cars/toyota_camry/wszkt2snbadguad1otfb.jpg','car_rental/cars/toyota_camry/wszkt2snbadguad1otfb'),(13,3,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302115/car_rental/cars/toyota_camry/xvhituuiqaaf6bcipiow.jpg','car_rental/cars/toyota_camry/xvhituuiqaaf6bcipiow'),(14,3,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302120/car_rental/cars/toyota_camry/h2kedox8vorp8rkqh8pg.jpg','car_rental/cars/toyota_camry/h2kedox8vorp8rkqh8pg'),(15,3,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302117/car_rental/cars/toyota_camry/st2drc8ys1klxzfue5ta.jpg','car_rental/cars/toyota_camry/st2drc8ys1klxzfue5ta'),(16,4,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302189/car_rental/cars/kia_morning/zf8skpk0zmw802jmr6wz.jpg','car_rental/cars/kia_morning/zf8skpk0zmw802jmr6wz'),(17,4,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302188/car_rental/cars/kia_morning/wdfp5fcsrhyfz8dybrsr.jpg','car_rental/cars/kia_morning/wdfp5fcsrhyfz8dybrsr'),(18,4,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302191/car_rental/cars/kia_morning/v6nmfcdw8begocok6ni8.jpg','car_rental/cars/kia_morning/v6nmfcdw8begocok6ni8'),(19,4,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302193/car_rental/cars/kia_morning/ptu8qkiswhdcjwaofylo.jpg','car_rental/cars/kia_morning/ptu8qkiswhdcjwaofylo'),(20,4,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302194/car_rental/cars/kia_morning/g73sf3l8lnimtl5wmhk2.jpg','car_rental/cars/kia_morning/g73sf3l8lnimtl5wmhk2'),(21,5,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302253/car_rental/cars/ford_ranger/j59dseeeea72pycajhse.jpg','car_rental/cars/ford_ranger/j59dseeeea72pycajhse'),(22,5,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302255/car_rental/cars/ford_ranger/zqsun8drlnraposcpbbx.jpg','car_rental/cars/ford_ranger/zqsun8drlnraposcpbbx'),(23,5,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302256/car_rental/cars/ford_ranger/iflelqp6rse4li3fyopw.jpg','car_rental/cars/ford_ranger/iflelqp6rse4li3fyopw'),(24,5,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302257/car_rental/cars/ford_ranger/vn1jb0esnk8q2cf018eb.jpg','car_rental/cars/ford_ranger/vn1jb0esnk8q2cf018eb'),(25,5,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302259/car_rental/cars/ford_ranger/buhhvxlks3owsec3fynn.jpg','car_rental/cars/ford_ranger/buhhvxlks3owsec3fynn'),(26,6,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302346/car_rental/cars/mercedes_c300/wbi1iqv0bzvo4i6i3edl.jpg','car_rental/cars/mercedes_c300/wbi1iqv0bzvo4i6i3edl'),(27,6,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302347/car_rental/cars/mercedes_c300/it7rc7gorxkzqobol1mk.jpg','car_rental/cars/mercedes_c300/it7rc7gorxkzqobol1mk'),(28,6,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302348/car_rental/cars/mercedes_c300/kqc30ugrhfxoaybbpdqm.jpg','car_rental/cars/mercedes_c300/kqc30ugrhfxoaybbpdqm'),(29,6,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302350/car_rental/cars/mercedes_c300/plpv7v6ewphsl9qjhx2g.jpg','car_rental/cars/mercedes_c300/plpv7v6ewphsl9qjhx2g'),(30,6,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1777302351/car_rental/cars/mercedes_c300/pwcqdr7pjltfgkujybhy.jpg','car_rental/cars/mercedes_c300/pwcqdr7pjltfgkujybhy'),(31,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1778769995/car_rental/cars/bmw_520i_m_sport/lkoosc4lhej0urlidewl.jpg','car_rental/cars/bmw_520i_m_sport/lkoosc4lhej0urlidewl'),(32,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1778769994/car_rental/cars/bmw_520i_m_sport/x1bkrjsexpgbnmby9et5.jpg','car_rental/cars/bmw_520i_m_sport/x1bkrjsexpgbnmby9et5'),(33,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1778769991/car_rental/cars/bmw_520i_m_sport/uxknl4lh5zqrwfm3zqid.jpg','car_rental/cars/bmw_520i_m_sport/uxknl4lh5zqrwfm3zqid'),(34,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1778769990/car_rental/cars/bmw_520i_m_sport/d19cq9omb8sdujik5vtt.jpg','car_rental/cars/bmw_520i_m_sport/d19cq9omb8sdujik5vtt'),(35,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1778769988/car_rental/cars/bmw_520i_m_sport/otunegzd29kbumxoxmlu.jpg','car_rental/cars/bmw_520i_m_sport/otunegzd29kbumxoxmlu'),(36,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780101106/car_rental/cars/bmw_7_series_740li/lmu8ifs95hkbkrbbybgu.jpg','car_rental/cars/bmw_7_series_740li/lmu8ifs95hkbkrbbybgu'),(37,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780101107/car_rental/cars/bmw_7_series_740li/fsikcjrxyepsfzdae9ro.jpg','car_rental/cars/bmw_7_series_740li/fsikcjrxyepsfzdae9ro'),(38,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780101109/car_rental/cars/bmw_7_series_740li/s8w4av8i9hqvrawlg9ng.jpg','car_rental/cars/bmw_7_series_740li/s8w4av8i9hqvrawlg9ng'),(39,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780101111/car_rental/cars/bmw_7_series_740li/v3ucmxy5q9l7svzuneek.jpg','car_rental/cars/bmw_7_series_740li/v3ucmxy5q9l7svzuneek'),(40,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780101113/car_rental/cars/bmw_7_series_740li/rou8fniphjmakv29yjyh.jpg','car_rental/cars/bmw_7_series_740li/rou8fniphjmakv29yjyh'),(41,9,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184396/car_rental/cars/hyundai_santa_fe_premium_2024/b5j5jvr7avolau5u4xjy.jpg','car_rental/cars/hyundai_santa_fe_premium_2024/b5j5jvr7avolau5u4xjy'),(42,9,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184397/car_rental/cars/hyundai_santa_fe_premium_2024/at7ihcqouvttvnjhvija.jpg','car_rental/cars/hyundai_santa_fe_premium_2024/at7ihcqouvttvnjhvija'),(43,9,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184399/car_rental/cars/hyundai_santa_fe_premium_2024/yz55xax8349mwukpnijw.jpg','car_rental/cars/hyundai_santa_fe_premium_2024/yz55xax8349mwukpnijw'),(44,9,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184401/car_rental/cars/hyundai_santa_fe_premium_2024/it2qfnb0pwvuudottg3m.jpg','car_rental/cars/hyundai_santa_fe_premium_2024/it2qfnb0pwvuudottg3m'),(45,9,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184403/car_rental/cars/hyundai_santa_fe_premium_2024/uasjdecgwhziyp3exdap.jpg','car_rental/cars/hyundai_santa_fe_premium_2024/uasjdecgwhziyp3exdap'),(46,10,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184552/car_rental/cars/kia_sorento_signature_2024/zqlx4onnnwu3olrao0hh.jpg','car_rental/cars/kia_sorento_signature_2024/zqlx4onnnwu3olrao0hh'),(47,10,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184554/car_rental/cars/kia_sorento_signature_2024/gfelmdn0kymm6smt83ug.jpg','car_rental/cars/kia_sorento_signature_2024/gfelmdn0kymm6smt83ug'),(48,10,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184555/car_rental/cars/kia_sorento_signature_2024/aimahuxouxnnc30v5sal.jpg','car_rental/cars/kia_sorento_signature_2024/aimahuxouxnnc30v5sal'),(49,10,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184557/car_rental/cars/kia_sorento_signature_2024/dgcfs4rtirmptb7ejpwg.jpg','car_rental/cars/kia_sorento_signature_2024/dgcfs4rtirmptb7ejpwg'),(50,10,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184559/car_rental/cars/kia_sorento_signature_2024/ezelngalswfzacpvmirr.jpg','car_rental/cars/kia_sorento_signature_2024/ezelngalswfzacpvmirr'),(51,11,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184719/car_rental/cars/honda_accord_2024/qw9huzn9i0diyfya6cnt.jpg','car_rental/cars/honda_accord_2024/qw9huzn9i0diyfya6cnt'),(52,11,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184721/car_rental/cars/honda_accord_2024/n38kpdqlfjn2uj93bpeq.jpg','car_rental/cars/honda_accord_2024/n38kpdqlfjn2uj93bpeq'),(53,11,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184724/car_rental/cars/honda_accord_2024/uqamhr6dvtem8zv0rm7a.jpg','car_rental/cars/honda_accord_2024/uqamhr6dvtem8zv0rm7a'),(54,11,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184727/car_rental/cars/honda_accord_2024/geweczt4ykura1qwehci.jpg','car_rental/cars/honda_accord_2024/geweczt4ykura1qwehci'),(55,11,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184729/car_rental/cars/honda_accord_2024/xvkirmqrtw2yun8xfjan.jpg','car_rental/cars/honda_accord_2024/xvkirmqrtw2yun8xfjan'),(56,12,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184834/car_rental/cars/mazda_6_premium_2023/aquwt2vhluj9srrww8gq.jpg','car_rental/cars/mazda_6_premium_2023/aquwt2vhluj9srrww8gq'),(57,12,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184835/car_rental/cars/mazda_6_premium_2023/knxly5ohwlzzig8swwfd.jpg','car_rental/cars/mazda_6_premium_2023/knxly5ohwlzzig8swwfd'),(58,12,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184837/car_rental/cars/mazda_6_premium_2023/rswuax0mzp30zpczrnfo.jpg','car_rental/cars/mazda_6_premium_2023/rswuax0mzp30zpczrnfo'),(59,12,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184839/car_rental/cars/mazda_6_premium_2023/suyohtlhagptvukrmfam.jpg','car_rental/cars/mazda_6_premium_2023/suyohtlhagptvukrmfam'),(60,12,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781184841/car_rental/cars/mazda_6_premium_2023/dwvycmyr2ckmnwm57ue3.jpg','car_rental/cars/mazda_6_premium_2023/dwvycmyr2ckmnwm57ue3'),(61,13,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185079/car_rental/cars/hyundai_grand_i10_2023/nkrsi46dvo0txwyc6ew3.jpg','car_rental/cars/hyundai_grand_i10_2023/nkrsi46dvo0txwyc6ew3'),(62,13,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185083/car_rental/cars/hyundai_grand_i10_2023/ypzyhydctrfw4gcxppsv.jpg','car_rental/cars/hyundai_grand_i10_2023/ypzyhydctrfw4gcxppsv'),(63,13,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185084/car_rental/cars/hyundai_grand_i10_2023/zqfoa1juyxwvf6i553zq.jpg','car_rental/cars/hyundai_grand_i10_2023/zqfoa1juyxwvf6i553zq'),(64,13,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185086/car_rental/cars/hyundai_grand_i10_2023/lgdjeqndkwzadcla9yx1.jpg','car_rental/cars/hyundai_grand_i10_2023/lgdjeqndkwzadcla9yx1'),(65,13,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185088/car_rental/cars/hyundai_grand_i10_2023/zt93sgv13gmprgnmnnuw.jpg','car_rental/cars/hyundai_grand_i10_2023/zt93sgv13gmprgnmnnuw'),(66,14,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185245/car_rental/cars/suzuki_swift_2024/eg4sybi2k9yd1spzgj1l.jpg','car_rental/cars/suzuki_swift_2024/eg4sybi2k9yd1spzgj1l'),(67,14,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185247/car_rental/cars/suzuki_swift_2024/e01e1jzcaqsuapcdlces.jpg','car_rental/cars/suzuki_swift_2024/e01e1jzcaqsuapcdlces'),(68,14,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185249/car_rental/cars/suzuki_swift_2024/qnjvc95qivbr4qfx97zt.jpg','car_rental/cars/suzuki_swift_2024/qnjvc95qivbr4qfx97zt'),(69,14,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185251/car_rental/cars/suzuki_swift_2024/n5rianeypdgc7jfqooja.jpg','car_rental/cars/suzuki_swift_2024/n5rianeypdgc7jfqooja'),(70,14,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185254/car_rental/cars/suzuki_swift_2024/vc7hpur6jpunsgoczvpk.jpg','car_rental/cars/suzuki_swift_2024/vc7hpur6jpunsgoczvpk'),(71,15,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185392/car_rental/cars/toyota_hilux_adventure_2024/ygdkwpe7lfk23uiosxsm.jpg','car_rental/cars/toyota_hilux_adventure_2024/ygdkwpe7lfk23uiosxsm'),(72,15,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185394/car_rental/cars/toyota_hilux_adventure_2024/idr2ctl2tg2vrmvderer.jpg','car_rental/cars/toyota_hilux_adventure_2024/idr2ctl2tg2vrmvderer'),(73,15,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185396/car_rental/cars/toyota_hilux_adventure_2024/k9x1tighjrfohkllho60.jpg','car_rental/cars/toyota_hilux_adventure_2024/k9x1tighjrfohkllho60'),(74,15,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185397/car_rental/cars/toyota_hilux_adventure_2024/jkqgas79k3wcdgffvcjm.jpg','car_rental/cars/toyota_hilux_adventure_2024/jkqgas79k3wcdgffvcjm'),(75,15,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185399/car_rental/cars/toyota_hilux_adventure_2024/dsxwmc5g24p6o88uifk2.jpg','car_rental/cars/toyota_hilux_adventure_2024/dsxwmc5g24p6o88uifk2'),(76,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185880/car_rental/cars/mitsubishi_triton_athlete_2024/xuurbpf3ryn9kzpernwy.jpg','car_rental/cars/mitsubishi_triton_athlete_2024/xuurbpf3ryn9kzpernwy'),(77,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185882/car_rental/cars/mitsubishi_triton_athlete_2024/c54jvwi4664kjbb32cd1.jpg','car_rental/cars/mitsubishi_triton_athlete_2024/c54jvwi4664kjbb32cd1'),(78,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185884/car_rental/cars/mitsubishi_triton_athlete_2024/k2c2civ7mx1f2qh06xnn.jpg','car_rental/cars/mitsubishi_triton_athlete_2024/k2c2civ7mx1f2qh06xnn'),(79,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185886/car_rental/cars/mitsubishi_triton_athlete_2024/hakimdffgvlugmlui6ms.jpg','car_rental/cars/mitsubishi_triton_athlete_2024/hakimdffgvlugmlui6ms'),(80,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781185887/car_rental/cars/mitsubishi_triton_athlete_2024/kg0usu8izcrrrbg6yszi.jpg','car_rental/cars/mitsubishi_triton_athlete_2024/kg0usu8izcrrrbg6yszi'),(96,20,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186220/car_rental/cars/audi_a6_sline_2024/yfchqskx96bollitydw4.jpg','car_rental/cars/audi_a6_sline_2024/yfchqskx96bollitydw4'),(97,20,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186222/car_rental/cars/audi_a6_sline_2024/df5kue0uwrwcsaipot92.jpg','car_rental/cars/audi_a6_sline_2024/df5kue0uwrwcsaipot92'),(98,20,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186224/car_rental/cars/audi_a6_sline_2024/dkgt0obuzcbnzskhhem1.jpg','car_rental/cars/audi_a6_sline_2024/dkgt0obuzcbnzskhhem1'),(99,20,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186226/car_rental/cars/audi_a6_sline_2024/mqrlueacuj4eom86izsg.jpg','car_rental/cars/audi_a6_sline_2024/mqrlueacuj4eom86izsg'),(101,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186348/car_rental/cars/lexus_es250_luxury_2024/nrfcyafav43ihjk2jmps.jpg','car_rental/cars/lexus_es250_luxury_2024/nrfcyafav43ihjk2jmps'),(102,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186350/car_rental/cars/lexus_es250_luxury_2024/gmkfhcnamutsaea5kbqy.jpg','car_rental/cars/lexus_es250_luxury_2024/gmkfhcnamutsaea5kbqy'),(103,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186351/car_rental/cars/lexus_es250_luxury_2024/w9vc5bz9lsnr8ovv2ras.jpg','car_rental/cars/lexus_es250_luxury_2024/w9vc5bz9lsnr8ovv2ras'),(104,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186353/car_rental/cars/lexus_es250_luxury_2024/ctjyhp5dw4llzvpao77v.jpg','car_rental/cars/lexus_es250_luxury_2024/ctjyhp5dw4llzvpao77v'),(105,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781186355/car_rental/cars/lexus_es250_luxury_2024/szoevnayieujmzp0ta3y.jpg','car_rental/cars/lexus_es250_luxury_2024/szoevnayieujmzp0ta3y');
/*!40000 ALTER TABLE `car_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `license_plate` varchar(20) NOT NULL,
  `price_per_day` decimal(19,2) NOT NULL,
  `deposit_amount` decimal(19,2) DEFAULT NULL,
  `status` enum('AVAILABLE','RENTED','MAINTENANCE') DEFAULT 'AVAILABLE',
  `description` text,
  `trip_count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `average_rating` double DEFAULT '0',
  `total_reviews` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_plate` (`license_plate`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,1,'Toyota Fortuner 2023','30A-12345',1200000.00,2000.00,'AVAILABLE','? Toyota Fortuner - SUV 7 chỗ mạnh mẽ, bền bỉ\n\n?️ Thông tin cơ bản:\n- Loại xe: SUV 7 chỗ\n- Xuất xứ: Nhật Bản\n- Nhiên liệu: Diesel / Xăng (tùy phiên bản)\n- Hộp số: Số tự động 6 cấp / số sàn 6 cấp\n- Dẫn động: 1 cầu / 2 cầu (4x4)\n\n⚙️ Động cơ & vận hành:\n- Công suất: ~201 HP (bản 2.8 Diesel)\n- Mô-men xoắn: ~500 Nm\n- Tiêu hao nhiên liệu: 7–9L/100km\n- Vận hành ổn định, mạnh mẽ trên mọi địa hình\n\n? Ngoại thất:\n- Thiết kế cơ bắp, mạnh mẽ\n- Đèn LED hiện đại, tích hợp DRL\n- Mâm hợp kim 17–18 inch\n- Gầm cao ~219mm, đi đường xấu tốt\n\n?️ Nội thất:\n- 7 chỗ rộng rãi, ghế da cao cấp\n- Màn hình giải trí 8–9 inch\n- Apple CarPlay / Android Auto\n- Điều hòa 2 vùng độc lập\n\n?️ An toàn:\n- 6 túi khí\n- ABS / EBD / BA\n- Cân bằng điện tử\n- Hỗ trợ khởi hành ngang dốc\n- Camera lùi + cảm biến\n\n?‍?‍?‍? Phù hợp:\n- Gia đình đông người\n- Đi du lịch xa\n- Thuê xe tự lái hoặc có tài xế\n- Đi tỉnh, địa hình xấu\n\n? Tổng kết:\nToyota Fortuner là SUV 7 chỗ bền bỉ, mạnh mẽ, giữ giá tốt và rất phù hợp nhu cầu di chuyển đường dài.',0,'2026-04-27 13:56:11',4,1),(2,2,'Honda Civic 2021','29A-33333',900000.00,2000.00,'AVAILABLE','?️ Thông tin:\n- Năm sản xuất: 2021\n- 5 chỗ, động cơ xăng\n- Hộp số tự động CVT\n\n⚙️ Vận hành:\n- Tăng tốc tốt, cảm giác lái thể thao\n- Tiết kiệm nhiên liệu trong đô thị\n\n? Ngoại thất:\n- Thiết kế trẻ trung, năng động\n- Kiểu dáng coupe thể thao\n\n?️ Nội thất:\n- Màn hình giải trí hiện đại\n- Kết nối Bluetooth, USB\n- Điều hòa tự động\n\n?️ An toàn:\n- ABS, EBD\n- Camera lùi\n\n?‍? Phù hợp:\n- Người trẻ, nhân viên văn phòng\n- Đi lại trong thành phố\',\n7, 2021),',0,'2026-04-27 15:00:08',0,0),(3,2,'Toyota Camry ','29A-44444',1100000.00,4000000.00,'AVAILABLE','?️ Thông tin:\n- Năm sản xuất: 2020\n- 5 chỗ, số tự động\n\n⚙️ Vận hành:\n- Êm ái, ổn định\n- Cách âm tốt, phù hợp di chuyển đường dài\n\n? Ngoại thất:\n- Thiết kế thanh lịch, sang trọng\n\n?️ Nội thất:\n- Ghế da cao cấp\n- Điều hòa 2 vùng độc lập\n- Không gian rộng rãi, thoải mái\n\n?️ An toàn:\n- Hệ thống hỗ trợ phanh\n- Túi khí đầy đủ\n\n?‍? Phù hợp:\n- Doanh nhân\n- Đi công tác, tiếp khách\',\n15, 2020),\n',0,'2026-04-27 15:01:55',0,0),(4,3,'Kia Morning','30A-55555',500000.00,2000000.00,'AVAILABLE','?️ Thông tin:\n- Năm sản xuất: 2019\n- 4 chỗ, số sàn\n\n⚙️ Vận hành:\n- Tiết kiệm nhiên liệu\n- Linh hoạt trong phố đông\n\n? Ngoại thất:\n- Nhỏ gọn, dễ đỗ xe\n\n?️ Nội thất:\n- Đầy đủ tiện nghi cơ bản\n\n?‍? Phù hợp:\n- Sinh viên, người đi làm\n- Di chuyển trong nội thành\',\n20, 2019),',0,'2026-04-27 15:03:06',0,0),(5,4,'Ford Ranger','30A-66666',1400000.00,2000.00,'AVAILABLE','\'? Ford Ranger - Bán tải mạnh mẽ, đa dụng\n\n?️ Thông tin:\n- Năm sản xuất: 2022\n- 5 chỗ, máy dầu\n\n⚙️ Vận hành:\n- Khả năng tải nặng tốt\n- Đi địa hình mạnh mẽ\n\n? Ngoại thất:\n- Thiết kế hầm hố, nam tính\n\n?️ Nội thất:\n- Rộng rãi, tiện nghi\n\n?‍? Phù hợp:\n- Công trình, vận chuyển hàng hóa\n- Đi địa hình\',\n8, 2022),',5,'2026-04-27 15:04:13',5,1),(6,6,'Mercedes C300','30A-77771',2000000.00,2000.00,'AVAILABLE','? Mercedes C300 - Sedan hạng sang, đẳng cấp doanh nhân\n\n?️ Thông tin:\n- Năm sản xuất: 2023\n- 5 chỗ, số tự động\n\n⚙️ Vận hành:\n- Động cơ mạnh mẽ, tăng tốc mượt\n- Hệ thống treo êm ái\n\n? Ngoại thất:\n- Thiết kế sang trọng, tinh tế\n\n?️ Nội thất:\n- Ghế da cao cấp\n- Màn hình kép hiện đại\n- Đèn nội thất ambient\n\n?️ An toàn:\n- Công nghệ hỗ trợ lái tiên tiến\n- Cảnh báo va chạm\n\n?‍? Phù hợp:\n- Doanh nhân\n- Khách VIP, thuê xe cao cấp\',\n3, 2023)',5,'2026-04-27 15:05:44',0,0),(7,6,'BMW 520i M Sport','51H-88888',2800000.00,2000.00,'AVAILABLE','? BMW 520i M Sport - Sedan thể thao sang trọng, chuẩn phong cách châu Âu\n\n?️ Thông tin:\n- Năm sản xuất: 2023\n- 5 chỗ, số tự động\n- Phiên bản M Sport cao cấp\n\n⚙️ Vận hành:\n- Động cơ tăng áp mạnh mẽ\n- Cảm giác lái đầm chắc đặc trưng BMW\n- Tiết kiệm nhiên liệu, vận hành ổn định\n\n? Ngoại thất:\n- Thiết kế thể thao, hiện đại\n- Bộ bodykit M Sport cá tính\n- Đèn LED sắc nét sang trọng\n\n?️ Nội thất:\n- Ghế da cao cấp chỉnh điện\n- Màn hình giải trí lớn\n- Điều hòa đa vùng\n- Không gian rộng rãi, êm ái\n\n?️ An toàn:\n- Camera lùi, cảm biến hỗ trợ đỗ xe\n- Hệ thống cân bằng điện tử\n- Nhiều túi khí an toàn\n\n?‍? Phù hợp:\n- Doanh nhân\n- Đi công tác, gặp đối tác\n- Du lịch gia đình cao cấp',5,'2026-05-14 14:46:27',5,1),(8,6,'BMW 7 Series 740Li','30A-77777',4500000.00,50000.00,'AVAILABLE','? BMW 7 Series 740Li - Sedan hạng sang flagship, đỉnh cao công nghệ & đẳng cấp doanh nhân\n\n?️ Thông tin:\n\nNăm sản xuất: 2023 \n5 chỗ, số tự động 8 cấp Steptronic\nPhiên bản flagship dòng 7 Series – đẳng cấp cao nhất BMW sedan\n\n⚙️ Vận hành:\n\nĐộng cơ tăng áp I6 mạnh mẽ, vận hành êm nhưng bốc khi cần\nHệ thống treo khí nén cho cảm giác “trôi trên mặt đường”\nKhả năng cách âm cực tốt, gần như tách biệt hoàn toàn với môi trường bên ngoài\nVận hành ổn định ở cả tốc độ cao và đường đô thị\n\n? Ngoại thất:\n\nThiết kế sang trọng, bề thế, mang dáng dấp “chủ tịch”\nLưới tản nhiệt kidney grille cỡ lớn đặc trưng BMW\nĐèn LED Laser sắc nét, hiện đại\nThân xe dài, tạo cảm giác quyền lực và đẳng cấp\n\n?️ Nội thất:\n\nGhế da Nappa cao cấp chỉnh điện đa hướng, có massage\nMàn hình giải trí trung tâm kích thước lớn + màn hình cho hàng ghế sau\nTrần xe kính panoramic sang trọng\nHệ thống âm thanh vòm cao cấp (Bowers & Wilkins)\nKhông gian rộng rãi bậc nhất phân khúc sedan\n\n?️ An toàn & công nghệ:\n\nCamera 360 độ, hỗ trợ đỗ xe tự động\nHệ thống hỗ trợ lái thông minh (ADAS)\nCảnh báo va chạm, giữ làn đường, cruise control thích ứng\nNhiều túi khí an toàn toàn diện\n\n?‍? Phù hợp:\n\nDoanh nhân, lãnh đạo cấp cao\nĐón tiếp đối tác quan trọng\nDi chuyển công tác VIP hoặc sự kiện sang trọng\nKhách hàng yêu cầu trải nghiệm “đẳng cấp tuyệt đối',5,'2026-05-30 00:31:46',4.6667,3),(9,1,'Hyundai Santa Fe Premium 2024','30K-45678',1400000.00,1000000.00,'AVAILABLE','Hyundai Santa Fe Premium 2024 là mẫu SUV 7 chỗ cao cấp nổi bật với thiết kế hiện đại, mạnh mẽ và nhiều công nghệ hỗ trợ lái tiên tiến. Xe được trang bị động cơ Diesel 2.2L kết hợp hộp số tự động ly hợp kép 8 cấp giúp vận hành êm ái và tiết kiệm nhiên liệu. Không gian nội thất rộng rãi với ghế da cao cấp, màn hình giải trí lớn, điều hòa tự động đa vùng và cửa sổ trời toàn cảnh. Santa Fe sở hữu nhiều tính năng an toàn như Camera 360 độ, cảnh báo điểm mù, hỗ trợ giữ làn đường và phanh khẩn cấp tự động. Đây là lựa chọn lý tưởng cho gia đình đông người hoặc các chuyến du lịch đường dài.',0,'2026-06-11 13:26:34',NULL,NULL),(10,1,'Kia Sorento Signature 2024','30K-56789',1500000.00,1500000.00,'AVAILABLE','Kia Sorento Signature 2024 là mẫu SUV 7 chỗ cao cấp sở hữu thiết kế sang trọng, khoang nội thất rộng rãi và hàng loạt công nghệ hiện đại. Xe được trang bị màn hình cong kép, ghế da cao cấp, hệ thống âm thanh Bose và nhiều tính năng hỗ trợ lái ADAS. Động cơ mạnh mẽ kết hợp hộp số tự động mang đến khả năng vận hành ổn định trên mọi cung đường.',1,'2026-06-11 13:29:11',NULL,NULL),(11,2,'Honda Accord 2024','30H-12345',1200000.00,1000000.00,'AVAILABLE','Honda Accord 2024 là mẫu sedan hạng D cao cấp với thiết kế lịch lãm, không gian rộng rãi và khả năng vận hành êm ái. Xe sử dụng động cơ tăng áp tiết kiệm nhiên liệu, kết hợp hộp số CVT mượt mà. Nội thất được trang bị ghế da cao cấp, màn hình giải trí lớn và nhiều công nghệ an toàn Honda Sensing.',0,'2026-06-11 13:31:59',NULL,NULL),(12,2,'Mazda 6 Premium 2023','30M-67890',950000.00,3500000.00,'AVAILABLE','Mazda 6 Premium 2023 sở hữu thiết kế KODO sang trọng cùng nội thất cao cấp với nhiều vật liệu mềm và ghế da chất lượng cao. Động cơ SkyActiv mang đến cảm giác lái thể thao nhưng vẫn tiết kiệm nhiên liệu. Xe phù hợp cho khách hàng cá nhân, gia đình hoặc doanh nhân trẻ.',0,'2026-06-11 13:33:54',NULL,NULL),(13,3,'Hyundai Grand i10 2023','30G-11111',550000.00,2000000.00,'AVAILABLE','Hyundai Grand i10 là mẫu hatchback cỡ nhỏ được ưa chuộng nhờ khả năng tiết kiệm nhiên liệu, chi phí sử dụng thấp và không gian đủ rộng cho gia đình nhỏ. Xe dễ điều khiển trong đô thị và phù hợp cho nhu cầu đi lại hàng ngày.',0,'2026-06-11 13:37:59',NULL,NULL),(14,3,'Suzuki Swift 2024','30S-22222',650000.00,2500000.00,'AVAILABLE','Suzuki Swift 2024 là mẫu hatchback mang phong cách trẻ trung, năng động và tiết kiệm nhiên liệu. Xe sở hữu thiết kế nhỏ gọn giúp dễ dàng di chuyển trong khu vực đô thị đông đúc. Nội thất hiện đại cùng nhiều trang bị tiện nghi đáp ứng tốt nhu cầu sử dụng hàng ngày.',0,'2026-06-11 13:40:44',NULL,NULL),(15,4,'Toyota Hilux Adventure 2024','30C-33333',1400000.00,2000000.00,'AVAILABLE','Toyota Hilux Adventure là mẫu bán tải nổi tiếng với độ bền bỉ, khả năng vận hành mạnh mẽ và độ tin cậy cao. Xe được trang bị động cơ Diesel mạnh mẽ, hệ dẫn động linh hoạt và nhiều công nghệ hỗ trợ địa hình.',0,'2026-06-11 13:43:12',NULL,NULL),(16,4,'Mitsubishi Triton Athlete 2024','30C-44444',1300000.00,2000.00,'AVAILABLE','Mitsubishi Triton Athlete mang phong cách thể thao, mạnh mẽ cùng khả năng vận hành ổn định trên nhiều loại địa hình. Khoang cabin rộng rãi, nhiều tính năng hỗ trợ lái và khả năng tiết kiệm nhiên liệu tốt giúp Triton trở thành lựa chọn hấp dẫn trong phân khúc bán tải.',0,'2026-06-11 13:51:20',NULL,NULL),(20,6,'Audi A6 S-Line 2024','30A-66668',2800000.00,2000.00,'AVAILABLE','Audi A6 S-Line là mẫu sedan hạng sang đến từ Đức với thiết kế lịch lãm, công nghệ hiện đại và trải nghiệm vận hành cao cấp. Nội thất được hoàn thiện bằng vật liệu sang trọng, hệ thống đèn Ambient Light và nhiều tính năng hỗ trợ lái thông minh.',1,'2026-06-11 13:57:00',NULL,NULL),(21,6,'Lexus ES250 Luxury 2024','30L-77779',3000000.00,2000.00,'MAINTENANCE','Lexus ES250 Luxury nổi tiếng với khả năng vận hành êm ái, độ bền cao và không gian nội thất sang trọng. Xe được trang bị nhiều công nghệ an toàn Lexus Safety System+, ghế da cao cấp và khả năng cách âm hàng đầu phân khúc.',3,'2026-06-11 13:59:07',NULL,NULL);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'SUV','Dòng xe gầm cao, không gian rộng rãi, khả năng vận hành linh hoạt trên nhiều loại địa hình. Phù hợp cho gia đình, du lịch đường dài và những chuyến đi cần nhiều hành lý.'),(2,'Sedan','Dòng xe du lịch phổ biến với thiết kế 4 cửa, 4–5 chỗ ngồi, khoang hành khách và khoang hành lý tách biệt. Mang lại cảm giác lái êm ái, tiết kiệm nhiên liệu và phù hợp cho nhu cầu di chuyển hằng ngày.'),(3,'Hatchback','Dòng xe cỡ nhỏ có cửa khoang hành lý phía sau mở lên cùng kính hậu. Thiết kế gọn gàng, dễ di chuyển trong đô thị, tiết kiệm nhiên liệu và thuận tiện cho người dùng cá nhân hoặc gia đình nhỏ.'),(4,'Pickup','Dòng xe bán tải có khoang chở hàng phía sau, kết hợp giữa khả năng vận chuyển hàng hóa và chở người. Thích hợp cho công việc, vận chuyển hàng hóa hoặc di chuyển trên địa hình phức tạp.'),(6,'Luxury','Dòng xe cao cấp, sang trọng với thiết kế hiện đại, nội thất tiện nghi và nhiều công nghệ hỗ trợ lái xe tiên tiến. Phù hợp cho khách hàng có nhu cầu trải nghiệm dịch vụ chất lượng cao, công tác hoặc sự kiện quan trọng.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Bluetooth'),(4,'Cảm biến va chạm'),(2,'Camera lùi'),(6,'Cruise Control'),(7,'Cửa sổ trời'),(8,'Ghế da'),(3,'GPS'),(5,'Màn hình cảm ứng'),(9,'Sưởi ghế'),(11,'USB');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handover_images`
--

DROP TABLE IF EXISTS `handover_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `handover_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `handover_id` bigint NOT NULL,
  `image_url` text,
  `public_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_handover_image_handover` (`handover_id`),
  CONSTRAINT `fk_handover_image_handover` FOREIGN KEY (`handover_id`) REFERENCES `handovers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handover_images`
--

LOCK TABLES `handover_images` WRITE;
/*!40000 ALTER TABLE `handover_images` DISABLE KEYS */;
INSERT INTO `handover_images` VALUES (1,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779590503/car_rental/handovers/BK_B943BDDA/nh_bn_giao_xe/fixxit6gtiikhvkagdxl.jpg','car_rental/handovers/BK_B943BDDA/nh_bn_giao_xe/fixxit6gtiikhvkagdxl'),(2,1,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779590505/car_rental/handovers/BK_B943BDDA/nh_bn_giao_xe/mhqaru7suhxci3tc1kzh.jpg','car_rental/handovers/BK_B943BDDA/nh_bn_giao_xe/mhqaru7suhxci3tc1kzh'),(3,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779590632/car_rental/handovers/BK_B943BDDA/nh_thu_hi_xe/vbdh161r6tfllplf4mqk.jpg','car_rental/handovers/BK_B943BDDA/nh_thu_hi_xe/vbdh161r6tfllplf4mqk'),(4,2,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779590633/car_rental/handovers/BK_B943BDDA/nh_thu_hi_xe/jey9wpklu57hzkhkut1u.jpg','car_rental/handovers/BK_B943BDDA/nh_thu_hi_xe/jey9wpklu57hzkhkut1u'),(5,3,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779720545/car_rental/handovers/BK_20C1820A/nh_bn_giao_xe/bpdxeuts5dettmummefx.jpg','car_rental/handovers/BK_20C1820A/nh_bn_giao_xe/bpdxeuts5dettmummefx'),(6,4,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779721329/car_rental/handovers/BK_20C1820A/nh_thu_hi_xe/kkelsm0aenw0rdhg1c6j.jpg','car_rental/handovers/BK_20C1820A/nh_thu_hi_xe/kkelsm0aenw0rdhg1c6j'),(7,5,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779721974/car_rental/handovers/BK_1C12D02F/nh_bn_giao_xe/mvlot3zzfcciw8h8vmlp.jpg','car_rental/handovers/BK_1C12D02F/nh_bn_giao_xe/mvlot3zzfcciw8h8vmlp'),(8,6,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1779722050/car_rental/handovers/BK_1C12D02F/nh_thu_hi_xe/nzoxhbjgljhreug3cehd.jpg','car_rental/handovers/BK_1C12D02F/nh_thu_hi_xe/nzoxhbjgljhreug3cehd'),(9,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780106002/car_rental/handovers/BK_12B8A19C/nh_bn_giao_xe/jkztqqvlce73t9yhoftp.jpg','car_rental/handovers/BK_12B8A19C/nh_bn_giao_xe/jkztqqvlce73t9yhoftp'),(10,7,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780106006/car_rental/handovers/BK_12B8A19C/nh_bn_giao_xe/ds0dlbveiaowz6bznhqs.avif','car_rental/handovers/BK_12B8A19C/nh_bn_giao_xe/ds0dlbveiaowz6bznhqs'),(11,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780106256/car_rental/handovers/BK_12B8A19C/nh_thu_hi_xe/xvebmzkttvl2rjiizpwr.jpg','car_rental/handovers/BK_12B8A19C/nh_thu_hi_xe/xvebmzkttvl2rjiizpwr'),(12,8,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1780106259/car_rental/handovers/BK_12B8A19C/nh_thu_hi_xe/y3tubbyb7zuigaguvmm5.jpg','car_rental/handovers/BK_12B8A19C/nh_thu_hi_xe/y3tubbyb7zuigaguvmm5'),(13,9,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781021679/car_rental/handovers/BK_8443FD55/nh_bn_giao_xe/rwrnsuafutr24kekb8oy.jpg','car_rental/handovers/BK_8443FD55/nh_bn_giao_xe/rwrnsuafutr24kekb8oy'),(17,13,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781055441/car_rental/handovers/BK_8443FD55/nh_thu_hi_xe/d4uojfsgcuojthdfaijm.jpg','car_rental/handovers/BK_8443FD55/nh_thu_hi_xe/d4uojfsgcuojthdfaijm'),(18,14,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781055652/car_rental/handovers/BK_B1621E7F/nh_bn_giao_xe/prrszf7jwxne1o2lveek.jpg','car_rental/handovers/BK_B1621E7F/nh_bn_giao_xe/prrszf7jwxne1o2lveek'),(19,15,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781055749/car_rental/handovers/BK_B1621E7F/nh_thu_hi_xe/ajnywdduwnrefwbvbw6p.jpg','car_rental/handovers/BK_B1621E7F/nh_thu_hi_xe/ajnywdduwnrefwbvbw6p'),(20,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781272490/car_rental/handovers/BK_E6F1748A/nh_bn_giao_xe/y1vor2bunenl7qj0ya6e.jpg','car_rental/handovers/BK_E6F1748A/nh_bn_giao_xe/y1vor2bunenl7qj0ya6e'),(21,16,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781272491/car_rental/handovers/BK_E6F1748A/nh_bn_giao_xe/p3z0di2ggxw2i6xobscy.jpg','car_rental/handovers/BK_E6F1748A/nh_bn_giao_xe/p3z0di2ggxw2i6xobscy'),(22,17,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781273309/car_rental/handovers/BK_F2A9DFB4/nh_bn_giao_xe/vf6i985xqj4y0xcsph5r.jpg','car_rental/handovers/BK_F2A9DFB4/nh_bn_giao_xe/vf6i985xqj4y0xcsph5r'),(23,17,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781273312/car_rental/handovers/BK_F2A9DFB4/nh_bn_giao_xe/ecan2kj6vkhws5lvgq2h.jpg','car_rental/handovers/BK_F2A9DFB4/nh_bn_giao_xe/ecan2kj6vkhws5lvgq2h'),(24,18,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781273678/car_rental/handovers/BK_F2A9DFB4/nh_thu_hi_xe/xevtwbthou5bumr26xnr.jpg','car_rental/handovers/BK_F2A9DFB4/nh_thu_hi_xe/xevtwbthou5bumr26xnr'),(25,18,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781273681/car_rental/handovers/BK_F2A9DFB4/nh_thu_hi_xe/ovvlqfoeaxtlspjcpkus.jpg','car_rental/handovers/BK_F2A9DFB4/nh_thu_hi_xe/ovvlqfoeaxtlspjcpkus'),(26,19,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781274792/car_rental/handovers/BK_2F96293E/nh_bn_giao_xe/lv6iuai3kkuccqm26ouf.jpg','car_rental/handovers/BK_2F96293E/nh_bn_giao_xe/lv6iuai3kkuccqm26ouf'),(27,19,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781274797/car_rental/handovers/BK_2F96293E/nh_bn_giao_xe/lz5dwnklmmjc8w6o6iro.jpg','car_rental/handovers/BK_2F96293E/nh_bn_giao_xe/lz5dwnklmmjc8w6o6iro'),(28,20,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781274948/car_rental/handovers/BK_2F96293E/nh_thu_hi_xe/dpr0comhvpqq6z06ozgn.jpg','car_rental/handovers/BK_2F96293E/nh_thu_hi_xe/dpr0comhvpqq6z06ozgn'),(29,20,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781274955/car_rental/handovers/BK_2F96293E/nh_thu_hi_xe/cuw2iyutyblpi5mikvgg.jpg','car_rental/handovers/BK_2F96293E/nh_thu_hi_xe/cuw2iyutyblpi5mikvgg'),(30,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781275182/car_rental/handovers/BK_01E80ED6/nh_bn_giao_xe/idq2q6lz0xkaajjhnhyc.jpg','car_rental/handovers/BK_01E80ED6/nh_bn_giao_xe/idq2q6lz0xkaajjhnhyc'),(31,21,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781275185/car_rental/handovers/BK_01E80ED6/nh_bn_giao_xe/wz3ll0x1wc4z86wh4qeh.jpg','car_rental/handovers/BK_01E80ED6/nh_bn_giao_xe/wz3ll0x1wc4z86wh4qeh'),(32,22,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781276197/car_rental/handovers/BK_01E80ED6/nh_thu_hi_xe/dce5bmyvnqgic4fq4pcf.jpg','car_rental/handovers/BK_01E80ED6/nh_thu_hi_xe/dce5bmyvnqgic4fq4pcf'),(33,22,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781276205/car_rental/handovers/BK_01E80ED6/nh_thu_hi_xe/zbfxqdlub5dwl6ljiwgv.jpg','car_rental/handovers/BK_01E80ED6/nh_thu_hi_xe/zbfxqdlub5dwl6ljiwgv'),(34,23,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781277037/car_rental/handovers/BK_403110E2/nh_bn_giao_xe/tkt3nu9tub8dtnxs5fw5.jpg','car_rental/handovers/BK_403110E2/nh_bn_giao_xe/tkt3nu9tub8dtnxs5fw5'),(35,23,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781277041/car_rental/handovers/BK_403110E2/nh_bn_giao_xe/zd8qvaricsnogyq9ubww.jpg','car_rental/handovers/BK_403110E2/nh_bn_giao_xe/zd8qvaricsnogyq9ubww'),(36,24,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781277686/car_rental/handovers/BK_E50F4848/nh_bn_giao_xe/uibwprey6h7llfmrjo2a.jpg','car_rental/handovers/BK_E50F4848/nh_bn_giao_xe/uibwprey6h7llfmrjo2a'),(37,24,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781277689/car_rental/handovers/BK_E50F4848/nh_bn_giao_xe/k9dhzprdrzb9ernqq8kp.jpg','car_rental/handovers/BK_E50F4848/nh_bn_giao_xe/k9dhzprdrzb9ernqq8kp'),(38,25,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781277816/car_rental/handovers/BK_E6F1748A/nh_thu_hi_xe/cruo412g9ymwuqtiuwez.jpg','car_rental/handovers/BK_E6F1748A/nh_thu_hi_xe/cruo412g9ymwuqtiuwez'),(39,25,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781277818/car_rental/handovers/BK_E6F1748A/nh_thu_hi_xe/miosh4nmz6aovzc8kbaa.jpg','car_rental/handovers/BK_E6F1748A/nh_thu_hi_xe/miosh4nmz6aovzc8kbaa'),(40,26,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781278029/car_rental/handovers/BK_403110E2/nh_thu_hi_xe/cjj7rgvyqq4v1rbsu342.jpg','car_rental/handovers/BK_403110E2/nh_thu_hi_xe/cjj7rgvyqq4v1rbsu342'),(41,26,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781278031/car_rental/handovers/BK_403110E2/nh_thu_hi_xe/ysdbst3xfxhailjtj6yi.jpg','car_rental/handovers/BK_403110E2/nh_thu_hi_xe/ysdbst3xfxhailjtj6yi'),(42,27,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781279956/car_rental/handovers/BK_E50F4848/nh_thu_hi_xe/phhrotwhl7w2pfq5tztu.jpg','car_rental/handovers/BK_E50F4848/nh_thu_hi_xe/phhrotwhl7w2pfq5tztu'),(43,27,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781279957/car_rental/handovers/BK_E50F4848/nh_thu_hi_xe/oerubyxknvzddai3x93n.jpg','car_rental/handovers/BK_E50F4848/nh_thu_hi_xe/oerubyxknvzddai3x93n'),(44,28,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781574616/car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/hbr20ofnhobkivm4mm8g.jpg','car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/hbr20ofnhobkivm4mm8g'),(45,29,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781575882/car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/uosinjlxq53kf5mx6y5c.jpg','car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/uosinjlxq53kf5mx6y5c'),(46,29,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781575883/car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/rym2zaelud3rkfnlmrjx.jpg','car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/rym2zaelud3rkfnlmrjx'),(47,29,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781575885/car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/ydrvw1z53gfo3jivj8xc.jpg','car_rental/handovers/BK_3A274F2C/nh_thu_hi_xe/ydrvw1z53gfo3jivj8xc'),(48,30,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781576746/car_rental/handovers/BK_CA1F170E/nh_bn_giao_xe/icc1ktfmaw7pri5e1apt.jpg','car_rental/handovers/BK_CA1F170E/nh_bn_giao_xe/icc1ktfmaw7pri5e1apt'),(49,30,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781576748/car_rental/handovers/BK_CA1F170E/nh_bn_giao_xe/yttznwzz33ug1606e4pn.jpg','car_rental/handovers/BK_CA1F170E/nh_bn_giao_xe/yttznwzz33ug1606e4pn'),(50,31,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781578208/car_rental/handovers/BK_CA1F170E/nh_thu_hi_xe/uc21eqgfaamirybnyaac.jpg','car_rental/handovers/BK_CA1F170E/nh_thu_hi_xe/uc21eqgfaamirybnyaac'),(51,31,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781578210/car_rental/handovers/BK_CA1F170E/nh_thu_hi_xe/sv9zhvate1fzeble1vkb.jpg','car_rental/handovers/BK_CA1F170E/nh_thu_hi_xe/sv9zhvate1fzeble1vkb'),(52,32,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781582095/car_rental/handovers/BK_F7C5D8F8/nh_bn_giao_xe/rtsuyt13ijyohmunctha.jpg','car_rental/handovers/BK_F7C5D8F8/nh_bn_giao_xe/rtsuyt13ijyohmunctha'),(53,32,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781582097/car_rental/handovers/BK_F7C5D8F8/nh_bn_giao_xe/cmfjkhsi6feylxsbznp7.jpg','car_rental/handovers/BK_F7C5D8F8/nh_bn_giao_xe/cmfjkhsi6feylxsbznp7'),(54,33,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781968130/car_rental/handovers/BK_F7C5D8F8/nh_thu_hi_xe/ylqbqnttxiug6znhhloi.jpg','car_rental/handovers/BK_F7C5D8F8/nh_thu_hi_xe/ylqbqnttxiug6znhhloi'),(55,33,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1781968136/car_rental/handovers/BK_F7C5D8F8/nh_thu_hi_xe/h77sawps39xviebvcl06.jpg','car_rental/handovers/BK_F7C5D8F8/nh_thu_hi_xe/h77sawps39xviebvcl06'),(56,34,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1782489294/car_rental/handovers/BK_970B639D/nh_bn_giao_xe/bsnms3mn7ipoafqepgsn.jpg','car_rental/handovers/BK_970B639D/nh_bn_giao_xe/bsnms3mn7ipoafqepgsn'),(57,34,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1782489295/car_rental/handovers/BK_970B639D/nh_bn_giao_xe/c8mgbplnv6pumcazpab3.jpg','car_rental/handovers/BK_970B639D/nh_bn_giao_xe/c8mgbplnv6pumcazpab3'),(58,35,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1782528976/car_rental/handovers/BK_970B639D/nh_thu_hi_xe/xnw1olm6oq2emy9ecgpr.jpg','car_rental/handovers/BK_970B639D/nh_thu_hi_xe/xnw1olm6oq2emy9ecgpr'),(59,35,'https://res.cloudinary.com/dsnp27eeq/image/upload/v1782528977/car_rental/handovers/BK_970B639D/nh_thu_hi_xe/aamuainpqqbemtfxzzjg.jpg','car_rental/handovers/BK_970B639D/nh_thu_hi_xe/aamuainpqqbemtfxzzjg');
/*!40000 ALTER TABLE `handover_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handovers`
--

DROP TABLE IF EXISTS `handovers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `handovers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_detail_id` bigint NOT NULL,
  `staff_id` bigint DEFAULT NULL,
  `type` enum('OUT','IN') NOT NULL,
  `handover_time` datetime NOT NULL,
  `mileage` bigint DEFAULT NULL,
  `fuel_level` int DEFAULT NULL,
  `note` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_handover_booking_detail` (`booking_detail_id`),
  KEY `fk_handover_staff` (`staff_id`),
  CONSTRAINT `fk_handover_booking_detail` FOREIGN KEY (`booking_detail_id`) REFERENCES `booking_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_handover_staff` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handovers`
--

LOCK TABLES `handovers` WRITE;
/*!40000 ALTER TABLE `handovers` DISABLE KEYS */;
INSERT INTO `handovers` VALUES (1,2,1,'OUT','2026-05-24 09:41:41',15200,80,'ko bi hu hong j','2026-05-24 02:41:41'),(2,2,1,'IN','2026-05-24 09:43:51',14200,29,'Xe bi hu hai','2026-05-24 02:43:51'),(3,4,1,'OUT','2026-05-25 21:49:04',15200,80,'ko bi lm saoc','2026-05-25 14:49:04'),(4,4,1,'IN','2026-05-25 22:02:08',13200,70,'xu xe ','2026-05-25 15:02:08'),(5,5,1,'OUT','2026-05-25 22:12:54',14200,80,'k9o van de','2026-05-25 15:12:54'),(6,5,1,'IN','2026-05-25 22:14:10',13222,36,'ko sao','2026-05-25 15:14:10'),(7,9,1,'OUT','2026-05-30 08:53:22',15200,70,'ko bi hu hong','2026-05-30 01:53:22'),(8,9,1,'IN','2026-05-30 08:57:34',12000,43,'xe bi hu hong','2026-05-30 01:57:34'),(9,13,1,'OUT','2026-06-09 23:14:38',15200,79,'sd','2026-06-09 16:14:38'),(13,13,1,'IN','2026-06-10 08:37:20',15200,79,'bi ban','2026-06-10 01:37:20'),(14,8,1,'OUT','2026-06-10 08:40:51',12630,21,'xe on','2026-06-10 01:40:51'),(15,8,1,'IN','2026-06-10 08:42:28',12345,67,'xe co mui','2026-06-10 01:42:28'),(16,20,1,'OUT','2026-06-12 20:54:47',15200,80,'Xe ko bị hư hại','2026-06-12 13:54:47'),(17,14,10,'OUT','2026-06-12 21:08:29',15200,70,'ko lms','2026-06-12 14:08:29'),(18,14,10,'IN','2026-06-12 21:14:30',12300,56,'ko bi lam sao','2026-06-12 14:14:30'),(19,15,10,'OUT','2026-06-12 21:33:05',12444,90,'Xe trong thạng thái tốt','2026-06-12 14:33:05'),(20,15,10,'IN','2026-06-12 21:35:33',12000,78,'Xe bị hư hỏng nội thất','2026-06-12 14:35:35'),(21,16,10,'OUT','2026-06-12 21:39:38',12000,28,'Xe tốt','2026-06-12 14:39:40'),(22,16,10,'IN','2026-06-12 21:56:30',12003,56,'ko bị lms','2026-06-12 14:56:32'),(23,19,10,'OUT','2026-06-12 22:10:31',12000,80,'xe tot ko bi lms','2026-06-12 15:10:33'),(24,18,10,'OUT','2026-06-12 22:21:26',1200,70,'xe on','2026-06-12 15:21:26'),(25,20,10,'IN','2026-06-12 22:23:37',1200,36,'lop bi hong','2026-06-12 15:23:37'),(26,19,10,'IN','2026-06-12 22:27:09',12000,78,'xe bi ','2026-06-12 15:27:09'),(27,18,10,'IN','2026-06-12 22:59:15',1200,35,'koi','2026-06-12 15:59:15'),(28,21,1,'IN','2026-06-16 08:50:14',12000,79,'ko bi lms','2026-06-16 01:50:14'),(29,21,1,'IN','2026-06-16 09:11:21',13000,67,'xe co mui','2026-06-16 02:11:21'),(30,22,1,'OUT','2026-06-16 09:25:45',13000,78,'xe ko sao','2026-06-16 02:25:45'),(31,22,1,'IN','2026-06-16 09:50:07',12000,35,'ko bi lms','2026-06-16 02:50:07'),(32,23,1,'OUT','2026-06-16 10:54:55',12000,79,'xe ko bị lms\n','2026-06-16 03:54:55'),(33,23,1,'IN','2026-06-20 22:08:48',12000,76,'hong ghe','2026-06-20 15:08:48'),(34,26,1,'OUT','2026-06-26 22:54:54',12000,56,'ko bi lms','2026-06-26 15:54:54'),(35,26,1,'IN','2026-06-27 09:56:15',12000,78,'xe ko bi j','2026-06-27 02:56:15');
/*!40000 ALTER TABLE `handovers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidents` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `handover_id` bigint NOT NULL,
  `description` text,
  `type` varchar(50) NOT NULL,
  `source` enum('AUTO','MANUAL') DEFAULT 'MANUAL',
  `created_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_incident_handover` (`handover_id`),
  KEY `fk_incident_created_by` (`created_by`),
  CONSTRAINT `fk_incident_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_incident_handover` FOREIGN KEY (`handover_id`) REFERENCES `handovers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (1,2,'bi xuox son','SCRATCH','MANUAL',1,'2026-05-24 02:43:54'),(2,2,'bi hu ghe goi','INTERIOR_DAMAGE','MANUAL',1,'2026-05-24 02:43:54'),(3,4,'Trả xe quá hạn 2 ngày','LATE_RETURN','AUTO',2,'2026-05-25 15:02:10'),(4,4,'xuoc','SCRATCH','MANUAL',1,'2026-05-25 15:02:10'),(5,4,'xe ban','DIRTY','MANUAL',1,'2026-05-25 15:02:10'),(6,8,'Trả xe quá hạn 2 ngày','LATE_RETURN','AUTO',2,'2026-05-30 01:57:42'),(7,8,'xuoc xe','SCRATCH','MANUAL',1,'2026-05-30 01:57:42'),(8,13,'xe bi ban\n','DIRTY','MANUAL',1,'2026-06-10 01:37:23'),(9,15,'Trả xe quá hạn 7 ngày','LATE_RETURN','AUTO',2,'2026-06-10 01:42:31'),(10,15,'xe ci mui hoi','DIRTY','MANUAL',1,'2026-06-10 01:42:31'),(11,20,'Xe bị hỏng ghê lái','INTERIOR_DAMAGE','MANUAL',10,'2026-06-12 14:36:06'),(12,25,'Loop hong','TIRE_DAMAGE','MANUAL',10,'2026-06-12 15:23:41'),(13,26,'Trả xe quá hạn 2 ngày','LATE_RETURN','AUTO',2,'2026-06-12 15:27:14'),(14,26,'xe bi meo dau','ACCIDENT','MANUAL',10,'2026-06-12 15:27:14'),(15,27,'Trả xe quá hạn 3 ngày','LATE_RETURN','AUTO',2,'2026-06-12 15:59:20'),(16,29,'Xe co mui\n','OTHER','MANUAL',1,'2026-06-16 02:11:26'),(17,31,'Trả xe quá 2 giờ','LATE_RETURN','AUTO',2,'2026-06-16 02:50:11'),(18,33,'Trả xe quá hạn 5 ngày','LATE_RETURN','AUTO',2,'2026-06-20 15:08:59'),(19,33,'hong ghe','INTERIOR_DAMAGE','MANUAL',1,'2026-06-20 15:08:59'),(20,35,'Trả xe quá hạn 2 ngày','LATE_RETURN','AUTO',2,'2026-06-27 02:56:19'),(21,35,'bị móp xe\n','ACCIDENT','MANUAL',1,'2026-06-27 02:56:19');
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `rental_total` decimal(12,2) DEFAULT '0.00',
  `penalty_total` decimal(12,2) DEFAULT '0.00',
  `deposit_paid` decimal(12,2) DEFAULT '0.00',
  `paid_total` decimal(12,2) DEFAULT '0.00',
  `final_amount` decimal(12,2) NOT NULL,
  `remaining_amount` decimal(12,2) DEFAULT '0.00',
  `status` enum('PENDING','PARTIAL','PAID','CANCELLED') DEFAULT 'PENDING',
  `note` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking_id` (`booking_id`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,5600000.00,0.00,2000.00,2000.00,5598000.00,5598000.00,'CANCELLED','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-05-24 02:37:07','2026-05-27 01:46:54'),(2,2,6000000.00,2500000.00,2000.00,2000.00,8498000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-04-24 02:39:58','2026-04-27 01:45:58'),(3,3,8400000.00,0.00,2000.00,2000.00,8398000.00,8398000.00,'CANCELLED','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-05-25 14:37:34','2026-05-27 01:46:54'),(4,4,2800000.00,3500000.00,2000.00,2000.00,6298000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-03-25 14:46:30','2026-03-27 01:45:58'),(5,5,4000000.00,0.00,2000.00,2000.00,3998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-05-25 15:11:42','2026-05-25 15:14:41'),(6,6,1400000.00,0.00,2000.00,2000.00,1398000.00,1398000.00,'CANCELLED','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-05-25 15:15:47','2026-05-27 01:46:54'),(7,7,5600000.00,NULL,NULL,NULL,5600000.00,NULL,'CANCELLED',NULL,'2026-05-25 15:20:58','2026-05-27 01:46:53'),(8,8,18000000.00,31900000.00,2000.00,49898000.00,49898000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-05-30 01:14:25','2026-06-10 01:43:22'),(9,9,11200000.00,5800000.00,20000.00,20000.00,16980000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-05-30 01:48:24','2026-05-30 01:58:48'),(10,10,12000000.00,NULL,NULL,NULL,12000000.00,NULL,'CANCELLED',NULL,'2026-06-02 02:40:50','2026-06-05 15:51:32'),(11,11,22400000.00,NULL,NULL,NULL,22400000.00,NULL,'CANCELLED',NULL,'2026-06-02 02:49:27','2026-06-05 15:51:32'),(12,12,5600000.00,NULL,NULL,NULL,5600000.00,NULL,'CANCELLED',NULL,'2026-06-02 02:51:24','2026-06-05 15:51:32'),(13,13,16800000.00,200000.00,2000.00,16998000.00,16998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-09 16:07:49','2026-06-10 01:39:17'),(14,14,9000000.00,0.00,2000.00,8998000.00,8998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 15:28:19','2026-06-12 14:15:26'),(15,15,11200000.00,2000000.00,2000.00,13198000.00,13198000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 16:12:52','2026-06-12 14:37:19'),(16,16,9000000.00,0.00,2000.00,8998000.00,8998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 16:18:07','2026-06-12 15:59:51'),(17,17,5600000.00,0.00,8000000.00,8000000.00,0.00,0.00,'CANCELLED','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 16:19:05','2026-06-11 16:20:39'),(18,18,5600000.00,8400000.00,2000.00,13998000.00,13998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 16:20:57','2026-06-12 15:59:55'),(19,19,9000000.00,10600000.00,2000.00,19598000.00,19598000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 16:22:03','2026-06-12 15:39:38'),(20,20,12000000.00,1000000.00,2000.00,12998000.00,12998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-11 16:26:25','2026-06-12 15:24:01'),(21,21,8498000.00,300000.00,5500000.00,3298000.00,3298000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-16 01:12:21','2026-06-16 02:14:20'),(22,22,9000000.00,200000.00,50000.00,9150000.00,9150000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-16 02:16:23','2026-06-16 02:59:47'),(23,23,9000000.00,25500000.00,2000.00,34498000.00,34498000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-16 03:02:43','2026-06-20 15:23:00'),(24,24,5600000.00,NULL,NULL,NULL,5600000.00,NULL,'PENDING',NULL,'2026-06-16 04:24:08',NULL),(25,25,12000000.00,0.00,2000.00,2000.00,11998000.00,11998000.00,'PARTIAL','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-19 15:12:15','2026-06-19 15:12:55'),(26,26,9000000.00,9000000.00,2000.00,17998000.00,17998000.00,0.00,'PAID','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-26 15:43:31','2026-06-27 02:56:51'),(27,27,3900000.00,0.00,2000.00,2000.00,3898000.00,3898000.00,'PARTIAL','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-26 15:51:14','2026-06-26 15:52:10'),(28,28,8400000.00,0.00,2000.00,2000.00,8398000.00,8398000.00,'PARTIAL','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-26 15:53:38','2026-06-26 15:53:52'),(29,29,5600000.00,0.00,2000.00,2000.00,5598000.00,5598000.00,'PARTIAL','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-27 00:34:18','2026-06-27 00:38:42'),(30,30,5600000.00,0.00,2000.00,2000.00,5598000.00,5598000.00,'PARTIAL','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-06-27 02:45:28','2026-06-27 02:46:30'),(31,31,8400000.00,0.00,2000.00,2000.00,8398000.00,8398000.00,'PARTIAL','Điều chỉnh hóa đơn sau kiểm tra tình trạng xe','2026-11-01 13:46:57','2026-11-01 13:48:25');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notification_user` (`user_id`),
  CONSTRAINT `fk_notification_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (54,9,'VERIFICATION','Xác minh tài khoản để đặt xe',0,'2026-05-30 13:56:10',NULL),(58,7,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_8443FD55. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',0,'2026-06-09 16:07:49',NULL),(59,7,'BOOKING','Đơn đặt xe BK_8443FD55 đã được xác nhận thanh toán cọc.',0,'2026-06-09 16:13:18',NULL),(60,7,'BOOKING','Chúc mừng! Bạn đã nhận xe thành công cho đơn hàng BK_8443FD55. Chúc bạn có những trải nghiệm tuyệt vời với chiếc xe!',0,'2026-06-09 16:14:41',NULL),(61,7,'INCIDENT','Sự cố DIRTY đã được ghi nhận trong quá trình bàn giao xe. Vui lòng kiểm tra chi tiết và xử lý kịp thời.',0,'2026-06-10 01:37:23',NULL),(62,7,'BOOKING','Bạn đang trong quá trình trả xe cho đơn hàng BK_8443FD55',0,'2026-06-10 01:37:23',NULL),(63,7,'BOOKING','Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi! Đơn hàng BK_8443FD55 đã hoàn thành. Chúng tôi hy vọng bạn hài lòng với trải nghiệm thuê xe và mong được phục vụ bạn trong những lần tiếp theo.',0,'2026-06-10 01:39:17',NULL),(88,10,'ACCOUNT','Tài khoản của bạn đã được kích hoạt lại. Bạn có thể đặt xe ngay bây giờ!',0,'2026-06-12 13:31:45',NULL),(133,12,'VERIFICATION','Xác minh tài khoản để đặt xe',1,'2026-06-16 03:08:59',NULL),(134,13,'VERIFICATION','Xác minh tài khoản để đặt xe',0,'2026-06-16 03:19:44',NULL),(136,1,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',1,'2026-06-16 04:14:44',NULL),(137,3,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-16 04:14:44',NULL),(138,10,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-16 04:14:44',NULL),(139,11,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-16 04:14:44',NULL),(140,12,'VERIFICATION','Tài khoản của bạn đã được xác minh thành công.',1,'2026-06-16 04:17:10',NULL),(141,12,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_352BF4CD. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',1,'2026-06-16 04:24:08',24),(143,1,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',1,'2026-06-16 14:55:22',12),(144,3,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-16 14:55:22',12),(145,10,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-16 14:55:22',12),(146,11,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-16 14:55:22',12),(150,4,'LATE_RETURN','Xe đã quá thời gian trả. Vui lòng hoàn trả xe hoặc liên hệ hỗ trợ.',1,'2026-06-19 14:39:30',23),(154,1,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FFA9FC88 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',1,'2026-06-19 15:13:33',2),(155,3,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FFA9FC88 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-19 15:13:33',2),(156,10,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FFA9FC88 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-19 15:13:33',2),(157,11,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FFA9FC88 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-19 15:13:33',2),(159,4,'INCIDENT','Sự cố LATE_RETURN đã được ghi nhận trong quá trình bàn giao xe. Vui lòng kiểm tra chi tiết và xử lý kịp thời.',1,'2026-06-20 15:08:59',23),(160,4,'INCIDENT','Sự cố INTERIOR_DAMAGE đã được ghi nhận trong quá trình bàn giao xe. Vui lòng kiểm tra chi tiết và xử lý kịp thời.',1,'2026-06-20 15:08:59',23),(161,4,'BOOKING','Bạn đang trong quá trình trả xe cho đơn hàng BK_F7C5D8F8',1,'2026-06-20 15:08:59',23),(162,4,'BOOKING','Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi! Đơn hàng BK_F7C5D8F8 đã hoàn thành. Chúng tôi hy vọng bạn hài lòng với trải nghiệm thuê xe và mong được phục vụ bạn trong những lần tiếp theo.',1,'2026-06-20 15:23:00',23),(168,1,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',1,'2026-06-22 15:00:00',12),(169,3,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',0,'2026-06-22 15:00:00',12),(170,10,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',0,'2026-06-22 15:00:00',12),(171,11,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',0,'2026-06-22 15:00:00',12),(172,14,'VERIFICATION','Giấy phép lái xe của bạn đã hết hạn.',1,'2026-06-22 15:05:00',12),(173,1,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',1,'2026-06-22 15:05:00',12),(174,3,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',0,'2026-06-22 15:05:00',12),(175,10,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',0,'2026-06-22 15:05:00',12),(176,11,'VERIFICATION','GPLX của Nguyễn Văn Test2 đã hết hạn',0,'2026-06-22 15:05:00',12),(177,1,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',1,'2026-06-22 15:22:19',12),(178,3,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-22 15:22:19',12),(179,10,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-22 15:22:19',12),(180,11,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-22 15:22:19',12),(181,14,'VERIFICATION','Tài khoản của bạn đã được xác minh thành công.',1,'2026-06-22 15:27:12',12),(182,4,'REVIEW','Bạn đã gửi đánh giá thành công cho mã đặt xe BK_F7C5D8F8. Cảm ơn bạn đã sử dụng dịch vụ!',1,'2026-06-24 14:07:49',5),(183,4,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_970B639D. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',1,'2026-06-26 15:43:31',26),(184,4,'BOOKING','Đơn đặt xe BK_970B639D đã được xác nhận thanh toán cọc.',1,'2026-06-26 15:44:10',26),(185,4,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_3BD19881. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',1,'2026-06-26 15:51:14',27),(186,4,'BOOKING','Đơn đặt xe BK_3BD19881 đã được xác nhận thanh toán cọc.',1,'2026-06-26 15:52:10',27),(187,4,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_F187FC69. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',1,'2026-06-26 15:53:38',28),(188,4,'BOOKING','Đơn đặt xe BK_F187FC69 đã được xác nhận thanh toán cọc.',1,'2026-06-26 15:53:52',28),(189,4,'BOOKING','Chúc mừng! Bạn đã nhận xe thành công cho đơn hàng BK_970B639D. Chúc bạn có những trải nghiệm tuyệt vời với chiếc xe!',1,'2026-06-26 15:54:58',26),(190,4,'LATE_RETURN','Xe của đơn BK_970B639D đã quá thời gian trả. Vui lòng hoàn trả xe hoặc liên hệ hỗ trợ.',1,'2026-06-26 15:58:43',26),(191,1,'LATE_RETURN','Xe của đơn BK_970B639D đã quá thời gian trả. Hãy kiểm tra và xử lý.',1,'2026-06-26 15:58:43',26),(192,3,'LATE_RETURN','Xe của đơn BK_970B639D đã quá thời gian trả. Hãy kiểm tra và xử lý.',0,'2026-06-26 15:58:43',26),(193,10,'LATE_RETURN','Xe của đơn BK_970B639D đã quá thời gian trả. Hãy kiểm tra và xử lý.',0,'2026-06-26 15:58:43',26),(194,11,'LATE_RETURN','Xe của đơn BK_970B639D đã quá thời gian trả. Hãy kiểm tra và xử lý.',0,'2026-06-26 15:58:43',26),(195,4,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_9A76B07F. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',0,'2026-06-27 00:34:18',29),(196,4,'BOOKING','Đơn đặt xe BK_9A76B07F đã được xác nhận thanh toán cọc.',1,'2026-06-27 00:38:42',29),(197,15,'VERIFICATION','Xác minh tài khoản để đặt xe',1,'2026-06-27 02:08:50',13),(198,1,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',1,'2026-06-27 02:43:14',13),(199,3,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-27 02:43:14',13),(200,10,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-27 02:43:14',13),(201,11,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-27 02:43:14',13),(202,15,'VERIFICATION','Tài khoản của bạn đã được xác minh thành công.',0,'2026-06-27 02:43:42',13),(203,15,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_FA947633. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',1,'2026-06-27 02:45:28',30),(204,15,'BOOKING','Đơn đặt xe BK_FA947633 đã được xác nhận thanh toán cọc.',0,'2026-06-27 02:46:30',30),(205,4,'INCIDENT','Sự cố Trả xe quá hạn đã được ghi nhận trong quá trình bàn giao xe. Vui lòng kiểm tra chi tiết và xử lý kịp thời.',0,'2026-06-27 02:56:19',26),(206,4,'INCIDENT','Sự cố Tai nạn giao thông đã được ghi nhận trong quá trình bàn giao xe. Vui lòng kiểm tra chi tiết và xử lý kịp thời.',0,'2026-06-27 02:56:19',26),(207,4,'BOOKING','Bạn đang trong quá trình trả xe cho đơn hàng BK_970B639D',0,'2026-06-27 02:56:19',26),(208,4,'BOOKING','Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi! Đơn hàng BK_970B639D đã hoàn thành. Chúng tôi hy vọng bạn hài lòng với trải nghiệm thuê xe và mong được phục vụ bạn trong những lần tiếp theo.',0,'2026-06-27 02:56:51',26),(209,15,'REFUND','Bạn đã yêu cầu hoàn tiền đơn đặt xe:  BK_FA947633. Chúng tôi sẽ xem xét và phản hồi sớm nhất có thể.',0,'2026-06-27 03:02:09',3),(210,1,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FA947633 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',1,'2026-06-27 03:02:09',3),(211,3,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FA947633 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-27 03:02:09',3),(212,10,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FA947633 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-27 03:02:09',3),(213,11,'REFUND','Yêu cầu hoàn tiền đơn đặt xe:  BK_FA947633 đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-06-27 03:02:09',3),(214,4,'BOOKING','Đơn đặt xe BK_9A76B07F của bạn đã bị hủy. Nếu bạn có bất kỳ thắc mắc nào, vui lòng liên hệ với chúng tôi để được hỗ trợ.',0,'2026-11-01 13:45:14',29),(215,4,'BOOKING','Đơn đặt xe BK_F187FC69 của bạn đã bị hủy. Nếu bạn có bất kỳ thắc mắc nào, vui lòng liên hệ với chúng tôi để được hỗ trợ.',0,'2026-11-01 13:45:18',28),(216,4,'BOOKING','Đơn đặt xe BK_3BD19881 của bạn đã bị hủy. Nếu bạn có bất kỳ thắc mắc nào, vui lòng liên hệ với chúng tôi để được hỗ trợ.',0,'2026-11-01 13:45:21',27),(217,1,'BOOKING','Bạn đã tạo đơn đặt xe thành công với mã BK_956A35C4. Vui lòng thanh toán trong vong 1 giờ để xác nhận đơn hàng.',0,'2026-11-01 13:46:57',31),(218,1,'BOOKING','Đơn đặt xe BK_956A35C4 đã được xác nhận thanh toán cọc.',0,'2026-11-01 13:48:25',31),(219,16,'VERIFICATION','Xác minh tài khoản để đặt xe',0,'2026-11-02 02:23:31',14),(220,1,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-11-02 02:39:27',14),(221,3,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-11-02 02:39:27',14),(222,10,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-11-02 02:39:27',14),(223,11,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-11-02 02:39:27',14),(224,16,'VERIFICATION','Có một yêu cầu xác minh mới đang chờ xử lý. Vui lòng kiểm tra và cập nhật trạng thái.',0,'2026-11-02 02:39:56',14),(225,16,'VERIFICATION','Tài khoản của bạn đã được xác minh thành công.',0,'2026-11-02 02:40:01',14);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `amount` decimal(19,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT 'BANK_TRANSFER',
  `payment_type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `transaction_code` varchar(100) DEFAULT NULL,
  `payment_content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_code` (`transaction_code`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26145083597880','BK_15365AD2','2026-05-24 02:37:07'),(2,2,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26145009136104','BK_B943BDDA','2026-05-24 02:39:58'),(3,3,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26145615787845','BK_FD46BF7D','2026-05-25 14:37:34'),(4,4,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26145914076801','BK_20C1820A','2026-05-25 14:46:30'),(5,5,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26146609606831','BK_1C12D02F','2026-05-25 15:11:42'),(6,6,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26146936680161','BK_1B76B349','2026-05-25 15:15:47'),(7,7,2000.00,'BANK_TRANSFER','DEPOSIT','UNPAID',NULL,'BK_1A40E617','2026-05-25 15:20:58'),(8,8,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26150420199230','BK_B1621E7F','2026-05-30 01:14:25'),(9,9,20000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26150130020012','BK_12B8A19C','2026-05-30 01:48:24'),(10,10,2000.00,'BANK_TRANSFER','DEPOSIT','UNPAID',NULL,'BK_218EB5BC','2026-06-02 02:40:50'),(11,11,2000.00,'BANK_TRANSFER','DEPOSIT','UNPAID',NULL,'BK_9BF5C0EB','2026-06-02 02:49:27'),(12,12,2000.00,'BANK_TRANSFER','DEPOSIT','UNPAID',NULL,'BK_F4078190','2026-06-02 02:51:24'),(13,13,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26161618071945','BK_8443FD55','2026-06-09 16:07:49'),(14,14,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26163564724624','BK_F2A9DFB4','2026-06-11 15:28:19'),(15,15,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26163225780454','BK_2F96293E','2026-06-11 16:12:52'),(16,16,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26163431993082','BK_01E80ED6','2026-06-11 16:18:07'),(17,17,2000.00,'BANK_TRANSFER','DEPOSIT','UNPAID',NULL,'BK_F80C741F','2026-06-11 16:19:05'),(18,18,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26163900090195','BK_E50F4848','2026-06-11 16:20:57'),(19,19,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26163960746282','BK_403110E2','2026-06-11 16:22:03'),(20,20,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26163500231029','BK_E6F1748A','2026-06-11 16:26:25'),(21,21,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26167696800658','BK_3A274F2C','2026-06-16 01:12:21'),(22,22,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26167610390951','BK_CA1F170E','2026-06-16 02:16:23'),(23,23,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26167076477954','BK_F7C5D8F8','2026-06-16 03:02:43'),(24,24,2000.00,'BANK_TRANSFER','DEPOSIT','UNPAID',NULL,'BK_352BF4CD','2026-06-16 04:24:08'),(25,25,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26170201956601','BK_FFA9FC88','2026-06-19 15:12:15'),(26,26,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26178702064475','BK_970B639D','2026-06-26 15:43:31'),(27,27,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26178280039759','BK_3BD19881','2026-06-26 15:51:14'),(28,28,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26178649132564','BK_F187FC69','2026-06-26 15:53:38'),(29,29,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26178517789189','BK_9A76B07F','2026-06-27 00:34:18'),(30,30,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26178773064776','BK_FA947633','2026-06-27 02:45:28'),(31,31,2000.00,'BANK_TRANSFER','DEPOSIT','SUCCESS','FT26306586104910','BK_956A35C4','2026-11-01 13:46:57');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalties`
--

DROP TABLE IF EXISTS `penalties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalties` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `incident_id` bigint NOT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `status` enum('UNPAID','PAID') DEFAULT 'UNPAID',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_penalty_incident` (`incident_id`),
  CONSTRAINT `fk_penalty_incident` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalties`
--

LOCK TABLES `penalties` WRITE;
/*!40000 ALTER TABLE `penalties` DISABLE KEYS */;
INSERT INTO `penalties` VALUES (1,1,500000.00,'UNPAID','2026-05-24 02:43:54'),(2,2,2000000.00,'UNPAID','2026-05-24 02:43:54'),(3,3,2800000.00,'UNPAID','2026-05-25 15:02:10'),(4,4,500000.00,'UNPAID','2026-05-25 15:02:10'),(5,5,200000.00,'UNPAID','2026-05-25 15:02:10'),(6,6,5600000.00,'UNPAID','2026-05-30 01:57:42'),(7,7,200000.00,'UNPAID','2026-05-30 01:57:42'),(8,8,200000.00,'UNPAID','2026-06-10 01:37:23'),(9,9,31500000.00,'UNPAID','2026-06-10 01:42:31'),(10,10,400000.00,'UNPAID','2026-06-10 01:42:31'),(11,11,2000000.00,'UNPAID','2026-06-12 14:36:06'),(12,12,1000000.00,'UNPAID','2026-06-12 15:23:41'),(13,13,9000000.00,'UNPAID','2026-06-12 15:27:14'),(14,14,1600000.00,'UNPAID','2026-06-12 15:27:14'),(15,15,8400000.00,'UNPAID','2026-06-12 15:59:20'),(16,16,300000.00,'UNPAID','2026-06-16 02:11:26'),(17,17,200000.00,'UNPAID','2026-06-16 02:50:11'),(18,18,22500000.00,'UNPAID','2026-06-20 15:08:59'),(19,19,3000000.00,'UNPAID','2026-06-20 15:08:59'),(20,20,6000000.00,'UNPAID','2026-06-27 02:56:19'),(21,21,3000000.00,'UNPAID','2026-06-27 02:56:19');
/*!40000 ALTER TABLE `penalties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty_rules`
--

DROP TABLE IF EXISTS `penalty_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty_rules` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `unit_price` decimal(12,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty_rules`
--

LOCK TABLES `penalty_rules` WRITE;
/*!40000 ALTER TABLE `penalty_rules` DISABLE KEYS */;
INSERT INTO `penalty_rules` VALUES (1,'QUÁ GIỜ',100000.00,'Phạt 100K mỗi giờ sau thời gian trả xe\n',1,'2026-05-16 15:28:00');
/*!40000 ALTER TABLE `penalty_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refunds` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint DEFAULT NULL,
  `hours_before` int DEFAULT NULL,
  `refund_percent` int DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `note` text,
  `qr_code` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `admin_proof_image` varchar(255) DEFAULT NULL,
  `public_id_proof` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking_id` (`booking_id`),
  CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds`
--

LOCK TABLES `refunds` WRITE;
/*!40000 ALTER TABLE `refunds` DISABLE KEYS */;
INSERT INTO `refunds` VALUES (1,6,47,100,2000.00,'ko muon thue nua ','Đã hoàn 2000.00 (100%) số tiền sau 47 giờ cọc','http://res.cloudinary.com/dsnp27eeq/image/upload/v1779722220/car_rental/bookings/BK_1B76B349/QrCode.jpg','car_rental/bookings/BK_1B76B349/QrCode','COMPLETED','http://res.cloudinary.com/dsnp27eeq/image/upload/v1779722280/car_rental/bookings/BK_1B76B349/adminProofImage.jpg','car_rental/bookings/BK_1B76B349/adminProofImage','2026-05-25 15:16:59','BK_1B76B349'),(2,25,79,100,2000.00,NULL,'Đã hoàn 2000.00 (100%) số tiền sau 79 giờ cọc','http://res.cloudinary.com/dsnp27eeq/image/upload/v1781882010/car_rental/bookings/BK_FFA9FC88/QrCode.jpg','car_rental/bookings/BK_FFA9FC88/QrCode','COMPLETED','http://res.cloudinary.com/dsnp27eeq/image/upload/v1781884567/car_rental/bookings/BK_FFA9FC88/adminProofImage.jpg','car_rental/bookings/BK_FFA9FC88/adminProofImage','2026-06-19 15:13:30','BK_FFA9FC88'),(3,30,117,100,2000.00,NULL,NULL,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1782529327/car_rental/bookings/BK_FA947633/QrCode.jpg','car_rental/bookings/BK_FA947633/QrCode','PENDING',NULL,NULL,'2026-06-27 03:02:04','BK_FA947633');
/*!40000 ALTER TABLE `refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `car_id` bigint DEFAULT NULL,
  `booking_id` bigint DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reason` varchar(255) DEFAULT NULL,
  `is_hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `car_id` (`car_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  CONSTRAINT `reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,3,6,2,5,'totbn','2026-05-25 13:54:55','vi pham',1),(2,4,7,9,5,'okgbgf','2026-05-30 01:59:41',NULL,0),(3,8,8,19,5,'xe tot\n','2026-06-15 15:53:12',NULL,0),(4,4,8,22,5,'xe tot\n','2026-06-16 15:15:17',NULL,0),(5,4,8,23,4,'xe tot\n','2026-06-24 14:07:49',NULL,0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(3,'STAFF'),(4,'SYSTEM'),(2,'USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `public_id_avatar` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHER') DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'nam08122004@gmail.com','$2a$10$B5I7LnJx1CXCzMVWNRJJ9e2BiChms3jRPYGhylGApH22Hfa3OKbGe','Nguyễn Doãn Nam','http://res.cloudinary.com/dsnp27eeq/image/upload/v1777305375/car_rental/users/Nguy%E1%BB%85n%20Do%C3%A3n%20Nam/avatar.jpg','car_rental/users/Nguyễn Doãn Nam/avatar','2004-12-08','MALE','0936106205','2026-04-26 17:00:00',1,NULL),(2,4,'system@gmail.com','$2a$10$uLeXCYt.yEwYgzGvGd9AFufiwTs.OtJUF0nOM2X42t/hBkveKfWry','Hệ thống',NULL,NULL,NULL,'OTHER',NULL,'2026-04-26 17:00:00',1,NULL),(3,3,'nam8122k4@gmail.com','$2a$10$ukPHNVyICdBtiZeTAXbI5uLYVe3NJY8Z71SVQsAm1bO.gdrQ4TAfO','Nam Nguyễn','https://lh3.googleusercontent.com/a/ACg8ocKLL_fRwtgD6k9I_zz9PtJNywC9P6P5N5uSu7Jq9IoFkUomXg=s96-c',NULL,NULL,NULL,NULL,'2026-05-01 17:00:00',1,NULL),(4,2,'user1@gmail.com','$2a$10$MtrnvJDDASw1oV9TuL3ee.9NdtvSajRskCoZH3BLoA8iHROrKxwPa','userTest','http://res.cloudinary.com/dsnp27eeq/image/upload/v1782053362/car_rental/users/userTest/avatar.avif','car_rental/users/userTest/avatar','2004-01-08','OTHER','0987654321','2026-05-01 17:00:00',1,NULL),(5,2,'nam08122k4@gmail.com','$2a$10$zjITdZU1fP7mr8QLjLJVI.BC5Ic6tDY2HkF3MtZRzVsKpJJXNE2ay','Nam Nguyễn','https://lh3.googleusercontent.com/a/ACg8ocKKB-d1z9UY3Q3puNFhfXnG31u30b9UQM9_KyBZmvYNgdmQNw=s96-c',NULL,NULL,NULL,NULL,'2026-05-02 17:00:00',1,NULL),(6,2,'user3@gmail.com','$2a$10$8aIdfLeomIF1OceyF8rRTeF9/wHImk5BU3NAKvuXJI4ZjSO7W2MXO','user3',NULL,NULL,NULL,NULL,NULL,'2026-05-06 17:00:00',0,'Tài khoản bị khóa do vi phạm tiêu chuẩn'),(7,2,'test12345@gmail.com','$2a$10$xgka5hTdYxFD0Iy3njiSquYguzK/EHZOLwRaIhhnKf8xrswsra7pq','userTest1',NULL,NULL,NULL,NULL,NULL,'2026-05-23 17:00:00',1,NULL),(8,2,'user3123@gmail.com','$2a$10$/D7kqvn77q5ZROanjJLBRewxWoNBxw4TM5aWqzWcw2woHMndIRreK','user32',NULL,NULL,'2000-08-03','MALE','0936106208','2026-05-29 17:00:00',1,NULL),(9,2,'usertest2@gmail.com','$2a$10$/NEu3sHbG7.7FhrY7uFgmuCJbHF7PEqYiuywCNjU/b2HtctslbTiC','userTest2',NULL,NULL,NULL,NULL,NULL,'2026-05-29 17:00:00',1,NULL),(10,3,'staff@gmail.com','$2a$10$pUaN6nt/86jV2noibr.A1eQWwrOyf7w0pkSqbVls4BdJCbOQWGhWm','staff',NULL,NULL,'2000-12-08',NULL,'0987654323','2026-06-11 17:00:00',1,NULL),(11,3,'staff2@gmail.com','$2a$10$XJWmRroAflmVrNVn4Zwg.OC/.oLejYRWFsxtMrBOcsm.v1JL9uUAO','staff2',NULL,NULL,'2001-12-08',NULL,'0987654322','2026-06-11 17:00:00',1,NULL),(12,2,'nvtest123@gmail.com','$2a$10$p9rjtkdI7Pji8GW/rXLNG.FhOeBUPfu90QeJB4eYlshSSitnEcvqG','Nguyễn Văn Test',NULL,NULL,NULL,NULL,NULL,'2026-06-15 17:00:00',1,NULL),(13,2,'ndn08122004@gmail.com','$2a$10$DNou76R/8KtYYcelZEo0E.Q5Dagtk1mi8ajvKOSLKtUm/ypEPajne','Nam Nguyễn','https://lh3.googleusercontent.com/a/ACg8ocL7ZEZvkuZI4BzYEjsTqfoy1rlzbvKIxUXCKleOnRMxidEyeA=s96-c',NULL,NULL,NULL,NULL,'2026-06-15 17:00:00',1,NULL),(14,2,'nvtest1234@gmail.com','$2a$10$pO5POkEKl6gBdwBS64ptk.GHKA0sywbGpSWIl7MF/Djmm4sJEB0jy','Nguyễn Văn Test2',NULL,NULL,NULL,NULL,NULL,'2026-06-15 17:00:00',1,NULL),(15,2,'userTest0@gmail.com','$2a$10$hOrPBVu00m1clxPnJ8t5Le7XvKKlwQyHyhnSYQDLxNWWJeUl6EKWe','UserTestKLTT',NULL,NULL,NULL,NULL,NULL,'2026-06-26 17:00:00',1,NULL),(16,1,'quanganhdang2004@gmail.com','$2a$10$lY27CihvChA2ze0QjRrnfud1MCtjYbCnXOtqNFaUAsWO30xU2zXNS','Quang Anh Đặng','http://res.cloudinary.com/dsnp27eeq/image/upload/v1793587284/car_rental/users/Quang%20Anh%20%C4%90%E1%BA%B7ng/avatar.jpg','car_rental/users/Quang Anh Đặng/avatar','2004-06-23','MALE','0987654321','2026-11-01 17:00:00',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `cccd_front_url` varchar(255) DEFAULT NULL,
  `cccd_back_url` varchar(255) DEFAULT NULL,
  `license_image_url` varchar(255) DEFAULT NULL,
  `public_id_cccd_front` varchar(255) DEFAULT NULL,
  `public_id_cccd_back` varchar(255) DEFAULT NULL,
  `public_id_license` varchar(255) DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `license_expired_date` date DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','UNVERIFIED') DEFAULT 'UNVERIFIED',
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `license_status` enum('VALID','EXPIRING_SOON','EXPIRED','NULL') DEFAULT 'NULL',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifications`
--

LOCK TABLES `verifications` WRITE;
/*!40000 ALTER TABLE `verifications` DISABLE KEYS */;
INSERT INTO `verifications` VALUES (1,1,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1777389924/car_rental/users/Nguy%E1%BB%85n%20Do%C3%A3n%20Nam/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1777389929/car_rental/users/Nguy%E1%BB%85n%20Do%C3%A3n%20Nam/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1777386192/car_rental/users/Nguy%E1%BB%85n%20Do%C3%A3n%20Nam/driver_license.jpg','car_rental/users/Nguyễn Doãn Nam/cccd_front','car_rental/users/Nguyễn Doãn Nam/cccd_back','car_rental/users/Nguyễn Doãn Nam/driver_license','270231006182','2050-01-01','APPROVED','','2026-04-27 17:00:00','VALID'),(3,4,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1778084593/car_rental/users/user1/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1778084595/car_rental/users/user1/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1778084598/car_rental/users/user1/driver_license.jpg','car_rental/users/user1/cccd_front','car_rental/users/user1/cccd_back','car_rental/users/user1/driver_license','270231006190','2050-01-01','APPROVED','','2026-05-05 17:00:00','VALID'),(4,3,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1778858303/car_rental/users/Nam%20Nguy%E1%BB%85n/cccd_front.png','http://res.cloudinary.com/dsnp27eeq/image/upload/v1778858306/car_rental/users/Nam%20Nguy%E1%BB%85n/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1778858308/car_rental/users/Nam%20Nguy%E1%BB%85n/driver_license.avif','car_rental/users/Nam Nguyễn/cccd_front','car_rental/users/Nam Nguyễn/cccd_back','car_rental/users/Nam Nguyễn/driver_license','270231006196','2050-01-01','APPROVED','','2026-05-14 17:00:00','VALID'),(5,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'UNVERIFIED',NULL,NULL,'NULL'),(6,6,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1778118617/car_rental/users/user3/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1778118621/car_rental/users/user3/cccd_back.avif','http://res.cloudinary.com/dsnp27eeq/image/upload/v1778118627/car_rental/users/user3/driver_license.jpg','car_rental/users/user3/cccd_front','car_rental/users/user3/cccd_back','car_rental/users/user3/driver_license','270231006888','2050-01-01','APPROVED','','2026-05-06 17:00:00','VALID'),(7,7,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1779630807/car_rental/users/userTest1/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1779630810/car_rental/users/userTest1/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1779630812/car_rental/users/userTest1/driver_license.jpg','car_rental/users/userTest1/cccd_front','car_rental/users/userTest1/cccd_back','car_rental/users/userTest1/driver_license','270231006167','2050-01-01','APPROVED','','2026-05-23 17:00:00','VALID'),(8,8,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1780105485/car_rental/users/user3/cccd_front.avif','http://res.cloudinary.com/dsnp27eeq/image/upload/v1780105487/car_rental/users/user3/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1780105490/car_rental/users/user3/driver_license.jpg','car_rental/users/user3/cccd_front','car_rental/users/user3/cccd_back','car_rental/users/user3/driver_license','270231006182','2050-01-01','APPROVED','','2026-05-29 17:00:00','VALID'),(9,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'UNVERIFIED',NULL,NULL,'NULL'),(10,12,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1781583249/car_rental/users/Nguy%E1%BB%85n%20V%C4%83n%20Test/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1781583280/car_rental/users/Nguy%E1%BB%85n%20V%C4%83n%20Test/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1781583283/car_rental/users/Nguy%E1%BB%85n%20V%C4%83n%20Test/driver_license.jpg','car_rental/users/Nguyễn Văn Test/cccd_front','car_rental/users/Nguyễn Văn Test/cccd_back','car_rental/users/Nguyễn Văn Test/driver_license','270231006196','2050-01-01','APPROVED','','2026-06-15 17:00:00','VALID'),(11,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'UNVERIFIED',NULL,NULL,'NULL'),(12,14,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1782141728/car_rental/users/Nguy%E1%BB%85n%20V%C4%83n%20Test2/cccd_front.avif','http://res.cloudinary.com/dsnp27eeq/image/upload/v1782141732/car_rental/users/Nguy%E1%BB%85n%20V%C4%83n%20Test2/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1782141735/car_rental/users/Nguy%E1%BB%85n%20V%C4%83n%20Test2/driver_license.jpg','car_rental/users/Nguyễn Văn Test2/cccd_front','car_rental/users/Nguyễn Văn Test2/cccd_back','car_rental/users/Nguyễn Văn Test2/driver_license','270231006182','2026-06-24','APPROVED','Giấy phép lái xe đã hết hạn','2026-06-21 17:00:00','VALID'),(13,15,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1782528185/car_rental/users/UserTestKLTT/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1782528189/car_rental/users/UserTestKLTT/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1782528192/car_rental/users/UserTestKLTT/driver_license.jpg','car_rental/users/UserTestKLTT/cccd_front','car_rental/users/UserTestKLTT/cccd_back','car_rental/users/UserTestKLTT/driver_license','270231006182','2050-01-01','APPROVED','','2026-06-26 17:00:00','VALID'),(14,16,'http://res.cloudinary.com/dsnp27eeq/image/upload/v1793587161/car_rental/users/Quang%20Anh%20%C4%90%E1%BA%B7ng/cccd_front.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1793587163/car_rental/users/Quang%20Anh%20%C4%90%E1%BA%B7ng/cccd_back.jpg','http://res.cloudinary.com/dsnp27eeq/image/upload/v1793587165/car_rental/users/Quang%20Anh%20%C4%90%E1%BA%B7ng/driver_license.png','car_rental/users/Quang Anh Đặng/cccd_front','car_rental/users/Quang Anh Đặng/cccd_back','car_rental/users/Quang Anh Đặng/driver_license','123456789011','2030-07-21','APPROVED','','2026-11-01 17:00:00','VALID');
/*!40000 ALTER TABLE `verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'car_rental'
--

--
-- Dumping routines for database 'car_rental'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-02  9:50:29
