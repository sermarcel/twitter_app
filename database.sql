-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: twitter
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add user',6,'add_myuser'),(17,'Can change user',6,'change_myuser'),(18,'Can delete user',6,'delete_myuser'),(22,'Can add tweet',8,'add_tweet'),(23,'Can change tweet',8,'change_tweet'),(24,'Can delete tweet',8,'delete_tweet'),(25,'Can add message',9,'add_message'),(26,'Can change message',9,'change_message'),(27,'Can delete message',9,'delete_message');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_polish_ci,
  `object_repr` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_polish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_twitter_app_myuser_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_twitter_app_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `twitter_app_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-01-13 12:18:28.572115','2','user1',1,'[{\"added\": {}}]',6,1),(2,'2017-01-13 12:19:27.522417','2','user1',2,'[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1),(3,'2017-01-13 13:09:38.795595','2','user1',2,'[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1),(4,'2017-01-13 14:13:47.129657','1','Tweet by sermarcel @ 2017-01-13 14:13:33:\"Pierwszy tweet...\"',1,'[{\"added\": {}}]',8,1),(5,'2017-01-13 14:46:15.100615','2','Tweet by user1 @ 2017-01-13 14:45:57:\"drugi tweet...\"',1,'[{\"added\": {}}]',8,1),(6,'2017-01-13 16:51:42.098319','1','sermarcel',2,'[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(9,'twitter_app','message'),(6,'twitter_app','myuser'),(8,'twitter_app','tweet');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-01-13 11:34:18.039363'),(2,'contenttypes','0002_remove_content_type_name','2017-01-13 11:34:19.012069'),(3,'auth','0001_initial','2017-01-13 11:34:22.704523'),(4,'auth','0002_alter_permission_name_max_length','2017-01-13 11:34:23.319435'),(5,'auth','0003_alter_user_email_max_length','2017-01-13 11:34:23.383328'),(6,'auth','0004_alter_user_username_opts','2017-01-13 11:34:23.454292'),(7,'auth','0005_alter_user_last_login_null','2017-01-13 11:34:23.519893'),(8,'auth','0006_require_contenttypes_0002','2017-01-13 11:34:23.553419'),(9,'auth','0007_alter_validators_add_error_messages','2017-01-13 11:34:23.619605'),(10,'auth','0008_alter_user_username_max_length','2017-01-13 11:34:23.677865'),(11,'twitter_app','0001_initial','2017-01-13 11:34:27.443474'),(12,'admin','0001_initial','2017-01-13 11:34:28.932046'),(13,'admin','0002_logentry_remove_auto_add','2017-01-13 11:34:29.085672'),(14,'sessions','0001_initial','2017-01-13 11:34:29.605818'),(15,'twitter_app','0002_auto_20170113_1213','2017-01-13 12:13:32.768668'),(16,'twitter_app','0003_auto_20170113_1314','2017-01-13 13:14:56.852306');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_polish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('el1rj94fwdncxr8xnqhydbhkm69h59km','ZjA1OWU0MTFjZTdkOTRkMmJhOTFlZTIwOGE0NTNjZTIyMzY1ZmU4ODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2YzYyZWRlM2I1Yjg1ZjNhZWQ4YzFjM2U1ZmUxNTg5Y2Q0ZmEyYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 14:12:13.317559');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_app_message`
--

DROP TABLE IF EXISTS `twitter_app_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_app_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_polish_ci NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_app_messag_receiver_id_250fb237_fk_twitter_app_myuser_id` (`receiver_id`),
  KEY `twitter_app_message_sender_id_e53ece5e_fk_twitter_app_myuser_id` (`sender_id`),
  CONSTRAINT `twitter_app_messag_receiver_id_250fb237_fk_twitter_app_myuser_id` FOREIGN KEY (`receiver_id`) REFERENCES `twitter_app_myuser` (`id`),
  CONSTRAINT `twitter_app_message_sender_id_e53ece5e_fk_twitter_app_myuser_id` FOREIGN KEY (`sender_id`) REFERENCES `twitter_app_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_app_message`
--

LOCK TABLES `twitter_app_message` WRITE;
/*!40000 ALTER TABLE `twitter_app_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_app_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_app_myuser`
--

DROP TABLE IF EXISTS `twitter_app_myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_app_myuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_polish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_polish_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_app_myuser`
--

LOCK TABLES `twitter_app_myuser` WRITE;
/*!40000 ALTER TABLE `twitter_app_myuser` DISABLE KEYS */;
INSERT INTO `twitter_app_myuser` VALUES (1,'pbkdf2_sha256$30000$XfznNEY2atco$1HrlgjRLLalYBAIfiESoj3ftPpohPBbaX+5E8OmX2Io=','2017-01-13 14:12:13.000000',1,'sermarcel','','','marcin.brzescianski@gmail.com',1,1,'2017-01-13 11:47:46.000000','static/images/myAvatar_dLAF098.png'),(2,'adminadmin',NULL,0,'user1','','','',0,1,'2017-01-13 12:16:57.000000','static/images/myAvatar_WKWaw8a.png');
/*!40000 ALTER TABLE `twitter_app_myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_app_myuser_groups`
--

DROP TABLE IF EXISTS `twitter_app_myuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_app_myuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `twitter_app_myuser_groups_myuser_id_1e62345e_uniq` (`myuser_id`,`group_id`),
  KEY `twitter_app_myuser_groups_group_id_dcc0c1c1_fk_auth_group_id` (`group_id`),
  CONSTRAINT `twitter_app_myuser_g_myuser_id_b6e8be24_fk_twitter_app_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `twitter_app_myuser` (`id`),
  CONSTRAINT `twitter_app_myuser_groups_group_id_dcc0c1c1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_app_myuser_groups`
--

LOCK TABLES `twitter_app_myuser_groups` WRITE;
/*!40000 ALTER TABLE `twitter_app_myuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_app_myuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_app_myuser_user_permissions`
--

DROP TABLE IF EXISTS `twitter_app_myuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_app_myuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `twitter_app_myuser_user_permissions_myuser_id_1d1bbd84_uniq` (`myuser_id`,`permission_id`),
  KEY `twitter_app_myuser__permission_id_224c1efd_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `twitter_app_myuser__permission_id_224c1efd_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `twitter_app_myuser_u_myuser_id_476f12f5_fk_twitter_app_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `twitter_app_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_app_myuser_user_permissions`
--

LOCK TABLES `twitter_app_myuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `twitter_app_myuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_app_myuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_app_tweet`
--

DROP TABLE IF EXISTS `twitter_app_tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_app_tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_polish_ci NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_app_tweet_e8701ad4` (`user_id`),
  CONSTRAINT `twitter_app_tweet_user_id_7b3689d9_fk_twitter_app_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `twitter_app_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_app_tweet`
--

LOCK TABLES `twitter_app_tweet` WRITE;
/*!40000 ALTER TABLE `twitter_app_tweet` DISABLE KEYS */;
INSERT INTO `twitter_app_tweet` VALUES (1,'Pierwszy tweet','2017-01-13 14:13:33.000000',1),(2,'drugi tweet','2017-01-13 14:45:57.000000',2),(3,'tweet 3','2017-01-13 15:37:09.000000',1),(4,'tweet 4','2017-01-13 16:50:44.000000',1);
/*!40000 ALTER TABLE `twitter_app_tweet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-31 22:31:40
