
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tecvemar` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tecvemar`;

--
-- Table structure for table `b_suscribete`
--

DROP TABLE IF EXISTS `b_suscribete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_suscribete` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `enviarEmail` varchar(10) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` varchar(250) NOT NULL,
  `ip` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_suscribete`
--

LOCK TABLES `b_suscribete` WRITE;
/*!40000 ALTER TABLE `b_suscribete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_suscribete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_assets`
--

DROP TABLE IF EXISTS `tecvemar_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_assets`
--

LOCK TABLES `tecvemar_assets` WRITE;
/*!40000 ALTER TABLE `tecvemar_assets` DISABLE KEYS */;
INSERT INTO `tecvemar_assets` VALUES (1,0,0,109,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,26,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,27,28,1,'com_cpanel','com_cpanel','{}'),(10,1,29,30,1,'com_installer','com_installer','{\"core.admin\":[],\"core.options\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,31,32,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,33,34,1,'com_login','com_login','{}'),(13,1,35,36,1,'com_mailto','com_mailto','{}'),(14,1,37,38,1,'com_massmail','com_massmail','{}'),(15,1,39,40,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,41,42,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,43,44,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,45,76,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,77,80,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,81,82,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,83,84,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,85,86,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,87,88,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,89,92,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,93,94,1,'com_wrapper','com_wrapper','{}'),(27,8,18,25,2,'com_content.category.2','Noticias','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,78,79,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,90,91,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,95,96,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,97,98,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,99,100,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,101,102,1,'com_contenthistory','com_contenthistory','{}'),(37,1,103,104,1,'com_ajax','com_ajax','{}'),(38,1,105,106,1,'com_postinstall','com_postinstall','{}'),(39,18,46,47,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,48,49,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,50,51,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,52,53,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,54,55,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,56,57,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,58,59,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,60,61,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,62,63,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,64,65,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,66,67,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,68,69,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,70,71,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,72,73,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,74,75,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,27,19,20,3,'com_content.article.1','El granito color de la naturaleza','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,27,21,22,3,'com_content.article.2','Guarenas cuna del talento deportivo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,27,23,24,3,'com_content.article.3','Industria granitera rumbo al autosustento.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,1,107,108,1,'com_jshopping','jshopping','{}');
/*!40000 ALTER TABLE `tecvemar_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_associations`
--

DROP TABLE IF EXISTS `tecvemar_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_associations`
--

LOCK TABLES `tecvemar_associations` WRITE;
/*!40000 ALTER TABLE `tecvemar_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_banner_clients`
--

DROP TABLE IF EXISTS `tecvemar_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_banner_clients`
--

LOCK TABLES `tecvemar_banner_clients` WRITE;
/*!40000 ALTER TABLE `tecvemar_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_banner_tracks`
--

DROP TABLE IF EXISTS `tecvemar_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_banner_tracks`
--

LOCK TABLES `tecvemar_banner_tracks` WRITE;
/*!40000 ALTER TABLE `tecvemar_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_banners`
--

DROP TABLE IF EXISTS `tecvemar_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_banners`
--

LOCK TABLES `tecvemar_banners` WRITE;
/*!40000 ALTER TABLE `tecvemar_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_categories`
--

DROP TABLE IF EXISTS `tecvemar_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_categories`
--

LOCK TABLES `tecvemar_categories` WRITE;
/*!40000 ALTER TABLE `tecvemar_categories` DISABLE KEYS */;
INSERT INTO `tecvemar_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'noticias','com_content','Noticias','noticias','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',733,'2016-08-24 13:26:35',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `tecvemar_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_contact_details`
--

DROP TABLE IF EXISTS `tecvemar_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_contact_details`
--

LOCK TABLES `tecvemar_contact_details` WRITE;
/*!40000 ALTER TABLE `tecvemar_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content`
--

DROP TABLE IF EXISTS `tecvemar_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content`
--

LOCK TABLES `tecvemar_content` WRITE;
/*!40000 ALTER TABLE `tecvemar_content` DISABLE KEYS */;
INSERT INTO `tecvemar_content` VALUES (1,54,'El granito color de la naturaleza','el-granito-color-de-la-naturaleza','<p>El estado Bolívar históricamente se ha caracterizado por la riqueza de los minerales que como una obra de la naturaleza se acumuló en su vasto territorio, la explotación de las extensiones de granito se convirtió en una alternativa de aprovechamiento de los recursos de sus suelos. La piedra se convirtió rápidamente en elementos preferidos para la decoración, revestimientos de pisos, paredes, topes de cocina, materia prima en esculturas, monolitos y una grama de usos que no dejan de sorprender por su versatilidad. Escenarios emblemáticos que albergan los más significativos momentos de la historia como plazas, templos, teatros y edificaciones han sido recubiertos por losas de granito en su variedad de vistosos y atractivos colores que se reunieron por actividad volcánica. Las empresas Granitos del Orinoco filial de Técnica Marmolera Venezolana CA (Tecvemar), se han unido para invertir en canteras bolivarenses, con la intención de popularizar los materiales extraídos en Venezuela; así como para comercializarlos en los mercados internacionales. Afortunadamente, la experiencia ha sido tan satisfactoria y receptiva en los mercados criollos que las láminas de granito han superado etapas y cruzaron fronteras. El desarrollo de la industria de la mano de las novedades tecnológicas tocó el procesamiento del granito y lo cambió.</p>\r\n<p> </p>\r\n<p>Vanguardia del proceso de resinado de láminas</p>\r\n<p>Tecvemar se integró a los estándares mundiales instalando una máquina, única en Venezuela, con la que se aporta una capa de resina como plus a las láminas, este proceso beneficia el brillo del material, mayor salubridad y sellado del material. Este nivel de calidad es accesible tanto en el mercado venezolano como en el mercado internacional.</p>\r\n<p>Variedad de colores</p>\r\n<p>El tono más reciente y apreciado en la actualidad es el Marrón Imataca, extraído en la cantera Lizardero III, una lámina de tonos tierra con granos de tamaño fino y mediano compactados. Uno de los más apreciados y populares. Está el color Gris Leona, que es uno de los más populares que se obtiene de la cantera La Leona, que ofrece colores grises en variedad de tonalidades compactados, láminas que aportan elegancia en los espacios en los que se aplican. También hallamos el color Gris Guayana, con tonos grises claros brillantes que se encuentra en la cantera Rancho Caroní. La variedad y misterio en la naturaleza de la región del estado bolívar se encuentran tonos mezclados como Multicolor Maracay que se luce en una variedad de grises ahumados claros con exóticos parches negros, de la cantera El Buitre. Asimismo, tenemos el tono denominado Rojo Guayana, una lámina que resulta emblemática para reconocer edificaciones iconos de Venezuela como espacios de esparcimiento y recreación además de redes bancarias y cadenas hoteleras de renombre internacional. Existen otros tonos que se han venido popularizando en el mercado nacional como Gris Orinokia, Verde Curiapo, Multicolor Orinoco, Multicolor Vinotinto y más que desde ya pueden apreciarlos en el sitio web www.tecvemar.com visitanos.</p>','',1,2,'2016-08-24 13:31:05',733,'','2016-08-24 13:31:05',0,0,'0000-00-00 00:00:00','2016-08-24 13:31:05','0000-00-00 00:00:00','{\"image_intro\":\"images\\/granitos.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,55,'Guarenas cuna del talento deportivo','guarenas-cuna-del-talento-deportivo','<p>El municipio Ambrosio Plaza del estado Miranda se vigoriza como cuna de grandes talentos deportivos en las disciplinas de baloncesto, mini baloncesto y en diversos escenarios del atletismo.</p>\r\n<p> </p>\r\n<p>Baloncesto abriga record casi perfecto de ganados</p>\r\n<p>Los integrantes del equipo local, Industriales de Guarenas viene cumpliendo un buen trabajo y comienza los octavos de final en la tercera división de la Liga Nacional de Baloncesto (LNB), con un record de 14 victorias en 16 encuentros. Diego Montes De Oca, Director Técnico de los Industriales en poco tiempo ha logrado que en cada partido exhiban técnica de juego, confianza, dominio del balón y estrategia de equipo. Evidenciando su poder ante Unión Ferrocarril del Tuy, Caciques de San Sebastián, Bushido de Los Teques y Cumanagotos de Cumaná; con este último equipo registraron una victoria y una derrota durante el fin de semana en el Polideportivo Los Naranjos.</p>\r\n<p>Reavivan liga de Mini Baloncesto regional</p>\r\n<p>La Fundación Deportiva Mirandina (Fundamir) del municipio Plaza, recorre la región a propósito de la ejecución de la II Edición de la Liga Regional Femenina Mirandina de baloncesto, que desde el pasado 3 de octubre, marca el renacimiento de la organización con la celebración de contiendas ante sus similares de cinco municipios de la entidad (Plaza, Páez, Simón Bolívar, Lander, Paz Castillo y Sucre), encuentros que se mantendrán hasta el próximo 13 de diciembre, en las categorías Infantil y Juvenil Especial. Ollarvides Marshall, presidente de Fundamir informó que la Liga Regional Femenina Mirandina, permaneció inactiva por falta de presupuesto desde el año 2006, y el resurgimiento se debe a CorpoMiranda y a la empresa granitera Técnica Marmolera Venezolana (Tecvemar). Según Marshall la reactivación de la Liga es una motivación a la práctica y a la exigencia en la disciplina; pues de acuerdo a su consideración, la competencia entre ligas incentiva la preparación en momentos adicionales a los requeridos de cara a los campeonatos nacionales, lo que beneficia la formación del atleta y favorece directamente al medallero de Miranda, que como equipo en baloncesto femenino no obtiene medalla de oro desde el año 1994. De igual manera, el entrenador expresó “es un orgullo hacer un triángulo con la empresa privada Tecvemar, el gobierno con CorpoMiranda y la Fundación Deportiva Mirandina como pueblo organizado”. Y agregó que buscan garantizar el éxito y bienestar social de la comunidad, en forma mancomunada.</p>\r\n<p>Atletismo retoma senda de triunfos</p>\r\n<p>Jóvenes en edades de 10 a 13 años oriundos de Miranda subieron al podio en el estadio Brigido Iriarte de El Paraíso, en Caracas como resultado de una excelente participación en el Campeonato Nacional Preinfantil A y B de Atletismo. Fabián Gómez, presidente de la Fundación Gacelas, detalló que de 36 integrantes de la selección de Miranda, 17 pertenecen a Guarenas, quienes se lucieron en el encuentro que se mantuvo durante dos días en el estadio capitalino. Gómez enfatizó que los competidores de Guarenas “retomaron la senda de los triunfos, e hicieron historia en el atletismo mirandino”. Asimismo indicó que el aporte logístico de Tecvemar fue lo que garantizó su participación en el encuentro de atletismo.</p>\r\n<p>Respaldo al deporte es la vía</p>\r\n<p>Esta gama de buenos resultados abonados a los grandes atletas guareneros confirman que la activación física y la promoción del deporte siguen siendo fundamentales entre los elementos que elevan el valor de una comunidad. En este sentido, la empresa Técnica Marmolera Venezolana, CA. (Tecvemar), se enorgullece de los frutos que vienen dando las organizaciones deportivas del municipio Ambrosio Plaza, en el estado Miranda y especialmente con la Fundación Gacelas, la Fundación Deportiva Mirandina y la selección de los Industriales de Guarenas con quienes ha mantenido un contacto directo y ha establecido sólidos respaldos vía RSE. </p>','',1,2,'2016-08-24 13:32:02',733,'','2016-08-24 13:32:02',0,0,'0000-00-00 00:00:00','2016-08-24 13:32:02','0000-00-00 00:00:00','{\"image_intro\":\"images\\/marmolera_deporte.png\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,56,'Industria granitera rumbo al autosustento.','industria-granitera-rumbo-al-autosustento','<p>El granito presente en el suelo guayanés no sólo forma parte de las bondades que posee Venezuela, sino que en este tiempo representa el renacimiento de las exportaciones alternativas al petróleo que impulsan la economía nacional. Quienes forman parte de las empresas Granitos del Orinoco y Técnica Marmolera Venezolana (Tecvemar), tienen años dedicados en dar a conocer la belleza y calidad de los materiales que se extraen en la Región Guayana, como en popularizar los materiales en el mercado nacional e internacional. En este sentido, el programa Venezuela Exporta del Banco de Comercio Exterior (Bancoex), ha tomado una posición estratégica para insertar el granito criollo en los mercados de la Alianza Bolivariana para las Américas, adicionalmente ha dotado a los industriales con la base para ingresar a las naciones en las que se han levantado potenciales socios comerciales.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Exportación beneficia producción nacional</p>\r\n<p>El bloque de granito que se extrae con el esfuerzo de la mano de obra bolivarense, ha llegado a las más reconocidas exhibiciones comerciales de Colombia, Brasil, Bolivia, Ecuador, Nicaragua, Perú, Trinidad y Tobago, España y Rusia. Cada muestra ha sido una semilla que se planta y en muchos casos ha rendido frutos pues en lo que va del año 2015 se han materializado en negociaciones más de 5 mil metros cuadrados de materiales por ejemplo en: Ecuador Bolivia, Colombia México, Nicaragua y Costa Rica en los que han tenido gran receptividad y acogida que se demuestran en el establecimiento de lazos comerciales caracterizados por la solicitud de nuevos pedidos de material. Estos ingresos a los mercados vecinos, con potencial para establecer relaciones económicas pueden ascender a 600 millones de habitantes en Latinoamérica despertaron la necesidad de preparar la industria granitera para satisfacer la demanda nacional y continuar cruzando fronteras. Se espera en la actualidad, la culminación de procedimientos regulares para iniciar la expansión de la capacidad productiva, en pocos meses se llevaría a cabo el relanzamiento de las filiales Granitos del Orinoco y Tecvemar repotenciadas, maximizando sus capacidad productiva a más de 300 mil metros cuadrados por año; cantidad que triplica la producción promedio de los últimos años. El proyecto de construcción se encuentra en fase inicial completando el 10% de avance, de lo que una vez constituyó un anhelo y con el apoyo de Bancoex representa una realidad que toma forma en el kilómetro 70 de la carretera vieja Ciudad Bolívar – Gurí; específicamente en el Fundo La Leona. Es de hacer notar que las exportaciones impactan directamente en la comercialización nacional, pues el ingreso de divisas permite bajar los costos de producción; adicionalmente hace que la industria se abra a nuevas perspectivas buscando tener una empresa autosustentada en relación a la generación de divisas y más competitiva internacionalmente.</p>','',1,2,'2016-08-24 13:32:49',733,'','2016-08-24 13:32:49',0,733,'2016-08-24 19:26:24','2016-08-24 13:32:49','0000-00-00 00:00:00','{\"image_intro\":\"images\\/bussiness-unit.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `tecvemar_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content_frontpage`
--

DROP TABLE IF EXISTS `tecvemar_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content_frontpage`
--

LOCK TABLES `tecvemar_content_frontpage` WRITE;
/*!40000 ALTER TABLE `tecvemar_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content_rating`
--

DROP TABLE IF EXISTS `tecvemar_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content_rating`
--

LOCK TABLES `tecvemar_content_rating` WRITE;
/*!40000 ALTER TABLE `tecvemar_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content_types`
--

DROP TABLE IF EXISTS `tecvemar_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content_types`
--

LOCK TABLES `tecvemar_content_types` WRITE;
/*!40000 ALTER TABLE `tecvemar_content_types` DISABLE KEYS */;
INSERT INTO `tecvemar_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `tecvemar_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_contentitem_tag_map`
--

DROP TABLE IF EXISTS `tecvemar_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_contentitem_tag_map`
--

LOCK TABLES `tecvemar_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `tecvemar_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_core_log_searches`
--

DROP TABLE IF EXISTS `tecvemar_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_core_log_searches`
--

LOCK TABLES `tecvemar_core_log_searches` WRITE;
/*!40000 ALTER TABLE `tecvemar_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_extensions`
--

DROP TABLE IF EXISTS `tecvemar_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_extensions`
--

LOCK TABLES `tecvemar_extensions` WRITE;
/*!40000 ALTER TABLE `tecvemar_extensions` DISABLE KEYS */;
INSERT INTO `tecvemar_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"0\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"es-ES\",\"site\":\"es-ES\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"96d202801a7a698c523b37eb69a52d43\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.6\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"December 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'joomla_3.4.8','language','es-ES','',0,1,0,0,'{\"name\":\"joomla_3.4.8\",\"type\":\"language\",\"creationDate\":\"14\\/03\\/2016\",\"author\":\"ComunidadJoomla\",\"copyright\":\"Copyright (C) 2005 - 2016 comunididadjomla.org. All rights reserved.r; see LICENSE.txt\",\"authorEmail\":\"jcomunidad@gmail.com\",\"authorUrl\":\"http:\\/\\/comunidadjoomla.org\",\"version\":\"3.4.8.1\",\"description\":\"es-ESsite language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'joomla_3.4.8','language','es-ES','',1,1,0,0,'{\"name\":\"joomla_3.4.8\",\"type\":\"language\",\"creationDate\":\"14\\/03\\/2016\",\"author\":\"ComunidadJoomla\",\"copyright\":\"Copyright (C) 2005 - 2016 comunididadjomla.org. All rights reserved.r; see LICENSE.txt\",\"authorEmail\":\"jcomunidad@gmail.com\",\"authorUrl\":\"http:\\/\\/comunidadjoomla.org\",\"version\":\"3.4.8.1\",\"description\":\"es-ESsite language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'joomla_3.4.8','package','pkg_es-ES','',0,1,1,0,'{\"name\":\"joomla_3.4.8\",\"type\":\"package\",\"creationDate\":\"14\\/03\\/2016\",\"author\":\"ComunidadJoomla\",\"copyright\":\"Copyright (C) 2005 - 2016 comunididadjomla.org. All rights reserved.r; see LICENSE.txt\",\"authorEmail\":\"jcomunidad@gmail.com\",\"authorUrl\":\"http:\\/\\/comunidadjoomla.org\",\"version\":\"3.4.8.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 3.4.8.<\\/h2><p><\\/p><p>Please report any bugs or issues at the Comunidad Joomla! <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Translation forum<\\/a><\\/p><p><\\/p><p>Translated by: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">The spanish translation team of Comunidad Joomla!<\\/a><\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 3.4.8 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestro <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Foro de traducciones<\\/a><\\/p><p><\\/p><p>Traducci\\u00f3n: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">El equipo de traducci\\u00f3n de Comunidad Joomla!<\\/a><\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'jshopping','component','com_jshopping','',1,1,0,0,'{\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"10.08.2014\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.6.1\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\",\"filename\":\"jshopping\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `tecvemar_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_filters`
--

DROP TABLE IF EXISTS `tecvemar_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_filters`
--

LOCK TABLES `tecvemar_finder_filters` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links`
--

DROP TABLE IF EXISTS `tecvemar_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links`
--

LOCK TABLES `tecvemar_finder_links` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms0`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms0`
--

LOCK TABLES `tecvemar_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms1`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms1`
--

LOCK TABLES `tecvemar_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms2`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms2`
--

LOCK TABLES `tecvemar_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms3`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms3`
--

LOCK TABLES `tecvemar_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms4`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms4`
--

LOCK TABLES `tecvemar_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms5`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms5`
--

LOCK TABLES `tecvemar_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms6`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms6`
--

LOCK TABLES `tecvemar_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms7`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms7`
--

LOCK TABLES `tecvemar_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms8`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms8`
--

LOCK TABLES `tecvemar_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms9`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms9`
--

LOCK TABLES `tecvemar_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsa`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsa`
--

LOCK TABLES `tecvemar_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsb`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsb`
--

LOCK TABLES `tecvemar_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsc`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsc`
--

LOCK TABLES `tecvemar_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsd`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsd`
--

LOCK TABLES `tecvemar_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termse`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termse`
--

LOCK TABLES `tecvemar_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsf`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsf`
--

LOCK TABLES `tecvemar_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_taxonomy`
--

DROP TABLE IF EXISTS `tecvemar_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_taxonomy`
--

LOCK TABLES `tecvemar_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `tecvemar_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `tecvemar_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_taxonomy_map`
--

LOCK TABLES `tecvemar_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_terms`
--

DROP TABLE IF EXISTS `tecvemar_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_terms`
--

LOCK TABLES `tecvemar_finder_terms` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_terms_common`
--

DROP TABLE IF EXISTS `tecvemar_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_terms_common`
--

LOCK TABLES `tecvemar_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_terms_common` DISABLE KEYS */;
INSERT INTO `tecvemar_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `tecvemar_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_tokens`
--

DROP TABLE IF EXISTS `tecvemar_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_tokens`
--

LOCK TABLES `tecvemar_finder_tokens` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `tecvemar_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_tokens_aggregate`
--

LOCK TABLES `tecvemar_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_types`
--

DROP TABLE IF EXISTS `tecvemar_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_types`
--

LOCK TABLES `tecvemar_finder_types` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_addons`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_addons`
--

LOCK TABLES `tecvemar_jshopping_addons` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_ordering` int(11) NOT NULL,
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_attr`
--

LOCK TABLES `tecvemar_jshopping_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_attr_values`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_attr_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_attr_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_attr_values`
--

LOCK TABLES `tecvemar_jshopping_attr_values` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_cart_temp`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_cart_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_cart_temp`
--

LOCK TABLES `tecvemar_jshopping_cart_temp` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_cart_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_cart_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_categories`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT NULL,
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `alias_es-ES` varchar(255) NOT NULL,
  `short_description_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  `meta_title_es-ES` varchar(255) NOT NULL,
  `meta_description_es-ES` text NOT NULL,
  `meta_keyword_es-ES` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_categories`
--

LOCK TABLES `tecvemar_jshopping_categories` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_categories` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_categories` VALUES (1,NULL,0,1,1,NULL,1,'2016-08-24 13:48:59',12,3,1,'','','','','','','','Clasicos','','','','','',''),(2,NULL,0,1,1,NULL,3,'2016-08-24 13:49:14',12,3,1,'','','','','','','','Exoticos','','','','','',''),(3,NULL,0,1,1,NULL,4,'2016-08-24 13:49:36',12,3,1,'','','','','','','','Internacional','','','','','','');
/*!40000 ALTER TABLE `tecvemar_jshopping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config` (
  `id` tinyint(1) NOT NULL,
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `image_product_original_width` int(4) NOT NULL,
  `image_product_original_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config`
--

LOCK TABLES `tecvemar_jshopping_config` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_config` VALUES (1,12,3,1,160,0,780,0,1600,0,0,0,320,240,'es-ES','es-ES',2,2,'.','',2,1,1,1,'%storename %address %city %zip','%d.%m.%Y','info@tecvemar.com',1,1,0,10,-1.00,0,0,'208:65:208:30',1,0,0,1,1,0,0,0,1,1,1,1,0,0,'ba1d64afc67c3428b62cec4cf2bf54fa',0,0,0,0,0,0,0,0,0,'',0,0,0,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}','',1,0,0,0,0,3,1,1,0,0,0,'','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'a:2:{s:3:\"tax\";s:1:\"1\";s:5:\"stock\";s:1:\"1\";}');
/*!40000 ALTER TABLE `tecvemar_jshopping_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config_display_prices`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config_display_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config_display_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config_display_prices`
--

LOCK TABLES `tecvemar_jshopping_config_display_prices` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_display_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_display_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config_seo`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_es-ES` varchar(255) NOT NULL,
  `keyword_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config_seo`
--

LOCK TABLES `tecvemar_jshopping_config_seo` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_seo` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_config_seo` VALUES (1,'category',10,'','','','','',''),(2,'manufacturers',20,'','','','','',''),(3,'cart',30,'','','','','',''),(4,'wishlist',40,'','','','','',''),(5,'login',50,'','','','','',''),(6,'register',60,'','','','','',''),(7,'editaccount',70,'','','','','',''),(8,'myorders',80,'','','','','',''),(9,'myaccount',90,'','','','','',''),(10,'search',100,'','','','','',''),(11,'search-result',110,'','','','','',''),(12,'myorder-detail',120,'','','','','',''),(13,'vendors',130,'','','','','',''),(14,'content-agb',140,'','','','','',''),(15,'content-return_policy',150,'','','','','',''),(16,'content-shipping',160,'','','','','',''),(17,'content-privacy_statement',161,'','','','','',''),(18,'checkout-address',170,'','','','','',''),(19,'checkout-payment',180,'','','','','',''),(20,'checkout-shipping',190,'','','','','',''),(21,'checkout-preview',200,'','','','','',''),(22,'lastproducts',210,'','','','','',''),(23,'randomproducts',220,'','','','','',''),(24,'bestsellerproducts',230,'','','','','',''),(25,'labelproducts',240,'','','','','',''),(26,'topratingproducts',250,'','','','','',''),(27,'tophitsproducts',260,'','','','','',''),(28,'all-products',270,'','','','','','');
/*!40000 ALTER TABLE `tecvemar_jshopping_config_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config_statictext`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config_statictext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config_statictext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `use_for_return_policy` int(11) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config_statictext`
--

LOCK TABLES `tecvemar_jshopping_config_statictext` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_statictext` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_config_statictext` VALUES (1,'home',0,'',''),(2,'manufacturer',0,'',''),(3,'agb',0,'',''),(4,'return_policy',0,'',''),(5,'order_email_descr',0,'',''),(6,'order_email_descr_end',0,'',''),(7,'order_finish_descr',0,'',''),(8,'shipping',0,'',''),(9,'privacy_statement',0,'',''),(10,'cart',0,'','');
/*!40000 ALTER TABLE `tecvemar_jshopping_config_statictext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_countries`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_countries`
--

LOCK TABLES `tecvemar_jshopping_countries` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_countries` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_countries` VALUES (1,1,1,'AFG','AF','Afghanistan','Afghanistan','Afghanistan'),(2,1,2,'ALB','AL','Albania','Albanien','Albania'),(3,1,3,'DZA','DZ','Algeria','Algerien','Algeria'),(4,1,4,'ASM','AS','American Samoa','Amerikanisch-Samoa','American Samoa'),(5,1,5,'AND','AD','Andorra','Andorra','Andorra'),(6,1,6,'AGO','AO','Angola','Angola','Angola'),(7,1,7,'AIA','AI','Anguilla','Anguilla','Anguilla'),(8,1,8,'ATA','AQ','Antarctica','Antarktis','Antarctica'),(9,1,9,'ATG','AG','Antigua and Barbuda','Antigua und Barbuda','Antigua and Barbuda'),(10,1,10,'ARG','AR','Argentina','Argentinien','Argentina'),(11,1,11,'ARM','AM','Armenia','Armenien','Armenia'),(12,1,12,'ABW','AW','Aruba','Aruba','Aruba'),(13,1,13,'AUS','AU','Australia','Australien','Australia'),(14,1,14,'AUT','AT','Austria','Österreich','Austria'),(15,1,15,'AZE','AZ','Azerbaijan','Aserbaidschan','Azerbaijan'),(16,1,16,'BHS','BS','Bahamas','Bahamas','Bahamas'),(17,1,17,'BHR','BH','Bahrain','Bahrain','Bahrain'),(18,1,18,'BGD','BD','Bangladesh','Bangladesch','Bangladesh'),(19,1,19,'BRB','BB','Barbados','Barbados','Barbados'),(20,1,20,'BLR','BY','Belarus','Weissrussland','Belarus'),(21,1,21,'BEL','BE','Belgium','Belgien','Belgium'),(22,1,22,'BLZ','BZ','Belize','Belize','Belize'),(23,1,23,'BEN','BJ','Benin','Benin','Benin'),(24,1,24,'BMU','BM','Bermuda','Bermuda','Bermuda'),(25,1,25,'BTN','BT','Bhutan','Bhutan','Bhutan'),(26,1,26,'BOL','BO','Bolivia','Bolivien','Bolivia'),(27,1,27,'BIH','BA','Bosnia and Herzegowina','Bosnien und Herzegowina','Bosnia and Herzegowina'),(28,1,28,'BWA','BW','Botswana','Botsuana','Botswana'),(29,1,29,'BVT','BV','Bouvet Island','Bouvetinsel','Bouvet Island'),(30,1,30,'BRA','BR','Brazil','Brasilien','Brazil'),(31,1,31,'IOT','IO','British Indian Ocean Territory','Britisches Territorium im Indischen Ozean','British Indian Ocean Territory'),(32,1,32,'BRN','BN','Brunei Darussalam','Brunei','Brunei Darussalam'),(33,1,33,'BGR','BG','Bulgaria','Bulgarien','Bulgaria'),(34,1,34,'BFA','BF','Burkina Faso','Burkina Faso','Burkina Faso'),(35,1,35,'BDI','BI','Burundi','Burundi','Burundi'),(36,1,36,'KHM','KH','Cambodia','Kambodscha','Cambodia'),(37,1,37,'CMR','CM','Cameroon','Kamerun','Cameroon'),(38,1,38,'CAN','CA','Canada','Kanada','Canada'),(39,1,39,'CPV','CV','Cape Verde','Kap Verde','Cape Verde'),(40,1,40,'CYM','KY','Cayman Islands','Cayman-Inseln','Cayman Islands'),(41,1,41,'CAF','CF','Central African Republic','Zentralafrikanische Republik','Central African Republic'),(42,1,42,'TCD','TD','Chad','Tschad','Chad'),(43,1,43,'CHL','CL','Chile','Chile','Chile'),(44,1,44,'CHN','CN','China','China','China'),(45,1,45,'CXR','CX','Christmas Island','Christmas Island','Christmas Island'),(46,1,46,'CCK','CC','Cocos (Keeling) Islands','Kokosinseln (Keeling)','Cocos (Keeling) Islands'),(47,1,47,'COL','CO','Colombia','Kolumbien','Colombia'),(48,1,48,'COM','KM','Comoros','Komoren','Comoros'),(49,1,49,'COG','CG','Congo','Kongo, Republik','Congo'),(50,1,50,'COK','CK','Cook Islands','Cookinseln','Cook Islands'),(51,1,51,'CRI','CR','Costa Rica','Costa Rica','Costa Rica'),(52,1,52,'CIV','CI','Cote D\'Ivoire','Elfenbeinküste','Cote D\'Ivoire'),(53,1,53,'HRV','HR','Croatia','Kroatien','Croatia'),(54,1,54,'CUB','CU','Cuba','Kuba','Cuba'),(55,1,55,'CYP','CY','Cyprus','Zypern','Cyprus'),(56,1,56,'CZE','CZ','Czech Republic','Tschechien','Czech Republic'),(57,1,57,'DNK','DK','Denmark','Dänemark','Denmark'),(58,1,58,'DJI','DJ','Djibouti','Dschibuti','Djibouti'),(59,1,59,'DMA','DM','Dominica','Dominica','Dominica'),(60,1,60,'DOM','DO','Dominican Republic','Dominikanische Republik','Dominican Republic'),(61,1,61,'TMP','TL','East Timor','Osttimor','East Timor'),(62,1,62,'ECU','EC','Ecuador','Ecuador','Ecuador'),(63,1,63,'EGY','EG','Egypt','Ägypten','Egypt'),(64,1,64,'SLV','SV','El Salvador','El Salvador','El Salvador'),(65,1,65,'GNQ','GQ','Equatorial Guinea','Äquatorial-Guinea','Equatorial Guinea'),(66,1,66,'ERI','ER','Eritrea','Eritrea','Eritrea'),(67,1,67,'EST','EE','Estonia','Estland','Estonia'),(68,1,68,'ETH','ET','Ethiopia','Äthiopien','Ethiopia'),(69,1,69,'FLK','FK','Falkland Islands (Malvinas)','Falklandinseln','Falkland Islands (Malvinas)'),(70,1,70,'FRO','FO','Faroe Islands','Färöer','Faroe Islands'),(71,1,71,'FJI','FJ','Fiji','Fidschi','Fiji'),(72,1,72,'FIN','FI','Finland','Finnland','Finland'),(73,1,73,'FRA','FR','France','Frankreich','France'),(74,1,74,'FXX','FX','France Metropolitan','Frankreich, Metropolitan','France Metropolitan'),(75,1,75,'GUF','GF','French Guiana','Französisch-Guyana','French Guiana'),(76,1,76,'PYF','PF','French Polynesia','Franz. Polynesien','French Polynesia'),(77,1,77,'ATF','TF','French Southern Territories','Französiche Süd- und Antarktisgebiete','French Southern Territories'),(78,1,78,'GAB','GA','Gabon','Gabun','Gabon'),(79,1,79,'GMB','GM','Gambia','Gambia','Gambia'),(80,1,80,'GEO','GE','Georgia','Georgien','Georgia'),(81,1,81,'DEU','DE','Germany','Deutschland','Germany'),(82,1,82,'GHA','GH','Ghana','Ghana','Ghana'),(83,1,83,'GIB','GI','Gibraltar','Gibraltar','Gibraltar'),(84,1,84,'GRC','GR','Greece','Griechenland','Greece'),(85,1,85,'GRL','GL','Greenland','Grönland','Greenland'),(86,1,86,'GRD','GD','Grenada','Grenada','Grenada'),(87,1,87,'GLP','GP','Guadeloupe','Guadeloupe','Guadeloupe'),(88,1,88,'GUM','GU','Guam','Guam','Guam'),(89,1,89,'GTM','GT','Guatemala','Guatemala','Guatemala'),(90,1,90,'GIN','GN','Guinea','Guinea','Guinea'),(91,1,91,'GNB','GW','Guinea-bissau','Guinea-Bissau','Guinea-bissau'),(92,1,92,'GUY','GY','Guyana','Guyana','Guyana'),(93,1,93,'HTI','HT','Haiti','Haiti','Haiti'),(94,1,94,'HMD','HM','Heard and Mc Donald Islands','Heard und McDonaldinseln','Heard and Mc Donald Islands'),(95,1,95,'HND','HN','Honduras','Honduras','Honduras'),(96,1,96,'HKG','HK','Hong Kong','Hong Kong','Hong Kong'),(97,1,97,'HUN','HU','Hungary','Ungarn','Hungary'),(98,1,98,'ISL','IS','Iceland','Island','Iceland'),(99,1,99,'IND','IN','India','Indien','India'),(100,1,100,'IDN','ID','Indonesia','Indonesien','Indonesia'),(101,1,101,'IRN','IR','Iran (Islamic Republic of)','Iran','Iran (Islamic Republic of)'),(102,1,102,'IRQ','IQ','Iraq','Irak','Iraq'),(103,1,103,'IRL','IE','Ireland','Irland','Ireland'),(104,1,104,'ISR','IL','Israel','Israel','Israel'),(105,1,105,'ITA','IT','Italy','Italien','Italy'),(106,1,106,'JAM','JM','Jamaica','Jamaika','Jamaica'),(107,1,107,'JPN','JP','Japan','Japan','Japan'),(108,1,108,'JOR','JO','Jordan','Jordanien','Jordan'),(109,1,109,'KAZ','KZ','Kazakhstan','Kasachstan','Kazakhstan'),(110,1,110,'KEN','KE','Kenya','Kenia','Kenya'),(111,1,111,'KIR','KI','Kiribati','Kiribati','Kiribati'),(112,1,112,'PRK','KP','Korea Democratic People\'s Republic of','Korea Demokratische Volksrepublik','Korea Democratic People\'s Republic of'),(113,1,113,'KOR','KR','Korea Republic of','Korea','Korea Republic of'),(114,1,114,'KWT','KW','Kuwait','Kuwait','Kuwait'),(115,1,115,'KGZ','KG','Kyrgyzstan','Kirgistan','Kyrgyzstan'),(116,1,116,'LAO','LA','Lao People\'s Democratic Republic','Laos','Lao People\'s Democratic Republic'),(117,1,117,'LVA','LV','Latvia','Lettland','Latvia'),(118,1,118,'LBN','LB','Lebanon','Libanon','Lebanon'),(119,1,119,'LSO','LS','Lesotho','Lesotho','Lesotho'),(120,1,120,'LBR','LR','Liberia','Liberia','Liberia'),(121,1,121,'LBY','LY','Libyan Arab Jamahiriya','Libyen','Libyan Arab Jamahiriya'),(122,1,122,'LIE','LI','Liechtenstein','Liechtenstein','Liechtenstein'),(123,1,123,'LTU','LT','Lithuania','Litauen','Lithuania'),(124,1,124,'LUX','LU','Luxembourg','Luxemburg','Luxembourg'),(125,1,125,'MAC','MO','Macau','Makao','Macau'),(126,1,126,'MKD','MK','Macedonia The Former Yugoslav Republic of','Mazedonien','Macedonia The Former Yugoslav Republic of'),(127,1,127,'MDG','MG','Madagascar','Madagaskar','Madagascar'),(128,1,128,'MWI','MW','Malawi','Malawi','Malawi'),(129,1,129,'MYS','MY','Malaysia','Malaysia','Malaysia'),(130,1,130,'MDV','MV','Maldives','Malediven','Maldives'),(131,1,131,'MLI','ML','Mali','Mali','Mali'),(132,1,132,'MLT','MT','Malta','Malta','Malta'),(133,1,133,'MHL','MH','Marshall Islands','Marshallinseln','Marshall Islands'),(134,1,134,'MTQ','MQ','Martinique','Martinique','Martinique'),(135,1,135,'MRT','MR','Mauritania','Mauretanien','Mauritania'),(136,1,136,'MUS','MU','Mauritius','Mauritius','Mauritius'),(137,1,137,'MYT','YT','Mayotte','Mayott','Mayotte'),(138,1,138,'MEX','MX','Mexico','Mexiko','Mexico'),(139,1,139,'FSM','FM','Micronesia Federated States of','Mikronesien','Micronesia Federated States of'),(140,1,140,'MDA','MD','Moldova Republic of','Moldawien','Moldova Republic of'),(141,1,141,'MCO','MC','Monaco','Monaco','Monaco'),(142,1,142,'MNG','MN','Mongolia','Mongolei','Mongolia'),(143,1,143,'MSR','MS','Montserrat','Montserrat','Montserrat'),(144,1,144,'MAR','MA','Morocco','Marokko','Morocco'),(145,1,145,'MOZ','MZ','Mozambique','Mosambik','Mozambique'),(146,1,146,'MMR','MM','Myanmar','Myanmar','Myanmar'),(147,1,147,'NAM','NA','Namibia','Namibia','Namibia'),(148,1,148,'NRU','NR','Nauru','Nauru','Nauru'),(149,1,149,'NPL','NP','Nepal','Nepal','Nepal'),(150,1,150,'NLD','NL','Netherlands','Niederlande','Netherlands'),(151,1,151,'ANT','AN','Netherlands Antilles','Niederländisch-Antillen','Netherlands Antilles'),(152,1,152,'NCL','NC','New Caledonia','Neukaledonien','New Caledonia'),(153,1,153,'NZL','NZ','New Zealand','Neuseeland','New Zealand'),(154,1,154,'NIC','NI','Nicaragua','Nicaragua','Nicaragua'),(155,1,155,'NER','NE','Niger','Niger','Niger'),(156,1,156,'NGA','NG','Nigeria','Nigeria','Nigeria'),(157,1,157,'NIU','NU','Niue','Niue','Niue'),(158,1,158,'NFK','NF','Norfolk Island','Norfolkinsel','Norfolk Island'),(159,1,159,'MNP','MP','Northern Mariana Islands','Nördliche Marianen','Northern Mariana Islands'),(160,1,160,'NOR','NO','Norway','Norwegen','Norway'),(161,1,161,'OMN','OM','Oman','Oman','Oman'),(162,1,162,'PAK','PK','Pakistan','Pakistan','Pakistan'),(163,1,163,'PLW','PW','Palau','Palau','Palau'),(164,1,164,'PAN','PA','Panama','Panama','Panama'),(165,1,165,'PNG','PG','Papua New Guinea','Papua-Neuguinea','Papua New Guinea'),(166,1,166,'PRY','PY','Paraguay','Paraguay','Paraguay'),(167,1,167,'PER','PE','Peru','Peru','Peru'),(168,1,168,'PHL','PH','Philippines','Philippinen','Philippines'),(169,1,169,'PCN','PN','Pitcairn','Pitcairn','Pitcairn'),(170,1,170,'POL','PL','Poland','Polen','Poland'),(171,1,171,'PRT','PT','Portugal','Portugal','Portugal'),(172,1,172,'PRI','PR','Puerto Rico','Puerto Rico','Puerto Rico'),(173,1,173,'QAT','QA','Qatar','Katar','Qatar'),(174,1,174,'REU','RE','Reunion','Reunion','Reunion'),(175,1,175,'ROM','RO','Romania','Rumänien','Romania'),(176,1,176,'RUS','RU','Russian Federation','Russische Föderation','Russian Federation'),(177,1,177,'RWA','RW','Rwanda','Ruanda','Rwanda'),(178,1,178,'KNA','KN','Saint Kitts and Nevis','St. Kitts und Nevis','Saint Kitts and Nevis'),(179,1,179,'LCA','LC','Saint Lucia','St. Lucia','Saint Lucia'),(180,1,180,'VCT','VC','Saint Vincent and the Grenadines','St. Vincent und die Grenadinen','Saint Vincent and the Grenadines'),(181,1,181,'WSM','WS','Samoa','Samoa','Samoa'),(182,1,182,'SMR','SM','San Marino','San Marino','San Marino'),(183,1,183,'STP','ST','Sao Tome and Principe','Sao Tomé und Príncipe','Sao Tome and Principe'),(184,1,184,'SAU','SA','Saudi Arabia','Saudi-Arabien','Saudi Arabia'),(185,1,185,'SEN','SN','Senegal','Senegal','Senegal'),(186,1,186,'SYC','SC','Seychelles','Seychellen','Seychelles'),(187,1,187,'SLE','SL','Sierra Leone','Sierra Leone','Sierra Leone'),(188,1,188,'SGP','SG','Singapore','Singapur','Singapore'),(189,1,189,'SVK','SK','Slovakia (Slovak Republic)','Slowakei','Slovakia (Slovak Republic)'),(190,1,190,'SVN','SI','Slovenia','Slowenien','Slovenia'),(191,1,191,'SLB','SB','Solomon Islands','Salomonen','Solomon Islands'),(192,1,192,'SOM','SO','Somalia','Somalia','Somalia'),(193,1,193,'ZAF','ZA','South Africa','Republik Südafrika','South Africa'),(194,1,194,'SGS','GS','South Georgia and the South Sandwich Islands','Südgeorgien und die Südlichen Sandwichinseln','South Georgia and the South Sandwich Islands'),(195,1,195,'ESP','ES','Spain','Spanien','Spain'),(196,1,196,'LKA','LK','Sri Lanka','Sri Lanka','Sri Lanka'),(197,1,197,'SHN','SH','St. Helena','St. Helena','St. Helena'),(198,1,198,'SPM','PM','St. Pierre and Miquelon','St. Pierre und Miquelon','St. Pierre and Miquelon'),(199,1,199,'SDN','SD','Sudan','Sudan','Sudan'),(200,1,200,'SUR','SR','Suriname','Suriname','Suriname'),(201,1,201,'SJM','SJ','Svalbard and Jan Mayen Islands','Svalbard und Jan Mayen','Svalbard and Jan Mayen Islands'),(202,1,202,'SWZ','SZ','Swaziland','Swasiland','Swaziland'),(203,1,203,'SWE','SE','Sweden','Schweden','Sweden'),(204,1,204,'CHE','CH','Switzerland','Schweiz','Switzerland'),(205,1,205,'SYR','SY','Syrian Arab Republic','Syrien','Syrian Arab Republic'),(206,1,206,'TWN','TW','Taiwan','Taiwan','Taiwan'),(207,1,207,'TJK','TJ','Tajikistan','Tadschikistan','Tajikistan'),(208,1,208,'TZA','TZ','Tanzania United Republic of','Tansania','Tanzania United Republic of'),(209,1,209,'THA','TH','Thailand','Thailand','Thailand'),(210,1,210,'TGO','TG','Togo','Togo','Togo'),(211,1,211,'TKL','TK','Tokelau','Tokelau','Tokelau'),(212,1,212,'TON','TO','Tonga','Tonga','Tonga'),(213,1,213,'TTO','TT','Trinidad and Tobago','Trinidad und Tobago','Trinidad and Tobago'),(214,1,214,'TUN','TN','Tunisia','Tunesien','Tunisia'),(215,1,215,'TUR','TR','Turkey','Türkei','Turkey'),(216,1,216,'TKM','TM','Turkmenistan','Turkmenistan','Turkmenistan'),(217,1,217,'TCA','TC','Turks and Caicos Islands','Turks- und Caicosinseln','Turks and Caicos Islands'),(218,1,218,'TUV','TV','Tuvalu','Tuvalu','Tuvalu'),(219,1,219,'UGA','UG','Uganda','Uganda','Uganda'),(220,1,220,'UKR','UA','Ukraine','Ukraine','Ukraine'),(221,1,221,'ARE','AE','United Arab Emirates','Vereinigte Arabische Emirate','United Arab Emirates'),(222,1,222,'GBR','GB','United Kingdom','Vereinigtes Königreich','United Kingdom'),(223,1,223,'USA','US','United States','USA','United States'),(224,1,224,'UMI','UM','United States Minor Outlying Islands','United States Minor Outlying Islands','United States Minor Outlying Islands'),(225,1,225,'URY','UY','Uruguay','Uruguay','Uruguay'),(226,1,226,'UZB','UZ','Uzbekistan','Usbekistan','Uzbekistan'),(227,1,227,'VUT','VU','Vanuatu','Vanuatu','Vanuatu'),(228,1,228,'VAT','VA','Vatican City State (Holy See)','Vatikanstadt','Vatican City State (Holy See)'),(229,1,229,'VEN','VE','Venezuela','Venezuela','Venezuela'),(230,1,230,'VNM','VN','Viet Nam','Vietnam','Viet Nam'),(231,1,231,'VGB','VG','Virgin Islands (British)','Britische Jungferninseln','Virgin Islands (British)'),(232,1,232,'VIR','VI','Virgin Islands (U.S.)','Vereinigte Staaten von Amerika','Virgin Islands (U.S.)'),(233,1,233,'WLF','WF','Wallis and Futuna Islands','Wallis und Futuna','Wallis and Futuna Islands'),(234,1,234,'ESH','EH','Western Sahara','Westsahara','Western Sahara'),(235,1,235,'YEM','YE','Yemen','Jemen','Yemen'),(236,1,236,'YUG','YU','Yugoslavia','Yugoslavia','Yugoslavia'),(237,1,237,'ZAR','ZR','Zaire','Zaire','Zaire'),(238,1,238,'ZMB','ZM','Zambia','Sambia','Zambia'),(239,1,239,'ZWE','ZW','Zimbabwe','Simbabwe','Zimbabwe');
/*!40000 ALTER TABLE `tecvemar_jshopping_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_coupons`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint(4) NOT NULL COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_coupons`
--

LOCK TABLES `tecvemar_jshopping_coupons` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_currencies`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_currencies` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_currencies`
--

LOCK TABLES `tecvemar_jshopping_currencies` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_currencies` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_currencies` VALUES (1,'Euro','EUR','EUR','978',3,1.000000,1),(2,'Bolivares','Bs','Bs','',1,1.000000,1);
/*!40000 ALTER TABLE `tecvemar_jshopping_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_delivery_times`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_delivery_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_delivery_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_delivery_times`
--

LOCK TABLES `tecvemar_jshopping_delivery_times` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_delivery_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_delivery_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_free_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_free_attr`
--

LOCK TABLES `tecvemar_jshopping_free_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_free_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_import_export`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_import_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_import_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_import_export`
--

LOCK TABLES `tecvemar_jshopping_import_export` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_import_export` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_import_export` VALUES (1,'Simple Export','simpleexport','Simple Export in CSV iso-8859-1','filename=export',0,1),(2,'Simple Import','simpleimport','Simple Import in CSV iso-8859-1','',0,0);
/*!40000 ALTER TABLE `tecvemar_jshopping_import_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_languages`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_languages`
--

LOCK TABLES `tecvemar_jshopping_languages` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_languages` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_languages` VALUES (1,'en-GB','English',1,0),(2,'es-ES','Spanish',1,0);
/*!40000 ALTER TABLE `tecvemar_jshopping_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_manufacturers`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `alias_es-ES` varchar(255) NOT NULL,
  `short_description_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  `meta_title_es-ES` varchar(255) NOT NULL,
  `meta_description_es-ES` text NOT NULL,
  `meta_keyword_es-ES` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_manufacturers`
--

LOCK TABLES `tecvemar_jshopping_manufacturers` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_order_history`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_order_history`
--

LOCK TABLES `tecvemar_jshopping_order_history` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_order_item`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(14,4) NOT NULL,
  `product_tax` decimal(14,4) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` decimal(14,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `basicprice` decimal(12,2) NOT NULL,
  `basicpriceunit` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_order_item`
--

LOCK TABLES `tecvemar_jshopping_order_item` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_order_status`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_es-ES` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_order_status`
--

LOCK TABLES `tecvemar_jshopping_order_status` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_status` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_order_status` VALUES (1,'P','Pending','Offen','Pending'),(2,'C','Confirmed','Bestätigt','Confirmed'),(3,'X','Cancelled','Abgebrochen','Cancelled'),(4,'R','Refunded','Gutschrift','Refunded'),(5,'S','Shipped','Gesendet','Shipped'),(6,'O','Paid','Bezahlt','Paid'),(7,'F','Complete','Abgeschlossen','Complete');
/*!40000 ALTER TABLE `tecvemar_jshopping_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_orders`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(14,4) NOT NULL,
  `order_subtotal` decimal(14,4) NOT NULL,
  `order_tax` decimal(14,4) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(14,4) NOT NULL,
  `order_payment` decimal(14,4) NOT NULL,
  `order_discount` decimal(14,4) NOT NULL,
  `shipping_tax` decimal(12,4) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(12,4) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime NOT NULL,
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_orders`
--

LOCK TABLES `tecvemar_jshopping_orders` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_payment_method`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `show_bank_in_order` tinyint(1) NOT NULL DEFAULT '1',
  `order_description` text NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_es-ES` varchar(100) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_payment_method`
--

LOCK TABLES `tecvemar_jshopping_payment_method` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_payment_method` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_payment_method` VALUES (1,'bank','pm_bank',1,1,'',1,4.00,0,1,'',0,1,'','Cash on delivery','','Nachnahme','','Cash on delivery',''),(2,'PO','pm_purchase_order',1,2,'',1,0.00,0,1,'',1,1,'','Advance payment','','Vorauskasse','','Advance payment',''),(3,'paypal','pm_paypal',1,3,'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0',2,0.00,0,1,'',0,1,'','Paypal','','Paypal','','Paypal',''),(4,'debit','pm_debit',1,4,'',1,0.00,0,1,'',0,1,'','Debit','Please insert your bankdata.','Lastschrift','Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.','Debit','Please insert your bankdata.'),(5,'ST','pm_sofortueberweisung',0,5,'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n',2,0.00,0,1,'',0,1,'','Sofortueberweisung','','Sofortueberweisung','','Sofortueberweisung','');
/*!40000 ALTER TABLE `tecvemar_jshopping_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_product_labels`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_product_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_product_labels`
--

LOCK TABLES `tecvemar_jshopping_product_labels` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_product_labels` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_product_labels` VALUES (1,'New','New','New','new.png','New'),(2,'Sale','Sale','Sale','sale.png','Sale');
/*!40000 ALTER TABLE `tecvemar_jshopping_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(1) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(14,4) NOT NULL,
  `product_buy_price` decimal(14,4) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `alias_es-ES` varchar(255) NOT NULL,
  `short_description_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  `meta_title_es-ES` varchar(255) NOT NULL,
  `meta_description_es-ES` text NOT NULL,
  `meta_keyword_es-ES` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products`
--

LOCK TABLES `tecvemar_jshopping_products` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_products` VALUES (1,0,'',1.00,0,'','2016-08-24 14:05:09','2016-08-24 14:13:56',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_caribe.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Caribe','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(2,0,'',1.00,0,'','2016-08-24 14:08:19','2016-08-24 14:14:02',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_gris_aro.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Gris Aro','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(3,0,'',1.00,0,'','2016-08-24 14:08:58','2016-08-24 14:14:07',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_gris_leona.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Gris Leona','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(4,0,'',1.00,0,'','2016-08-24 14:09:37','2016-08-24 14:14:14',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_multicolor_vinotinto.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Multicolor Vinotinto','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(5,0,'',1.00,0,'','2016-08-24 17:20:54','2016-08-24 17:20:54',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_marron_imataca.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Marron Imataca','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(6,0,'',1.00,0,'','2016-08-24 17:24:39','2016-08-24 17:24:39',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_multicolor_orinoco.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Multicolor Orinoco','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(10,0,'',1.00,0,'','2016-08-24 17:29:12','2016-08-24 17:29:36',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rojo_guaimire.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rojo Guaimire','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(8,0,'',1.00,0,'','2016-08-24 17:26:34','2016-08-24 17:26:34',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_negro_guayana.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Negro Guayana / Gris Guayana Oscuro','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(9,0,'',1.00,0,'','2016-08-24 17:27:18','2016-08-24 17:27:18',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rojo_amara.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rojo Amara','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(11,0,'',1.00,0,'','2016-08-24 17:30:53','2016-08-24 17:30:53',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rojo_veteado.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rojo Veteado','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(12,0,'',1.00,0,'','2016-08-24 17:31:46','2016-08-24 17:31:46',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rosa_natura.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rosa Natura','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(13,0,'',1.00,0,'','2016-08-24 17:32:28','2016-08-24 17:32:28',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_salmon_negro.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Salmón Negro','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(14,0,'',1.00,0,'','2016-08-24 17:33:38','2016-08-24 17:33:38',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_verde_capri.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Verde Capri','','Piedra extraída y emblemática de la ciudad de Guayana','','','','');
/*!40000 ALTER TABLE `tecvemar_jshopping_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `old_price` decimal(14,4) NOT NULL,
  `count` decimal(14,4) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_attr`
--

LOCK TABLES `tecvemar_jshopping_products_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_attr2`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_attr2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_attr2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(14,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_attr2`
--

LOCK TABLES `tecvemar_jshopping_products_attr2` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_extra_field_groups`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_extra_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_extra_field_groups`
--

LOCK TABLES `tecvemar_jshopping_products_extra_field_groups` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_extra_field_values`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_extra_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_extra_field_values`
--

LOCK TABLES `tecvemar_jshopping_products_extra_field_values` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_extra_fields`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_extra_fields`
--

LOCK TABLES `tecvemar_jshopping_products_extra_fields` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_files`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_files`
--

LOCK TABLES `tecvemar_jshopping_products_files` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_free_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_free_attr`
--

LOCK TABLES `tecvemar_jshopping_products_free_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_free_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_images`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_images`
--

LOCK TABLES `tecvemar_jshopping_products_images` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_images` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_products_images` VALUES (1,1,'thums_caribe.jpg','',1),(2,1,'caribe.jpg','',2),(3,2,'thums_gris_aro.jpg','',1),(4,2,'gris_aro.jpg','',2),(5,3,'thums_gris_leona.jpg','',1),(6,3,'gris_leona.jpg','',2),(7,4,'thums_multicolor_vinotinto.jpg','',1),(8,4,'multicolor_vinotinto.jpg','',2),(9,5,'thums_marron_imataca.jpg','',1),(10,5,'marron_imataca.jpg','',2),(11,6,'thums_multicolor_orinoco.jpg','',1),(12,6,'multicolor_orinoco.jpg','',2),(20,10,'rojo_guaimire.jpg','',2),(19,10,'thums_rojo_guaimire.jpg','',1),(15,8,'thums_negro_guayana.jpg','',1),(16,8,'negro_guayana.jpg','',2),(17,9,'thums_rojo_amara.jpg','',1),(18,9,'rojo_amara.jpg','',2),(21,11,'thums_rojo_veteado.jpg','',1),(22,11,'rojo_veteado.jpg','',2),(23,12,'thums_rosa_natura.jpg','',1),(24,12,'rosa_natura.jpg','',2),(25,13,'thums_salmon_negro.jpg','',1),(26,13,'salmon_negro.jpg','',2),(27,14,'thums_verde_capri.jpg','',1),(28,14,'verde_capri.jpg','',2);
/*!40000 ALTER TABLE `tecvemar_jshopping_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_option`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prodkey` (`product_id`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_option`
--

LOCK TABLES `tecvemar_jshopping_products_option` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_prices`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_prices`
--

LOCK TABLES `tecvemar_jshopping_products_prices` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_relations`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_related_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_relations`
--

LOCK TABLES `tecvemar_jshopping_products_relations` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_reviews`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_reviews`
--

LOCK TABLES `tecvemar_jshopping_products_reviews` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_to_categories`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ordering` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_to_categories`
--

LOCK TABLES `tecvemar_jshopping_products_to_categories` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_to_categories` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_products_to_categories` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,1,5),(10,1,8),(8,1,6),(9,1,7),(11,2,2),(12,2,3),(13,2,4),(14,1,9);
/*!40000 ALTER TABLE `tecvemar_jshopping_products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_videos`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_videos`
--

LOCK TABLES `tecvemar_jshopping_products_videos` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_ext_calc`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_ext_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_ext_calc`
--

LOCK TABLES `tecvemar_jshopping_shipping_ext_calc` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_ext_calc` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_ext_calc` VALUES (1,'StandartWeight','sm_standart_weight','StandartWeight','','',1,1);
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_ext_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_es-ES` varchar(100) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method`
--

LOCK TABLES `tecvemar_jshopping_shipping_method` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_method` VALUES (1,'Standard','','Standardversand','',1,'','',1,'Standard',''),(2,'Express','','Express','',1,'','',2,'Express','');
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method_price`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(14,4) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(14,4) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method_price`
--

LOCK TABLES `tecvemar_jshopping_shipping_method_price` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_method_price` VALUES (1,1,1,10.0000,1,0.0000,0,''),(2,2,1,25.0000,1,0.0000,0,'');
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method_price_countries`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method_price_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method_price_countries`
--

LOCK TABLES `tecvemar_jshopping_shipping_method_price_countries` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_countries` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_method_price_countries` VALUES (1,239,1),(2,238,1),(3,237,1),(4,236,1),(5,235,1),(6,234,1),(7,233,1),(8,232,1),(9,231,1),(10,230,1),(11,229,1),(12,228,1),(13,227,1),(14,226,1),(15,225,1),(16,224,1),(17,223,1),(18,222,1),(19,221,1),(20,220,1),(21,219,1),(22,218,1),(23,217,1),(24,216,1),(25,215,1),(26,214,1),(27,213,1),(28,212,1),(29,211,1),(30,210,1),(31,209,1),(32,208,1),(33,207,1),(34,206,1),(35,205,1),(36,204,1),(37,203,1),(38,202,1),(39,201,1),(40,200,1),(41,199,1),(42,198,1),(43,197,1),(44,196,1),(45,195,1),(46,194,1),(47,193,1),(48,192,1),(49,191,1),(50,190,1),(51,189,1),(52,188,1),(53,187,1),(54,186,1),(55,185,1),(56,184,1),(57,183,1),(58,182,1),(59,181,1),(60,180,1),(61,179,1),(62,178,1),(63,177,1),(64,176,1),(65,175,1),(66,174,1),(67,173,1),(68,172,1),(69,171,1),(70,170,1),(71,169,1),(72,168,1),(73,167,1),(74,166,1),(75,165,1),(76,164,1),(77,163,1),(78,162,1),(79,161,1),(80,160,1),(81,159,1),(82,158,1),(83,157,1),(84,156,1),(85,155,1),(86,154,1),(87,153,1),(88,152,1),(89,151,1),(90,150,1),(91,149,1),(92,148,1),(93,147,1),(94,146,1),(95,145,1),(96,144,1),(97,143,1),(98,142,1),(99,141,1),(100,140,1),(101,139,1),(102,138,1),(103,137,1),(104,136,1),(105,135,1),(106,134,1),(107,133,1),(108,132,1),(109,131,1),(110,130,1),(111,129,1),(112,128,1),(113,127,1),(114,126,1),(115,125,1),(116,124,1),(117,123,1),(118,122,1),(119,121,1),(120,120,1),(121,119,1),(122,118,1),(123,117,1),(124,116,1),(125,115,1),(126,114,1),(127,113,1),(128,112,1),(129,111,1),(130,110,1),(131,109,1),(132,108,1),(133,107,1),(134,106,1),(135,105,1),(136,104,1),(137,103,1),(138,102,1),(139,101,1),(140,100,1),(141,99,1),(142,98,1),(143,97,1),(144,96,1),(145,95,1),(146,94,1),(147,93,1),(148,92,1),(149,91,1),(150,90,1),(151,89,1),(152,88,1),(153,87,1),(154,86,1),(155,85,1),(156,84,1),(157,83,1),(158,82,1),(159,81,1),(160,80,1),(161,79,1),(162,78,1),(163,77,1),(164,76,1),(165,75,1),(166,74,1),(167,73,1),(168,72,1),(169,71,1),(170,70,1),(171,69,1),(172,68,1),(173,67,1),(174,66,1),(175,65,1),(176,64,1),(177,63,1),(178,62,1),(179,61,1),(180,60,1),(181,59,1),(182,58,1),(183,57,1),(184,56,1),(185,55,1),(186,54,1),(187,53,1),(188,52,1),(189,51,1),(190,50,1),(191,49,1),(192,48,1),(193,47,1),(194,46,1),(195,45,1),(196,44,1),(197,43,1),(198,42,1),(199,41,1),(200,40,1),(201,39,1),(202,38,1),(203,37,1),(204,36,1),(205,35,1),(206,34,1),(207,33,1),(208,32,1),(209,31,1),(210,30,1),(211,29,1),(212,28,1),(213,27,1),(214,26,1),(215,25,1),(216,24,1),(217,23,1),(218,22,1),(219,21,1),(220,20,1),(221,19,1),(222,18,1),(223,17,1),(224,16,1),(225,15,1),(226,14,1),(227,13,1),(228,12,1),(229,11,1),(230,10,1),(231,9,1),(232,8,1),(233,7,1),(234,6,1),(235,5,1),(236,4,1),(237,3,1),(238,2,1),(239,1,1),(240,239,2),(241,238,2),(242,237,2),(243,236,2),(244,235,2),(245,234,2),(246,233,2),(247,232,2),(248,231,2),(249,230,2),(250,229,2),(251,228,2),(252,227,2),(253,226,2),(254,225,2),(255,224,2),(256,223,2),(257,222,2),(258,221,2),(259,220,2),(260,219,2),(261,218,2),(262,217,2),(263,216,2),(264,215,2),(265,214,2),(266,213,2),(267,212,2),(268,211,2),(269,210,2),(270,209,2),(271,208,2),(272,207,2),(273,206,2),(274,205,2),(275,204,2),(276,203,2),(277,202,2),(278,201,2),(279,200,2),(280,199,2),(281,198,2),(282,197,2),(283,196,2),(284,195,2),(285,194,2),(286,193,2),(287,192,2),(288,191,2),(289,190,2),(290,189,2),(291,188,2),(292,187,2),(293,186,2),(294,185,2),(295,184,2),(296,183,2),(297,182,2),(298,181,2),(299,180,2),(300,179,2),(301,178,2),(302,177,2),(303,176,2),(304,175,2),(305,174,2),(306,173,2),(307,172,2),(308,171,2),(309,170,2),(310,169,2),(311,168,2),(312,167,2),(313,166,2),(314,165,2),(315,164,2),(316,163,2),(317,162,2),(318,161,2),(319,160,2),(320,159,2),(321,158,2),(322,157,2),(323,156,2),(324,155,2),(325,154,2),(326,153,2),(327,152,2),(328,151,2),(329,150,2),(330,149,2),(331,148,2),(332,147,2),(333,146,2),(334,145,2),(335,144,2),(336,143,2),(337,142,2),(338,141,2),(339,140,2),(340,139,2),(341,138,2),(342,137,2),(343,136,2),(344,135,2),(345,134,2),(346,133,2),(347,132,2),(348,131,2),(349,130,2),(350,129,2),(351,128,2),(352,127,2),(353,126,2),(354,125,2),(355,124,2),(356,123,2),(357,122,2),(358,121,2),(359,120,2),(360,119,2),(361,118,2),(362,117,2),(363,116,2),(364,115,2),(365,114,2),(366,113,2),(367,112,2),(368,111,2),(369,110,2),(370,109,2),(371,108,2),(372,107,2),(373,106,2),(374,105,2),(375,104,2),(376,103,2),(377,102,2),(378,101,2),(379,100,2),(380,99,2),(381,98,2),(382,97,2),(383,96,2),(384,95,2),(385,94,2),(386,93,2),(387,92,2),(388,91,2),(389,90,2),(390,89,2),(391,88,2),(392,87,2),(393,86,2),(394,85,2),(395,84,2),(396,83,2),(397,82,2),(398,81,2),(399,80,2),(400,79,2),(401,78,2),(402,77,2),(403,76,2),(404,75,2),(405,74,2),(406,73,2),(407,72,2),(408,71,2),(409,70,2),(410,69,2),(411,68,2),(412,67,2),(413,66,2),(414,65,2),(415,64,2),(416,63,2),(417,62,2),(418,61,2),(419,60,2),(420,59,2),(421,58,2),(422,57,2),(423,56,2),(424,55,2),(425,54,2),(426,53,2),(427,52,2),(428,51,2),(429,50,2),(430,49,2),(431,48,2),(432,47,2),(433,46,2),(434,45,2),(435,44,2),(436,43,2),(437,42,2),(438,41,2),(439,40,2),(440,39,2),(441,38,2),(442,37,2),(443,36,2),(444,35,2),(445,34,2),(446,33,2),(447,32,2),(448,31,2),(449,30,2),(450,29,2),(451,28,2),(452,27,2),(453,26,2),(454,25,2),(455,24,2),(456,23,2),(457,22,2),(458,21,2),(459,20,2),(460,19,2),(461,18,2),(462,17,2),(463,16,2),(464,15,2),(465,14,2),(466,13,2),(467,12,2),(468,11,2),(469,10,2),(470,9,2),(471,8,2),(472,7,2),(473,6,2),(474,5,2),(475,4,2),(476,3,2),(477,2,2),(478,1,2);
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method_price_weight`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method_price_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(14,4) NOT NULL,
  PRIMARY KEY (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method_price_weight`
--

LOCK TABLES `tecvemar_jshopping_shipping_method_price_weight` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_weight` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_taxes`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL,
  `tax_value` decimal(12,2) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_taxes`
--

LOCK TABLES `tecvemar_jshopping_taxes` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_taxes` VALUES (1,'Normal',19.00);
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_taxes_ext`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_taxes_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_taxes_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_taxes_ext`
--

LOCK TABLES `tecvemar_jshopping_taxes_ext` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_unit`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_unit`
--

LOCK TABLES `tecvemar_jshopping_unit` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_unit` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_unit` VALUES (1,1,'Kg','Kg','Kg'),(2,1,'Liter','Liter','Liter'),(3,1,'St.','pcs.','pcs.');
/*!40000 ALTER TABLE `tecvemar_jshopping_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_usergroups`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_usergroups`
--

LOCK TABLES `tecvemar_jshopping_usergroups` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_usergroups` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_usergroups` VALUES (1,'Default',0.00,'Default',1);
/*!40000 ALTER TABLE `tecvemar_jshopping_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_users`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `number` varchar(32) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_users`
--

LOCK TABLES `tecvemar_jshopping_users` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_vendors`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_bic_bic` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_vendors`
--

LOCK TABLES `tecvemar_jshopping_vendors` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_vendors` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_vendors` VALUES (1,'Shop name','Company','','','Address','City','Postal Code ','State',81,'First name ','Last name','','00000000','00000000','email@email.com','test','test','test','test','test','','test','test','test','','','Additional information',0,1,1);
/*!40000 ALTER TABLE `tecvemar_jshopping_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_languages`
--

DROP TABLE IF EXISTS `tecvemar_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_languages`
--

LOCK TABLES `tecvemar_languages` WRITE;
/*!40000 ALTER TABLE `tecvemar_languages` DISABLE KEYS */;
INSERT INTO `tecvemar_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `tecvemar_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_menu`
--

DROP TABLE IF EXISTS `tecvemar_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_menu`
--

LOCK TABLES `tecvemar_menu` WRITE;
/*!40000 ALTER TABLE `tecvemar_menu` DISABLE KEYS */;
INSERT INTO `tecvemar_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,61,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',33,34,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',35,36,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',37,38,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',39,40,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,42,1,'*',0),(102,'main','JoomShopping','joomshopping','','joomshopping','index.php?option=com_jshopping','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_logo_s.png',0,'{}',43,60,0,'',1),(103,'main','categories','categories','','joomshopping/categories','index.php?option=com_jshopping&controller=categories&catid=0','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_categories_s.png',0,'{}',44,45,0,'',1),(104,'main','products','products','','joomshopping/products','index.php?option=com_jshopping&controller=products&category_id=0','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_products_s.png',0,'{}',46,47,0,'',1),(105,'main','orders','orders','','joomshopping/orders','index.php?option=com_jshopping&controller=orders','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_orders_s.png',0,'{}',48,49,0,'',1),(106,'main','clients','clients','','joomshopping/clients','index.php?option=com_jshopping&controller=users','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_users_s.png',0,'{}',50,51,0,'',1),(107,'main','options','options','','joomshopping/options','index.php?option=com_jshopping&controller=other','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_options_s.png',0,'{}',52,53,0,'',1),(108,'main','configuration','configuration','','joomshopping/configuration','index.php?option=com_jshopping&controller=config','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_configuration_s.png',0,'{}',54,55,0,'',1),(109,'main','install-and-update','install-and-update','','joomshopping/install-and-update','index.php?option=com_jshopping&controller=update','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_update_s.png',0,'{}',56,57,0,'',1),(110,'main','about-as','about-as','','joomshopping/about-as','index.php?option=com_jshopping&controller=info','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_info_s.png',0,'{}',58,59,0,'',1);
/*!40000 ALTER TABLE `tecvemar_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_menu_types`
--

DROP TABLE IF EXISTS `tecvemar_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_menu_types`
--

LOCK TABLES `tecvemar_menu_types` WRITE;
/*!40000 ALTER TABLE `tecvemar_menu_types` DISABLE KEYS */;
INSERT INTO `tecvemar_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `tecvemar_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_messages`
--

DROP TABLE IF EXISTS `tecvemar_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_messages`
--

LOCK TABLES `tecvemar_messages` WRITE;
/*!40000 ALTER TABLE `tecvemar_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_messages_cfg`
--

DROP TABLE IF EXISTS `tecvemar_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_messages_cfg`
--

LOCK TABLES `tecvemar_messages_cfg` WRITE;
/*!40000 ALTER TABLE `tecvemar_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_modules`
--

DROP TABLE IF EXISTS `tecvemar_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_modules`
--

LOCK TABLES `tecvemar_modules` WRITE;
/*!40000 ALTER TABLE `tecvemar_modules` DISABLE KEYS */;
INSERT INTO `tecvemar_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
/*!40000 ALTER TABLE `tecvemar_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_modules_menu`
--

DROP TABLE IF EXISTS `tecvemar_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_modules_menu`
--

LOCK TABLES `tecvemar_modules_menu` WRITE;
/*!40000 ALTER TABLE `tecvemar_modules_menu` DISABLE KEYS */;
INSERT INTO `tecvemar_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0);
/*!40000 ALTER TABLE `tecvemar_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_newsfeeds`
--

DROP TABLE IF EXISTS `tecvemar_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_newsfeeds`
--

LOCK TABLES `tecvemar_newsfeeds` WRITE;
/*!40000 ALTER TABLE `tecvemar_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_overrider`
--

DROP TABLE IF EXISTS `tecvemar_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_overrider`
--

LOCK TABLES `tecvemar_overrider` WRITE;
/*!40000 ALTER TABLE `tecvemar_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_postinstall_messages`
--

DROP TABLE IF EXISTS `tecvemar_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_postinstall_messages`
--

LOCK TABLES `tecvemar_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `tecvemar_postinstall_messages` DISABLE KEYS */;
INSERT INTO `tecvemar_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',0);
/*!40000 ALTER TABLE `tecvemar_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_redirect_links`
--

DROP TABLE IF EXISTS `tecvemar_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_redirect_links`
--

LOCK TABLES `tecvemar_redirect_links` WRITE;
/*!40000 ALTER TABLE `tecvemar_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_schemas`
--

DROP TABLE IF EXISTS `tecvemar_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_schemas`
--

LOCK TABLES `tecvemar_schemas` WRITE;
/*!40000 ALTER TABLE `tecvemar_schemas` DISABLE KEYS */;
INSERT INTO `tecvemar_schemas` VALUES (700,'3.4.0-2015-02-26');
/*!40000 ALTER TABLE `tecvemar_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_session`
--

DROP TABLE IF EXISTS `tecvemar_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_session`
--

LOCK TABLES `tecvemar_session` WRITE;
/*!40000 ALTER TABLE `tecvemar_session` DISABLE KEYS */;
INSERT INTO `tecvemar_session` VALUES ('vbh58qlfs2dt8693sb3dg4dda5',1,0,'1472066793','joomla|s:2980:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo4OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NzIwNjY3MTQ7czo0OiJsYXN0IjtpOjE0NzIwNjY3ODU7czozOiJub3ciO2k6MTQ3MjA2Njc5Mjt9czo1OiJ0b2tlbiI7czozMjoiNTQ2NzBmMWIwOTYwMTE0ODdkMTg5Yjc0MWM0MmVkMjIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czowOiIiO31zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjg6ImpzaG9waW5nIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Imxpc3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NToiYWRtaW4iO086ODoic3RkQ2xhc3MiOjY6e3M6MTg6InByb2R1Y3RjYXRlZ29yeV9pZCI7aTowO3M6MjI6InByb2R1Y3RtYW51ZmFjdHVyZXJfaWQiO2k6MDtzOjE2OiJwcm9kdWN0dmVuZG9yX2lkIjtpOi0xO3M6MTU6InByb2R1Y3RsYWJlbF9pZCI7aTowO3M6MTQ6InByb2R1Y3RwdWJsaXNoIjtpOjA7czoxODoicHJvZHVjdHRleHRfc2VhcmNoIjtzOjA6IiI7fX19czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjM7fXM6NDoiZGF0YSI7Tjt9fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6Mjg6e3M6OToiACoAaXNSb290IjtiOjE7czoyOiJpZCI7czozOiI3MzMiO3M6NDoibmFtZSI7czoxMDoiU3VwZXIgVXNlciI7czo4OiJ1c2VybmFtZSI7czo4OiJ0ZWN2ZW1hciI7czo1OiJlbWFpbCI7czoxNzoiaW5mb0B0ZWN2ZW1hci5jb20iO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCRQOS80dnYyQnI4YnFSYVNxamoubk1lc3c1SGdsT1lEd0FWUnpkUnFuRkY0RFJmUWd2cnhvTyI7czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtzOjE6IjAiO3M6OToic2VuZEVtYWlsIjtzOjE6IjEiO3M6MTI6InJlZ2lzdGVyRGF0ZSI7czoxOToiMjAxNi0wOC0yNCAxMzoxODozNCI7czoxMzoibGFzdHZpc2l0RGF0ZSI7czoxOToiMjAxNi0wOC0yNCAxODozNDo1NCI7czoxMDoiYWN0aXZhdGlvbiI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NjoiZ3JvdXBzIjthOjE6e2k6ODtzOjE6IjgiO31zOjU6Imd1ZXN0IjtpOjA7czoxMzoibGFzdFJlc2V0VGltZSI7czoxOToiMDAwMC0wMC0wMCAwMDowMDowMCI7czoxMDoicmVzZXRDb3VudCI7czoxOiIwIjtzOjEyOiJyZXF1aXJlUmVzZXQiO3M6MToiMCI7czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo4O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTo1OntpOjA7aToxO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjY7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDtzOjY6Im90cEtleSI7czowOiIiO3M6NDoib3RlcCI7czowOiIiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9czoxOToianNfaWRfY3VycmVuY3lfb3JpZyI7czoxOiIyIjtzOjE0OiJqc19pZF9jdXJyZW5jeSI7czoxOiIyIjtzOjIyOiJqc2hvcF9jaGVja2VkX2xhbmd1YWdlIjthOjI6e2k6MDtzOjU6ImVuLUdCIjtpOjE7czo1OiJlcy1FUyI7fXM6MTk6ImpzX2dldF9teXNxbHZlcnNpb24iO3M6NjoiNS43LjExIjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',733,'tecvemar');
/*!40000 ALTER TABLE `tecvemar_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_tags`
--

DROP TABLE IF EXISTS `tecvemar_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_tags`
--

LOCK TABLES `tecvemar_tags` WRITE;
/*!40000 ALTER TABLE `tecvemar_tags` DISABLE KEYS */;
INSERT INTO `tecvemar_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',42,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tecvemar_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_template_styles`
--

DROP TABLE IF EXISTS `tecvemar_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_template_styles`
--

LOCK TABLES `tecvemar_template_styles` WRITE;
/*!40000 ALTER TABLE `tecvemar_template_styles` DISABLE KEYS */;
INSERT INTO `tecvemar_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `tecvemar_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_ucm_base`
--

DROP TABLE IF EXISTS `tecvemar_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_ucm_base`
--

LOCK TABLES `tecvemar_ucm_base` WRITE;
/*!40000 ALTER TABLE `tecvemar_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_ucm_content`
--

DROP TABLE IF EXISTS `tecvemar_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_ucm_content`
--

LOCK TABLES `tecvemar_ucm_content` WRITE;
/*!40000 ALTER TABLE `tecvemar_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_ucm_history`
--

DROP TABLE IF EXISTS `tecvemar_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_ucm_history`
--

LOCK TABLES `tecvemar_ucm_history` WRITE;
/*!40000 ALTER TABLE `tecvemar_ucm_history` DISABLE KEYS */;
INSERT INTO `tecvemar_ucm_history` VALUES (1,2,5,'','2016-08-24 13:26:35',733,585,'bc9c6a158b0f44ce3658f14c6762ed25ad5bfb99','{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Noticias\",\"alias\":\"noticias\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"733\",\"checked_out_time\":\"2016-08-24 13:26:19\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"42\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"733\",\"modified_time\":\"2016-08-24 13:26:35\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(2,1,1,'','2016-08-24 13:31:05',733,5063,'bb34284a2c92514fe8d9b0fd32cba0301e6e512d','{\"id\":1,\"asset_id\":54,\"title\":\"El granito color de la naturaleza\",\"alias\":\"el-granito-color-de-la-naturaleza\",\"introtext\":\"<p>El estado Bol\\u00edvar hist\\u00f3ricamente se ha caracterizado por la riqueza de los minerales que como una obra de la naturaleza se acumul\\u00f3 en su vasto territorio, la explotaci\\u00f3n de las extensiones de granito se convirti\\u00f3 en una alternativa de aprovechamiento de los recursos de sus suelos. La piedra se convirti\\u00f3 r\\u00e1pidamente en elementos preferidos para la decoraci\\u00f3n, revestimientos de pisos, paredes, topes de cocina, materia prima en esculturas, monolitos y una grama de usos que no dejan de sorprender por su versatilidad. Escenarios emblem\\u00e1ticos que albergan los m\\u00e1s significativos momentos de la historia como plazas, templos, teatros y edificaciones han sido recubiertos por losas de granito en su variedad de vistosos y atractivos colores que se reunieron por actividad volc\\u00e1nica. Las empresas Granitos del Orinoco filial de T\\u00e9cnica Marmolera Venezolana CA (Tecvemar), se han unido para invertir en canteras bolivarenses, con la intenci\\u00f3n de popularizar los materiales extra\\u00eddos en Venezuela; as\\u00ed como para comercializarlos en los mercados internacionales. Afortunadamente, la experiencia ha sido tan satisfactoria y receptiva en los mercados criollos que las l\\u00e1minas de granito han superado etapas y cruzaron fronteras. El desarrollo de la industria de la mano de las novedades tecnol\\u00f3gicas toc\\u00f3 el procesamiento del granito y lo cambi\\u00f3.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Vanguardia del proceso de resinado de l\\u00e1minas<\\/p>\\r\\n<p>Tecvemar se integr\\u00f3 a los est\\u00e1ndares mundiales instalando una m\\u00e1quina, \\u00fanica en Venezuela, con la que se aporta una capa de resina como plus a las l\\u00e1minas, este proceso beneficia el brillo del material, mayor salubridad y sellado del material. Este nivel de calidad es accesible tanto en el mercado venezolano como en el mercado internacional.<\\/p>\\r\\n<p>Variedad de colores<\\/p>\\r\\n<p>El tono m\\u00e1s reciente y apreciado en la actualidad es el Marr\\u00f3n Imataca, extra\\u00eddo en la cantera Lizardero III, una l\\u00e1mina de tonos tierra con granos de tama\\u00f1o fino y mediano compactados. Uno de los m\\u00e1s apreciados y populares. Est\\u00e1 el color Gris Leona, que es uno de los m\\u00e1s populares que se obtiene de la cantera La Leona, que ofrece colores grises en variedad de tonalidades compactados, l\\u00e1minas que aportan elegancia en los espacios en los que se aplican. Tambi\\u00e9n hallamos el color Gris Guayana, con tonos grises claros brillantes que se encuentra en la cantera Rancho Caron\\u00ed. La variedad y misterio en la naturaleza de la regi\\u00f3n del estado bol\\u00edvar se encuentran tonos mezclados como Multicolor Maracay que se luce en una variedad de grises ahumados claros con ex\\u00f3ticos parches negros, de la cantera El Buitre. Asimismo, tenemos el tono denominado Rojo Guayana, una l\\u00e1mina que resulta emblem\\u00e1tica para reconocer edificaciones iconos de Venezuela como espacios de esparcimiento y recreaci\\u00f3n adem\\u00e1s de redes bancarias y cadenas hoteleras de renombre internacional. Existen otros tonos que se han venido popularizando en el mercado nacional como Gris Orinokia, Verde Curiapo, Multicolor Orinoco, Multicolor Vinotinto y m\\u00e1s que desde ya pueden apreciarlos en el sitio web www.tecvemar.com visitanos.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-08-24 13:31:05\",\"created_by\":\"733\",\"created_by_alias\":\"\",\"modified\":\"2016-08-24 13:31:05\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-08-24 13:31:05\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/granitos.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,2,1,'','2016-08-24 13:32:02',733,6082,'aa3f5251e00574c5143e427c12fd3986d7a413ee','{\"id\":2,\"asset_id\":55,\"title\":\"Guarenas cuna del talento deportivo\",\"alias\":\"guarenas-cuna-del-talento-deportivo\",\"introtext\":\"<p>El municipio Ambrosio Plaza del estado Miranda se vigoriza como cuna de grandes talentos deportivos en las disciplinas de baloncesto, mini baloncesto y en diversos escenarios del atletismo.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Baloncesto abriga record casi perfecto de ganados<\\/p>\\r\\n<p>Los integrantes del equipo local, Industriales de Guarenas viene cumpliendo un buen trabajo y comienza los octavos de final en la tercera divisi\\u00f3n de la Liga Nacional de Baloncesto (LNB), con un record de 14 victorias en 16 encuentros. Diego Montes De Oca, Director T\\u00e9cnico de los Industriales en poco tiempo ha logrado que en cada partido exhiban t\\u00e9cnica de juego, confianza, dominio del bal\\u00f3n y estrategia de equipo. Evidenciando su poder ante Uni\\u00f3n Ferrocarril del Tuy, Caciques de San Sebasti\\u00e1n, Bushido de Los Teques y Cumanagotos de Cuman\\u00e1; con este \\u00faltimo equipo registraron una victoria y una derrota durante el fin de semana en el Polideportivo Los Naranjos.<\\/p>\\r\\n<p>Reavivan liga de Mini Baloncesto regional<\\/p>\\r\\n<p>La Fundaci\\u00f3n Deportiva Mirandina (Fundamir) del municipio Plaza, recorre la regi\\u00f3n a prop\\u00f3sito de la ejecuci\\u00f3n de la II Edici\\u00f3n de la Liga Regional Femenina Mirandina de baloncesto, que desde el pasado 3 de octubre, marca el renacimiento de la organizaci\\u00f3n con la celebraci\\u00f3n de contiendas ante sus similares de cinco municipios de la entidad (Plaza, P\\u00e1ez, Sim\\u00f3n Bol\\u00edvar, Lander, Paz Castillo y Sucre), encuentros que se mantendr\\u00e1n hasta el pr\\u00f3ximo 13 de diciembre, en las categor\\u00edas Infantil y Juvenil Especial. Ollarvides Marshall, presidente de Fundamir inform\\u00f3 que la Liga Regional Femenina Mirandina, permaneci\\u00f3 inactiva por falta de presupuesto desde el a\\u00f1o 2006, y el resurgimiento se debe a CorpoMiranda y a la empresa granitera T\\u00e9cnica Marmolera Venezolana (Tecvemar). Seg\\u00fan Marshall la reactivaci\\u00f3n de la Liga es una motivaci\\u00f3n a la pr\\u00e1ctica y a la exigencia en la disciplina; pues de acuerdo a su consideraci\\u00f3n, la competencia entre ligas incentiva la preparaci\\u00f3n en momentos adicionales a los requeridos de cara a los campeonatos nacionales, lo que beneficia la formaci\\u00f3n del atleta y favorece directamente al medallero de Miranda, que como equipo en baloncesto femenino no obtiene medalla de oro desde el a\\u00f1o 1994. De igual manera, el entrenador expres\\u00f3 \\u201ces un orgullo hacer un tri\\u00e1ngulo con la empresa privada Tecvemar, el gobierno con CorpoMiranda y la Fundaci\\u00f3n Deportiva Mirandina como pueblo organizado\\u201d. Y agreg\\u00f3 que buscan garantizar el \\u00e9xito y bienestar social de la comunidad, en forma mancomunada.<\\/p>\\r\\n<p>Atletismo retoma senda de triunfos<\\/p>\\r\\n<p>J\\u00f3venes en edades de 10 a 13 a\\u00f1os oriundos de Miranda subieron al podio en el estadio Brigido Iriarte de El Para\\u00edso, en Caracas como resultado de una excelente participaci\\u00f3n en el Campeonato Nacional Preinfantil A y B de Atletismo. Fabi\\u00e1n G\\u00f3mez, presidente de la Fundaci\\u00f3n Gacelas, detall\\u00f3 que de 36 integrantes de la selecci\\u00f3n de Miranda, 17 pertenecen a Guarenas, quienes se lucieron en el encuentro que se mantuvo durante dos d\\u00edas en el estadio capitalino. G\\u00f3mez enfatiz\\u00f3 que los competidores de Guarenas \\u201cretomaron la senda de los triunfos, e hicieron historia en el atletismo mirandino\\u201d. Asimismo indic\\u00f3 que el aporte log\\u00edstico de Tecvemar fue lo que garantiz\\u00f3 su participaci\\u00f3n en el encuentro de atletismo.<\\/p>\\r\\n<p>Respaldo al deporte es la v\\u00eda<\\/p>\\r\\n<p>Esta gama de buenos resultados abonados a los grandes atletas guareneros confirman que la activaci\\u00f3n f\\u00edsica y la promoci\\u00f3n del deporte siguen siendo fundamentales entre los elementos que elevan el valor de una comunidad. En este sentido, la empresa T\\u00e9cnica Marmolera Venezolana, CA. (Tecvemar), se enorgullece de los frutos que vienen dando las organizaciones deportivas del municipio Ambrosio Plaza, en el estado Miranda y especialmente con la Fundaci\\u00f3n Gacelas, la Fundaci\\u00f3n Deportiva Mirandina y la selecci\\u00f3n de los Industriales de Guarenas con quienes ha mantenido un contacto directo y ha establecido s\\u00f3lidos respaldos v\\u00eda RSE.\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-08-24 13:32:02\",\"created_by\":\"733\",\"created_by_alias\":\"\",\"modified\":\"2016-08-24 13:32:02\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-08-24 13:32:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/marmolera_deporte.png\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,3,1,'','2016-08-24 13:32:49',733,4924,'7d02e0d986da038f9440e8dd37f9f73831a565a0','{\"id\":3,\"asset_id\":56,\"title\":\"Industria granitera rumbo al autosustento.\",\"alias\":\"industria-granitera-rumbo-al-autosustento\",\"introtext\":\"<p>El granito presente en el suelo guayan\\u00e9s no s\\u00f3lo forma parte de las bondades que posee Venezuela, sino que en este tiempo representa el renacimiento de las exportaciones alternativas al petr\\u00f3leo que impulsan la econom\\u00eda nacional. Quienes forman parte de las empresas Granitos del Orinoco y T\\u00e9cnica Marmolera Venezolana (Tecvemar), tienen a\\u00f1os dedicados en dar a conocer la belleza y calidad de los materiales que se extraen en la Regi\\u00f3n Guayana, como en popularizar los materiales en el mercado nacional e internacional. En este sentido, el programa Venezuela Exporta del Banco de Comercio Exterior (Bancoex), ha tomado una posici\\u00f3n estrat\\u00e9gica para insertar el granito criollo en los mercados de la Alianza Bolivariana para las Am\\u00e9ricas, adicionalmente ha dotado a los industriales con la base para ingresar a las naciones en las que se han levantado potenciales socios comerciales.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Exportaci\\u00f3n beneficia producci\\u00f3n nacional<\\/p>\\r\\n<p>El bloque de granito que se extrae con el esfuerzo de la mano de obra bolivarense, ha llegado a las m\\u00e1s reconocidas exhibiciones comerciales de Colombia, Brasil, Bolivia, Ecuador, Nicaragua, Per\\u00fa, Trinidad y Tobago, Espa\\u00f1a y Rusia. Cada muestra ha sido una semilla que se planta y en muchos casos ha rendido frutos pues en lo que va del a\\u00f1o 2015 se han materializado en negociaciones m\\u00e1s de 5 mil metros cuadrados de materiales por ejemplo en: Ecuador Bolivia, Colombia M\\u00e9xico, Nicaragua y Costa Rica en los que han tenido gran receptividad y acogida que se demuestran en el establecimiento de lazos comerciales caracterizados por la solicitud de nuevos pedidos de material. Estos ingresos a los mercados vecinos, con potencial para establecer relaciones econ\\u00f3micas pueden ascender a 600 millones de habitantes en Latinoam\\u00e9rica despertaron la necesidad de preparar la industria granitera para satisfacer la demanda nacional y continuar cruzando fronteras. Se espera en la actualidad, la culminaci\\u00f3n de procedimientos regulares para iniciar la expansi\\u00f3n de la capacidad productiva, en pocos meses se llevar\\u00eda a cabo el relanzamiento de las filiales Granitos del Orinoco y Tecvemar repotenciadas, maximizando sus capacidad productiva a m\\u00e1s de 300 mil metros cuadrados por a\\u00f1o; cantidad que triplica la producci\\u00f3n promedio de los \\u00faltimos a\\u00f1os. El proyecto de construcci\\u00f3n se encuentra en fase inicial completando el 10% de avance, de lo que una vez constituy\\u00f3 un anhelo y con el apoyo de Bancoex representa una realidad que toma forma en el kil\\u00f3metro 70 de la carretera vieja Ciudad Bol\\u00edvar \\u2013 Gur\\u00ed; espec\\u00edficamente en el Fundo La Leona. Es de hacer notar que las exportaciones impactan directamente en la comercializaci\\u00f3n nacional, pues el ingreso de divisas permite bajar los costos de producci\\u00f3n; adicionalmente hace que la industria se abra a nuevas perspectivas buscando tener una empresa autosustentada en relaci\\u00f3n a la generaci\\u00f3n de divisas y m\\u00e1s competitiva internacionalmente.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-08-24 13:32:49\",\"created_by\":\"733\",\"created_by_alias\":\"\",\"modified\":\"2016-08-24 13:32:49\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-08-24 13:32:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/bussiness-unit.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `tecvemar_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_update_sites`
--

DROP TABLE IF EXISTS `tecvemar_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_update_sites`
--

LOCK TABLES `tecvemar_update_sites` WRITE;
/*!40000 ALTER TABLE `tecvemar_update_sites` DISABLE KEYS */;
INSERT INTO `tecvemar_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1472066730,''),(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1472066730,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1472066728,''),(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1472066728,'');
/*!40000 ALTER TABLE `tecvemar_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_update_sites_extensions`
--

DROP TABLE IF EXISTS `tecvemar_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_update_sites_extensions`
--

LOCK TABLES `tecvemar_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `tecvemar_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `tecvemar_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10002),(4,28);
/*!40000 ALTER TABLE `tecvemar_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_updates`
--

DROP TABLE IF EXISTS `tecvemar_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_updates`
--

LOCK TABLES `tecvemar_updates` WRITE;
/*!40000 ALTER TABLE `tecvemar_updates` DISABLE KEYS */;
INSERT INTO `tecvemar_updates` VALUES (1,3,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml','',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,1,700,'Joomla','','joomla','file','',0,'3.6.0','','https://update.joomla.org/core/sts/extension_sts.xml','',''),(7,3,0,'French','','pkg_fr-FR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/fr-FR_details.xml','',''),(8,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml','',''),(9,3,0,'Georgian','','pkg_ka-GE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ka-GE_details.xml','',''),(10,3,0,'Greek','','pkg_el-GR','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/el-GR_details.xml','',''),(11,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ja-JP_details.xml','',''),(12,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/he-IL_details.xml','',''),(13,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/hu-HU_details.xml','',''),(14,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/af-ZA_details.xml','',''),(15,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.6.1.1','','https://update.joomla.org/language/details3/ar-AA_details.xml','',''),(16,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','https://update.joomla.org/language/details3/be-BY_details.xml','',''),(17,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/bg-BG_details.xml','',''),(18,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.6.1.1','','https://update.joomla.org/language/details3/ca-ES_details.xml','',''),(19,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.4.1.1','','https://update.joomla.org/language/details3/zh-CN_details.xml','',''),(20,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/hr-HR_details.xml','',''),(21,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(22,3,0,'Danish','','pkg_da-DK','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/da-DK_details.xml','',''),(23,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/nl-NL_details.xml','',''),(24,3,0,'Estonian','','pkg_et-EE','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/et-EE_details.xml','',''),(25,3,0,'Italian','','pkg_it-IT','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/it-IT_details.xml','',''),(26,3,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml','',''),(27,3,0,'Korean','','pkg_ko-KR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ko-KR_details.xml','',''),(28,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/lv-LV_details.xml','',''),(29,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/mk-MK_details.xml','',''),(30,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/nb-NO_details.xml','',''),(31,3,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml','',''),(32,3,0,'Persian','','pkg_fa-IR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/fa-IR_details.xml','',''),(33,3,0,'Polish','','pkg_pl-PL','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/pl-PL_details.xml','',''),(34,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.5.1.4','','https://update.joomla.org/language/details3/pt-PT_details.xml','',''),(35,3,0,'Russian','','pkg_ru-RU','package','',0,'3.5.0.6','','https://update.joomla.org/language/details3/ru-RU_details.xml','',''),(36,3,0,'English AU','','pkg_en-AU','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/en-AU_details.xml','',''),(37,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sk-SK_details.xml','',''),(38,3,0,'English US','','pkg_en-US','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/en-US_details.xml','',''),(39,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sv-SE_details.xml','',''),(40,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(41,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ta-IN_details.xml','',''),(42,3,0,'Thai','','pkg_th-TH','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/th-TH_details.xml','',''),(43,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/tr-TR_details.xml','',''),(44,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml','',''),(45,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','https://update.joomla.org/language/details3/ug-CN_details.xml','',''),(46,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/sq-AL_details.xml','',''),(47,3,0,'Basque','','pkg_eu-ES','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/eu-ES_details.xml','',''),(48,3,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.1','','https://update.joomla.org/language/details3/hi-IN_details.xml','',''),(49,3,0,'German DE','','pkg_de-DE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-DE_details.xml','',''),(50,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/pt-BR_details.xml','',''),(51,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sr-YU_details.xml','',''),(52,3,10002,'Spanish','','pkg_es-ES','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/es-ES_details.xml','',''),(53,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.4.8.1','','https://update.joomla.org/language/details3/bs-BA_details.xml','',''),(54,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sr-RS_details.xml','',''),(55,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','https://update.joomla.org/language/details3/vi-VN_details.xml','',''),(56,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/id-ID_details.xml','',''),(57,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/fi-FI_details.xml','',''),(58,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sw-KE_details.xml','',''),(59,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','https://update.joomla.org/language/details3/srp-ME_details.xml','',''),(60,3,0,'English CA','','pkg_en-CA','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/en-CA_details.xml','',''),(61,3,0,'French CA','','pkg_fr-CA','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/fr-CA_details.xml','',''),(62,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/cy-GB_details.xml','',''),(63,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','https://update.joomla.org/language/details3/si-LK_details.xml','',''),(64,3,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/prs-AF_details.xml','',''),(65,3,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/tk-TM_details.xml','',''),(66,3,0,'Irish','','pkg_ga-IE','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/ga-IE_details.xml','',''),(67,3,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/dz-BT_details.xml','',''),(68,3,0,'Slovenian','','pkg_sl-SI','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sl-SI_details.xml','',''),(69,3,0,'Spanish CO','','pkg_es-CO','package','',0,'3.6.1.1','','https://update.joomla.org/language/details3/es-CO_details.xml','',''),(70,3,0,'German CH','','pkg_de-CH','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-CH_details.xml','',''),(71,3,0,'German AT','','pkg_de-AT','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-AT_details.xml','',''),(72,3,0,'German LI','','pkg_de-LI','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-LI_details.xml','',''),(73,3,0,'German LU','','pkg_de-LU','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-LU_details.xml','','');
/*!40000 ALTER TABLE `tecvemar_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_keys`
--

DROP TABLE IF EXISTS `tecvemar_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_keys`
--

LOCK TABLES `tecvemar_user_keys` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_notes`
--

DROP TABLE IF EXISTS `tecvemar_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_notes`
--

LOCK TABLES `tecvemar_user_notes` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_profiles`
--

DROP TABLE IF EXISTS `tecvemar_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_profiles`
--

LOCK TABLES `tecvemar_user_profiles` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_usergroup_map`
--

DROP TABLE IF EXISTS `tecvemar_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_usergroup_map`
--

LOCK TABLES `tecvemar_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `tecvemar_user_usergroup_map` VALUES (733,8);
/*!40000 ALTER TABLE `tecvemar_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_usergroups`
--

DROP TABLE IF EXISTS `tecvemar_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_usergroups`
--

LOCK TABLES `tecvemar_usergroups` WRITE;
/*!40000 ALTER TABLE `tecvemar_usergroups` DISABLE KEYS */;
INSERT INTO `tecvemar_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `tecvemar_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_users`
--

DROP TABLE IF EXISTS `tecvemar_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_users`
--

LOCK TABLES `tecvemar_users` WRITE;
/*!40000 ALTER TABLE `tecvemar_users` DISABLE KEYS */;
INSERT INTO `tecvemar_users` VALUES (733,'Super User','tecvemar','info@tecvemar.com','$2y$10$P9/4vv2Br8bqRaSqjj.nMesw5HglOYDwAVRzdRqnFF4DRfQgvrxoO',0,1,'2016-08-24 13:18:34','2016-08-24 19:25:26','0','','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `tecvemar_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_viewlevels`
--

DROP TABLE IF EXISTS `tecvemar_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_viewlevels`
--

LOCK TABLES `tecvemar_viewlevels` WRITE;
/*!40000 ALTER TABLE `tecvemar_viewlevels` DISABLE KEYS */;
INSERT INTO `tecvemar_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `tecvemar_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `tecvemar2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tecvemar2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tecvemar2`;

--
-- Table structure for table `b_suscribete`
--

DROP TABLE IF EXISTS `b_suscribete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_suscribete` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `enviarEmail` varchar(10) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` varchar(250) NOT NULL,
  `ip` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_suscribete`
--

LOCK TABLES `b_suscribete` WRITE;
/*!40000 ALTER TABLE `b_suscribete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_suscribete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_assets`
--

DROP TABLE IF EXISTS `tecvemar_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_assets`
--

LOCK TABLES `tecvemar_assets` WRITE;
/*!40000 ALTER TABLE `tecvemar_assets` DISABLE KEYS */;
INSERT INTO `tecvemar_assets` VALUES (1,0,0,109,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,26,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,27,28,1,'com_cpanel','com_cpanel','{}'),(10,1,29,30,1,'com_installer','com_installer','{\"core.admin\":[],\"core.options\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,31,32,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,33,34,1,'com_login','com_login','{}'),(13,1,35,36,1,'com_mailto','com_mailto','{}'),(14,1,37,38,1,'com_massmail','com_massmail','{}'),(15,1,39,40,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,41,42,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,43,44,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,45,76,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,77,80,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,81,82,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,83,84,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,85,86,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,87,88,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,89,92,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,93,94,1,'com_wrapper','com_wrapper','{}'),(27,8,18,25,2,'com_content.category.2','Noticias','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,78,79,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,90,91,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,95,96,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,97,98,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,99,100,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,101,102,1,'com_contenthistory','com_contenthistory','{}'),(37,1,103,104,1,'com_ajax','com_ajax','{}'),(38,1,105,106,1,'com_postinstall','com_postinstall','{}'),(39,18,46,47,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,48,49,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,50,51,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,52,53,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,54,55,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,56,57,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,58,59,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,60,61,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,62,63,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,64,65,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,66,67,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,68,69,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,70,71,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,72,73,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,74,75,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,27,19,20,3,'com_content.article.1','El granito color de la naturaleza','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,27,21,22,3,'com_content.article.2','Guarenas cuna del talento deportivo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,27,23,24,3,'com_content.article.3','Industria granitera rumbo al autosustento.','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,1,107,108,1,'com_jshopping','jshopping','{}');
/*!40000 ALTER TABLE `tecvemar_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_associations`
--

DROP TABLE IF EXISTS `tecvemar_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_associations`
--

LOCK TABLES `tecvemar_associations` WRITE;
/*!40000 ALTER TABLE `tecvemar_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_banner_clients`
--

DROP TABLE IF EXISTS `tecvemar_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_banner_clients`
--

LOCK TABLES `tecvemar_banner_clients` WRITE;
/*!40000 ALTER TABLE `tecvemar_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_banner_tracks`
--

DROP TABLE IF EXISTS `tecvemar_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_banner_tracks`
--

LOCK TABLES `tecvemar_banner_tracks` WRITE;
/*!40000 ALTER TABLE `tecvemar_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_banners`
--

DROP TABLE IF EXISTS `tecvemar_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_banners`
--

LOCK TABLES `tecvemar_banners` WRITE;
/*!40000 ALTER TABLE `tecvemar_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_categories`
--

DROP TABLE IF EXISTS `tecvemar_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_categories`
--

LOCK TABLES `tecvemar_categories` WRITE;
/*!40000 ALTER TABLE `tecvemar_categories` DISABLE KEYS */;
INSERT INTO `tecvemar_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'noticias','com_content','Noticias','noticias','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',733,'2016-08-24 13:26:35',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `tecvemar_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_contact_details`
--

DROP TABLE IF EXISTS `tecvemar_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_contact_details`
--

LOCK TABLES `tecvemar_contact_details` WRITE;
/*!40000 ALTER TABLE `tecvemar_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content`
--

DROP TABLE IF EXISTS `tecvemar_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content`
--

LOCK TABLES `tecvemar_content` WRITE;
/*!40000 ALTER TABLE `tecvemar_content` DISABLE KEYS */;
INSERT INTO `tecvemar_content` VALUES (1,54,'El granito color de la naturaleza','el-granito-color-de-la-naturaleza','<p>El estado Bolívar históricamente se ha caracterizado por la riqueza de los minerales que como una obra de la naturaleza se acumuló en su vasto territorio, la explotación de las extensiones de granito se convirtió en una alternativa de aprovechamiento de los recursos de sus suelos. La piedra se convirtió rápidamente en elementos preferidos para la decoración, revestimientos de pisos, paredes, topes de cocina, materia prima en esculturas, monolitos y una grama de usos que no dejan de sorprender por su versatilidad. Escenarios emblemáticos que albergan los más significativos momentos de la historia como plazas, templos, teatros y edificaciones han sido recubiertos por losas de granito en su variedad de vistosos y atractivos colores que se reunieron por actividad volcánica. Las empresas Granitos del Orinoco filial de Técnica Marmolera Venezolana CA (Tecvemar), se han unido para invertir en canteras bolivarenses, con la intención de popularizar los materiales extraídos en Venezuela; así como para comercializarlos en los mercados internacionales. Afortunadamente, la experiencia ha sido tan satisfactoria y receptiva en los mercados criollos que las láminas de granito han superado etapas y cruzaron fronteras. El desarrollo de la industria de la mano de las novedades tecnológicas tocó el procesamiento del granito y lo cambió.</p>\r\n<p> </p>\r\n<p>Vanguardia del proceso de resinado de láminas</p>\r\n<p>Tecvemar se integró a los estándares mundiales instalando una máquina, única en Venezuela, con la que se aporta una capa de resina como plus a las láminas, este proceso beneficia el brillo del material, mayor salubridad y sellado del material. Este nivel de calidad es accesible tanto en el mercado venezolano como en el mercado internacional.</p>\r\n<p>Variedad de colores</p>\r\n<p>El tono más reciente y apreciado en la actualidad es el Marrón Imataca, extraído en la cantera Lizardero III, una lámina de tonos tierra con granos de tamaño fino y mediano compactados. Uno de los más apreciados y populares. Está el color Gris Leona, que es uno de los más populares que se obtiene de la cantera La Leona, que ofrece colores grises en variedad de tonalidades compactados, láminas que aportan elegancia en los espacios en los que se aplican. También hallamos el color Gris Guayana, con tonos grises claros brillantes que se encuentra en la cantera Rancho Caroní. La variedad y misterio en la naturaleza de la región del estado bolívar se encuentran tonos mezclados como Multicolor Maracay que se luce en una variedad de grises ahumados claros con exóticos parches negros, de la cantera El Buitre. Asimismo, tenemos el tono denominado Rojo Guayana, una lámina que resulta emblemática para reconocer edificaciones iconos de Venezuela como espacios de esparcimiento y recreación además de redes bancarias y cadenas hoteleras de renombre internacional. Existen otros tonos que se han venido popularizando en el mercado nacional como Gris Orinokia, Verde Curiapo, Multicolor Orinoco, Multicolor Vinotinto y más que desde ya pueden apreciarlos en el sitio web www.tecvemar.com visitanos.</p>','',1,2,'2016-08-24 13:31:05',733,'','2016-08-24 13:31:05',0,0,'0000-00-00 00:00:00','2016-08-24 13:31:05','0000-00-00 00:00:00','{\"image_intro\":\"images\\/granitos.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,55,'Guarenas cuna del talento deportivo','guarenas-cuna-del-talento-deportivo','<p>El municipio Ambrosio Plaza del estado Miranda se vigoriza como cuna de grandes talentos deportivos en las disciplinas de baloncesto, mini baloncesto y en diversos escenarios del atletismo.</p>\r\n<p> </p>\r\n<p>Baloncesto abriga record casi perfecto de ganados</p>\r\n<p>Los integrantes del equipo local, Industriales de Guarenas viene cumpliendo un buen trabajo y comienza los octavos de final en la tercera división de la Liga Nacional de Baloncesto (LNB), con un record de 14 victorias en 16 encuentros. Diego Montes De Oca, Director Técnico de los Industriales en poco tiempo ha logrado que en cada partido exhiban técnica de juego, confianza, dominio del balón y estrategia de equipo. Evidenciando su poder ante Unión Ferrocarril del Tuy, Caciques de San Sebastián, Bushido de Los Teques y Cumanagotos de Cumaná; con este último equipo registraron una victoria y una derrota durante el fin de semana en el Polideportivo Los Naranjos.</p>\r\n<p>Reavivan liga de Mini Baloncesto regional</p>\r\n<p>La Fundación Deportiva Mirandina (Fundamir) del municipio Plaza, recorre la región a propósito de la ejecución de la II Edición de la Liga Regional Femenina Mirandina de baloncesto, que desde el pasado 3 de octubre, marca el renacimiento de la organización con la celebración de contiendas ante sus similares de cinco municipios de la entidad (Plaza, Páez, Simón Bolívar, Lander, Paz Castillo y Sucre), encuentros que se mantendrán hasta el próximo 13 de diciembre, en las categorías Infantil y Juvenil Especial. Ollarvides Marshall, presidente de Fundamir informó que la Liga Regional Femenina Mirandina, permaneció inactiva por falta de presupuesto desde el año 2006, y el resurgimiento se debe a CorpoMiranda y a la empresa granitera Técnica Marmolera Venezolana (Tecvemar). Según Marshall la reactivación de la Liga es una motivación a la práctica y a la exigencia en la disciplina; pues de acuerdo a su consideración, la competencia entre ligas incentiva la preparación en momentos adicionales a los requeridos de cara a los campeonatos nacionales, lo que beneficia la formación del atleta y favorece directamente al medallero de Miranda, que como equipo en baloncesto femenino no obtiene medalla de oro desde el año 1994. De igual manera, el entrenador expresó “es un orgullo hacer un triángulo con la empresa privada Tecvemar, el gobierno con CorpoMiranda y la Fundación Deportiva Mirandina como pueblo organizado”. Y agregó que buscan garantizar el éxito y bienestar social de la comunidad, en forma mancomunada.</p>\r\n<p>Atletismo retoma senda de triunfos</p>\r\n<p>Jóvenes en edades de 10 a 13 años oriundos de Miranda subieron al podio en el estadio Brigido Iriarte de El Paraíso, en Caracas como resultado de una excelente participación en el Campeonato Nacional Preinfantil A y B de Atletismo. Fabián Gómez, presidente de la Fundación Gacelas, detalló que de 36 integrantes de la selección de Miranda, 17 pertenecen a Guarenas, quienes se lucieron en el encuentro que se mantuvo durante dos días en el estadio capitalino. Gómez enfatizó que los competidores de Guarenas “retomaron la senda de los triunfos, e hicieron historia en el atletismo mirandino”. Asimismo indicó que el aporte logístico de Tecvemar fue lo que garantizó su participación en el encuentro de atletismo.</p>\r\n<p>Respaldo al deporte es la vía</p>\r\n<p>Esta gama de buenos resultados abonados a los grandes atletas guareneros confirman que la activación física y la promoción del deporte siguen siendo fundamentales entre los elementos que elevan el valor de una comunidad. En este sentido, la empresa Técnica Marmolera Venezolana, CA. (Tecvemar), se enorgullece de los frutos que vienen dando las organizaciones deportivas del municipio Ambrosio Plaza, en el estado Miranda y especialmente con la Fundación Gacelas, la Fundación Deportiva Mirandina y la selección de los Industriales de Guarenas con quienes ha mantenido un contacto directo y ha establecido sólidos respaldos vía RSE. </p>','',1,2,'2016-08-24 13:32:02',733,'','2016-08-24 13:32:02',0,0,'0000-00-00 00:00:00','2016-08-24 13:32:02','0000-00-00 00:00:00','{\"image_intro\":\"images\\/marmolera_deporte.png\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,56,'Industria granitera rumbo al autosustento.','industria-granitera-rumbo-al-autosustento','<p>El granito presente en el suelo guayanés no sólo forma parte de las bondades que posee Venezuela, sino que en este tiempo representa el renacimiento de las exportaciones alternativas al petróleo que impulsan la economía nacional. Quienes forman parte de las empresas Granitos del Orinoco y Técnica Marmolera Venezolana (Tecvemar), tienen años dedicados en dar a conocer la belleza y calidad de los materiales que se extraen en la Región Guayana, como en popularizar los materiales en el mercado nacional e internacional. En este sentido, el programa Venezuela Exporta del Banco de Comercio Exterior (Bancoex), ha tomado una posición estratégica para insertar el granito criollo en los mercados de la Alianza Bolivariana para las Américas, adicionalmente ha dotado a los industriales con la base para ingresar a las naciones en las que se han levantado potenciales socios comerciales.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Exportación beneficia producción nacional</p>\r\n<p>El bloque de granito que se extrae con el esfuerzo de la mano de obra bolivarense, ha llegado a las más reconocidas exhibiciones comerciales de Colombia, Brasil, Bolivia, Ecuador, Nicaragua, Perú, Trinidad y Tobago, España y Rusia. Cada muestra ha sido una semilla que se planta y en muchos casos ha rendido frutos pues en lo que va del año 2015 se han materializado en negociaciones más de 5 mil metros cuadrados de materiales por ejemplo en: Ecuador Bolivia, Colombia México, Nicaragua y Costa Rica en los que han tenido gran receptividad y acogida que se demuestran en el establecimiento de lazos comerciales caracterizados por la solicitud de nuevos pedidos de material. Estos ingresos a los mercados vecinos, con potencial para establecer relaciones económicas pueden ascender a 600 millones de habitantes en Latinoamérica despertaron la necesidad de preparar la industria granitera para satisfacer la demanda nacional y continuar cruzando fronteras. Se espera en la actualidad, la culminación de procedimientos regulares para iniciar la expansión de la capacidad productiva, en pocos meses se llevaría a cabo el relanzamiento de las filiales Granitos del Orinoco y Tecvemar repotenciadas, maximizando sus capacidad productiva a más de 300 mil metros cuadrados por año; cantidad que triplica la producción promedio de los últimos años. El proyecto de construcción se encuentra en fase inicial completando el 10% de avance, de lo que una vez constituyó un anhelo y con el apoyo de Bancoex representa una realidad que toma forma en el kilómetro 70 de la carretera vieja Ciudad Bolívar – Gurí; específicamente en el Fundo La Leona. Es de hacer notar que las exportaciones impactan directamente en la comercialización nacional, pues el ingreso de divisas permite bajar los costos de producción; adicionalmente hace que la industria se abra a nuevas perspectivas buscando tener una empresa autosustentada en relación a la generación de divisas y más competitiva internacionalmente.</p>','',1,2,'2016-08-24 13:32:49',733,'','2016-08-24 13:32:49',0,733,'2016-08-24 19:26:24','2016-08-24 13:32:49','0000-00-00 00:00:00','{\"image_intro\":\"images\\/bussiness-unit.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `tecvemar_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content_frontpage`
--

DROP TABLE IF EXISTS `tecvemar_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content_frontpage`
--

LOCK TABLES `tecvemar_content_frontpage` WRITE;
/*!40000 ALTER TABLE `tecvemar_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content_rating`
--

DROP TABLE IF EXISTS `tecvemar_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content_rating`
--

LOCK TABLES `tecvemar_content_rating` WRITE;
/*!40000 ALTER TABLE `tecvemar_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_content_types`
--

DROP TABLE IF EXISTS `tecvemar_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_content_types`
--

LOCK TABLES `tecvemar_content_types` WRITE;
/*!40000 ALTER TABLE `tecvemar_content_types` DISABLE KEYS */;
INSERT INTO `tecvemar_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `tecvemar_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_contentitem_tag_map`
--

DROP TABLE IF EXISTS `tecvemar_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_contentitem_tag_map`
--

LOCK TABLES `tecvemar_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `tecvemar_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_core_log_searches`
--

DROP TABLE IF EXISTS `tecvemar_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_core_log_searches`
--

LOCK TABLES `tecvemar_core_log_searches` WRITE;
/*!40000 ALTER TABLE `tecvemar_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_extensions`
--

DROP TABLE IF EXISTS `tecvemar_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_extensions`
--

LOCK TABLES `tecvemar_extensions` WRITE;
/*!40000 ALTER TABLE `tecvemar_extensions` DISABLE KEYS */;
INSERT INTO `tecvemar_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"0\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"es-ES\",\"site\":\"es-ES\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"96d202801a7a698c523b37eb69a52d43\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.6\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"December 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.8\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'joomla_3.4.8','language','es-ES','',0,1,0,0,'{\"name\":\"joomla_3.4.8\",\"type\":\"language\",\"creationDate\":\"14\\/03\\/2016\",\"author\":\"ComunidadJoomla\",\"copyright\":\"Copyright (C) 2005 - 2016 comunididadjomla.org. All rights reserved.r; see LICENSE.txt\",\"authorEmail\":\"jcomunidad@gmail.com\",\"authorUrl\":\"http:\\/\\/comunidadjoomla.org\",\"version\":\"3.4.8.1\",\"description\":\"es-ESsite language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'joomla_3.4.8','language','es-ES','',1,1,0,0,'{\"name\":\"joomla_3.4.8\",\"type\":\"language\",\"creationDate\":\"14\\/03\\/2016\",\"author\":\"ComunidadJoomla\",\"copyright\":\"Copyright (C) 2005 - 2016 comunididadjomla.org. All rights reserved.r; see LICENSE.txt\",\"authorEmail\":\"jcomunidad@gmail.com\",\"authorUrl\":\"http:\\/\\/comunidadjoomla.org\",\"version\":\"3.4.8.1\",\"description\":\"es-ESsite language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'joomla_3.4.8','package','pkg_es-ES','',0,1,1,0,'{\"name\":\"joomla_3.4.8\",\"type\":\"package\",\"creationDate\":\"14\\/03\\/2016\",\"author\":\"ComunidadJoomla\",\"copyright\":\"Copyright (C) 2005 - 2016 comunididadjomla.org. All rights reserved.r; see LICENSE.txt\",\"authorEmail\":\"jcomunidad@gmail.com\",\"authorUrl\":\"http:\\/\\/comunidadjoomla.org\",\"version\":\"3.4.8.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 3.4.8.<\\/h2><p><\\/p><p>Please report any bugs or issues at the Comunidad Joomla! <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Translation forum<\\/a><\\/p><p><\\/p><p>Translated by: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">The spanish translation team of Comunidad Joomla!<\\/a><\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 3.4.8 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestro <a href=\\\"http:\\/\\/foro.comunidadjoomla.org\\/traduccion-ext\\/\\\" target=\\\"_blank\\\">Foro de traducciones<\\/a><\\/p><p><\\/p><p>Traducci\\u00f3n: <a href=\\\"http:\\/\\/www.comunidadjoomla.org\\\" target=\\\"_blank\\\" title=\\\"\\\">El equipo de traducci\\u00f3n de Comunidad Joomla!<\\/a><\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'jshopping','component','com_jshopping','',1,1,0,0,'{\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"10.08.2014\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.6.1\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\",\"filename\":\"jshopping\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `tecvemar_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_filters`
--

DROP TABLE IF EXISTS `tecvemar_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_filters`
--

LOCK TABLES `tecvemar_finder_filters` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links`
--

DROP TABLE IF EXISTS `tecvemar_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links`
--

LOCK TABLES `tecvemar_finder_links` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms0`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms0`
--

LOCK TABLES `tecvemar_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms1`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms1`
--

LOCK TABLES `tecvemar_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms2`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms2`
--

LOCK TABLES `tecvemar_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms3`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms3`
--

LOCK TABLES `tecvemar_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms4`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms4`
--

LOCK TABLES `tecvemar_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms5`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms5`
--

LOCK TABLES `tecvemar_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms6`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms6`
--

LOCK TABLES `tecvemar_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms7`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms7`
--

LOCK TABLES `tecvemar_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms8`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms8`
--

LOCK TABLES `tecvemar_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_terms9`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_terms9`
--

LOCK TABLES `tecvemar_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsa`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsa`
--

LOCK TABLES `tecvemar_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsb`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsb`
--

LOCK TABLES `tecvemar_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsc`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsc`
--

LOCK TABLES `tecvemar_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsd`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsd`
--

LOCK TABLES `tecvemar_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termse`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termse`
--

LOCK TABLES `tecvemar_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_links_termsf`
--

DROP TABLE IF EXISTS `tecvemar_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_links_termsf`
--

LOCK TABLES `tecvemar_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_taxonomy`
--

DROP TABLE IF EXISTS `tecvemar_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_taxonomy`
--

LOCK TABLES `tecvemar_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `tecvemar_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `tecvemar_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_taxonomy_map`
--

LOCK TABLES `tecvemar_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_terms`
--

DROP TABLE IF EXISTS `tecvemar_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_terms`
--

LOCK TABLES `tecvemar_finder_terms` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_terms_common`
--

DROP TABLE IF EXISTS `tecvemar_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_terms_common`
--

LOCK TABLES `tecvemar_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_terms_common` DISABLE KEYS */;
INSERT INTO `tecvemar_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `tecvemar_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_tokens`
--

DROP TABLE IF EXISTS `tecvemar_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_tokens`
--

LOCK TABLES `tecvemar_finder_tokens` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `tecvemar_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_tokens_aggregate`
--

LOCK TABLES `tecvemar_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_finder_types`
--

DROP TABLE IF EXISTS `tecvemar_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_finder_types`
--

LOCK TABLES `tecvemar_finder_types` WRITE;
/*!40000 ALTER TABLE `tecvemar_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_addons`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `usekey` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `uninstall` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_addons`
--

LOCK TABLES `tecvemar_jshopping_addons` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_ordering` int(11) NOT NULL,
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `allcats` tinyint(1) NOT NULL DEFAULT '1',
  `cats` text NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_attr`
--

LOCK TABLES `tecvemar_jshopping_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_attr_values`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_attr_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_attr_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_attr_values`
--

LOCK TABLES `tecvemar_jshopping_attr_values` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_attr_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_cart_temp`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_cart_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_cart_temp`
--

LOCK TABLES `tecvemar_jshopping_cart_temp` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_cart_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_cart_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_categories`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_publish` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT NULL,
  `products_page` int(8) NOT NULL DEFAULT '12',
  `products_row` int(3) NOT NULL DEFAULT '3',
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `alias_es-ES` varchar(255) NOT NULL,
  `short_description_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  `meta_title_es-ES` varchar(255) NOT NULL,
  `meta_description_es-ES` text NOT NULL,
  `meta_keyword_es-ES` text NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_categories`
--

LOCK TABLES `tecvemar_jshopping_categories` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_categories` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_categories` VALUES (1,NULL,0,1,1,NULL,1,'2016-08-24 13:48:59',12,3,1,'','','','','','','','Clasicos','','','','','',''),(2,NULL,0,1,1,NULL,3,'2016-08-24 13:49:14',12,3,1,'','','','','','','','Exoticos','','','','','',''),(3,NULL,0,1,1,NULL,4,'2016-08-24 13:49:36',12,3,1,'','','','','','','','Internacional','','','','','','');
/*!40000 ALTER TABLE `tecvemar_jshopping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config` (
  `id` tinyint(1) NOT NULL,
  `count_products_to_page` int(4) NOT NULL,
  `count_products_to_row` int(2) NOT NULL,
  `count_category_to_row` int(2) NOT NULL,
  `image_category_width` int(4) NOT NULL,
  `image_category_height` int(4) NOT NULL,
  `image_product_width` int(4) NOT NULL,
  `image_product_height` int(4) NOT NULL,
  `image_product_full_width` int(4) NOT NULL,
  `image_product_full_height` int(4) NOT NULL,
  `image_product_original_width` int(4) NOT NULL,
  `image_product_original_height` int(4) NOT NULL,
  `video_product_width` int(4) NOT NULL,
  `video_product_height` int(4) NOT NULL,
  `adminLanguage` varchar(8) NOT NULL,
  `defaultLanguage` varchar(8) NOT NULL,
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL DEFAULT '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting` tinyint(1) NOT NULL DEFAULT '1',
  `product_sorting_direction` tinyint(1) NOT NULL,
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `cart_display_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  `delivery_order_depends_delivery_product` tinyint(1) NOT NULL,
  `show_delivery_time_step5` tinyint(1) NOT NULL,
  `other_config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config`
--

LOCK TABLES `tecvemar_jshopping_config` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_config` VALUES (1,12,3,1,160,0,780,0,1600,0,0,0,320,240,'es-ES','es-ES',2,2,'.','',2,1,1,1,'%storename %address %city %zip','%d.%m.%Y','info@tecvemar.com',1,1,0,10,-1.00,0,0,'208:65:208:30',1,0,0,1,1,0,0,0,1,1,1,1,0,0,'ba1d64afc67c3428b62cec4cf2bf54fa',0,0,0,0,0,0,0,0,0,'',0,0,0,0,1,1,1,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'a:3:{s:8:\"register\";a:15:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:6:\"u_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:8:\"password\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:10:\"password_2\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:7:\"address\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}s:11:\"editaccount\";a:22:{s:5:\"title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:10:\"firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:6:\"street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:4:\"city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"state\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:3:\"fax\";a:1:{s:7:\"display\";s:1:\"1\";}s:7:\"d_title\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_f_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:8:\"d_l_name\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:12:\"d_firma_name\";a:1:{s:7:\"display\";s:1:\"1\";}s:8:\"d_street\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:5:\"d_zip\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"d_city\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_state\";a:1:{s:7:\"display\";s:1:\"1\";}s:9:\"d_country\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:7:\"d_phone\";a:2:{s:7:\"display\";s:1:\"1\";s:7:\"require\";s:1:\"1\";}s:6:\"f_name\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}s:5:\"email\";a:2:{s:7:\"require\";i:1;s:7:\"display\";i:1;}}}','',1,0,0,0,0,3,1,1,0,0,0,'','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,'a:2:{s:3:\"tax\";s:1:\"1\";s:5:\"stock\";s:1:\"1\";}');
/*!40000 ALTER TABLE `tecvemar_jshopping_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config_display_prices`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config_display_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config_display_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config_display_prices`
--

LOCK TABLES `tecvemar_jshopping_config_display_prices` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_display_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_display_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config_seo`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_es-ES` varchar(255) NOT NULL,
  `keyword_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config_seo`
--

LOCK TABLES `tecvemar_jshopping_config_seo` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_seo` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_config_seo` VALUES (1,'category',10,'','','','','',''),(2,'manufacturers',20,'','','','','',''),(3,'cart',30,'','','','','',''),(4,'wishlist',40,'','','','','',''),(5,'login',50,'','','','','',''),(6,'register',60,'','','','','',''),(7,'editaccount',70,'','','','','',''),(8,'myorders',80,'','','','','',''),(9,'myaccount',90,'','','','','',''),(10,'search',100,'','','','','',''),(11,'search-result',110,'','','','','',''),(12,'myorder-detail',120,'','','','','',''),(13,'vendors',130,'','','','','',''),(14,'content-agb',140,'','','','','',''),(15,'content-return_policy',150,'','','','','',''),(16,'content-shipping',160,'','','','','',''),(17,'content-privacy_statement',161,'','','','','',''),(18,'checkout-address',170,'','','','','',''),(19,'checkout-payment',180,'','','','','',''),(20,'checkout-shipping',190,'','','','','',''),(21,'checkout-preview',200,'','','','','',''),(22,'lastproducts',210,'','','','','',''),(23,'randomproducts',220,'','','','','',''),(24,'bestsellerproducts',230,'','','','','',''),(25,'labelproducts',240,'','','','','',''),(26,'topratingproducts',250,'','','','','',''),(27,'tophitsproducts',260,'','','','','',''),(28,'all-products',270,'','','','','','');
/*!40000 ALTER TABLE `tecvemar_jshopping_config_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_config_statictext`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_config_statictext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_config_statictext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `use_for_return_policy` int(11) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_config_statictext`
--

LOCK TABLES `tecvemar_jshopping_config_statictext` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_config_statictext` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_config_statictext` VALUES (1,'home',0,'',''),(2,'manufacturer',0,'',''),(3,'agb',0,'',''),(4,'return_policy',0,'',''),(5,'order_email_descr',0,'',''),(6,'order_email_descr_end',0,'',''),(7,'order_finish_descr',0,'',''),(8,'shipping',0,'',''),(9,'privacy_statement',0,'',''),(10,'cart',0,'','');
/*!40000 ALTER TABLE `tecvemar_jshopping_config_statictext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_countries`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_countries`
--

LOCK TABLES `tecvemar_jshopping_countries` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_countries` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_countries` VALUES (1,1,1,'AFG','AF','Afghanistan','Afghanistan','Afghanistan'),(2,1,2,'ALB','AL','Albania','Albanien','Albania'),(3,1,3,'DZA','DZ','Algeria','Algerien','Algeria'),(4,1,4,'ASM','AS','American Samoa','Amerikanisch-Samoa','American Samoa'),(5,1,5,'AND','AD','Andorra','Andorra','Andorra'),(6,1,6,'AGO','AO','Angola','Angola','Angola'),(7,1,7,'AIA','AI','Anguilla','Anguilla','Anguilla'),(8,1,8,'ATA','AQ','Antarctica','Antarktis','Antarctica'),(9,1,9,'ATG','AG','Antigua and Barbuda','Antigua und Barbuda','Antigua and Barbuda'),(10,1,10,'ARG','AR','Argentina','Argentinien','Argentina'),(11,1,11,'ARM','AM','Armenia','Armenien','Armenia'),(12,1,12,'ABW','AW','Aruba','Aruba','Aruba'),(13,1,13,'AUS','AU','Australia','Australien','Australia'),(14,1,14,'AUT','AT','Austria','Österreich','Austria'),(15,1,15,'AZE','AZ','Azerbaijan','Aserbaidschan','Azerbaijan'),(16,1,16,'BHS','BS','Bahamas','Bahamas','Bahamas'),(17,1,17,'BHR','BH','Bahrain','Bahrain','Bahrain'),(18,1,18,'BGD','BD','Bangladesh','Bangladesch','Bangladesh'),(19,1,19,'BRB','BB','Barbados','Barbados','Barbados'),(20,1,20,'BLR','BY','Belarus','Weissrussland','Belarus'),(21,1,21,'BEL','BE','Belgium','Belgien','Belgium'),(22,1,22,'BLZ','BZ','Belize','Belize','Belize'),(23,1,23,'BEN','BJ','Benin','Benin','Benin'),(24,1,24,'BMU','BM','Bermuda','Bermuda','Bermuda'),(25,1,25,'BTN','BT','Bhutan','Bhutan','Bhutan'),(26,1,26,'BOL','BO','Bolivia','Bolivien','Bolivia'),(27,1,27,'BIH','BA','Bosnia and Herzegowina','Bosnien und Herzegowina','Bosnia and Herzegowina'),(28,1,28,'BWA','BW','Botswana','Botsuana','Botswana'),(29,1,29,'BVT','BV','Bouvet Island','Bouvetinsel','Bouvet Island'),(30,1,30,'BRA','BR','Brazil','Brasilien','Brazil'),(31,1,31,'IOT','IO','British Indian Ocean Territory','Britisches Territorium im Indischen Ozean','British Indian Ocean Territory'),(32,1,32,'BRN','BN','Brunei Darussalam','Brunei','Brunei Darussalam'),(33,1,33,'BGR','BG','Bulgaria','Bulgarien','Bulgaria'),(34,1,34,'BFA','BF','Burkina Faso','Burkina Faso','Burkina Faso'),(35,1,35,'BDI','BI','Burundi','Burundi','Burundi'),(36,1,36,'KHM','KH','Cambodia','Kambodscha','Cambodia'),(37,1,37,'CMR','CM','Cameroon','Kamerun','Cameroon'),(38,1,38,'CAN','CA','Canada','Kanada','Canada'),(39,1,39,'CPV','CV','Cape Verde','Kap Verde','Cape Verde'),(40,1,40,'CYM','KY','Cayman Islands','Cayman-Inseln','Cayman Islands'),(41,1,41,'CAF','CF','Central African Republic','Zentralafrikanische Republik','Central African Republic'),(42,1,42,'TCD','TD','Chad','Tschad','Chad'),(43,1,43,'CHL','CL','Chile','Chile','Chile'),(44,1,44,'CHN','CN','China','China','China'),(45,1,45,'CXR','CX','Christmas Island','Christmas Island','Christmas Island'),(46,1,46,'CCK','CC','Cocos (Keeling) Islands','Kokosinseln (Keeling)','Cocos (Keeling) Islands'),(47,1,47,'COL','CO','Colombia','Kolumbien','Colombia'),(48,1,48,'COM','KM','Comoros','Komoren','Comoros'),(49,1,49,'COG','CG','Congo','Kongo, Republik','Congo'),(50,1,50,'COK','CK','Cook Islands','Cookinseln','Cook Islands'),(51,1,51,'CRI','CR','Costa Rica','Costa Rica','Costa Rica'),(52,1,52,'CIV','CI','Cote D\'Ivoire','Elfenbeinküste','Cote D\'Ivoire'),(53,1,53,'HRV','HR','Croatia','Kroatien','Croatia'),(54,1,54,'CUB','CU','Cuba','Kuba','Cuba'),(55,1,55,'CYP','CY','Cyprus','Zypern','Cyprus'),(56,1,56,'CZE','CZ','Czech Republic','Tschechien','Czech Republic'),(57,1,57,'DNK','DK','Denmark','Dänemark','Denmark'),(58,1,58,'DJI','DJ','Djibouti','Dschibuti','Djibouti'),(59,1,59,'DMA','DM','Dominica','Dominica','Dominica'),(60,1,60,'DOM','DO','Dominican Republic','Dominikanische Republik','Dominican Republic'),(61,1,61,'TMP','TL','East Timor','Osttimor','East Timor'),(62,1,62,'ECU','EC','Ecuador','Ecuador','Ecuador'),(63,1,63,'EGY','EG','Egypt','Ägypten','Egypt'),(64,1,64,'SLV','SV','El Salvador','El Salvador','El Salvador'),(65,1,65,'GNQ','GQ','Equatorial Guinea','Äquatorial-Guinea','Equatorial Guinea'),(66,1,66,'ERI','ER','Eritrea','Eritrea','Eritrea'),(67,1,67,'EST','EE','Estonia','Estland','Estonia'),(68,1,68,'ETH','ET','Ethiopia','Äthiopien','Ethiopia'),(69,1,69,'FLK','FK','Falkland Islands (Malvinas)','Falklandinseln','Falkland Islands (Malvinas)'),(70,1,70,'FRO','FO','Faroe Islands','Färöer','Faroe Islands'),(71,1,71,'FJI','FJ','Fiji','Fidschi','Fiji'),(72,1,72,'FIN','FI','Finland','Finnland','Finland'),(73,1,73,'FRA','FR','France','Frankreich','France'),(74,1,74,'FXX','FX','France Metropolitan','Frankreich, Metropolitan','France Metropolitan'),(75,1,75,'GUF','GF','French Guiana','Französisch-Guyana','French Guiana'),(76,1,76,'PYF','PF','French Polynesia','Franz. Polynesien','French Polynesia'),(77,1,77,'ATF','TF','French Southern Territories','Französiche Süd- und Antarktisgebiete','French Southern Territories'),(78,1,78,'GAB','GA','Gabon','Gabun','Gabon'),(79,1,79,'GMB','GM','Gambia','Gambia','Gambia'),(80,1,80,'GEO','GE','Georgia','Georgien','Georgia'),(81,1,81,'DEU','DE','Germany','Deutschland','Germany'),(82,1,82,'GHA','GH','Ghana','Ghana','Ghana'),(83,1,83,'GIB','GI','Gibraltar','Gibraltar','Gibraltar'),(84,1,84,'GRC','GR','Greece','Griechenland','Greece'),(85,1,85,'GRL','GL','Greenland','Grönland','Greenland'),(86,1,86,'GRD','GD','Grenada','Grenada','Grenada'),(87,1,87,'GLP','GP','Guadeloupe','Guadeloupe','Guadeloupe'),(88,1,88,'GUM','GU','Guam','Guam','Guam'),(89,1,89,'GTM','GT','Guatemala','Guatemala','Guatemala'),(90,1,90,'GIN','GN','Guinea','Guinea','Guinea'),(91,1,91,'GNB','GW','Guinea-bissau','Guinea-Bissau','Guinea-bissau'),(92,1,92,'GUY','GY','Guyana','Guyana','Guyana'),(93,1,93,'HTI','HT','Haiti','Haiti','Haiti'),(94,1,94,'HMD','HM','Heard and Mc Donald Islands','Heard und McDonaldinseln','Heard and Mc Donald Islands'),(95,1,95,'HND','HN','Honduras','Honduras','Honduras'),(96,1,96,'HKG','HK','Hong Kong','Hong Kong','Hong Kong'),(97,1,97,'HUN','HU','Hungary','Ungarn','Hungary'),(98,1,98,'ISL','IS','Iceland','Island','Iceland'),(99,1,99,'IND','IN','India','Indien','India'),(100,1,100,'IDN','ID','Indonesia','Indonesien','Indonesia'),(101,1,101,'IRN','IR','Iran (Islamic Republic of)','Iran','Iran (Islamic Republic of)'),(102,1,102,'IRQ','IQ','Iraq','Irak','Iraq'),(103,1,103,'IRL','IE','Ireland','Irland','Ireland'),(104,1,104,'ISR','IL','Israel','Israel','Israel'),(105,1,105,'ITA','IT','Italy','Italien','Italy'),(106,1,106,'JAM','JM','Jamaica','Jamaika','Jamaica'),(107,1,107,'JPN','JP','Japan','Japan','Japan'),(108,1,108,'JOR','JO','Jordan','Jordanien','Jordan'),(109,1,109,'KAZ','KZ','Kazakhstan','Kasachstan','Kazakhstan'),(110,1,110,'KEN','KE','Kenya','Kenia','Kenya'),(111,1,111,'KIR','KI','Kiribati','Kiribati','Kiribati'),(112,1,112,'PRK','KP','Korea Democratic People\'s Republic of','Korea Demokratische Volksrepublik','Korea Democratic People\'s Republic of'),(113,1,113,'KOR','KR','Korea Republic of','Korea','Korea Republic of'),(114,1,114,'KWT','KW','Kuwait','Kuwait','Kuwait'),(115,1,115,'KGZ','KG','Kyrgyzstan','Kirgistan','Kyrgyzstan'),(116,1,116,'LAO','LA','Lao People\'s Democratic Republic','Laos','Lao People\'s Democratic Republic'),(117,1,117,'LVA','LV','Latvia','Lettland','Latvia'),(118,1,118,'LBN','LB','Lebanon','Libanon','Lebanon'),(119,1,119,'LSO','LS','Lesotho','Lesotho','Lesotho'),(120,1,120,'LBR','LR','Liberia','Liberia','Liberia'),(121,1,121,'LBY','LY','Libyan Arab Jamahiriya','Libyen','Libyan Arab Jamahiriya'),(122,1,122,'LIE','LI','Liechtenstein','Liechtenstein','Liechtenstein'),(123,1,123,'LTU','LT','Lithuania','Litauen','Lithuania'),(124,1,124,'LUX','LU','Luxembourg','Luxemburg','Luxembourg'),(125,1,125,'MAC','MO','Macau','Makao','Macau'),(126,1,126,'MKD','MK','Macedonia The Former Yugoslav Republic of','Mazedonien','Macedonia The Former Yugoslav Republic of'),(127,1,127,'MDG','MG','Madagascar','Madagaskar','Madagascar'),(128,1,128,'MWI','MW','Malawi','Malawi','Malawi'),(129,1,129,'MYS','MY','Malaysia','Malaysia','Malaysia'),(130,1,130,'MDV','MV','Maldives','Malediven','Maldives'),(131,1,131,'MLI','ML','Mali','Mali','Mali'),(132,1,132,'MLT','MT','Malta','Malta','Malta'),(133,1,133,'MHL','MH','Marshall Islands','Marshallinseln','Marshall Islands'),(134,1,134,'MTQ','MQ','Martinique','Martinique','Martinique'),(135,1,135,'MRT','MR','Mauritania','Mauretanien','Mauritania'),(136,1,136,'MUS','MU','Mauritius','Mauritius','Mauritius'),(137,1,137,'MYT','YT','Mayotte','Mayott','Mayotte'),(138,1,138,'MEX','MX','Mexico','Mexiko','Mexico'),(139,1,139,'FSM','FM','Micronesia Federated States of','Mikronesien','Micronesia Federated States of'),(140,1,140,'MDA','MD','Moldova Republic of','Moldawien','Moldova Republic of'),(141,1,141,'MCO','MC','Monaco','Monaco','Monaco'),(142,1,142,'MNG','MN','Mongolia','Mongolei','Mongolia'),(143,1,143,'MSR','MS','Montserrat','Montserrat','Montserrat'),(144,1,144,'MAR','MA','Morocco','Marokko','Morocco'),(145,1,145,'MOZ','MZ','Mozambique','Mosambik','Mozambique'),(146,1,146,'MMR','MM','Myanmar','Myanmar','Myanmar'),(147,1,147,'NAM','NA','Namibia','Namibia','Namibia'),(148,1,148,'NRU','NR','Nauru','Nauru','Nauru'),(149,1,149,'NPL','NP','Nepal','Nepal','Nepal'),(150,1,150,'NLD','NL','Netherlands','Niederlande','Netherlands'),(151,1,151,'ANT','AN','Netherlands Antilles','Niederländisch-Antillen','Netherlands Antilles'),(152,1,152,'NCL','NC','New Caledonia','Neukaledonien','New Caledonia'),(153,1,153,'NZL','NZ','New Zealand','Neuseeland','New Zealand'),(154,1,154,'NIC','NI','Nicaragua','Nicaragua','Nicaragua'),(155,1,155,'NER','NE','Niger','Niger','Niger'),(156,1,156,'NGA','NG','Nigeria','Nigeria','Nigeria'),(157,1,157,'NIU','NU','Niue','Niue','Niue'),(158,1,158,'NFK','NF','Norfolk Island','Norfolkinsel','Norfolk Island'),(159,1,159,'MNP','MP','Northern Mariana Islands','Nördliche Marianen','Northern Mariana Islands'),(160,1,160,'NOR','NO','Norway','Norwegen','Norway'),(161,1,161,'OMN','OM','Oman','Oman','Oman'),(162,1,162,'PAK','PK','Pakistan','Pakistan','Pakistan'),(163,1,163,'PLW','PW','Palau','Palau','Palau'),(164,1,164,'PAN','PA','Panama','Panama','Panama'),(165,1,165,'PNG','PG','Papua New Guinea','Papua-Neuguinea','Papua New Guinea'),(166,1,166,'PRY','PY','Paraguay','Paraguay','Paraguay'),(167,1,167,'PER','PE','Peru','Peru','Peru'),(168,1,168,'PHL','PH','Philippines','Philippinen','Philippines'),(169,1,169,'PCN','PN','Pitcairn','Pitcairn','Pitcairn'),(170,1,170,'POL','PL','Poland','Polen','Poland'),(171,1,171,'PRT','PT','Portugal','Portugal','Portugal'),(172,1,172,'PRI','PR','Puerto Rico','Puerto Rico','Puerto Rico'),(173,1,173,'QAT','QA','Qatar','Katar','Qatar'),(174,1,174,'REU','RE','Reunion','Reunion','Reunion'),(175,1,175,'ROM','RO','Romania','Rumänien','Romania'),(176,1,176,'RUS','RU','Russian Federation','Russische Föderation','Russian Federation'),(177,1,177,'RWA','RW','Rwanda','Ruanda','Rwanda'),(178,1,178,'KNA','KN','Saint Kitts and Nevis','St. Kitts und Nevis','Saint Kitts and Nevis'),(179,1,179,'LCA','LC','Saint Lucia','St. Lucia','Saint Lucia'),(180,1,180,'VCT','VC','Saint Vincent and the Grenadines','St. Vincent und die Grenadinen','Saint Vincent and the Grenadines'),(181,1,181,'WSM','WS','Samoa','Samoa','Samoa'),(182,1,182,'SMR','SM','San Marino','San Marino','San Marino'),(183,1,183,'STP','ST','Sao Tome and Principe','Sao Tomé und Príncipe','Sao Tome and Principe'),(184,1,184,'SAU','SA','Saudi Arabia','Saudi-Arabien','Saudi Arabia'),(185,1,185,'SEN','SN','Senegal','Senegal','Senegal'),(186,1,186,'SYC','SC','Seychelles','Seychellen','Seychelles'),(187,1,187,'SLE','SL','Sierra Leone','Sierra Leone','Sierra Leone'),(188,1,188,'SGP','SG','Singapore','Singapur','Singapore'),(189,1,189,'SVK','SK','Slovakia (Slovak Republic)','Slowakei','Slovakia (Slovak Republic)'),(190,1,190,'SVN','SI','Slovenia','Slowenien','Slovenia'),(191,1,191,'SLB','SB','Solomon Islands','Salomonen','Solomon Islands'),(192,1,192,'SOM','SO','Somalia','Somalia','Somalia'),(193,1,193,'ZAF','ZA','South Africa','Republik Südafrika','South Africa'),(194,1,194,'SGS','GS','South Georgia and the South Sandwich Islands','Südgeorgien und die Südlichen Sandwichinseln','South Georgia and the South Sandwich Islands'),(195,1,195,'ESP','ES','Spain','Spanien','Spain'),(196,1,196,'LKA','LK','Sri Lanka','Sri Lanka','Sri Lanka'),(197,1,197,'SHN','SH','St. Helena','St. Helena','St. Helena'),(198,1,198,'SPM','PM','St. Pierre and Miquelon','St. Pierre und Miquelon','St. Pierre and Miquelon'),(199,1,199,'SDN','SD','Sudan','Sudan','Sudan'),(200,1,200,'SUR','SR','Suriname','Suriname','Suriname'),(201,1,201,'SJM','SJ','Svalbard and Jan Mayen Islands','Svalbard und Jan Mayen','Svalbard and Jan Mayen Islands'),(202,1,202,'SWZ','SZ','Swaziland','Swasiland','Swaziland'),(203,1,203,'SWE','SE','Sweden','Schweden','Sweden'),(204,1,204,'CHE','CH','Switzerland','Schweiz','Switzerland'),(205,1,205,'SYR','SY','Syrian Arab Republic','Syrien','Syrian Arab Republic'),(206,1,206,'TWN','TW','Taiwan','Taiwan','Taiwan'),(207,1,207,'TJK','TJ','Tajikistan','Tadschikistan','Tajikistan'),(208,1,208,'TZA','TZ','Tanzania United Republic of','Tansania','Tanzania United Republic of'),(209,1,209,'THA','TH','Thailand','Thailand','Thailand'),(210,1,210,'TGO','TG','Togo','Togo','Togo'),(211,1,211,'TKL','TK','Tokelau','Tokelau','Tokelau'),(212,1,212,'TON','TO','Tonga','Tonga','Tonga'),(213,1,213,'TTO','TT','Trinidad and Tobago','Trinidad und Tobago','Trinidad and Tobago'),(214,1,214,'TUN','TN','Tunisia','Tunesien','Tunisia'),(215,1,215,'TUR','TR','Turkey','Türkei','Turkey'),(216,1,216,'TKM','TM','Turkmenistan','Turkmenistan','Turkmenistan'),(217,1,217,'TCA','TC','Turks and Caicos Islands','Turks- und Caicosinseln','Turks and Caicos Islands'),(218,1,218,'TUV','TV','Tuvalu','Tuvalu','Tuvalu'),(219,1,219,'UGA','UG','Uganda','Uganda','Uganda'),(220,1,220,'UKR','UA','Ukraine','Ukraine','Ukraine'),(221,1,221,'ARE','AE','United Arab Emirates','Vereinigte Arabische Emirate','United Arab Emirates'),(222,1,222,'GBR','GB','United Kingdom','Vereinigtes Königreich','United Kingdom'),(223,1,223,'USA','US','United States','USA','United States'),(224,1,224,'UMI','UM','United States Minor Outlying Islands','United States Minor Outlying Islands','United States Minor Outlying Islands'),(225,1,225,'URY','UY','Uruguay','Uruguay','Uruguay'),(226,1,226,'UZB','UZ','Uzbekistan','Usbekistan','Uzbekistan'),(227,1,227,'VUT','VU','Vanuatu','Vanuatu','Vanuatu'),(228,1,228,'VAT','VA','Vatican City State (Holy See)','Vatikanstadt','Vatican City State (Holy See)'),(229,1,229,'VEN','VE','Venezuela','Venezuela','Venezuela'),(230,1,230,'VNM','VN','Viet Nam','Vietnam','Viet Nam'),(231,1,231,'VGB','VG','Virgin Islands (British)','Britische Jungferninseln','Virgin Islands (British)'),(232,1,232,'VIR','VI','Virgin Islands (U.S.)','Vereinigte Staaten von Amerika','Virgin Islands (U.S.)'),(233,1,233,'WLF','WF','Wallis and Futuna Islands','Wallis und Futuna','Wallis and Futuna Islands'),(234,1,234,'ESH','EH','Western Sahara','Westsahara','Western Sahara'),(235,1,235,'YEM','YE','Yemen','Jemen','Yemen'),(236,1,236,'YUG','YU','Yugoslavia','Yugoslavia','Yugoslavia'),(237,1,237,'ZAR','ZR','Zaire','Zaire','Zaire'),(238,1,238,'ZMB','ZM','Zambia','Sambia','Zambia'),(239,1,239,'ZWE','ZW','Zimbabwe','Simbabwe','Zimbabwe');
/*!40000 ALTER TABLE `tecvemar_jshopping_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_coupons`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint(4) NOT NULL COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL DEFAULT '0000-00-00',
  `coupon_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_coupons`
--

LOCK TABLES `tecvemar_jshopping_coupons` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_currencies`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_currencies` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_code_num` varchar(3) NOT NULL,
  `currency_ordering` int(11) NOT NULL,
  `currency_value` decimal(14,6) NOT NULL,
  `currency_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_currencies`
--

LOCK TABLES `tecvemar_jshopping_currencies` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_currencies` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_currencies` VALUES (1,'Euro','EUR','EUR','978',3,1.000000,1),(2,'Bolivares','Bs','Bs','',1,1.000000,1);
/*!40000 ALTER TABLE `tecvemar_jshopping_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_delivery_times`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_delivery_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_delivery_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` decimal(8,2) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_delivery_times`
--

LOCK TABLES `tecvemar_jshopping_delivery_times` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_delivery_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_delivery_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_free_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_free_attr`
--

LOCK TABLES `tecvemar_jshopping_free_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_free_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_import_export`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_import_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_import_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_import_export`
--

LOCK TABLES `tecvemar_jshopping_import_export` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_import_export` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_import_export` VALUES (1,'Simple Export','simpleexport','Simple Export in CSV iso-8859-1','filename=export',0,1),(2,'Simple Import','simpleimport','Simple Import in CSV iso-8859-1','',0,0);
/*!40000 ALTER TABLE `tecvemar_jshopping_import_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_languages`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_languages`
--

LOCK TABLES `tecvemar_jshopping_languages` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_languages` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_languages` VALUES (1,'en-GB','English',1,0),(2,'es-ES','Spanish',1,0);
/*!40000 ALTER TABLE `tecvemar_jshopping_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_manufacturers`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `alias_es-ES` varchar(255) NOT NULL,
  `short_description_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  `meta_title_es-ES` varchar(255) NOT NULL,
  `meta_description_es-ES` text NOT NULL,
  `meta_keyword_es-ES` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_manufacturers`
--

LOCK TABLES `tecvemar_jshopping_manufacturers` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_order_history`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` tinyint(1) NOT NULL,
  `status_date_added` datetime NOT NULL,
  `customer_notify` int(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_order_history`
--

LOCK TABLES `tecvemar_jshopping_order_history` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_order_item`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_ean` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `product_item_price` decimal(14,4) NOT NULL,
  `product_tax` decimal(14,4) NOT NULL,
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `extra_fields` text NOT NULL,
  `files` text NOT NULL,
  `weight` decimal(14,4) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `basicprice` decimal(12,2) NOT NULL,
  `basicpriceunit` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_order_item`
--

LOCK TABLES `tecvemar_jshopping_order_item` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_order_status`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` char(1) NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `name_es-ES` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_order_status`
--

LOCK TABLES `tecvemar_jshopping_order_status` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_order_status` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_order_status` VALUES (1,'P','Pending','Offen','Pending'),(2,'C','Confirmed','Bestätigt','Confirmed'),(3,'X','Cancelled','Abgebrochen','Cancelled'),(4,'R','Refunded','Gutschrift','Refunded'),(5,'S','Shipped','Gesendet','Shipped'),(6,'O','Paid','Bezahlt','Paid'),(7,'F','Complete','Abgeschlossen','Complete');
/*!40000 ALTER TABLE `tecvemar_jshopping_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_orders`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_total` decimal(14,4) NOT NULL,
  `order_subtotal` decimal(14,4) NOT NULL,
  `order_tax` decimal(14,4) NOT NULL,
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(14,4) NOT NULL,
  `order_payment` decimal(14,4) NOT NULL,
  `order_discount` decimal(14,4) NOT NULL,
  `shipping_tax` decimal(12,4) NOT NULL,
  `shipping_tax_ext` text NOT NULL,
  `payment_tax` decimal(12,4) NOT NULL,
  `payment_tax_ext` text NOT NULL,
  `order_package` decimal(12,2) NOT NULL,
  `package_tax_ext` text NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `currency_code_iso` varchar(3) NOT NULL,
  `currency_exchange` decimal(14,6) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime NOT NULL,
  `order_m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(255) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(255) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL,
  `file_hash` varchar(64) NOT NULL,
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_orders`
--

LOCK TABLES `tecvemar_jshopping_orders` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_payment_method`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `show_bank_in_order` tinyint(1) NOT NULL DEFAULT '1',
  `order_description` text NOT NULL,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `name_es-ES` varchar(100) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_payment_method`
--

LOCK TABLES `tecvemar_jshopping_payment_method` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_payment_method` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_payment_method` VALUES (1,'bank','pm_bank',1,1,'',1,4.00,0,1,'',0,1,'','Cash on delivery','','Nachnahme','','Cash on delivery',''),(2,'PO','pm_purchase_order',1,2,'',1,0.00,0,1,'',1,1,'','Advance payment','','Vorauskasse','','Advance payment',''),(3,'paypal','pm_paypal',1,3,'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0',2,0.00,0,1,'',0,1,'','Paypal','','Paypal','','Paypal',''),(4,'debit','pm_debit',1,4,'',1,0.00,0,1,'',0,1,'','Debit','Please insert your bankdata.','Lastschrift','Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.','Debit','Please insert your bankdata.'),(5,'ST','pm_sofortueberweisung',0,5,'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n',2,0.00,0,1,'',0,1,'','Sofortueberweisung','','Sofortueberweisung','','Sofortueberweisung','');
/*!40000 ALTER TABLE `tecvemar_jshopping_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_product_labels`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_product_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_product_labels`
--

LOCK TABLES `tecvemar_jshopping_product_labels` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_product_labels` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_product_labels` VALUES (1,'New','New','New','new.png','New'),(2,'Sale','Sale','Sale','sale.png','Sale');
/*!40000 ALTER TABLE `tecvemar_jshopping_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` decimal(12,2) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(1) NOT NULL,
  `product_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL,
  `product_tax_id` tinyint(3) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `product_template` varchar(64) NOT NULL DEFAULT 'default',
  `product_url` varchar(255) NOT NULL,
  `product_old_price` decimal(14,4) NOT NULL,
  `product_buy_price` decimal(14,4) NOT NULL,
  `product_price` decimal(18,6) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `different_prices` tinyint(1) NOT NULL,
  `product_weight` decimal(14,4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL,
  `product_is_add_price` tinyint(1) NOT NULL,
  `add_price_unit_id` int(3) NOT NULL,
  `average_rating` float(4,2) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `delivery_times_id` int(4) NOT NULL,
  `hits` int(11) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `basic_price_unit_id` int(3) NOT NULL,
  `label_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `access` int(3) NOT NULL DEFAULT '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `alias_es-ES` varchar(255) NOT NULL,
  `short_description_es-ES` text NOT NULL,
  `description_es-ES` text NOT NULL,
  `meta_title_es-ES` varchar(255) NOT NULL,
  `meta_description_es-ES` text NOT NULL,
  `meta_keyword_es-ES` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products`
--

LOCK TABLES `tecvemar_jshopping_products` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_products` VALUES (1,0,'',1.00,0,'','2016-08-24 14:05:09','2016-08-24 14:13:56',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_caribe.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Caribe','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(2,0,'',1.00,0,'','2016-08-24 14:08:19','2016-08-24 14:14:02',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_gris_aro.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Gris Aro','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(3,0,'',1.00,0,'','2016-08-24 14:08:58','2016-08-24 14:14:07',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_gris_leona.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Gris Leona','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(4,0,'',1.00,0,'','2016-08-24 14:09:37','2016-08-24 14:14:14',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_multicolor_vinotinto.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Multicolor Vinotinto','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(5,0,'',1.00,0,'','2016-08-24 17:20:54','2016-08-24 17:20:54',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_marron_imataca.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Marron Imataca','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(6,0,'',1.00,0,'','2016-08-24 17:24:39','2016-08-24 17:24:39',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_multicolor_orinoco.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Multicolor Orinoco','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(10,0,'',1.00,0,'','2016-08-24 17:29:12','2016-08-24 17:29:36',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rojo_guaimire.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rojo Guaimire','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(8,0,'',1.00,0,'','2016-08-24 17:26:34','2016-08-24 17:26:34',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_negro_guayana.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Negro Guayana / Gris Guayana Oscuro','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(9,0,'',1.00,0,'','2016-08-24 17:27:18','2016-08-24 17:27:18',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rojo_amara.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rojo Amara','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(11,0,'',1.00,0,'','2016-08-24 17:30:53','2016-08-24 17:30:53',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rojo_veteado.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rojo Veteado','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(12,0,'',1.00,0,'','2016-08-24 17:31:46','2016-08-24 17:31:46',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_rosa_natura.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Rosa Natura','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(13,0,'',1.00,0,'','2016-08-24 17:32:28','2016-08-24 17:32:28',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_salmon_negro.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Salmón Negro','','Piedra extraída y emblemática de la ciudad de Guayana','','','',''),(14,0,'',1.00,0,'','2016-08-24 17:33:38','2016-08-24 17:33:38',1,1,2,'default','',0.0000,0.0000,0.000000,0.00,0,0.0000,'thums_verde_capri.jpg',0,0,3,0.00,0,0,0,0.0000,0,0,0,1,'','','','','','','','Verde Capri','','Piedra extraída y emblemática de la ciudad de Guayana','','','','');
/*!40000 ALTER TABLE `tecvemar_jshopping_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(14,4) NOT NULL,
  `old_price` decimal(14,4) NOT NULL,
  `count` decimal(14,4) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(14,4) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_attr`
--

LOCK TABLES `tecvemar_jshopping_products_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_attr2`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_attr2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_attr2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(14,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_attr2`
--

LOCK TABLES `tecvemar_jshopping_products_attr2` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_attr2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_extra_field_groups`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_extra_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_extra_field_groups`
--

LOCK TABLES `tecvemar_jshopping_products_extra_field_groups` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_extra_field_values`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_extra_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_extra_field_values`
--

LOCK TABLES `tecvemar_jshopping_products_extra_field_values` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_extra_fields`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_extra_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `multilist` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_extra_fields`
--

LOCK TABLES `tecvemar_jshopping_products_extra_fields` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_files`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_files`
--

LOCK TABLES `tecvemar_jshopping_products_files` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_free_attr`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_free_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_free_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_free_attr`
--

LOCK TABLES `tecvemar_jshopping_products_free_attr` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_free_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_free_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_images`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_images`
--

LOCK TABLES `tecvemar_jshopping_products_images` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_images` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_products_images` VALUES (1,1,'thums_caribe.jpg','',1),(2,1,'caribe.jpg','',2),(3,2,'thums_gris_aro.jpg','',1),(4,2,'gris_aro.jpg','',2),(5,3,'thums_gris_leona.jpg','',1),(6,3,'gris_leona.jpg','',2),(7,4,'thums_multicolor_vinotinto.jpg','',1),(8,4,'multicolor_vinotinto.jpg','',2),(9,5,'thums_marron_imataca.jpg','',1),(10,5,'marron_imataca.jpg','',2),(11,6,'thums_multicolor_orinoco.jpg','',1),(12,6,'multicolor_orinoco.jpg','',2),(20,10,'rojo_guaimire.jpg','',2),(19,10,'thums_rojo_guaimire.jpg','',1),(15,8,'thums_negro_guayana.jpg','',1),(16,8,'negro_guayana.jpg','',2),(17,9,'thums_rojo_amara.jpg','',1),(18,9,'rojo_amara.jpg','',2),(21,11,'thums_rojo_veteado.jpg','',1),(22,11,'rojo_veteado.jpg','',2),(23,12,'thums_rosa_natura.jpg','',1),(24,12,'rosa_natura.jpg','',2),(25,13,'thums_salmon_negro.jpg','',1),(26,13,'salmon_negro.jpg','',2),(27,14,'thums_verde_capri.jpg','',1),(28,14,'verde_capri.jpg','',2);
/*!40000 ALTER TABLE `tecvemar_jshopping_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_option`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prodkey` (`product_id`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_option`
--

LOCK TABLES `tecvemar_jshopping_products_option` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_prices`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_prices` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_prices`
--

LOCK TABLES `tecvemar_jshopping_products_prices` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_relations`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_related_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_relations`
--

LOCK TABLES `tecvemar_jshopping_products_relations` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_reviews`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_reviews`
--

LOCK TABLES `tecvemar_jshopping_products_reviews` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_to_categories`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_ordering` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_to_categories`
--

LOCK TABLES `tecvemar_jshopping_products_to_categories` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_to_categories` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_products_to_categories` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,1,5),(10,1,8),(8,1,6),(9,1,7),(11,2,2),(12,2,3),(13,2,4),(14,1,9);
/*!40000 ALTER TABLE `tecvemar_jshopping_products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_products_videos`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_products_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_products_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_code` text NOT NULL,
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_products_videos`
--

LOCK TABLES `tecvemar_jshopping_products_videos` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_products_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_ext_calc`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_ext_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_ext_calc`
--

LOCK TABLES `tecvemar_jshopping_shipping_ext_calc` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_ext_calc` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_ext_calc` VALUES (1,'StandartWeight','sm_standart_weight','StandartWeight','','',1,1);
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_ext_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_es-ES` varchar(100) NOT NULL,
  `description_es-ES` text NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method`
--

LOCK TABLES `tecvemar_jshopping_shipping_method` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_method` VALUES (1,'Standard','','Standardversand','',1,'','',1,'Standard',''),(2,'Express','','Express','',1,'','',2,'Express','');
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method_price`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL,
  `shipping_stand_price` decimal(14,4) NOT NULL,
  `package_tax_id` int(11) NOT NULL,
  `package_stand_price` decimal(14,4) NOT NULL,
  `delivery_times_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method_price`
--

LOCK TABLES `tecvemar_jshopping_shipping_method_price` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_method_price` VALUES (1,1,1,10.0000,1,0.0000,0,''),(2,2,1,25.0000,1,0.0000,0,'');
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method_price_countries`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method_price_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method_price_countries`
--

LOCK TABLES `tecvemar_jshopping_shipping_method_price_countries` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_countries` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_shipping_method_price_countries` VALUES (1,239,1),(2,238,1),(3,237,1),(4,236,1),(5,235,1),(6,234,1),(7,233,1),(8,232,1),(9,231,1),(10,230,1),(11,229,1),(12,228,1),(13,227,1),(14,226,1),(15,225,1),(16,224,1),(17,223,1),(18,222,1),(19,221,1),(20,220,1),(21,219,1),(22,218,1),(23,217,1),(24,216,1),(25,215,1),(26,214,1),(27,213,1),(28,212,1),(29,211,1),(30,210,1),(31,209,1),(32,208,1),(33,207,1),(34,206,1),(35,205,1),(36,204,1),(37,203,1),(38,202,1),(39,201,1),(40,200,1),(41,199,1),(42,198,1),(43,197,1),(44,196,1),(45,195,1),(46,194,1),(47,193,1),(48,192,1),(49,191,1),(50,190,1),(51,189,1),(52,188,1),(53,187,1),(54,186,1),(55,185,1),(56,184,1),(57,183,1),(58,182,1),(59,181,1),(60,180,1),(61,179,1),(62,178,1),(63,177,1),(64,176,1),(65,175,1),(66,174,1),(67,173,1),(68,172,1),(69,171,1),(70,170,1),(71,169,1),(72,168,1),(73,167,1),(74,166,1),(75,165,1),(76,164,1),(77,163,1),(78,162,1),(79,161,1),(80,160,1),(81,159,1),(82,158,1),(83,157,1),(84,156,1),(85,155,1),(86,154,1),(87,153,1),(88,152,1),(89,151,1),(90,150,1),(91,149,1),(92,148,1),(93,147,1),(94,146,1),(95,145,1),(96,144,1),(97,143,1),(98,142,1),(99,141,1),(100,140,1),(101,139,1),(102,138,1),(103,137,1),(104,136,1),(105,135,1),(106,134,1),(107,133,1),(108,132,1),(109,131,1),(110,130,1),(111,129,1),(112,128,1),(113,127,1),(114,126,1),(115,125,1),(116,124,1),(117,123,1),(118,122,1),(119,121,1),(120,120,1),(121,119,1),(122,118,1),(123,117,1),(124,116,1),(125,115,1),(126,114,1),(127,113,1),(128,112,1),(129,111,1),(130,110,1),(131,109,1),(132,108,1),(133,107,1),(134,106,1),(135,105,1),(136,104,1),(137,103,1),(138,102,1),(139,101,1),(140,100,1),(141,99,1),(142,98,1),(143,97,1),(144,96,1),(145,95,1),(146,94,1),(147,93,1),(148,92,1),(149,91,1),(150,90,1),(151,89,1),(152,88,1),(153,87,1),(154,86,1),(155,85,1),(156,84,1),(157,83,1),(158,82,1),(159,81,1),(160,80,1),(161,79,1),(162,78,1),(163,77,1),(164,76,1),(165,75,1),(166,74,1),(167,73,1),(168,72,1),(169,71,1),(170,70,1),(171,69,1),(172,68,1),(173,67,1),(174,66,1),(175,65,1),(176,64,1),(177,63,1),(178,62,1),(179,61,1),(180,60,1),(181,59,1),(182,58,1),(183,57,1),(184,56,1),(185,55,1),(186,54,1),(187,53,1),(188,52,1),(189,51,1),(190,50,1),(191,49,1),(192,48,1),(193,47,1),(194,46,1),(195,45,1),(196,44,1),(197,43,1),(198,42,1),(199,41,1),(200,40,1),(201,39,1),(202,38,1),(203,37,1),(204,36,1),(205,35,1),(206,34,1),(207,33,1),(208,32,1),(209,31,1),(210,30,1),(211,29,1),(212,28,1),(213,27,1),(214,26,1),(215,25,1),(216,24,1),(217,23,1),(218,22,1),(219,21,1),(220,20,1),(221,19,1),(222,18,1),(223,17,1),(224,16,1),(225,15,1),(226,14,1),(227,13,1),(228,12,1),(229,11,1),(230,10,1),(231,9,1),(232,8,1),(233,7,1),(234,6,1),(235,5,1),(236,4,1),(237,3,1),(238,2,1),(239,1,1),(240,239,2),(241,238,2),(242,237,2),(243,236,2),(244,235,2),(245,234,2),(246,233,2),(247,232,2),(248,231,2),(249,230,2),(250,229,2),(251,228,2),(252,227,2),(253,226,2),(254,225,2),(255,224,2),(256,223,2),(257,222,2),(258,221,2),(259,220,2),(260,219,2),(261,218,2),(262,217,2),(263,216,2),(264,215,2),(265,214,2),(266,213,2),(267,212,2),(268,211,2),(269,210,2),(270,209,2),(271,208,2),(272,207,2),(273,206,2),(274,205,2),(275,204,2),(276,203,2),(277,202,2),(278,201,2),(279,200,2),(280,199,2),(281,198,2),(282,197,2),(283,196,2),(284,195,2),(285,194,2),(286,193,2),(287,192,2),(288,191,2),(289,190,2),(290,189,2),(291,188,2),(292,187,2),(293,186,2),(294,185,2),(295,184,2),(296,183,2),(297,182,2),(298,181,2),(299,180,2),(300,179,2),(301,178,2),(302,177,2),(303,176,2),(304,175,2),(305,174,2),(306,173,2),(307,172,2),(308,171,2),(309,170,2),(310,169,2),(311,168,2),(312,167,2),(313,166,2),(314,165,2),(315,164,2),(316,163,2),(317,162,2),(318,161,2),(319,160,2),(320,159,2),(321,158,2),(322,157,2),(323,156,2),(324,155,2),(325,154,2),(326,153,2),(327,152,2),(328,151,2),(329,150,2),(330,149,2),(331,148,2),(332,147,2),(333,146,2),(334,145,2),(335,144,2),(336,143,2),(337,142,2),(338,141,2),(339,140,2),(340,139,2),(341,138,2),(342,137,2),(343,136,2),(344,135,2),(345,134,2),(346,133,2),(347,132,2),(348,131,2),(349,130,2),(350,129,2),(351,128,2),(352,127,2),(353,126,2),(354,125,2),(355,124,2),(356,123,2),(357,122,2),(358,121,2),(359,120,2),(360,119,2),(361,118,2),(362,117,2),(363,116,2),(364,115,2),(365,114,2),(366,113,2),(367,112,2),(368,111,2),(369,110,2),(370,109,2),(371,108,2),(372,107,2),(373,106,2),(374,105,2),(375,104,2),(376,103,2),(377,102,2),(378,101,2),(379,100,2),(380,99,2),(381,98,2),(382,97,2),(383,96,2),(384,95,2),(385,94,2),(386,93,2),(387,92,2),(388,91,2),(389,90,2),(390,89,2),(391,88,2),(392,87,2),(393,86,2),(394,85,2),(395,84,2),(396,83,2),(397,82,2),(398,81,2),(399,80,2),(400,79,2),(401,78,2),(402,77,2),(403,76,2),(404,75,2),(405,74,2),(406,73,2),(407,72,2),(408,71,2),(409,70,2),(410,69,2),(411,68,2),(412,67,2),(413,66,2),(414,65,2),(415,64,2),(416,63,2),(417,62,2),(418,61,2),(419,60,2),(420,59,2),(421,58,2),(422,57,2),(423,56,2),(424,55,2),(425,54,2),(426,53,2),(427,52,2),(428,51,2),(429,50,2),(430,49,2),(431,48,2),(432,47,2),(433,46,2),(434,45,2),(435,44,2),(436,43,2),(437,42,2),(438,41,2),(439,40,2),(440,39,2),(441,38,2),(442,37,2),(443,36,2),(444,35,2),(445,34,2),(446,33,2),(447,32,2),(448,31,2),(449,30,2),(450,29,2),(451,28,2),(452,27,2),(453,26,2),(454,25,2),(455,24,2),(456,23,2),(457,22,2),(458,21,2),(459,20,2),(460,19,2),(461,18,2),(462,17,2),(463,16,2),(464,15,2),(465,14,2),(466,13,2),(467,12,2),(468,11,2),(469,10,2),(470,9,2),(471,8,2),(472,7,2),(473,6,2),(474,5,2),(475,4,2),(476,3,2),(477,2,2),(478,1,2);
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_shipping_method_price_weight`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_shipping_method_price_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(14,4) NOT NULL,
  PRIMARY KEY (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_shipping_method_price_weight`
--

LOCK TABLES `tecvemar_jshopping_shipping_method_price_weight` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_weight` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_shipping_method_price_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_taxes`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL,
  `tax_value` decimal(12,2) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_taxes`
--

LOCK TABLES `tecvemar_jshopping_taxes` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_taxes` VALUES (1,'Normal',19.00);
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_taxes_ext`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_taxes_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_taxes_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_taxes_ext`
--

LOCK TABLES `tecvemar_jshopping_taxes_ext` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_taxes_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_unit`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_es-ES` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_unit`
--

LOCK TABLES `tecvemar_jshopping_unit` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_unit` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_unit` VALUES (1,1,'Kg','Kg','Kg'),(2,1,'Liter','Liter','Liter'),(3,1,'St.','pcs.','pcs.');
/*!40000 ALTER TABLE `tecvemar_jshopping_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_usergroups`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_usergroups`
--

LOCK TABLES `tecvemar_jshopping_usergroups` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_usergroups` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_usergroups` VALUES (1,'Default',0.00,'Default',1);
/*!40000 ALTER TABLE `tecvemar_jshopping_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_users`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `number` varchar(32) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_nr` varchar(16) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_m_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_birthday` date NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_street_nr` varchar(16) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `u_name` (`u_name`),
  KEY `usergroup_id` (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_users`
--

LOCK TABLES `tecvemar_jshopping_users` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_jshopping_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_jshopping_vendors`
--

DROP TABLE IF EXISTS `tecvemar_jshopping_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_jshopping_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_bic_bic` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_jshopping_vendors`
--

LOCK TABLES `tecvemar_jshopping_vendors` WRITE;
/*!40000 ALTER TABLE `tecvemar_jshopping_vendors` DISABLE KEYS */;
INSERT INTO `tecvemar_jshopping_vendors` VALUES (1,'Shop name','Company','','','Address','City','Postal Code ','State',81,'First name ','Last name','','00000000','00000000','email@email.com','test','test','test','test','test','','test','test','test','','','Additional information',0,1,1);
/*!40000 ALTER TABLE `tecvemar_jshopping_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_languages`
--

DROP TABLE IF EXISTS `tecvemar_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_languages`
--

LOCK TABLES `tecvemar_languages` WRITE;
/*!40000 ALTER TABLE `tecvemar_languages` DISABLE KEYS */;
INSERT INTO `tecvemar_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `tecvemar_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_menu`
--

DROP TABLE IF EXISTS `tecvemar_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_menu`
--

LOCK TABLES `tecvemar_menu` WRITE;
/*!40000 ALTER TABLE `tecvemar_menu` DISABLE KEYS */;
INSERT INTO `tecvemar_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,61,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',33,34,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',35,36,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',37,38,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',39,40,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,42,1,'*',0),(102,'main','JoomShopping','joomshopping','','joomshopping','index.php?option=com_jshopping','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_logo_s.png',0,'{}',43,60,0,'',1),(103,'main','categories','categories','','joomshopping/categories','index.php?option=com_jshopping&controller=categories&catid=0','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_categories_s.png',0,'{}',44,45,0,'',1),(104,'main','products','products','','joomshopping/products','index.php?option=com_jshopping&controller=products&category_id=0','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_products_s.png',0,'{}',46,47,0,'',1),(105,'main','orders','orders','','joomshopping/orders','index.php?option=com_jshopping&controller=orders','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_orders_s.png',0,'{}',48,49,0,'',1),(106,'main','clients','clients','','joomshopping/clients','index.php?option=com_jshopping&controller=users','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_users_s.png',0,'{}',50,51,0,'',1),(107,'main','options','options','','joomshopping/options','index.php?option=com_jshopping&controller=other','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_options_s.png',0,'{}',52,53,0,'',1),(108,'main','configuration','configuration','','joomshopping/configuration','index.php?option=com_jshopping&controller=config','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_configuration_s.png',0,'{}',54,55,0,'',1),(109,'main','install-and-update','install-and-update','','joomshopping/install-and-update','index.php?option=com_jshopping&controller=update','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_update_s.png',0,'{}',56,57,0,'',1),(110,'main','about-as','about-as','','joomshopping/about-as','index.php?option=com_jshopping&controller=info','component',0,102,2,10003,0,'0000-00-00 00:00:00',0,1,'components/com_jshopping/images/jshop_info_s.png',0,'{}',58,59,0,'',1);
/*!40000 ALTER TABLE `tecvemar_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_menu_types`
--

DROP TABLE IF EXISTS `tecvemar_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_menu_types`
--

LOCK TABLES `tecvemar_menu_types` WRITE;
/*!40000 ALTER TABLE `tecvemar_menu_types` DISABLE KEYS */;
INSERT INTO `tecvemar_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `tecvemar_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_messages`
--

DROP TABLE IF EXISTS `tecvemar_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_messages`
--

LOCK TABLES `tecvemar_messages` WRITE;
/*!40000 ALTER TABLE `tecvemar_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_messages_cfg`
--

DROP TABLE IF EXISTS `tecvemar_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_messages_cfg`
--

LOCK TABLES `tecvemar_messages_cfg` WRITE;
/*!40000 ALTER TABLE `tecvemar_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_modules`
--

DROP TABLE IF EXISTS `tecvemar_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_modules`
--

LOCK TABLES `tecvemar_modules` WRITE;
/*!40000 ALTER TABLE `tecvemar_modules` DISABLE KEYS */;
INSERT INTO `tecvemar_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
/*!40000 ALTER TABLE `tecvemar_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_modules_menu`
--

DROP TABLE IF EXISTS `tecvemar_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_modules_menu`
--

LOCK TABLES `tecvemar_modules_menu` WRITE;
/*!40000 ALTER TABLE `tecvemar_modules_menu` DISABLE KEYS */;
INSERT INTO `tecvemar_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0);
/*!40000 ALTER TABLE `tecvemar_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_newsfeeds`
--

DROP TABLE IF EXISTS `tecvemar_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_newsfeeds`
--

LOCK TABLES `tecvemar_newsfeeds` WRITE;
/*!40000 ALTER TABLE `tecvemar_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_overrider`
--

DROP TABLE IF EXISTS `tecvemar_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_overrider`
--

LOCK TABLES `tecvemar_overrider` WRITE;
/*!40000 ALTER TABLE `tecvemar_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_postinstall_messages`
--

DROP TABLE IF EXISTS `tecvemar_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_postinstall_messages`
--

LOCK TABLES `tecvemar_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `tecvemar_postinstall_messages` DISABLE KEYS */;
INSERT INTO `tecvemar_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',0);
/*!40000 ALTER TABLE `tecvemar_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_redirect_links`
--

DROP TABLE IF EXISTS `tecvemar_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_redirect_links`
--

LOCK TABLES `tecvemar_redirect_links` WRITE;
/*!40000 ALTER TABLE `tecvemar_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_schemas`
--

DROP TABLE IF EXISTS `tecvemar_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_schemas`
--

LOCK TABLES `tecvemar_schemas` WRITE;
/*!40000 ALTER TABLE `tecvemar_schemas` DISABLE KEYS */;
INSERT INTO `tecvemar_schemas` VALUES (700,'3.4.0-2015-02-26');
/*!40000 ALTER TABLE `tecvemar_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_session`
--

DROP TABLE IF EXISTS `tecvemar_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_session`
--

LOCK TABLES `tecvemar_session` WRITE;
/*!40000 ALTER TABLE `tecvemar_session` DISABLE KEYS */;
INSERT INTO `tecvemar_session` VALUES ('vbh58qlfs2dt8693sb3dg4dda5',1,0,'1472066793','joomla|s:2980:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo4OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NzIwNjY3MTQ7czo0OiJsYXN0IjtpOjE0NzIwNjY3ODU7czozOiJub3ciO2k6MTQ3MjA2Njc5Mjt9czo1OiJ0b2tlbiI7czozMjoiNTQ2NzBmMWIwOTYwMTE0ODdkMTg5Yjc0MWM0MmVkMjIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czowOiIiO31zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjg6ImpzaG9waW5nIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Imxpc3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NToiYWRtaW4iO086ODoic3RkQ2xhc3MiOjY6e3M6MTg6InByb2R1Y3RjYXRlZ29yeV9pZCI7aTowO3M6MjI6InByb2R1Y3RtYW51ZmFjdHVyZXJfaWQiO2k6MDtzOjE2OiJwcm9kdWN0dmVuZG9yX2lkIjtpOi0xO3M6MTU6InByb2R1Y3RsYWJlbF9pZCI7aTowO3M6MTQ6InByb2R1Y3RwdWJsaXNoIjtpOjA7czoxODoicHJvZHVjdHRleHRfc2VhcmNoIjtzOjA6IiI7fX19czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjM7fXM6NDoiZGF0YSI7Tjt9fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6Mjg6e3M6OToiACoAaXNSb290IjtiOjE7czoyOiJpZCI7czozOiI3MzMiO3M6NDoibmFtZSI7czoxMDoiU3VwZXIgVXNlciI7czo4OiJ1c2VybmFtZSI7czo4OiJ0ZWN2ZW1hciI7czo1OiJlbWFpbCI7czoxNzoiaW5mb0B0ZWN2ZW1hci5jb20iO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCRQOS80dnYyQnI4YnFSYVNxamoubk1lc3c1SGdsT1lEd0FWUnpkUnFuRkY0RFJmUWd2cnhvTyI7czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtzOjE6IjAiO3M6OToic2VuZEVtYWlsIjtzOjE6IjEiO3M6MTI6InJlZ2lzdGVyRGF0ZSI7czoxOToiMjAxNi0wOC0yNCAxMzoxODozNCI7czoxMzoibGFzdHZpc2l0RGF0ZSI7czoxOToiMjAxNi0wOC0yNCAxODozNDo1NCI7czoxMDoiYWN0aXZhdGlvbiI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NjoiZ3JvdXBzIjthOjE6e2k6ODtzOjE6IjgiO31zOjU6Imd1ZXN0IjtpOjA7czoxMzoibGFzdFJlc2V0VGltZSI7czoxOToiMDAwMC0wMC0wMCAwMDowMDowMCI7czoxMDoicmVzZXRDb3VudCI7czoxOiIwIjtzOjEyOiJyZXF1aXJlUmVzZXQiO3M6MToiMCI7czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo4O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTo1OntpOjA7aToxO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjY7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDtzOjY6Im90cEtleSI7czowOiIiO3M6NDoib3RlcCI7czowOiIiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9czoxOToianNfaWRfY3VycmVuY3lfb3JpZyI7czoxOiIyIjtzOjE0OiJqc19pZF9jdXJyZW5jeSI7czoxOiIyIjtzOjIyOiJqc2hvcF9jaGVja2VkX2xhbmd1YWdlIjthOjI6e2k6MDtzOjU6ImVuLUdCIjtpOjE7czo1OiJlcy1FUyI7fXM6MTk6ImpzX2dldF9teXNxbHZlcnNpb24iO3M6NjoiNS43LjExIjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',733,'tecvemar');
/*!40000 ALTER TABLE `tecvemar_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_tags`
--

DROP TABLE IF EXISTS `tecvemar_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_tags`
--

LOCK TABLES `tecvemar_tags` WRITE;
/*!40000 ALTER TABLE `tecvemar_tags` DISABLE KEYS */;
INSERT INTO `tecvemar_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',42,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tecvemar_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_template_styles`
--

DROP TABLE IF EXISTS `tecvemar_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_template_styles`
--

LOCK TABLES `tecvemar_template_styles` WRITE;
/*!40000 ALTER TABLE `tecvemar_template_styles` DISABLE KEYS */;
INSERT INTO `tecvemar_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `tecvemar_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_ucm_base`
--

DROP TABLE IF EXISTS `tecvemar_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_ucm_base`
--

LOCK TABLES `tecvemar_ucm_base` WRITE;
/*!40000 ALTER TABLE `tecvemar_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_ucm_content`
--

DROP TABLE IF EXISTS `tecvemar_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_ucm_content`
--

LOCK TABLES `tecvemar_ucm_content` WRITE;
/*!40000 ALTER TABLE `tecvemar_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_ucm_history`
--

DROP TABLE IF EXISTS `tecvemar_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_ucm_history`
--

LOCK TABLES `tecvemar_ucm_history` WRITE;
/*!40000 ALTER TABLE `tecvemar_ucm_history` DISABLE KEYS */;
INSERT INTO `tecvemar_ucm_history` VALUES (1,2,5,'','2016-08-24 13:26:35',733,585,'bc9c6a158b0f44ce3658f14c6762ed25ad5bfb99','{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Noticias\",\"alias\":\"noticias\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"733\",\"checked_out_time\":\"2016-08-24 13:26:19\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"42\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"733\",\"modified_time\":\"2016-08-24 13:26:35\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(2,1,1,'','2016-08-24 13:31:05',733,5063,'bb34284a2c92514fe8d9b0fd32cba0301e6e512d','{\"id\":1,\"asset_id\":54,\"title\":\"El granito color de la naturaleza\",\"alias\":\"el-granito-color-de-la-naturaleza\",\"introtext\":\"<p>El estado Bol\\u00edvar hist\\u00f3ricamente se ha caracterizado por la riqueza de los minerales que como una obra de la naturaleza se acumul\\u00f3 en su vasto territorio, la explotaci\\u00f3n de las extensiones de granito se convirti\\u00f3 en una alternativa de aprovechamiento de los recursos de sus suelos. La piedra se convirti\\u00f3 r\\u00e1pidamente en elementos preferidos para la decoraci\\u00f3n, revestimientos de pisos, paredes, topes de cocina, materia prima en esculturas, monolitos y una grama de usos que no dejan de sorprender por su versatilidad. Escenarios emblem\\u00e1ticos que albergan los m\\u00e1s significativos momentos de la historia como plazas, templos, teatros y edificaciones han sido recubiertos por losas de granito en su variedad de vistosos y atractivos colores que se reunieron por actividad volc\\u00e1nica. Las empresas Granitos del Orinoco filial de T\\u00e9cnica Marmolera Venezolana CA (Tecvemar), se han unido para invertir en canteras bolivarenses, con la intenci\\u00f3n de popularizar los materiales extra\\u00eddos en Venezuela; as\\u00ed como para comercializarlos en los mercados internacionales. Afortunadamente, la experiencia ha sido tan satisfactoria y receptiva en los mercados criollos que las l\\u00e1minas de granito han superado etapas y cruzaron fronteras. El desarrollo de la industria de la mano de las novedades tecnol\\u00f3gicas toc\\u00f3 el procesamiento del granito y lo cambi\\u00f3.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Vanguardia del proceso de resinado de l\\u00e1minas<\\/p>\\r\\n<p>Tecvemar se integr\\u00f3 a los est\\u00e1ndares mundiales instalando una m\\u00e1quina, \\u00fanica en Venezuela, con la que se aporta una capa de resina como plus a las l\\u00e1minas, este proceso beneficia el brillo del material, mayor salubridad y sellado del material. Este nivel de calidad es accesible tanto en el mercado venezolano como en el mercado internacional.<\\/p>\\r\\n<p>Variedad de colores<\\/p>\\r\\n<p>El tono m\\u00e1s reciente y apreciado en la actualidad es el Marr\\u00f3n Imataca, extra\\u00eddo en la cantera Lizardero III, una l\\u00e1mina de tonos tierra con granos de tama\\u00f1o fino y mediano compactados. Uno de los m\\u00e1s apreciados y populares. Est\\u00e1 el color Gris Leona, que es uno de los m\\u00e1s populares que se obtiene de la cantera La Leona, que ofrece colores grises en variedad de tonalidades compactados, l\\u00e1minas que aportan elegancia en los espacios en los que se aplican. Tambi\\u00e9n hallamos el color Gris Guayana, con tonos grises claros brillantes que se encuentra en la cantera Rancho Caron\\u00ed. La variedad y misterio en la naturaleza de la regi\\u00f3n del estado bol\\u00edvar se encuentran tonos mezclados como Multicolor Maracay que se luce en una variedad de grises ahumados claros con ex\\u00f3ticos parches negros, de la cantera El Buitre. Asimismo, tenemos el tono denominado Rojo Guayana, una l\\u00e1mina que resulta emblem\\u00e1tica para reconocer edificaciones iconos de Venezuela como espacios de esparcimiento y recreaci\\u00f3n adem\\u00e1s de redes bancarias y cadenas hoteleras de renombre internacional. Existen otros tonos que se han venido popularizando en el mercado nacional como Gris Orinokia, Verde Curiapo, Multicolor Orinoco, Multicolor Vinotinto y m\\u00e1s que desde ya pueden apreciarlos en el sitio web www.tecvemar.com visitanos.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-08-24 13:31:05\",\"created_by\":\"733\",\"created_by_alias\":\"\",\"modified\":\"2016-08-24 13:31:05\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-08-24 13:31:05\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/granitos.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,2,1,'','2016-08-24 13:32:02',733,6082,'aa3f5251e00574c5143e427c12fd3986d7a413ee','{\"id\":2,\"asset_id\":55,\"title\":\"Guarenas cuna del talento deportivo\",\"alias\":\"guarenas-cuna-del-talento-deportivo\",\"introtext\":\"<p>El municipio Ambrosio Plaza del estado Miranda se vigoriza como cuna de grandes talentos deportivos en las disciplinas de baloncesto, mini baloncesto y en diversos escenarios del atletismo.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Baloncesto abriga record casi perfecto de ganados<\\/p>\\r\\n<p>Los integrantes del equipo local, Industriales de Guarenas viene cumpliendo un buen trabajo y comienza los octavos de final en la tercera divisi\\u00f3n de la Liga Nacional de Baloncesto (LNB), con un record de 14 victorias en 16 encuentros. Diego Montes De Oca, Director T\\u00e9cnico de los Industriales en poco tiempo ha logrado que en cada partido exhiban t\\u00e9cnica de juego, confianza, dominio del bal\\u00f3n y estrategia de equipo. Evidenciando su poder ante Uni\\u00f3n Ferrocarril del Tuy, Caciques de San Sebasti\\u00e1n, Bushido de Los Teques y Cumanagotos de Cuman\\u00e1; con este \\u00faltimo equipo registraron una victoria y una derrota durante el fin de semana en el Polideportivo Los Naranjos.<\\/p>\\r\\n<p>Reavivan liga de Mini Baloncesto regional<\\/p>\\r\\n<p>La Fundaci\\u00f3n Deportiva Mirandina (Fundamir) del municipio Plaza, recorre la regi\\u00f3n a prop\\u00f3sito de la ejecuci\\u00f3n de la II Edici\\u00f3n de la Liga Regional Femenina Mirandina de baloncesto, que desde el pasado 3 de octubre, marca el renacimiento de la organizaci\\u00f3n con la celebraci\\u00f3n de contiendas ante sus similares de cinco municipios de la entidad (Plaza, P\\u00e1ez, Sim\\u00f3n Bol\\u00edvar, Lander, Paz Castillo y Sucre), encuentros que se mantendr\\u00e1n hasta el pr\\u00f3ximo 13 de diciembre, en las categor\\u00edas Infantil y Juvenil Especial. Ollarvides Marshall, presidente de Fundamir inform\\u00f3 que la Liga Regional Femenina Mirandina, permaneci\\u00f3 inactiva por falta de presupuesto desde el a\\u00f1o 2006, y el resurgimiento se debe a CorpoMiranda y a la empresa granitera T\\u00e9cnica Marmolera Venezolana (Tecvemar). Seg\\u00fan Marshall la reactivaci\\u00f3n de la Liga es una motivaci\\u00f3n a la pr\\u00e1ctica y a la exigencia en la disciplina; pues de acuerdo a su consideraci\\u00f3n, la competencia entre ligas incentiva la preparaci\\u00f3n en momentos adicionales a los requeridos de cara a los campeonatos nacionales, lo que beneficia la formaci\\u00f3n del atleta y favorece directamente al medallero de Miranda, que como equipo en baloncesto femenino no obtiene medalla de oro desde el a\\u00f1o 1994. De igual manera, el entrenador expres\\u00f3 \\u201ces un orgullo hacer un tri\\u00e1ngulo con la empresa privada Tecvemar, el gobierno con CorpoMiranda y la Fundaci\\u00f3n Deportiva Mirandina como pueblo organizado\\u201d. Y agreg\\u00f3 que buscan garantizar el \\u00e9xito y bienestar social de la comunidad, en forma mancomunada.<\\/p>\\r\\n<p>Atletismo retoma senda de triunfos<\\/p>\\r\\n<p>J\\u00f3venes en edades de 10 a 13 a\\u00f1os oriundos de Miranda subieron al podio en el estadio Brigido Iriarte de El Para\\u00edso, en Caracas como resultado de una excelente participaci\\u00f3n en el Campeonato Nacional Preinfantil A y B de Atletismo. Fabi\\u00e1n G\\u00f3mez, presidente de la Fundaci\\u00f3n Gacelas, detall\\u00f3 que de 36 integrantes de la selecci\\u00f3n de Miranda, 17 pertenecen a Guarenas, quienes se lucieron en el encuentro que se mantuvo durante dos d\\u00edas en el estadio capitalino. G\\u00f3mez enfatiz\\u00f3 que los competidores de Guarenas \\u201cretomaron la senda de los triunfos, e hicieron historia en el atletismo mirandino\\u201d. Asimismo indic\\u00f3 que el aporte log\\u00edstico de Tecvemar fue lo que garantiz\\u00f3 su participaci\\u00f3n en el encuentro de atletismo.<\\/p>\\r\\n<p>Respaldo al deporte es la v\\u00eda<\\/p>\\r\\n<p>Esta gama de buenos resultados abonados a los grandes atletas guareneros confirman que la activaci\\u00f3n f\\u00edsica y la promoci\\u00f3n del deporte siguen siendo fundamentales entre los elementos que elevan el valor de una comunidad. En este sentido, la empresa T\\u00e9cnica Marmolera Venezolana, CA. (Tecvemar), se enorgullece de los frutos que vienen dando las organizaciones deportivas del municipio Ambrosio Plaza, en el estado Miranda y especialmente con la Fundaci\\u00f3n Gacelas, la Fundaci\\u00f3n Deportiva Mirandina y la selecci\\u00f3n de los Industriales de Guarenas con quienes ha mantenido un contacto directo y ha establecido s\\u00f3lidos respaldos v\\u00eda RSE.\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-08-24 13:32:02\",\"created_by\":\"733\",\"created_by_alias\":\"\",\"modified\":\"2016-08-24 13:32:02\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-08-24 13:32:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/marmolera_deporte.png\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,3,1,'','2016-08-24 13:32:49',733,4924,'7d02e0d986da038f9440e8dd37f9f73831a565a0','{\"id\":3,\"asset_id\":56,\"title\":\"Industria granitera rumbo al autosustento.\",\"alias\":\"industria-granitera-rumbo-al-autosustento\",\"introtext\":\"<p>El granito presente en el suelo guayan\\u00e9s no s\\u00f3lo forma parte de las bondades que posee Venezuela, sino que en este tiempo representa el renacimiento de las exportaciones alternativas al petr\\u00f3leo que impulsan la econom\\u00eda nacional. Quienes forman parte de las empresas Granitos del Orinoco y T\\u00e9cnica Marmolera Venezolana (Tecvemar), tienen a\\u00f1os dedicados en dar a conocer la belleza y calidad de los materiales que se extraen en la Regi\\u00f3n Guayana, como en popularizar los materiales en el mercado nacional e internacional. En este sentido, el programa Venezuela Exporta del Banco de Comercio Exterior (Bancoex), ha tomado una posici\\u00f3n estrat\\u00e9gica para insertar el granito criollo en los mercados de la Alianza Bolivariana para las Am\\u00e9ricas, adicionalmente ha dotado a los industriales con la base para ingresar a las naciones en las que se han levantado potenciales socios comerciales.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Exportaci\\u00f3n beneficia producci\\u00f3n nacional<\\/p>\\r\\n<p>El bloque de granito que se extrae con el esfuerzo de la mano de obra bolivarense, ha llegado a las m\\u00e1s reconocidas exhibiciones comerciales de Colombia, Brasil, Bolivia, Ecuador, Nicaragua, Per\\u00fa, Trinidad y Tobago, Espa\\u00f1a y Rusia. Cada muestra ha sido una semilla que se planta y en muchos casos ha rendido frutos pues en lo que va del a\\u00f1o 2015 se han materializado en negociaciones m\\u00e1s de 5 mil metros cuadrados de materiales por ejemplo en: Ecuador Bolivia, Colombia M\\u00e9xico, Nicaragua y Costa Rica en los que han tenido gran receptividad y acogida que se demuestran en el establecimiento de lazos comerciales caracterizados por la solicitud de nuevos pedidos de material. Estos ingresos a los mercados vecinos, con potencial para establecer relaciones econ\\u00f3micas pueden ascender a 600 millones de habitantes en Latinoam\\u00e9rica despertaron la necesidad de preparar la industria granitera para satisfacer la demanda nacional y continuar cruzando fronteras. Se espera en la actualidad, la culminaci\\u00f3n de procedimientos regulares para iniciar la expansi\\u00f3n de la capacidad productiva, en pocos meses se llevar\\u00eda a cabo el relanzamiento de las filiales Granitos del Orinoco y Tecvemar repotenciadas, maximizando sus capacidad productiva a m\\u00e1s de 300 mil metros cuadrados por a\\u00f1o; cantidad que triplica la producci\\u00f3n promedio de los \\u00faltimos a\\u00f1os. El proyecto de construcci\\u00f3n se encuentra en fase inicial completando el 10% de avance, de lo que una vez constituy\\u00f3 un anhelo y con el apoyo de Bancoex representa una realidad que toma forma en el kil\\u00f3metro 70 de la carretera vieja Ciudad Bol\\u00edvar \\u2013 Gur\\u00ed; espec\\u00edficamente en el Fundo La Leona. Es de hacer notar que las exportaciones impactan directamente en la comercializaci\\u00f3n nacional, pues el ingreso de divisas permite bajar los costos de producci\\u00f3n; adicionalmente hace que la industria se abra a nuevas perspectivas buscando tener una empresa autosustentada en relaci\\u00f3n a la generaci\\u00f3n de divisas y m\\u00e1s competitiva internacionalmente.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-08-24 13:32:49\",\"created_by\":\"733\",\"created_by_alias\":\"\",\"modified\":\"2016-08-24 13:32:49\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-08-24 13:32:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/bussiness-unit.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `tecvemar_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_update_sites`
--

DROP TABLE IF EXISTS `tecvemar_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_update_sites`
--

LOCK TABLES `tecvemar_update_sites` WRITE;
/*!40000 ALTER TABLE `tecvemar_update_sites` DISABLE KEYS */;
INSERT INTO `tecvemar_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1472066730,''),(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1472066730,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1472066728,''),(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1472066728,'');
/*!40000 ALTER TABLE `tecvemar_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_update_sites_extensions`
--

DROP TABLE IF EXISTS `tecvemar_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_update_sites_extensions`
--

LOCK TABLES `tecvemar_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `tecvemar_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `tecvemar_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10002),(4,28);
/*!40000 ALTER TABLE `tecvemar_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_updates`
--

DROP TABLE IF EXISTS `tecvemar_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_updates`
--

LOCK TABLES `tecvemar_updates` WRITE;
/*!40000 ALTER TABLE `tecvemar_updates` DISABLE KEYS */;
INSERT INTO `tecvemar_updates` VALUES (1,3,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml','',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,1,700,'Joomla','','joomla','file','',0,'3.6.0','','https://update.joomla.org/core/sts/extension_sts.xml','',''),(7,3,0,'French','','pkg_fr-FR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/fr-FR_details.xml','',''),(8,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml','',''),(9,3,0,'Georgian','','pkg_ka-GE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ka-GE_details.xml','',''),(10,3,0,'Greek','','pkg_el-GR','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/el-GR_details.xml','',''),(11,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ja-JP_details.xml','',''),(12,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/he-IL_details.xml','',''),(13,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/hu-HU_details.xml','',''),(14,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/af-ZA_details.xml','',''),(15,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.6.1.1','','https://update.joomla.org/language/details3/ar-AA_details.xml','',''),(16,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','https://update.joomla.org/language/details3/be-BY_details.xml','',''),(17,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/bg-BG_details.xml','',''),(18,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.6.1.1','','https://update.joomla.org/language/details3/ca-ES_details.xml','',''),(19,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.4.1.1','','https://update.joomla.org/language/details3/zh-CN_details.xml','',''),(20,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/hr-HR_details.xml','',''),(21,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(22,3,0,'Danish','','pkg_da-DK','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/da-DK_details.xml','',''),(23,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/nl-NL_details.xml','',''),(24,3,0,'Estonian','','pkg_et-EE','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/et-EE_details.xml','',''),(25,3,0,'Italian','','pkg_it-IT','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/it-IT_details.xml','',''),(26,3,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml','',''),(27,3,0,'Korean','','pkg_ko-KR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ko-KR_details.xml','',''),(28,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/lv-LV_details.xml','',''),(29,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/mk-MK_details.xml','',''),(30,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/nb-NO_details.xml','',''),(31,3,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml','',''),(32,3,0,'Persian','','pkg_fa-IR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/fa-IR_details.xml','',''),(33,3,0,'Polish','','pkg_pl-PL','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/pl-PL_details.xml','',''),(34,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.5.1.4','','https://update.joomla.org/language/details3/pt-PT_details.xml','',''),(35,3,0,'Russian','','pkg_ru-RU','package','',0,'3.5.0.6','','https://update.joomla.org/language/details3/ru-RU_details.xml','',''),(36,3,0,'English AU','','pkg_en-AU','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/en-AU_details.xml','',''),(37,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sk-SK_details.xml','',''),(38,3,0,'English US','','pkg_en-US','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/en-US_details.xml','',''),(39,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sv-SE_details.xml','',''),(40,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(41,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/ta-IN_details.xml','',''),(42,3,0,'Thai','','pkg_th-TH','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/th-TH_details.xml','',''),(43,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/tr-TR_details.xml','',''),(44,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml','',''),(45,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','https://update.joomla.org/language/details3/ug-CN_details.xml','',''),(46,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/sq-AL_details.xml','',''),(47,3,0,'Basque','','pkg_eu-ES','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/eu-ES_details.xml','',''),(48,3,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.1','','https://update.joomla.org/language/details3/hi-IN_details.xml','',''),(49,3,0,'German DE','','pkg_de-DE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-DE_details.xml','',''),(50,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/pt-BR_details.xml','',''),(51,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sr-YU_details.xml','',''),(52,3,10002,'Spanish','','pkg_es-ES','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/es-ES_details.xml','',''),(53,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.4.8.1','','https://update.joomla.org/language/details3/bs-BA_details.xml','',''),(54,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sr-RS_details.xml','',''),(55,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','https://update.joomla.org/language/details3/vi-VN_details.xml','',''),(56,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/id-ID_details.xml','',''),(57,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.5.1.1','','https://update.joomla.org/language/details3/fi-FI_details.xml','',''),(58,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sw-KE_details.xml','',''),(59,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','https://update.joomla.org/language/details3/srp-ME_details.xml','',''),(60,3,0,'English CA','','pkg_en-CA','package','',0,'3.6.2.2','','https://update.joomla.org/language/details3/en-CA_details.xml','',''),(61,3,0,'French CA','','pkg_fr-CA','package','',0,'3.5.1.2','','https://update.joomla.org/language/details3/fr-CA_details.xml','',''),(62,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/cy-GB_details.xml','',''),(63,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','https://update.joomla.org/language/details3/si-LK_details.xml','',''),(64,3,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/prs-AF_details.xml','',''),(65,3,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.1','','https://update.joomla.org/language/details3/tk-TM_details.xml','',''),(66,3,0,'Irish','','pkg_ga-IE','package','',0,'3.6.0.1','','https://update.joomla.org/language/details3/ga-IE_details.xml','',''),(67,3,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/dz-BT_details.xml','',''),(68,3,0,'Slovenian','','pkg_sl-SI','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/sl-SI_details.xml','',''),(69,3,0,'Spanish CO','','pkg_es-CO','package','',0,'3.6.1.1','','https://update.joomla.org/language/details3/es-CO_details.xml','',''),(70,3,0,'German CH','','pkg_de-CH','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-CH_details.xml','',''),(71,3,0,'German AT','','pkg_de-AT','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-AT_details.xml','',''),(72,3,0,'German LI','','pkg_de-LI','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-LI_details.xml','',''),(73,3,0,'German LU','','pkg_de-LU','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/de-LU_details.xml','','');
/*!40000 ALTER TABLE `tecvemar_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_keys`
--

DROP TABLE IF EXISTS `tecvemar_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_keys`
--

LOCK TABLES `tecvemar_user_keys` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_notes`
--

DROP TABLE IF EXISTS `tecvemar_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_notes`
--

LOCK TABLES `tecvemar_user_notes` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_profiles`
--

DROP TABLE IF EXISTS `tecvemar_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_profiles`
--

LOCK TABLES `tecvemar_user_profiles` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecvemar_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_user_usergroup_map`
--

DROP TABLE IF EXISTS `tecvemar_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_user_usergroup_map`
--

LOCK TABLES `tecvemar_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `tecvemar_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `tecvemar_user_usergroup_map` VALUES (733,8);
/*!40000 ALTER TABLE `tecvemar_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_usergroups`
--

DROP TABLE IF EXISTS `tecvemar_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_usergroups`
--

LOCK TABLES `tecvemar_usergroups` WRITE;
/*!40000 ALTER TABLE `tecvemar_usergroups` DISABLE KEYS */;
INSERT INTO `tecvemar_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `tecvemar_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_users`
--

DROP TABLE IF EXISTS `tecvemar_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_users`
--

LOCK TABLES `tecvemar_users` WRITE;
/*!40000 ALTER TABLE `tecvemar_users` DISABLE KEYS */;
INSERT INTO `tecvemar_users` VALUES (733,'Super User','tecvemar','info@tecvemar.com','$2y$10$P9/4vv2Br8bqRaSqjj.nMesw5HglOYDwAVRzdRqnFF4DRfQgvrxoO',0,1,'2016-08-24 13:18:34','2016-08-24 19:25:26','0','','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `tecvemar_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecvemar_viewlevels`
--

DROP TABLE IF EXISTS `tecvemar_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecvemar_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecvemar_viewlevels`
--

LOCK TABLES `tecvemar_viewlevels` WRITE;
/*!40000 ALTER TABLE `tecvemar_viewlevels` DISABLE KEYS */;
INSERT INTO `tecvemar_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `tecvemar_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-05 15:20:10
