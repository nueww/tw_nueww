-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: nueww_01
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  `tx_fluidcontent_allowedfluidcontent` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tx_fluidcontent_deniedfluidcontent` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1506768567,'admin','',0,'$pbkdf2-sha256$25000$ITy4LDomslVw8a1lF3ZBIg$YMJ/rQTlf8R3lUy9hfz/h2lz.DgBNld37UeO5z3NtQ4',1,'',0,0,0,'','',NULL,0,1506529183,0,'',NULL,'','a:20:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:13:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:8:\"web_list\";a:0:{}s:6:\"web_ts\";a:2:{s:8:\"function\";s:88:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateConstantEditorModuleFunctionController\";s:19:\"constant_editor_cat\";s:17:\"plugin.tx_twnueww\";}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"96004515c1fffd203b60066058c91a13\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"96004515c1fffd203b60066058c91a13\";a:4:{i:0;s:7:\"Kontakt\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:42;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:76:\"&edit[pages][42]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:42;s:3:\"pid\";i:38;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"0a491e3adcacacaaad46fc0d87c40009\";a:4:{i:0;s:6:\"Presse\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:41;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:76:\"&edit[pages][41]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:41;s:3:\"pid\";i:38;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"41d021b89dca113c37d94f600f353c2b\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][9]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:9;s:3:\"pid\";i:17;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"6a2700fc28156e704d1ed2d11727811d\";a:4:{i:0;s:4:\"Test\";i:1;a:6:{s:4:\"edit\";a:1:{s:36:\"tx_twnueww_domain_model_blog_article\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tx_twnueww_domain_model_blog_article][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:36:\"tx_twnueww_domain_model_blog_article\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a4de1862964167ef83eb0664b03620e2\";a:4:{i:0;s:11:\"400x300.png\";i:1;a:6:{s:4:\"edit\";a:1:{s:17:\"sys_file_metadata\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:87:\"&edit[sys_file_metadata][8]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:17:\"sys_file_metadata\";s:3:\"uid\";i:8;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9b209de23811ef89bec385c059f31cd5\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"003cba4fd938ad8f2c2aefaefd749039\";a:4:{i:0;s:11:\"800x600.png\";i:1;a:6:{s:4:\"edit\";a:1:{s:17:\"sys_file_metadata\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:87:\"&edit[sys_file_metadata][7]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:17:\"sys_file_metadata\";s:3:\"uid\";i:7;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"57c31a9553e232ab9e861a1090650532\";a:4:{i:0;s:6:\"Test 4\";i:1;a:6:{s:4:\"edit\";a:1:{s:36:\"tx_twnueww_domain_model_blog_article\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tx_twnueww_domain_model_blog_article][4]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:36:\"tx_twnueww_domain_model_blog_article\";s:3:\"uid\";i:4;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:8:\"web_func\";a:1:{s:8:\"function\";s:76:\"TYPO3\\CMS\\WizardCrpages\\Controller\\CreatePagesWizardModuleFunctionController\";}s:8:\"web_info\";a:3:{s:8:\"function\";s:55:\"TYPO3\\CMS\\Frontend\\Controller\\PageInformationController\";s:5:\"pages\";s:1:\"0\";s:5:\"depth\";s:1:\"0\";}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:27:\"1:/user_upload/placeholder/\";}s:9:\"file_list\";a:3:{s:15:\"bigControlPanel\";s:1:\"1\";s:4:\"sort\";s:5:\"_REF_\";s:7:\"reverse\";s:1:\"0\";}s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:646:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":20:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:12:\"\0*\0timeFrame\";i:0;s:9:\"\0*\0action\";i:-1;s:14:\"\0*\0groupByPage\";b:0;s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:18:\"\0*\0isInPageContext\";b:0;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}\";s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:9:\"clipboard\";a:5:{s:6:\"normal\";a:1:{s:2:\"el\";a:0:{}}s:5:\"tab_1\";a:1:{s:4:\"mode\";s:0:\"\";}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:1:{s:4:\"mode\";s:0:\"\";}s:7:\"current\";s:6:\"normal\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1506530395;s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:2:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:28:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:4;s:1:\"1\";i:9;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";i:14;s:1:\"1\";i:15;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";i:22;s:1:\"1\";i:23;s:1:\"1\";i:24;s:1:\"1\";i:25;s:1:\"1\";s:4:\"root\";s:1:\"1\";s:16:\"lastSelectedNode\";s:3:\"p2a\";s:2:\"1a\";s:1:\"1\";s:2:\"1b\";s:1:\"1\";s:2:\"1c\";s:1:\"1\";s:2:\"1d\";s:1:\"1\";s:1:\"b\";s:1:\"1\";s:1:\"d\";s:1:\"1\";s:1:\"e\";s:1:\"1\";s:1:\"f\";s:1:\"1\";s:1:\"c\";s:1:\"1\";}}s:17:\"typo3-module-menu\";a:1:{s:9:\"collapsed\";s:5:\"false\";}}}s:15:\"moduleSessionID\";a:13:{s:10:\"web_layout\";s:32:\"70a82bc1e55c4d345caf6a19699a13f5\";s:8:\"web_list\";s:32:\"70a82bc1e55c4d345caf6a19699a13f5\";s:6:\"web_ts\";s:32:\"92c9cbb9a1c10cfd6a270b5c17bfdbc8\";s:10:\"FormEngine\";s:32:\"acaaa3953b3f79b2dda2069be814c947\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"acaaa3953b3f79b2dda2069be814c947\";s:16:\"opendocs::recent\";s:32:\"acaaa3953b3f79b2dda2069be814c947\";s:8:\"web_func\";s:32:\"d91474f46d8ca8c3192b5a4272b7abfc\";s:8:\"web_info\";s:32:\"72f7634570df52715c1cdf1166518ded\";s:16:\"browse_links.php\";s:32:\"447f7629c365c26dd133907bd9fff814\";s:9:\"file_list\";s:32:\"92c9cbb9a1c10cfd6a270b5c17bfdbc8\";s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:32:\"ddc98474075496e8ce7232454b1a0714\";s:9:\"tx_beuser\";s:32:\"20d5cab6399d37bcfd9d0b887750a303\";s:9:\"clipboard\";s:32:\"447f7629c365c26dd133907bd9fff814\";}s:18:\"disablePMKTextarea\";i:1;s:11:\"browseTrees\";a:2:{s:6:\"folder\";s:50:\"a:1:{i:25218;a:2:{i:62822724;i:1;i:14248556;i:1;}}\";s:11:\"browsePages\";s:32:\"a:1:{i:0;a:2:{i:0;i:1;i:1;i:1;}}\";}s:10:\"inlineView\";s:492:\"a:5:{i:0;b:0;s:8:\"be_users\";a:1:{s:25:\"NEW59cf6a6f87690691987234\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"1\";}}}s:36:\"tx_twnueww_domain_model_blog_article\";a:1:{i:4;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}}s:19:\"sys_file_collection\";a:2:{s:25:\"NEW59d25082df9b8976494250\";a:1:{s:18:\"sys_file_reference\";a:3:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:2:\"10\";}}i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}}s:10:\"tt_content\";a:1:{i:9;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:0:\"\";}}}}\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1506765491}}\";s:10:\"modulemenu\";s:2:\"{}\";}',NULL,NULL,1,'',0,0,'options.clearCache.pages = 1\r\noptions.clearCache.all = 1\r\noptions.clearCache.system = 1\r\nadmPanel.override.tsdebug.forceTemplateParsing = 1\r\n',1507030324,0,NULL,0,1,NULL),(2,0,1506529278,'_cli_','',0,'$pbkdf2-sha256$25000$SHdA6yc029/2vVS7oVjnpA$UCsPx8tod56STAk6cbT6Er1jZvEsQQwB4PHm2d3UKC4',1,'',0,0,0,'','',NULL,0,1506529278,0,'',NULL,'','a:14:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1506529278;s:15:\"recursiveDelete\";b:1;}',NULL,NULL,1,'',0,0,NULL,0,0,NULL,0,1,NULL),(3,0,1506768548,'klaus','',1,'$pbkdf2-sha256$25000$XRuwWJzPjWvuEN8AGgVG3g$nG8Z6LSg7rRv4hg68cX5oCkSSO1LtZ9itU2qMjfkIzg',1,'',0,0,0,'de','klaus@tollwerk.de','',3,1506765480,1,'Klaus Fiedler','','','a:28:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:14:{s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:646:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":20:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:12:\"\0*\0timeFrame\";i:0;s:9:\"\0*\0action\";i:-1;s:14:\"\0*\0groupByPage\";b:0;s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:18:\"\0*\0isInPageContext\";b:0;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:10:\"FormEngine\";a:2:{i:0;a:2:{s:32:\"52be3c420a5b73318bac7e313ec71060\";a:4:{i:0;s:30:\"Donec quam felis! - 2 Comments\";i:1;a:6:{s:4:\"edit\";a:1:{s:36:\"tx_twnueww_domain_model_blog_article\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tx_twnueww_domain_model_blog_article][5]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:36:\"tx_twnueww_domain_model_blog_article\";s:3:\"uid\";i:5;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"bb42c0fc936d7fb1ad0835774045294e\";a:4:{i:0;s:11:\"Datensätze\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:47;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:76:\"&edit[pages][47]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:47;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"bb42c0fc936d7fb1ad0835774045294e\";}s:6:\"web_ts\";a:2:{s:8:\"function\";s:88:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateConstantEditorModuleFunctionController\";s:19:\"constant_editor_cat\";s:17:\"plugin.tx_twnueww\";}s:8:\"web_list\";a:0:{}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:16:\"opendocs::recent\";a:8:{s:32:\"107a9b6b08bbbd7eeaa420a6f8d085f6\";a:4:{i:0;s:23:\"Blog Nr. 2 - 0 Comments\";i:1;a:6:{s:4:\"edit\";a:1:{s:36:\"tx_twnueww_domain_model_blog_article\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tx_twnueww_domain_model_blog_article][6]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:36:\"tx_twnueww_domain_model_blog_article\";s:3:\"uid\";i:6;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"153ccee93e5f82a37ba119258c23528e\";a:4:{i:0;s:23:\"Blog Nr. 3 - 0 Comments\";i:1;a:6:{s:4:\"edit\";a:1:{s:36:\"tx_twnueww_domain_model_blog_article\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:106:\"&edit[tx_twnueww_domain_model_blog_article][7]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:36:\"tx_twnueww_domain_model_blog_article\";s:3:\"uid\";i:7;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"25db19dc3f2609a935a4b3eeed758798\";a:4:{i:0;s:21:\"<em>[Kein Titel]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][6]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:6;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a674cd121743ce5023f0b49ec00bf6e5\";a:4:{i:0;s:21:\"<em>[Kein Titel]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:30:\"tx_twnueww_domain_model_person\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:100:\"&edit[tx_twnueww_domain_model_person][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:30:\"tx_twnueww_domain_model_person\";s:3:\"uid\";i:1;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"4d9b046204e77c6a2436818cf1f331a4\";a:4:{i:0;s:21:\"<em>[Kein Titel]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][5]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:5;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9b209de23811ef89bec385c059f31cd5\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c35634cd8ae4894e643ebb892e589515\";a:4:{i:0;s:5:\"Start\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"30e6429bac1adf342bb5148d4b52864b\";a:4:{i:0;s:5:\"admin\";i:1;a:6:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:78:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:24:\"1:/user_upload/be_users/\";}s:9:\"file_list\";a:0:{}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}s:13:\"system_config\";a:1:{s:8:\"function\";s:1:\"0\";}s:9:\"clipboard\";a:5:{s:6:\"normal\";a:0:{}s:5:\"tab_1\";a:2:{s:4:\"mode\";s:0:\"\";s:2:\"el\";a:0:{}}s:5:\"tab_2\";a:1:{s:4:\"mode\";s:0:\"\";}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:5:\"tab_1\";}s:4:\"list\";a:1:{s:5:\"pages\";s:1:\"1\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1506765826;s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1507130035}}\";s:15:\"moduleSessionID\";a:13:{s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:32:\"d19a6d42b72b460c182770f64d0aebbb\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"9b523babb99693a2940689660eb1ffa3\";s:10:\"web_layout\";s:32:\"d19a6d42b72b460c182770f64d0aebbb\";s:10:\"FormEngine\";s:32:\"9b523babb99693a2940689660eb1ffa3\";s:6:\"web_ts\";s:32:\"9b523babb99693a2940689660eb1ffa3\";s:8:\"web_list\";s:32:\"d19a6d42b72b460c182770f64d0aebbb\";s:9:\"tx_beuser\";s:32:\"d19a6d42b72b460c182770f64d0aebbb\";s:16:\"opendocs::recent\";s:32:\"9b523babb99693a2940689660eb1ffa3\";s:16:\"browse_links.php\";s:32:\"26da49b84831bcc37a5e3e297e30f954\";s:9:\"file_list\";s:32:\"d19a6d42b72b460c182770f64d0aebbb\";s:16:\"extensionbuilder\";s:32:\"b1d09093c1a11c358e3c09671443114e\";s:13:\"system_config\";s:32:\"9b523babb99693a2940689660eb1ffa3\";s:9:\"clipboard\";s:32:\"9b523babb99693a2940689660eb1ffa3\";}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:15:\"recursiveDelete\";i:0;s:18:\"resetConfiguration\";s:0:\"\";s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:2:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:18:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";i:23;s:1:\"1\";i:24;s:1:\"1\";i:25;s:1:\"1\";s:4:\"root\";s:1:\"1\";s:16:\"lastSelectedNode\";s:2:\"p2\";s:1:\"c\";s:1:\"1\";s:2:\"1f\";s:1:\"1\";s:2:\"2b\";s:1:\"1\";s:2:\"2c\";s:1:\"1\";s:2:\"2e\";s:1:\"1\";s:2:\"2d\";s:1:\"1\";s:2:\"2f\";s:1:\"1\";}}s:17:\"typo3-module-menu\";a:1:{s:9:\"collapsed\";s:5:\"false\";}}}s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:66:\"a:1:{i:25218;a:3:{i:62822724;i:1;i:14248556;i:1;i:229658699;i:1;}}\";}s:10:\"inlineView\";s:673:\"a:4:{i:0;b:0;s:10:\"tt_content\";a:3:{s:25:\"NEW59cf7d3ef1f3c762522484\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"2\";}}s:25:\"NEW59cfebef69c24157048964\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"4\";}}i:5;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;s:0:\"\";i:1;s:1:\"5\";}}}s:36:\"tx_twnueww_domain_model_blog_article\";a:4:{i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:19;s:0:\"\";}}i:4;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"6\";}}i:5;a:1:{s:36:\"tx_twnueww_domain_model_blog_comment\";a:1:{i:11;s:0:\"\";}}i:6;a:1:{s:10:\"tt_content\";a:1:{i:0;s:2:\"10\";}}}s:30:\"tx_twnueww_domain_model_person\";a:1:{s:25:\"NEW59d00b87b1f47893234592\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"7\";}}}}\";s:10:\"modulemenu\";s:2:\"{}\";}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',1,'',0,0,'options.clearCache.pages = 1\r\noptions.clearCache.all = 1\r\noptions.clearCache.system = 1\r\nadmPanel.override.tsdebug.forceTemplateParsing = 1\r\n',1507125117,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_fluidpages_templatefile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_fluidpages_layout` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_fed_page_flexform` text COLLATE utf8_unicode_ci,
  `tx_fed_page_flexform_sub` text COLLATE utf8_unicode_ci,
  `tx_fed_page_controller_action` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_fed_page_controller_action_sub` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_twgoogleanalytics_no_tracking` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1506941865,256,0,2,0,31,27,0,0,1506529494,2,0,'Nürnberg Web Week 2018 — Festival der digitalen Gesellschaft für die Metropolregion Nürnberg #nueww',1,'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:tw_nueww/Configuration/TypoScript/Main/TSconfig/page.t3s\">',1,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1507035611,NULL,'',0,'','','',0,0,0,0,'',0,0,'fluidpages__fluidpages','fluidpages__fluidpages',NULL,0,0,NULL,NULL,NULL,NULL,'Tollwerk.TwNueww->standard','Tollwerk.TwNueww->standard',0),(2,47,0,0,0,'',0,0,0,0,0,0,1507109039,512,0,3,0,31,27,0,0,1506778621,3,0,'Blog',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(3,47,0,0,0,'',0,0,0,0,0,0,1507109038,256,0,3,0,31,27,0,0,1506806628,3,0,'Personen',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(4,1,0,0,0,'',0,0,0,0,0,0,1506942663,768,0,1,0,31,27,0,0,1506942118,1,0,'Die Web Week',4,NULL,0,0,'',0,0,1,9,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(5,1,0,0,0,'',0,0,0,0,0,0,1507025151,1024,0,1,0,31,27,0,0,1506942118,1,0,'Nürnberg Digitals',4,NULL,0,0,'',0,0,1,18,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(6,1,0,0,0,'',0,0,0,0,0,0,1507025406,2560,0,1,0,31,27,0,0,1506942118,1,0,'Programm',254,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(7,1,0,0,0,'',0,0,0,0,0,0,1507030424,2048,0,1,0,31,27,0,0,1506942118,1,0,'Jobs',4,NULL,0,0,'',0,0,1,26,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(8,1,0,0,0,'',0,0,0,0,0,0,1506942742,2304,0,1,0,31,27,0,0,1506942118,1,0,'Partner',4,NULL,0,0,'',0,0,1,28,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(9,4,0,0,0,'',0,0,0,0,0,0,1506942221,256,0,1,0,31,27,0,0,1506942221,1,0,'Manifest',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(10,1,0,0,0,'',0,0,0,0,0,0,1507025172,1792,0,1,0,31,27,0,0,1506942221,1,0,'Mitmachen',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(11,4,0,0,0,'',0,0,0,0,0,0,1506942221,768,0,1,0,31,27,0,0,1506942221,1,0,'Team',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(12,6,0,0,0,'',0,0,0,0,0,0,1507030393,1280,0,1,0,31,27,0,0,1506942221,1,0,'Blog',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(13,4,0,0,0,'',0,0,0,0,0,0,1506942221,1280,0,1,0,31,27,0,0,1506942221,1,0,'Magazin',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(14,4,0,0,0,'',0,0,0,0,0,0,1506942221,1536,0,1,0,31,27,0,0,1506942221,1,0,'Impressionen',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(15,4,0,0,0,'',0,0,0,0,0,0,1506942221,1792,0,1,0,31,27,0,0,1506942221,1,0,'Downloads',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(16,1,0,0,0,'',0,0,0,0,0,0,1507030460,2432,0,1,0,31,27,0,0,1506942221,1,0,'Kontakt',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(17,4,0,0,0,'',0,0,0,0,0,0,1506942221,2304,0,1,0,31,27,0,0,1506942221,1,0,'Presse',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1506975745,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(18,5,0,0,0,'',0,0,0,0,0,0,1506942282,256,0,1,0,31,27,0,0,1506942282,1,0,'Organisationen',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(19,5,0,0,0,'',0,0,0,0,0,0,1506942282,512,0,1,0,31,27,0,0,1506942282,1,0,'Freelancer',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(20,5,0,0,0,'',0,0,0,0,0,0,1506942282,768,0,1,0,31,27,0,0,1506942282,1,0,'Influencer',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(21,5,0,0,0,'',0,0,0,0,0,0,1506942282,1024,0,1,0,31,27,0,0,1506942282,1,0,'User Groups',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(22,6,0,0,0,'',0,0,0,0,0,0,1506942311,256,0,1,0,31,27,0,0,1506942311,1,0,'Alle Events',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(23,6,0,0,0,'',0,0,0,0,0,0,1506942311,512,0,1,0,31,27,0,0,1506942311,1,0,'Meine Events',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(24,6,0,0,0,'',0,0,0,0,0,0,1506942311,768,0,1,0,31,27,0,0,1506942311,1,0,'Tracks',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(25,6,0,0,0,'',0,0,0,0,0,0,1506942311,1024,0,1,0,31,27,0,0,1506942311,1,0,'Event anmelden',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(26,7,0,0,0,'',0,0,0,0,0,0,1506942334,256,0,1,0,31,27,0,0,1506942334,1,0,'Übersicht',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(27,7,0,0,0,'',0,0,0,0,0,0,1506942334,512,0,1,0,31,27,0,0,1506942334,1,0,'Stellenangebot einstellen',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(28,8,0,0,0,'',0,0,0,0,0,0,1506942625,256,0,1,0,31,27,0,0,1506942625,1,0,'Übersicht',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(29,8,0,0,0,'',0,0,0,0,0,0,1506942625,512,0,1,0,31,27,0,0,1506942625,1,0,'Sponsor werden',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(30,1,0,0,0,'',0,0,0,0,0,0,1506942787,3072,0,1,0,31,27,0,0,1506942766,1,0,'-----',199,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(31,47,0,0,0,'',0,0,0,0,0,0,1507109041,768,0,1,0,31,27,0,0,1506956177,1,0,'Downloads',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(32,17,0,0,0,'',0,0,0,0,0,0,1506958182,1000000000,1,1,0,31,27,0,0,1506957933,1,0,'Pressemitteilung Mai 2018',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1506957986,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(33,1,0,0,0,'',0,0,0,0,0,0,1507109053,1000000000,1,1,0,31,27,0,0,1506977305,1,0,'-----',199,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(34,1,0,0,0,'',0,0,0,0,0,0,1506977331,4352,0,1,0,31,27,0,0,1506977322,1,0,'Testinhalte',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(35,34,0,0,0,'',0,0,0,0,0,0,1506977379,256,0,1,0,31,27,0,0,1506977379,1,0,'Personen',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(36,34,0,0,0,'',0,0,0,0,0,0,1506977379,512,0,1,0,31,27,0,0,1506977379,1,0,'Blog',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(37,34,0,0,0,'',0,0,0,0,0,0,1506977379,768,0,1,0,31,27,0,0,1506977379,1,0,'Downloads',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(38,1,0,0,0,'',0,0,0,0,0,0,1507030360,2816,0,1,0,31,27,0,0,1507030351,1,0,'Meta',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(39,38,0,0,0,'',0,0,0,0,0,0,1507030503,256,0,1,0,31,27,0,0,1507030485,1,0,'Meine Events',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(40,38,0,0,0,'',0,0,0,0,0,0,1507030542,128,0,1,0,31,27,0,0,1507030542,1,0,'Impressum',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(41,38,0,0,0,'',0,0,0,0,0,0,1507030570,192,0,1,0,31,27,0,0,1507030542,1,0,'Presse',4,NULL,0,0,'',0,0,1,17,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(42,38,0,0,0,'',0,0,0,0,0,0,1507030595,224,0,1,0,31,27,0,0,1507030542,1,0,'Kontakt',4,NULL,0,0,'',0,0,1,16,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(43,3,0,0,0,'',0,0,0,0,0,0,1507109005,256,0,3,0,31,27,0,0,1507108871,3,0,'NUEWW',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(44,3,0,0,0,'',0,0,0,0,0,0,1507108924,512,0,3,0,31,27,0,0,1507108884,3,0,'Gastautoren etc.',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(45,2,0,0,0,'',0,0,0,0,0,0,1507109012,256,0,3,0,31,27,0,0,1507108982,3,0,'Gastbeiträge',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(46,2,0,0,0,'',0,0,0,0,0,0,1507109009,128,0,3,0,31,27,0,0,1507108988,3,0,'NUEWW',254,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0),(47,1,0,0,0,'',0,0,0,0,0,0,1507135171,4224,0,3,0,31,27,0,0,1507109028,3,0,'Datensätze',254,'mod {\r\n    web_list {\r\n        table {\r\n            tt_content.hideTable = 1\r\n        }\r\n    }\r\n}',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,NULL,NULL,NULL,NULL,'','',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `tx_fed_page_flexform` text COLLATE utf8_unicode_ci,
  `tx_fed_page_flexform_sub` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(10) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(11) NOT NULL DEFAULT '0',
  `forced` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (2,0,1506765607,1506765471,0,1,'2',0,'/user_upload/be_users/bloo.jpg','73da57029238aca5fcedc45464ae5f50a3564e22','8d3b142eea00e34e9b4df6a78bc8173cf0289166','jpg','image/jpeg','bloo.jpg','17f45b2e886b53ba92c4811f8b5811e9de519d91',21063,1506765607,1506765471),(3,0,1506765572,0,0,1,'1',0,'/_temp_/index.html','1cd5eec12b9b11599c0b4c6b2d43342c4fb53a7b','0258f8a5f703dd44c350fbfcddeecb1634d46ad4','html','text/html','index.html','07fd666e70d42a340d2295c052423e4b47e59a33',147,1506714441,1506528947),(4,0,1506765573,0,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1506714441,1506528947),(5,0,1506770301,1506770301,0,1,'2',0,'/user_upload/content/platzhalter/kerbal_space_program_01.jpg','0f5f2a0459831260957789b22c615e16abcfbc61','5a3a2480f4b2a3b513d08893db90e402c265b1ff','jpg','image/jpeg','kerbal_space_program_01.jpg','4f4089863b2e41dbee05b636517743fb73e4ace8',33456,1506770301,1506770301),(6,0,1506952897,1506952897,0,1,'2',0,'/user_upload/placeholder/1920x1080.png','07be24052aa8a49b6cdec6c8a258426758af5d04','2f7b4d392f62145ba143988a2ded48a9da6ec5d0','png','image/png','1920x1080.png','baebb35970a301454ddbde39d6896aaf1c4698d1',7467,1506952897,1506952897),(7,0,1506952897,1506952897,0,1,'2',0,'/user_upload/placeholder/800x600.png','b211c9e608605d73813e6b6298b81bf27e8864a9','2f7b4d392f62145ba143988a2ded48a9da6ec5d0','png','image/png','800x600.png','4cd81e3df95708218ae9fff6e04b7b22bdb25b40',2456,1506952897,1506952897),(8,0,1506952897,1506952897,0,1,'2',0,'/user_upload/placeholder/400x300.png','560ce4b7fbca95252ad0a81e59eb435e9cc4d948','2f7b4d392f62145ba143988a2ded48a9da6ec5d0','png','image/png','400x300.png','aba99175b04b5ec315766289e39994824e7ac70a',985,1506952897,1506952897),(9,0,1507106901,0,0,1,'1',0,'/user_upload/testformular.yaml','4e3141fe82b30b2af876385cdffdc12667a3c6d6','19669f1e02c2f16705ec7587044c66443be70725','yaml','text/plain','testformular.yaml','6250a7e2536dffec095ed9ff97fbbb50a932c1aa',843,1507106901,1507106901);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
INSERT INTO `sys_file_collection` VALUES (1,37,1506977401,1506955441,1,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:4:\"type\";N;s:5:\"title\";N;s:7:\"storage\";N;s:6:\"folder\";N;s:9:\"recursive\";N;s:16:\"sys_language_uid\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,0,0,'Presse-Downloads',NULL,'static',3,0,'Please choose a FAL mount from above first.',0,0,NULL);
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (2,0,1506765607,1506765471,1,0,0,'',0,0,0,'',0,0,0,0,0,0,2,NULL,290,290,NULL,NULL,NULL,0),(3,0,1506765572,1506765572,1,0,0,'',0,0,0,'',0,0,0,0,0,0,3,NULL,0,0,NULL,NULL,NULL,0),(4,0,1506765573,1506765573,1,0,0,'',0,0,0,'',0,0,0,0,0,0,4,NULL,0,0,NULL,NULL,NULL,0),(5,0,1506770301,1506770301,3,0,0,'',0,0,0,'',0,0,0,0,0,0,5,NULL,1191,670,NULL,NULL,NULL,0),(6,0,1506953031,1506952897,1,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:11:\"alternative\";N;s:16:\"sys_language_uid\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,6,'Preview image 1920x1080',1920,1080,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et','Alternative text for 1920x1080 pixel image',NULL,0),(7,0,1506953003,1506952897,1,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:11:\"alternative\";N;s:16:\"sys_language_uid\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,7,'Preview image 800x600',800,600,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et','Alternative text for 800x600 pixel image',NULL,0),(8,0,1506952967,1506952897,1,0,0,'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:11:\"alternative\";N;s:16:\"sys_language_uid\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,8,'Preview image 400x300',400,300,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et','Alternative text for 400x300 pixel image',NULL,0),(9,0,1507106900,1507106900,3,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,0,0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (3,1506765477,1506765477,1,2,'/_processed_/2/1/preview_bloo-bloo-25337342-290-290_e49d8c0d73.jpg','preview_bloo-bloo-25337342-290-290_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(4,1506765481,1506765481,1,2,'/_processed_/2/1/preview_bloo-bloo-25337342-290-290_e49d8c0d73.jpg','preview_bloo-bloo-25337342-290-290_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(5,1506765571,1506765571,1,2,'/_processed_/2/1/preview_bloo-bloo-25337342-290-290_f9b241f361.jpg','preview_bloo-bloo-25337342-290-290_f9b241f361.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','f9b241f361',NULL,NULL),(8,1506765584,1506765584,1,2,'/_processed_/2/1/preview_bloo-bloo-25337342-290-290_f9b241f361.jpg','preview_bloo-bloo-25337342-290-290_f9b241f361.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','f9b241f361',NULL,NULL),(9,1506765593,1506765593,1,2,'/_processed_/2/1/preview_bloo-bloo-25337342-290-290_1ed36af65a.jpg','preview_bloo-bloo-25337342-290-290_1ed36af65a.jpg','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','1ed36af65a',NULL,NULL),(10,1506765597,1506765597,1,2,'/_processed_/2/1/preview_bloo-bloo-25337342-290-290_f9b241f361.jpg','preview_bloo-bloo-25337342-290-290_f9b241f361.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','f9b241f361',NULL,NULL),(11,1506765608,1506765608,1,2,'/_processed_/9/4/preview_bloo_f9b241f361.jpg','preview_bloo_f9b241f361.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','f9b241f361',NULL,NULL),(12,1506765827,1506765827,1,2,'',NULL,'a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.CropScaleMask','e8696df9ab',NULL,NULL),(13,1506765857,1506765857,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(14,1506765880,1506765880,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(15,1506768542,1506768542,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(16,1506770304,1506770304,1,5,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.CropScaleMask','82342d6ac8',NULL,NULL),(17,1506770304,1506770304,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(18,1506770308,1506770308,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_7d3a6fdb42.jpg','preview_kerbal_space_program_01_7d3a6fdb42.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','7d3a6fdb42',NULL,NULL),(19,1506770312,1506770312,1,5,'',NULL,'a:3:{s:5:\"width\";i:600;s:6:\"height\";d:337;s:4:\"crop\";N;}','6ba3748bcf5ebd4df5b876e98105fc4ad8ced846','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.CropScaleMask','58c278a7a1',NULL,NULL),(20,1506775111,1506775111,1,5,'',NULL,'a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.CropScaleMask','9aad39a702',NULL,NULL),(21,1506798476,1506798476,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(22,1506798485,1506798485,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(23,1506798493,1506798493,1,5,'',NULL,'a:3:{s:5:\"width\";s:4:\"590m\";s:6:\"height\";N;s:4:\"crop\";N;}','d5e685a99905080ee894072160ee152f1a6f03e3','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.CropScaleMask','08e7119b82',NULL,NULL),(24,1506798559,1506798559,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(25,1506798581,1506798581,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(26,1506798585,1506798585,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_7d3a6fdb42.jpg','preview_kerbal_space_program_01_7d3a6fdb42.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','7d3a6fdb42',NULL,NULL),(27,1506798752,1506798752,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(28,1506799026,1506799026,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(29,1506799359,1506799359,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(30,1506799561,1506799561,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(31,1506799599,1506799599,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_7d3a6fdb42.jpg','preview_kerbal_space_program_01_7d3a6fdb42.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','7d3a6fdb42',NULL,NULL),(32,1506799620,1506799620,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(33,1506799642,1506799642,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_7d3a6fdb42.jpg','preview_kerbal_space_program_01_7d3a6fdb42.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','7d3a6fdb42',NULL,NULL),(34,1506799642,1506799642,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_7d3a6fdb42.jpg','preview_kerbal_space_program_01_7d3a6fdb42.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','7d3a6fdb42',NULL,NULL),(35,1506801349,1506801349,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(36,1506801717,1506801717,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(37,1506801719,1506801719,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(38,1506802607,1506802607,1,5,'',NULL,'a:3:{s:5:\"width\";i:295;s:6:\"height\";d:165;s:4:\"crop\";N;}','9b3420f50025debea1729031427138313a8699f1','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.CropScaleMask','86d0d9a292',NULL,NULL),(39,1506806690,1506806690,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(40,1506806813,1506806813,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(41,1506806813,1506806813,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(42,1506859219,1506859219,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(43,1506859235,1506859235,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(44,1506859274,1506859274,1,2,'/_processed_/9/4/preview_bloo_e49d8c0d73.jpg','preview_bloo_e49d8c0d73.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','17f45b2e886b53ba92c4811f8b5811e9de519d91','Image.Preview','e49d8c0d73',NULL,NULL),(45,1506942887,1506942887,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(46,1506944107,1506944107,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(47,1506944226,1506944226,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(48,1506944267,1506944267,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(49,1506944335,1506944335,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(50,1506944385,1506944385,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(51,1506944405,1506944405,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(52,1506944543,1506944543,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(53,1506944914,1506944914,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(54,1506944929,1506944929,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(55,1506945973,1506945973,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(56,1506946174,1506946174,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(57,1506952898,1506952898,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(58,1506952898,1506952898,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(59,1506952898,1506952898,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(60,1506952900,1506952900,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(61,1506952900,1506952900,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(62,1506952900,1506952900,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(63,1506952909,1506952909,1,8,'/_processed_/e/e/preview_400x300_a9bb6785b6.png','preview_400x300_a9bb6785b6.png','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','a9bb6785b6',150,113),(64,1506952974,1506952974,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(65,1506952974,1506952974,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(66,1506952974,1506952974,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(67,1506952975,1506952975,1,7,'/_processed_/e/0/preview_800x600_10c0c30ca5.png','preview_800x600_10c0c30ca5.png','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','10c0c30ca5',150,113),(68,1506953003,1506953003,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(69,1506953003,1506953003,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(70,1506953003,1506953003,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(71,1506953005,1506953005,1,6,'/_processed_/9/8/preview_1920x1080_6a68dd9170.png','preview_1920x1080_6a68dd9170.png','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','6a68dd9170',150,84),(72,1506953086,1506953086,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(73,1506953086,1506953086,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(74,1506953086,1506953086,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(75,1506953896,1506953896,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(76,1506953896,1506953896,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(77,1506953896,1506953896,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(78,1506954069,1506954069,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(79,1506954069,1506954069,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(80,1506954069,1506954069,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(81,1506954100,1506954100,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(82,1506954100,1506954100,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(83,1506954100,1506954100,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(84,1506954443,1506954443,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(85,1506954443,1506954443,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(86,1506954443,1506954443,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(87,1506954445,1506954445,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(88,1506954445,1506954445,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(89,1506954445,1506954445,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(90,1506954446,1506954446,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(91,1506954446,1506954446,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(92,1506954446,1506954446,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(93,1506954448,1506954448,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(94,1506954448,1506954448,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(95,1506954448,1506954448,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(96,1506954449,1506954449,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(97,1506954449,1506954449,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(98,1506954449,1506954449,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(99,1506954450,1506954450,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(100,1506954450,1506954450,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(101,1506954450,1506954450,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(102,1506955324,1506955324,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(103,1506955324,1506955324,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(104,1506955324,1506955324,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(105,1506955345,1506955345,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(106,1506955345,1506955345,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(107,1506955345,1506955345,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(108,1506955418,1506955418,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(109,1506955419,1506955419,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(110,1506955420,1506955420,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(111,1506955442,1506955442,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(112,1506955442,1506955442,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(113,1506955442,1506955442,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(114,1506955519,1506955519,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(115,1506955519,1506955519,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(116,1506955519,1506955519,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(117,1506955542,1506955542,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(118,1506955542,1506955542,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(119,1506955542,1506955542,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(120,1506955612,1506955612,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(121,1506955612,1506955612,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(122,1506955612,1506955612,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(123,1506955631,1506955631,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(124,1506955631,1506955631,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(125,1506955631,1506955631,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(126,1506955661,1506955661,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(127,1506955661,1506955661,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(128,1506955661,1506955661,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(129,1506955775,1506955775,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(130,1506955775,1506955775,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(131,1506955775,1506955775,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(132,1506955782,1506955782,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(133,1506955782,1506955782,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(134,1506955782,1506955782,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(135,1506955808,1506955808,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(136,1506955808,1506955808,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(137,1506955808,1506955808,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(138,1506955884,1506955884,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(139,1506955884,1506955884,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(140,1506955884,1506955884,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(141,1506955911,1506955911,1,8,'/_processed_/e/e/preview_400x300_66e3cb4b8f.png','preview_400x300_66e3cb4b8f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','66e3cb4b8f',45,34),(142,1506955911,1506955911,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(143,1506955911,1506955911,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(144,1506955985,1506955985,1,8,'/_processed_/e/e/preview_400x300_de0dd07e52.png','preview_400x300_de0dd07e52.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','aba99175b04b5ec315766289e39994824e7ac70a','Image.Preview','de0dd07e52',64,48),(145,1506955985,1506955985,1,7,'/_processed_/e/0/preview_800x600_040ad95f13.png','preview_800x600_040ad95f13.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','040ad95f13',64,48),(146,1506955985,1506955985,1,6,'/_processed_/9/8/preview_1920x1080_b3368d9c63.png','preview_1920x1080_b3368d9c63.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','b3368d9c63',64,36),(147,1506973849,1506973849,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(148,1506973855,1506973855,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(149,1506974121,1506974121,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(150,1506974128,1506974128,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(151,1506974181,1506974181,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(152,1506974183,1506974183,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(153,1506974183,1506974183,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(154,1506974187,1506974187,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(155,1506974187,1506974187,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(156,1506974292,1506974292,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(157,1506974292,1506974292,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(158,1506975451,1506975451,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(159,1506975451,1506975451,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(160,1506975456,1506975456,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(161,1506975456,1506975456,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(162,1506975502,1506975502,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(163,1506975502,1506975502,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(164,1506975676,1506975676,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(165,1506975676,1506975676,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(166,1506975746,1506975746,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(167,1506975746,1506975746,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(168,1506978622,1506978622,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(169,1506978622,1506978622,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(170,1506979001,1506979001,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(171,1506979010,1506979010,1,5,'/_processed_/a/f/preview_kerbal_space_program_01_5842dd201b.jpg','preview_kerbal_space_program_01_5842dd201b.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.Preview','5842dd201b',NULL,NULL),(172,1506979993,1506979993,1,7,'/_processed_/e/0/preview_800x600_ef85418f29.png','preview_800x600_ef85418f29.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','4cd81e3df95708218ae9fff6e04b7b22bdb25b40','Image.Preview','ef85418f29',45,34),(173,1506979993,1506979993,1,6,'/_processed_/9/8/preview_1920x1080_2568c6f199.png','preview_1920x1080_2568c6f199.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','baebb35970a301454ddbde39d6896aaf1c4698d1','Image.Preview','2568c6f199',45,25),(174,1507056207,1507056207,1,5,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','4f4089863b2e41dbee05b636517743fb73e4ace8','Image.CropScaleMask','920d2e78e5',NULL,NULL);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,0,1506768548,1506765480,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',2,3,'be_users','avatar',1,'sys_file','','',NULL,'','',0,NULL),(2,1,1506781875,1506770307,3,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',5,2,'tt_content','image',1,'sys_file','','','','','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL),(3,36,1506979039,1506798484,3,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',5,1,'tx_twnueww_domain_model_blog_article','images',1,'sys_file','','',NULL,'','',0,NULL),(4,1,1506802640,1506798585,3,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',5,5,'tt_content','image',1,'sys_file','','','','','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL),(5,1,1506802640,1506799641,3,1000000000,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,5,'tt_content','image',2,'sys_file','','','','','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL),(6,36,1506977479,1506801719,3,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',5,4,'tx_twnueww_domain_model_blog_article','images',1,'sys_file','','',NULL,'','',0,NULL),(7,3,1506806818,1506806692,3,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',2,1,'tx_twnueww_domain_model_person','images',1,'sys_file','','',NULL,'','',0,NULL),(8,37,1506977401,1506955441,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',8,1,'sys_file_collection','files',1,'sys_file',NULL,NULL,NULL,'','',0,NULL),(9,37,1506977401,1506955441,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',7,1,'sys_file_collection','files',2,'sys_file',NULL,NULL,NULL,'','',0,NULL),(10,37,1506977401,1506955441,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',6,1,'sys_file_collection','files',3,'sys_file',NULL,NULL,NULL,'','',0,NULL),(11,17,1506975745,1506973854,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',7,9,'tt_content','nueww_downloads',1,'sys_file',NULL,NULL,NULL,'','',0,NULL),(12,17,1506975745,1506974182,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',6,9,'tt_content','nueww_downloads',2,'sys_file',NULL,NULL,NULL,'','',0,NULL);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1506715300,1506715300,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(240),`recuid`),
  KEY `lookup_uid` (`ref_table`(240),`ref_uid`),
  KEY `lookup_string` (`ref_string`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0131525246f00e112217e70619d31afe','tx_twnueww_domain_model_blog_article',5,'comments','','','',0,0,0,'tx_twnueww_domain_model_blog_comment',1,''),('03ee0a643ed0195fb54c522a6c95985b','sys_file_metadata',8,'file','','','',0,0,0,'sys_file',8,''),('03ef4a73aa9c65281c065923c4f64e40','pages',42,'shortcut','','','',0,0,0,'pages',16,''),('058ca5a2377929bc16aa04dbda3d4901','tx_twnueww_domain_model_blog_article',6,'series','','','',0,0,0,'tx_twnueww_domain_model_blog_series',1,''),('06e947ce0f9f413b6ac246eed9266738','sys_file_reference',9,'uid_local','','','',0,0,0,'sys_file',7,''),('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('1b52db6424194739ae73be79019eb117','sys_file_reference',8,'uid_local','','','',0,0,0,'sys_file',8,''),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('1e7a97f1be315ed74f18cd734f656896','tx_twnueww_domain_model_blog_article',5,'tags','','','',0,0,0,'tx_twnueww_domain_model_blog_tag',1,''),('26e1b6996ab89d230df7abd756fd15ae','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',2,''),('2b2b584e9e6365f4bac435cc91ef2728','sys_file_reference',5,'uid_local','','','',0,1,0,'sys_file',5,''),('42198c687046377d7e3981e3915f4851','tt_content',9,'pi_flexform','main/lDEF/settings.files/vDEF/','','',0,0,0,'sys_file_reference',11,''),('481701ce4553c1c1388b8877d0a08408','be_users',3,'avatar','','','',0,0,0,'sys_file_reference',1,''),('517724d8de14aa37e8419771cee0c8d6','sys_file_metadata',6,'file','','','',0,0,0,'sys_file',6,''),('51d018b59091e9a6301accc07d5e9cf1','sys_file',5,'metadata','','','',0,0,0,'sys_file_metadata',5,''),('569646da4b312041a95f0162c48a4487','tx_twnueww_domain_model_blog_article',5,'persons','','','',0,0,0,'tx_twnueww_domain_model_person',1,''),('59c41b9f1d5338d9417c9b6817e2c542','sys_file',2,'storage','','','',0,0,0,'sys_file_storage',1,''),('60f347882d3b04e16199c9811a050073','tx_twnueww_domain_model_blog_article',1,'images','','','',0,0,0,'sys_file_reference',3,''),('657b94b3cf8fac87fe5beb81f95fba71','sys_file_reference',6,'uid_local','','','',0,0,0,'sys_file',5,''),('6e846d6f88981504b808709aa7efdc1e','sys_file_collection',1,'files','','','',2,0,0,'sys_file_reference',10,''),('75354da5a0d02c8ba910df406b88e314','pages',7,'shortcut','','','',0,0,0,'pages',26,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('767bb2446ff331b05374d491dfb687e9','sys_file_metadata',7,'file','','','',0,0,0,'sys_file',7,''),('76c27f157a3215976409898fad35cbb0','sys_file',2,'metadata','','','',0,0,0,'sys_file_metadata',2,''),('773e5993ec2c34acecd9b666958d31ff','sys_file_collection',1,'files','','','',1,0,0,'sys_file_reference',9,''),('7eafb72cc6ae48c3c164c6604d6ff7ec','tx_twnueww_domain_model_person',1,'images','','','',0,0,0,'sys_file_reference',7,''),('83f1cdf3dbcbb3c81a03e8c26c524a0e','sys_file_reference',11,'uid_local','','','',0,0,0,'sys_file',7,''),('85f574b9bf66b3131ee55f81a4778397','tx_twnueww_domain_model_blog_article',4,'persons','','','',0,0,0,'tx_twnueww_domain_model_person',3,''),('893e20b39f66903f90c681e8c41b6297','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',1,''),('89ac10896dd65fbf4a567be2e7d8cdd1','sys_file_reference',3,'uid_local','','','',0,0,0,'sys_file',5,''),('8e144ad9c5eafc5223198659a701e016','tx_twnueww_domain_model_blog_article',6,'nested_content','','','',0,0,0,'tt_content',10,''),('90b95eee963b73325d55586731e298ad','pages',8,'shortcut','','','',0,0,0,'pages',28,''),('98f40957f2d9446e66488e9bb4fb0531','sys_file_reference',10,'uid_local','','','',0,0,0,'sys_file',6,''),('9908529d9e6e629d2af382fa7f5a3a88','sys_file_reference',4,'uid_local','','','',0,1,0,'sys_file',5,''),('9d0858a039c60464d827d905aced4c62','tx_twnueww_domain_model_blog_article',5,'comments','','','',1,0,0,'tx_twnueww_domain_model_blog_comment',2,''),('ab5d25d69a647ef86a57b44b99d3dc53','tx_twnueww_domain_model_blog_article',4,'images','','','',0,0,0,'sys_file_reference',6,''),('abfe6ac31c27c8bb530ee958cf84a5aa','pages',4,'shortcut','','','',0,0,0,'pages',9,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('c7dd28e7e1e5b4328113e77f986ca167','pages',41,'shortcut','','','',0,0,0,'pages',17,''),('ca3e322295204bd18ceb2ac629a7503f','sys_file_reference',7,'uid_local','','','',0,0,0,'sys_file',2,''),('cc33f4ed5d432f9005902024765a7840','tx_twnueww_domain_model_blog_article',2,'persons','','','',0,0,0,'tx_twnueww_domain_model_person',3,''),('d1657b650408849099784a78159bc058','sys_file',4,'storage','','','',0,0,0,'sys_file_storage',1,''),('d249a2834144468e02da10200fd1117e','be_users',3,'email','','email','2',-1,0,0,'_STRING',0,'klaus@tollwerk.de'),('d2c39fef71cf1e6cb1fbd0202abe1910','sys_file_reference',12,'uid_local','','','',0,0,0,'sys_file',6,''),('ea7a18198df2629a13a6aec1bb27a278','tt_content',9,'pi_flexform','main/lDEF/settings.files/vDEF/','','',1,0,0,'sys_file_reference',12,''),('f58e434a3887fcf2b4ac6969ba6b6285','tx_twnueww_domain_model_blog_article',7,'series','','','',0,0,0,'tx_twnueww_domain_model_blog_series',1,''),('f80be94fa83d950f1ea39a14ceac91ca','tx_twnueww_domain_model_blog_article',5,'tags','','','',1,0,0,'tx_twnueww_domain_model_blog_tag',2,''),('fae60f5ae2a38d0597e7395f5b36354e','sys_file_reference',2,'uid_local','','','',0,1,0,'sys_file',5,''),('fc097344a735cbd2d2dca64f525b4618','tt_content',7,'pi_flexform','main/lDEF/collection/vDEF/','','',0,1,0,'sys_file_collection',1,''),('fcb663d22ac66f99330178609d4accbd','pages',5,'shortcut','','','',0,0,0,'pages',18,''),('fdc78e1f1d1072b54127e1368970914f','tx_twnueww_domain_model_blog_article',1,'persons','','','',0,0,0,'tx_twnueww_domain_model_person',3,''),('fddfe12237688d2aba353829f581ebf2','sys_file_collection',1,'files','','','',0,0,0,'sys_file_reference',8,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListInAccessModuleListUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MediaceExtractionUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateCscStaticTemplateUpdate','i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(31,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(32,'extensionDataImport','typo3conf/ext/flux/ext_tables_static+adt.sql','s:0:\"\";'),(33,'extensionDataImport','typo3conf/ext/fluidcontent/ext_tables_static+adt.sql','s:0:\"\";'),(34,'extensionDataImport','typo3conf/ext/fluidpages/ext_tables_static+adt.sql','s:0:\"\";'),(35,'extensionDataImport','typo3conf/ext/vhs/ext_tables_static+adt.sql','s:0:\"\";'),(36,'extensionDataImport','typo3conf/ext/tw_googleanalytics/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3conf/ext/tw_componentlibrary/ext_tables_static+adt.sql','s:0:\"\";'),(38,'extensionDataImport','typo3conf/ext/tw_nueww/ext_tables_static+adt.sql','s:0:\"\";'),(42,'TYPO3\\CMS\\Lang','de','i:1506765957;'),(44,'extensionDataImport','typo3conf/ext/extension_builder/ext_tables_static+adt.sql','s:0:\"\";'),(46,'core','formProtectionSessionToken:1','s:64:\"dbde4511304fd8c263295105ce7ae2e1a514b25ee25afb5b059b7a5fb117ab8d\";'),(47,'extensionDataImport','typo3conf/ext/file_list/ext_tables_static+adt.sql','s:0:\"\";'),(48,'core','formProtectionSessionToken:3','s:64:\"34fdc8c6e7312a98f8ce77e42d9a1c2120e5eb3d660d508de5440b85e9be426d\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1507134967,256,1506529494,2,'NEW SITE','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:tw_nueww/Configuration/TypoScript/Static,EXT:tw_googleanalytics/Configuration/TypoScript,EXT:tw_componentlibrary/Configuration/TypoScript,EXT:form/Configuration/TypoScript/','compressJs = 0\r\ncompressCss = 0\r\ncompressHTML = 0\r\nconcatenateJs = 0\r\nconcatenateCss = 0\r\nconcatenateJsAndCss = 0\r\nplugin.tx_nueww.settings.blog.storagePid = 2\r\nplugin.tx_twnueww.settings.blog.storagePid = 2,45,46\nplugin.tx_twnueww.settings.person.storagePid = 3\r\nplugin.tx_twcomponentlibrary.settings.stylesheets = EXT:tw_nueww/Resources/Public/Global/Base.min.css,EXT:tw_nueww/Resources/Public/Global/_Fractal.min.css\r\nplugin.tx_twnueww.settings.downloads.storagePid = 31','<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:tw_nueww/Configuration/TypoScript/Main/10_main.t3s\">\r\n\r\n# Enable next line for detailed typo3 error messages\r\nconfig.contentObjectExceptionHandler = 0','',NULL,NULL,0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_flux_parent` int(11) DEFAULT NULL,
  `tx_flux_children` int(11) DEFAULT NULL,
  `tx_flux_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_fed_fcefile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_twnueww_domain_model_blog_article` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_fluxcolumn` (`tx_flux_column`(12)),
  KEY `index_fluxparent` (`tx_flux_parent`),
  KEY `index_fluxparentcolumn` (`tx_flux_column`(12),`tx_flux_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1506781884,1506768013,3,0,0,1000000000,'text','Test!','','','<p>Test!</p>',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(2,1,0,0,0,'',0,0,0,0,0,0,1506781875,1506770307,3,0,0,1000000000,'image','','','',NULL,0,0,0,0,1,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(3,12,0,0,0,'',0,0,0,0,0,0,1506948758,1506781848,3,0,0,0,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','twnueww_blog',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,NULL,NULL,NULL,'',0),(4,1,0,0,0,'',0,0,0,0,0,0,1506782024,1506782007,3,0,0,64,'text','','','','<p>Test</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,1,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,NULL,NULL,NULL,'',0),(5,1,0,0,0,'',0,0,0,0,0,0,1506802640,1506798585,3,0,0,1000000000,'textpic','','','','<p>fkldffddfdffdfdöfakdjföalkdsjf adsöfklja dsöfkja dsöfaksjd f</p>',0,0,0,0,2,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:16:\"tx_flux_children\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(6,1,0,0,0,'',0,0,0,0,0,0,1507035611,1506807474,3,0,0,384,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','twnueww_blog',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"main\">\n            <language index=\"lDEF\">\n                <field index=\"settings.collection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.files\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:16:\"tx_flux_children\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(7,17,0,0,0,'',0,0,0,0,0,0,1506958366,1506957474,1,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','twnueww_download',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"main\">\n            <language index=\"lDEF\">\n                <field index=\"settings.collection\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"collection\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:16:\"tx_flux_children\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(8,32,0,0,0,'',0,0,0,0,0,0,1506958182,1506957986,1,0,0,1000000000,'textpic','dföldaslkasd fk','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(9,17,0,0,0,'',0,0,0,0,0,0,1506975745,1506958374,1,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','twnueww_download',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"main\">\n            <language index=\"lDEF\">\n                <field index=\"collection\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.collection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.files\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:16:\"tx_flux_children\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',0),(10,46,0,0,0,'',0,0,0,0,0,0,1507135034,1507134862,3,0,0,256,'textpic','Huch, ein eingebettetes Inhaltselement!','','','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:16:\"tx_flux_children\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,'','',6);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `review_state` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_blog_article_organization_mm`
--

DROP TABLE IF EXISTS `tx_twnueww_blog_article_organization_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_blog_article_organization_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_blog_article_organization_mm`
--

LOCK TABLES `tx_twnueww_blog_article_organization_mm` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_blog_article_organization_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_twnueww_blog_article_organization_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_blog_article_person_mm`
--

DROP TABLE IF EXISTS `tx_twnueww_blog_article_person_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_blog_article_person_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_blog_article_person_mm`
--

LOCK TABLES `tx_twnueww_blog_article_person_mm` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_blog_article_person_mm` DISABLE KEYS */;
INSERT INTO `tx_twnueww_blog_article_person_mm` VALUES (4,3,1,0),(2,3,1,0),(1,3,1,0),(5,1,1,0);
/*!40000 ALTER TABLE `tx_twnueww_blog_article_person_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_blog_article_series_mm`
--

DROP TABLE IF EXISTS `tx_twnueww_blog_article_series_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_blog_article_series_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_blog_article_series_mm`
--

LOCK TABLES `tx_twnueww_blog_article_series_mm` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_blog_article_series_mm` DISABLE KEYS */;
INSERT INTO `tx_twnueww_blog_article_series_mm` VALUES (6,1,1,0),(7,1,1,0);
/*!40000 ALTER TABLE `tx_twnueww_blog_article_series_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_blog_article_tag_mm`
--

DROP TABLE IF EXISTS `tx_twnueww_blog_article_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_blog_article_tag_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_blog_article_tag_mm`
--

LOCK TABLES `tx_twnueww_blog_article_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_blog_article_tag_mm` DISABLE KEYS */;
INSERT INTO `tx_twnueww_blog_article_tag_mm` VALUES (8,1,1,0),(8,2,2,0),(5,1,1,0),(5,2,2,0);
/*!40000 ALTER TABLE `tx_twnueww_blog_article_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_blog_article`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_blog_article` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `body_text` text COLLATE utf8_unicode_ci NOT NULL,
  `teaser_text` text COLLATE utf8_unicode_ci NOT NULL,
  `images` int(10) unsigned NOT NULL DEFAULT '0',
  `series` int(10) unsigned NOT NULL DEFAULT '0',
  `persons` int(10) unsigned NOT NULL DEFAULT '0',
  `organizations` int(10) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tags` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `nested_content` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_blog_article`
--

LOCK TABLES `tx_twnueww_domain_model_blog_article` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_article` DISABLE KEYS */;
INSERT INTO `tx_twnueww_domain_model_blog_article` VALUES (1,36,'Blogs in der Metropolregion — Teil 11',1506979039,1506779466,3,0,0,0,0,'<p><a data-htmlarea-external=\"1\" href=\"http://www.tmt-beratung.de/blog/\">tmt-beratung.de/blog</a><br /> Ihr wolltet produktiver und so irgendwie auch entspannter durchs Leben gehen, habt aber keine Ahnung, wie ihr das anstellen sollt? Dann ist dieser Blog von Tobias genau der richtige für Euch. Getting Things Done und Virtual Reality sind Themenschwerpunkte. Lesen.</p>\r\n<p><a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://web-und-wissen.de/blog-uebersicht\" title=\"Opens internal link in current window\">web-und-wissen.de/blog-uebersicht&nbsp;</a><br /> Was gibt es neues bei Facebook, wie pimpt ihr euer Trello Board - Katharina aus Fürth bloggt über Social-Media und ganz besonders über Facebook. Für Social-Media Neueinsteiger, wie auch für Profis lesenswert.</p>\r\n<p><a data-htmlarea-external=\"1\" href=\"http://www.glubb-blog.de/glubbblog/\">glubb-blog.de/glubbblog</a><br /> Nächstes Jahr spielt der Glubb im Europapokal!<br /> Warum oder warum nicht lest ihr in diesem Blog. Wohl einer der besten und ausgewogensten aus der Region. Bomber Manolo hält die FCN-Fahne hoch und seine Beiträge sind selbst für Amateur-Fußball-Fans spannend.</p>\r\n<p><a data-htmlarea-external=\"1\" href=\"http://www.forchheimshots.de/\">forchheimshots.de</a><br /> Am 5. Oktober eröffnet in Forchheim die Instagram Ausstellung “Forchheimshots”. Das Team um Matthias Hösch hat sich auf gemacht die oberfränkische Stadt auf Instagram in ein besseres Bild zu rücken. Wie das gelungen ist seht ihr auf Instagram unter dem Hashtag #forchheimshots und natürlich ab dem 5. Oktober zwei Monate lang in der Stadtbücherei Forchheim.</p>\r\n<p><a data-htmlarea-external=\"1\" href=\"http://linas-weg.frankenhilft.de/\">linas-weg.frankenhilft.de</a><br /> Mir fehlen die Worte. Lest diesen Blog. Bitte beachtet den Spendenhinweis!<br /> <br /> <br /> <em>Ein lesenswerter Blog aus der Metropolregion wurde vergessen? Weitere Blogempfehlungen könnt ihr gerne einreichen. Schickt dazu einfach eine E-Mail an&nbsp;<a class=\"mail\" href=\"mailto:christian@nueww.de\" title=\"Opens internal link in current window\">christian(at)nueww.de</a>.</em><br /> <br /> <br /> <strong>Die Serie \"Blogs in der Metropolregion\" is powered by User Centered Strategy GmbH. Weitere Artikel der Serie gibt es hier: &nbsp;</strong></p>\r\n<p><a data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-146/39f0bcb514190bc4a13e111691d2f380/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 1</a>&nbsp;<br /> <a data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-2-153/3fdfbdd58871beac5f141d8725e1be40/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 2</a><br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-3-159/9804b4868a28d5917e4e773cf0a4e100/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 3</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-4-165/3a41185efe4e375fd95a8986a329ce45/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 4</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-5-168/aec3c4eca7fe4cc9837efd7711b3a313/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 5</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-6-172/9714b822840a765f78e5e95c4db1f4d4/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 6</a><br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-7-180/541dc7bbbe747a1a2ec2b6feb063a802/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 7</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-8-286/1161911bb5294e72957aea93fa5966d0/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 8</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-9-fashion-und-lifestyle-296/523d0254ebf181fa9e72dffa8c8ffe0f/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 9: Fashion &amp; Lifestyle</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-10-307/e7d03331491e670a39e3357a18bf8283/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 10</a>&nbsp;<br /> <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://nueww.de/blog/article/Post/show/blogs-in-der-metropolregion-teil-11-324/679622e6442c6b6b64453e720a44e77a/\" title=\"Opens internal link in current window\">Blogs in der Metropolregion - Teil 11</a>&nbsp;</p>','Der Herbst naht. Zeit für Kürbisse und MoccaLatteSpicyirgendwas. Alternativ kann man sich auch mit der Blogliste vergnügen.',1,0,1,0,0,0,0,0),(2,36,'10 sehr interessante Events im Oktober in Nürnberg und Umgebung',1506977492,1506781341,3,0,0,0,0,'<p><strong>- Featured Event - </strong></p>\r\n<h2>IThinkpark Nürnberg</h2>\r\n<p><strong>20. Oktober 2017, 12.15-23.00 Uhr</strong><br /> Ort: Loftwerk Nürnberg, Ulmenstraße 52 a-i, 90443 Nürnberg</p>\r\n<p>Der unkonventionellste IT-Marktplatz Deutschlands</p>\r\n<p>Docker hat für dich nichts mit Schuhen zu tun? Bei Wasserfall denkst du lieber an Kanada als an Projektmanagement? Dann passt der IThinkpark zu dir!</p>\r\n<p>Der IThinkpark besteht aus kurzen Inputvorträgen, gefolgt von Open Space: 50 Minuten lang wird kontrovers, produktiv, kreativ oder völlig daneben über verschiedene Themen diskutiert. Und zwar nur über die Themen, die euch interessieren. Als Thinkparker bist du Netzwerker, Experte und Lernender zugleich. In der Lounge, als Pilot auf einer Arbeitsinsel oder im Publikum. Wir haben genug von Frontbeschallung und wollen die Intelligenz der Teilnehmenden nutzen.</p>\r\n<p>3 Speaker - 35 Open Space Arbeitsinseln - 150 Teilnehmer.</p>\r\n<p>Eintritt: Early-Bird-Tickets 99,00 €<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://ithinkpark.de\" title=\"Opens internal link in current window\">ithinkpark.de </a></p>\r\n<hr />\r\n<h2><br /> Daten-Dienstag Special: „The Circle“ mit Expertendiskussion</h2>\r\n<p><strong>03. Oktober 2017, 19.00-21.30 Uhr</strong><br /> Ort: Cinecitta</p>\r\n<p>Die Verfilmung des 2013 erschienenen Bestsellers „The Circle“ feierte am 7. September 2017 Kino-Premiere in Deutschland. Wir laden Sie zu einer exklusiven Sondervorstellung mit anschließender Expertendiskussion ein.</p>\r\n<p>Die Geschichte: Mae (Emma Watson) ist überglücklich, als sie beim Internetkonzern Circle einen Job ergattert. Der Circle ist eine der angesagtesten Firmen der Welt und wird unter anderem von Eaman Bailey (Tom Hanks) geleitet. Seine Idee: alle Kunden werden mit einer einzigen Internetidentität aus-gestattet, über die alles abgewickelt werden kann. Mae stürzt sich voller Begeisterung in diese schö-ne neue Welt mit ihren lichtdurchfluteten Büros und High-Class-Restaurants, Gratis-Konzerten und coolen Partys. Sie wird zur Vorzeigemitarbeiterin und treibt den Wahn, alles müsse transparent sein, auf die Spitze. …</p>\r\n<p>Muss alles transparent sein? Wie viel Realität steckt in dem Film? Übertrifft die Realität die vier Jahre alte Fiktion bereits? Darüber sprechen im Anschluss an den Film mit Ihnen Prof. Dieter Kempf, Präsident des Bundesverbandes der Deutschen Industrie e. V. und Thomas Kranig, Präsident des Bayerischen Landesamts für Datenschutzaufsicht.</p>\r\n<p>Eintritt: kostenfrei, Spenden erbeten; Anmeldung per <a class=\"external-link-new-window\" href=\"mailto:mkn.anmeldung@mspt.de\" title=\"Opens internal link in current window\">E-Mail</a>&nbsp;erforderlich<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://www.facebook.com/events/1462133100538031/\" title=\"Opens internal link in current window\">Facebook-Event: Daten-Dienstag Special </a></p>\r\n<hr />\r\n<h2><br /> Bier-BarCamp Franken</h2>\r\n<p><strong>09. Oktober 2017, 14.00-20.00 Uhr</strong><br /> Ort: Boeheim Bierhalle, Brunnengasse 11, 90402 Nürnberg</p>\r\n<p>Das Bier-BarCamp ist eine (Un-)Konferenz und Szenetreff rund um die Bier- und Braukultur. Nach Einleitung, Grußworten und ggf. einer Keynote gestalten alle Teilnehmer gemeinsam Inhalte und Aktivitäten auf dem BarCamp. Zielgruppen des BarCamps sind Brauereien, Gastronomie, Getränkehandel, Startups, Biersommeliere, Blogger, Zulieferer und Hersteller rund um Bier. Nach Einleitung, Grußworten und ggf. einer Keynote gestalten alle Teilnehmer gemeinsam Inhalte und Aktivitäten auf dem BarCamp.</p>\r\n<p>Eintritt: 5,00 €<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.bierbarcamp.de/\" title=\"Opens internal link in current window\">bierbarcamp.de </a></p>\r\n<hr />\r\n<h2><br /> 6. Nürnberger Startup Demo Night</h2>\r\n<p><strong>11. Oktober 2017, 18.30-22.30 Uhr</strong><br /> Ort: PARKS Nürnberg, Berliner Platz 9, 90409 Nürnberg</p>\r\n<p>Auf einem der Highlight-Events der Nürnberger Gründerszene präsentieren eine Vielzahl an Startup-Aussteller ihre Innovationen. Alle Branchen sind vertreten - HighTech, Bio Sciences, IoT, Mobilität, Lifestyle, Gesundheit oder Sport. Das Konzept der Startup Demo Nights: Startups stellen sich live mit ihren Lösungen und Produkten vor. Besucher können hier alle Ideen selber ausprobieren und die Gründerteams in entspannter Networking-Atmosphäe persönlich kennenlernen.</p>\r\n<p>Was euch auf der Startup Demo Night erwartet</p>\r\n<ul> 	<li>eine Vielzahl an spannenden Startup-Ausstellern aus allen Branchen</li> 	<li>Innovationen zum Anfassen und Ausprobieren</li> 	<li>Gelegenheit zum Netzwerken mit Gründern, Investoren und Unternehmensvertretern</li> </ul>\r\n<p>Eintritt: frei - <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://www.baystartup.de/termin-detail.html?termin_id=1059\" title=\"Opens internal link in current window\">Anmeldung erforderlich</a><br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.baystartup.de/baystartup/startup-demo-nights.html\" title=\"Opens internal link in current window\">baystartup.de: Startup Demo Nights</a>&nbsp;</p>\r\n<hr />\r\n<h2><br /> Online-Marketing - Wie nutze ich die unendlichen Möglichkeiten?</h2>\r\n<p><strong>12. Oktober 2017, 17.30-19.00 Uhr</strong><br /> Ort: Josephs, Karl-Grillenberger-Straße 3, 90402 Nürnberg</p>\r\n<p>Space Wallet ist ein junges Start-Up, das seit 2013 kleine, praktische und alltagsgeeignete Geldbeutel selbst entwickelt und verkauft. Mithilfe von Facebook Ads konnten die beiden Gründer den Umsatz von Space Wallet innerhalb weniger Wochen verfünfzehnfachen.</p>\r\n<p>In dem Workshop gibt René seine Erfahrung aus dem Online-Marketing weiter. Wie funktioniert A/B Testing? Welche Möglichkeiten bieten Facebook-Ads und Google Adwords? Welche Kennzahlen muss ich im Auge behalten, um den Erfolg zu messen?</p>\r\n<p>Neben etwas Theorie werden gemeinsam mit den Teilnehmern Strategien entwickelt und eine gemeinsame Kampagne entworfen.</p>\r\n<p>Eintritt: frei<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://www.facebook.com/events/274956299676889/\" title=\"Opens internal link in current window\">Facebook-Event: Online-Marketing - Wie nutze ich die unendlichen Möglichkeiten? </a></p>\r\n<hr />\r\n<h2><br /> Symposium turmdersinne 2017</h2>\r\n<p><strong>13.-15. Oktober 2017</strong><br /> Ort: Stadthalle Fürth, Rosenstraße 50, 90762 Fürth</p>\r\n<p>Die fortschreitende Digitalisierung verändert unsere Kommunikation, unser Sozialleben, nicht zuletzt das Bild von uns selbst. In welcher Weise beeinflussen WhatsApp, Facebook &amp; Co. den Umgang mit Freunden und Bekannten? Wie sollten Gesellschaft, Familie und der Einzelne mit dieser neuen Situation umgehen? Auch im Bereich der Roboter-Entwicklung machen sich bahnbrechende Innovationen bemerkbar. Kann ein Roboter Gefühle haben und was lernen wir von künstlicher Intelligenz über uns selbst?</p>\r\n<p>Eintritt: 99,00-189,00 € - <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://turmdersinne.de/de/veranstaltungen_start/veranstaltungen_symposium/anmeldung-symposium-2017\" title=\"Opens internal link in current window\">Anmeldung</a> bis spätestens 11. Oktober 2017<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://turmdersinne.de/de/veranstaltungen_start/veranstaltungen_symposium\" title=\"Opens internal link in current window\">turmdersinne.de: Symposium 2017</a></p>\r\n<hr />\r\n<h2><br /> Service Design Drink Nürnberg #8</h2>\r\n<p><strong>17. Oktober 2017, 18.30-22.00 Uhr</strong><br /> Ort: Design Offices Nürnberg City, Königstorgraben 11, 90402 Nürnberg</p>\r\n<p>Auch Nürnberg, die Stadt, in der die Global Service Jams erdacht wurden, hat nun seit Anfang des letzten Jahres ihre „Service Design Drinks“. Hier treffen sich Service Design-Interessierte zum Gedankenaustausch, inspiriert durch einen ca. 30 bis 45-minütigen Vortrag. All das in lockerer Atmosphäre bei einem Getränk.</p>\r\n<p>Eintritt: frei - verbindliche Anmeldung bis 16.10.2017 per <a class=\"external-link-new-window\" href=\"mailto:drinks@servicedesign-nuernberg.de\" title=\"Opens internal link in current window\">E-Mail</a>&nbsp;erforderlich<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.servicedesign-nuernberg.de/session/service-design-drinks-nuernberg-8/\" title=\"Opens internal link in current window\">servicedesign-nuernberg.de: Service Design Drinks Nürnberg #8 </a></p>\r\n<hr />\r\n<h2><br /> Agile Leadership Nürnberg - Menschen. Entwickeln. Organisationen.</h2>\r\n<p><strong>17. Oktober 2017, 9.00-18.00 Uhr</strong><br /> Ort: Kaiserburg Nürnberg, Burg 2, 90403 Nürnberg</p>\r\n<p><strong>Die exklusive Konferenz für agile Unternehmen #ALNU17 </strong></p>\r\n<p>Die digitale Transformation und zunehmende disruptive Veränderungen erfordern flexible und anpassungsfähige Organisationen. Agile Methoden werden dabei immer mehr zum entscheidenden Erfolgsfaktor. Dabei reicht es nicht mehr aus, sich auf einzelne agile Projekte oder Unternehmensbereiche zu beschränken. Stattdessen sind agile Denk- und Vorgehensweisen im gesamten Unternehmen erforderlich, um die vollen Potenziale von Agilität auszuschöpfen.</p>\r\n<p>Doch wie können Sie Ihre Organisation hierfür gestalten? Welche Formen der Führung und Zusammenarbeit sind dazu erforderlich? Und wie können Sie alle Mitarbeiter in die Veränderung einbeziehen? Viele hilfreiche Impulse dazu erhalten Sie bei der Agile Leadership Konferenz 2017. In spannenden Vorträgen, Erfahrungsberichten und interaktiven Workshops haben Sie viele Möglichkeiten, agile Ansätze kennenzulernen, selbst zu erleben und sich in persönlichen Gesprächen mit erfahrenen Coaches und anderen Konferenzteilnehmern dazu auszutauschen. In diesem Jahr berichten drei namhafte Unternehmen der Region von Ihren Erfahrungen in der Anwendung agiler Methoden.</p>\r\n<p>Eintritt: 490,00 € zzgl. MwSt. (390,00 € für Mitglieder)<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://www.nik-nbg.de/event/agenda-agile-leadership/\" title=\"Opens internal link in current window\">nik-nbg.de: Agile Leadership Nürnberg</a></p>\r\n<hr />\r\n<h2><br /> 3. Barcamp Würzburg</h2>\r\n<p><strong>21. Oktober 2017, 18.30-22.00 Uhr</strong><br /> Ort: Universität Würzburg, Informatik-Gebäude, Emil-Fischer-Straße 40, 97074 Würzburg</p>\r\n<p>Barcamps zeichnen sich unter anderem dadurch aus, dass es kein vorab festgelegtes Programm mit festen Sprechern gibt. Stattdessen sind alle Teilnehmer aufgerufen, ihre Erfahrungen, ihr Wissen und ihre Ideen einzubringen. Häufig stellen dabei Dinge, die für uns selbstverständlich geworden sind, für andere anwesende Personen interessante Themen dar. Noch Fragen?</p>\r\n<p>Eintritt: 25,00 €<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://barcamp-wuerzburg.de/\" title=\"Opens internal link in current window\">barcamp-wuerzburg.de </a></p>\r\n<hr />\r\n<h2><br /> Die Lange Nacht der Wissenschaften</h2>\r\n<p><strong>21. Oktober 2017, 18.00-01.00 Uhr</strong><br /> Ort: Nürnberg - Fürth - Erlangen</p>\r\n<p>Das Programm für das achte Wissenschaftsfestival im mittelfränkischen Städtedreieck ist nicht nur gedruckt, sondern steht ab jetzt auch <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.nacht-der-wissenschaften.de/2017/programm/\" title=\"Opens internal link in current window\">online</a>&nbsp;für Sie bereit. Mit von der Partie sind fünf Hochschulen vor Ort, aber auch forschungsaktive Unternehmen wie Continental, DATEV, Schaeffler, Siemens, TenneT und GfK öffnen ihre Türen für Neugierige. Bei insgesamt über 350 Programmpartnern laufen aktuell die letzten Vorbereitungen, um Sie am Samstag, 21. Oktober empfangen zu können.</p>\r\n<p>Eintritt: 12,00 € (ermäßigt 8,00 €) im VVK<br /> Web: <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.nacht-der-wissenschaften.de/2017/home/\" title=\"Opens internal link in current window\">nacht-der-wissenschaften.de </a></p>\r\n<hr />\r\n<h2><br /> Upcoming …</h2>\r\n<p>08. November 2017 - <strong><a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.usability-testessen.de/nuernberg/\" title=\"Opens internal link in current window\">Usability Testessen</a></strong>&nbsp;<br /> 17.-19. November 2017 - <strong><a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://swe-camp.de/\" title=\"Opens internal link in current window\">Software Engineering Camp 2017</a></strong>&nbsp;<br /> 25. November 2017 - <strong><a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://www.facebook.com/events/192381531169744/\" title=\"Opens internal link in current window\">1. WJ Gründer / Startup Barcamp 2017</a></strong>&nbsp;</p>','Wow, diesen Monat gibt es so abwechslungsreiche Events wie schon lange nicht mehr: Von einem Bier-BarCamp über eine neue Veranstaltung namens IThinkpark, einem BarCamp in Würzburg, zur Langen Nacht der Wissenschaften. Auch das Josephs ist wieder mit einem interessanten Event zum Thema ‘Online-Marketing’ dabei. Wer sich im Oktober langweilt ist also selbst Schuld! ;)',0,0,1,0,0,0,0,0),(3,1,'Test3',1506783920,1506783920,3,0,0,0,0,'<p>Test3</p>','',0,0,0,0,0,0,0,0),(4,36,'Interview mit Local Expert Susanne Spitz',1506977479,1506790438,3,0,0,0,0,'<p><strong>Was sind deine drei Hashtags?</strong></p>\r\n<p>#dabinichFanvon #massschneiderei #lieblingskunden</p>\r\n<p><strong>Du hast eine Maßschneiderei gegründet und organisierst deutschlandweit fantastische Modenschauen mit 400 Gästen. Wie bist du dazu gekommen? Wie war dein Weg?</strong></p>\r\n<p>Die Entscheidung die Maßschneiderei zu erlernen ist tatsächlich dem Traum geschuldet, einmal einen vielbeschäftigten Mann zu ehelichen und mit ihm vier Kinder zu bekommen. Dazu bedarf es einen Job, in dem ich selbst bestimmen kann und der keine großartigen Gefahren für Kinder birgt.</p>\r\n<p>Also habe ich mein Hobby zum Beruf gemacht und in der Maßschneiderei meine große Leidenschaft gefunden. Nachdem Motto \"tue Gutes und spreche darüber\" sollte eine selbständige Maßschneiderin eben auch zeigen, was sie alles kann. Wenn Interessenten zu mir ins <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.spitz-massdesign.de/team/das-team-von-spitzmass/susanne-spitz\" title=\"Opens internal link in current window\">Atelier</a> kommen, gibt es keine Stange, an der 50 fertige Outfits hängen. Ist ein Teil fertig, wandert es direkt zum Kunden. Da ich meine eigene Garderobe natürlich auch selbst fertige, kann ich mit diesen Stücken dann Modenschauen veranstalten. Und die Modenschauen sind wieder eine hervorragende Ausrede, mir Outfits zu nähen, die so ausgefallen sind, dass ich sie keine fünf Mal tragen werde.</p>\r\n<p>Das klingt jetzt nach dem Masterplan. Den hatte ich aber gar nicht. Ich habe angefangen und immer weiter gemacht.&nbsp;</p>\r\n<p><strong>Was sind die größten Hürden mit denen du zu kämpfen hattest?</strong></p>\r\n<p>Wenn man sich selbständig macht benötigt man so viel Wissen, das einem weder in der Schule noch während der Berufsausbildung vermittelt wird. Wie komme ich an Kunden? Wie berechne ich meinen Stundensatz? Wie funktioniert Pressearbeit? Wie geht \"Internet\"? Wie gehe ich mit Mitarbeitern um? Ich hatte das große Glück, dass meine Mutter eine brillante Buchhalterin ist und ich somit das Thema Buchführung/Steuererklärung mit der Muttermilch eingesogen habe.</p>\r\n<p>Aktuell heißen meine großen Herausforderungen Online-Shop und eine bessere Webpräsenz. Meine Erfahrung zeigt mir, wie wichtig es ist, von allem mindestens grundlegend Ahnung zu haben. Das bedeutet einerseits viel Arbeit, andererseits auch viel Freude, wenn man ein neues Feld für sich erschlossen hat.</p>\r\n<p><strong>Wie wirkt sich Digitalisierung und Social Media auf deine Arbeit aus?</strong></p>\r\n<p>Nachdem 70% meiner Neukunden über das Netz zu mir finden, ist für mich Social Media überhaupt nicht weg zu denken. Ich erinnere mich, als ich 2009 mit meinem <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.spitz-massdesign.de/provokantig-blog\" title=\"Opens internal link in current window\">Blog</a> startete. Damals war es noch eine statische html-Seite, auf der ich die \"News\" in vier fünf Zeilen mit maximal drei Fotos ankündigen konnte.</p>\r\n<p>Inzwischen läuft die ganze Seite auf Wordpress. Ich hätte nie gedacht, dass mir das Schreiben der Blogartikel so viel Freude machen würde. Ich berichte über unsere Arbeit im Maßatelier, über Veranstaltungen die wir selbst organisieren, an denen wir teilhaben oder die ich empfehlenswert finde. Wir schreiben über alles, was uns bewegt. Da gibt es dann z.B. auch immer den Artikel über die erste Lilie, die wieder auf meinem Balkon erblüht. Doch genau die Mischung aus Persönlichem und Informativem macht es aus.</p>\r\n<p>Negative Erfahrungen durfte ich mit zwei Abmahnanwälten machen. Das war zuerst erschreckend. Ging zum Glück alles glimpflich aus. Und heute bin ich schlauer.</p>\r\n<p><strong>Wo holst du dir neue Impulse?&nbsp;Wie hältst du dich selbst auf dem Laufenden?</strong></p>\r\n<p>Natürlich surfe ich wie viele andere Menschen durch das Netz. Manchmal suche ich auch ganz gezielt nach Outfits von einem speziellen Designer oder sehe mir Fotostrecken von der Pariser Haute Couture an.</p>\r\n<p>Hier ist oft die google-Bildersuche die erste URL. Wenn es gezielt um Input für Materialien geht, haben einige Lieferanten ihr Portfolio online. Da kann ich mich dann schon mal für mehrere Stunden hinein versenken.</p>\r\n<p>Die stärksten Impulse bekomme ich tatsächlich im Gespräch mit anderen Menschen. Die \"<a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.spitz-massdesign.de/fachwissen/mit-den-young-tailors-nach-bruessel\" title=\"Opens internal link in current window\">Young Tailor</a>\"-Treffen von Scabal - den weltweit größten Hersteller von feinen Tuchen - und auch der wechselseitige Besuch von Kollegen liefern mir sehr inspirierende Momente. Es gibt inzwischen sogar eine geheime \"Maßschneider\"-Gruppe auf Facebook, wo wir uns auf dem kurzen Amtsweg gegenseitig unterstützen.</p>\r\n<p>Ich bin sehr dankbar, dass ich immer wieder als so vertrauenswürdig erachtet werde, dass mich meine Lieblingskunden in ihre Seelen blicken lassen. Immerhin ist meine zentrale Frage in der Beratung \"Wer wollen Sie sein, wie wollen Sie sich fühlen, wenn Sie dieses Outfit später tragen.\" So komme ich meinen Kunden sehr nahe, kann aber aus dieser Nähe dann die passende Garderobe entwickeln. Da ich als Maßschneiderin ganz gezielt für meine Kunden arbeite, sind saisonale Modeerscheinungen zu vernachlässigen. Relevant ist für mich das Individuum, das vor mir sitzt.</p>\r\n<p><strong>Was bedeutet die Community für dich? Tauschst du dich beispielsweise oft mit themenfremden Personen aus?</strong></p>\r\n<p>Natürlich. Allein weil die \"Themenfremden\" oft gar nicht so anders sind. Die Maßschneiderei hat überraschend viele Überschneidungen mit z.B. Architektur und Statik: Genau wie der Architekt eine schöne Außenhülle haben möchte und sich mit dem Statiker absprechen muss, damit das Gebäude auch guten Stand hat, müssen wir darauf achten, dass der gewünschte tiefe Rückenausschnitt nicht zu ungewollten Einblicken führt oder aber das Kleid komplett hochrutscht. Wir sind genauso an die Gesetze der Physik gebunden wie die Herren aus der Baubranche.</p>\r\n<p>Community bedeutet Geben und Nehmen. Jeder, der in irgendeiner Weise kreativ ist oder etwas kann, ist somit ein Gewinn. Alleine ein gutes Gespräch, in dem eine gewissen \"Reibung\" entsteht, bedeutet Entwicklung.</p>\r\n<p>Ganz wichtig sind mir meine Kollegen von \"<a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://www.facebook.com/LebenfindetAltstadt/\" title=\"Opens internal link in current window\">Leben findet Altstadt</a>\". Wir sind ein Zusammenschluss von Gewerbetreibenden in Erlangen, dessen Ziel es ist, zu zeigen, was es alles tolles in der Erlanger Innenstadt zu entdecken gibt. Peter Bongartz von Bongartz - Musik in allen Formaten ist hier einer der kreativsten Köpfe — und der beste Musikdealer Frankens. Ohne ihn wäre unsere letzte Modenschau nicht der Knaller geworden, der sie dann war. Peter hatte die perfekte Idee für uns: Sechs Firmen wirkten bei der Modenschau mit. Es war von Regenkleidung und Gestricktem über leichte Sommerkleider und opulente Abendkleider bis hin zum Bikini alles dabei. Wie verbindet man das ganze? Unsere Models haben einfach Stück für Stück \"gestrippt\".</p>\r\n<p>Auch Constantin Kaindl von <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://deinerlangen.de\" title=\"Opens internal link in current window\">dein-erlangen.de</a> hat mir schon einige \"Flöhe ins Ohr\" gesetzt.</p>\r\n<p>Eine wichtige Rolle in meiner Community spielen die \"Foto-Leute\": Fotografen wie <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.thomas-adorff.de\" title=\"Opens internal link in current window\">Thomas Adorff</a>, MakeUp Artists wie<a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://jacky-mua.de\" title=\"Opens internal link in current window\"> Jacky SchMay</a>, sowie unsere \"Beauty-Connection\" - die Models, die immer wieder mit uns arbeiten. Neue Models finde ich am besten über die <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.model-kartei.de/\" title=\"Opens internal link in current window\">model-kartei.de</a></p>\r\n<p>Meine Community ist zum Teil eine \"Internetgeburt\". Wenn ich in die \"Berater-Ecke\" gucke fallen mir sofort <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://anikowillems.de\" title=\"Opens internal link in current window\">Aniko Willems</a> und <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"https://zehnbar.de\" title=\"Opens internal link in current window\">Maren Martschenko</a> ein. Beide kenne ich dank dem \"<a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.spitz-massdesign.de/herzblut/wenn-einer-eine-reise-tut-2\" title=\"Opens internal link in current window\">Pooltag</a>\" von <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://suewest.de\" title=\"Opens internal link in current window\">Susanne Westphal</a> - und Susanne wäre ich ohne XING und Facebook wohl nie begegnet.</p>\r\n<p>Community findet auch im \"Kleinen\" statt: Mir ist es wichtig mit meinen <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.spitz-massdesign.de/team/das-team-von-spitzmass/susanne-spitz\" title=\"Opens internal link in current window\">Auszubildenden und Mitarbeitern</a> ein gutes Verhältnis zu haben.</p>\r\n<p>Zusammenfassend ist Community für mich Ideenpool, Hilfe, Unterstützung und beste PR. Da kommt dann auch mal ein <a class=\"external-link-new-window\" data-htmlarea-external=\"1\" href=\"http://www.nuernberg-und-so.de/podcast/susanne-spitz-sendung-no24\" title=\"Opens internal link in current window\">Podcast</a> mit Nürnberg und So dabei heraus.</p>\r\n<p><strong>Welche Veranstaltungen interessierten dich bei der Web Week 2017?</strong></p>\r\n<p>SEO für Entrepreneure und Ecommerce Day. Am Abend des 16. Mais war ich dann auf der Eröffnung von Erlangen Shots. Die Veranstaltung \"Digitale Markteroberung\" fand ich sehr interessant und am selben Abend habe ich auf die Veranstaltung \"Erlangen im Netz\" gebrannt. Am 18.5. interessierten mich sowohl die Veranstaltung \"Rechtsfragen für Webseiten Betreiber\", als auch die Pecha Kucha Night in Erlangen. Und am 22.5. war ich noch auf der Veranstaltung von Projektin anzutreffen.</p>\r\n<p><strong>Was bedeutet die Web Week für dich?</strong></p>\r\n<p>Die Web Week ist eine groooße, wichtige Netzwerkveranstaltung. Gerade für kleine und mittlere Unternehmen und Gründer ein Pflichttermin. Ich persönlich freue mich sehr, dass Erlangen inzwischen so stark in die Web Week eingebunden ist. Es ist eine Woche mit viel, viel Input, ich treffe immer wieder viele Bekannte und mache viele neue Bekanntschaften. Super!&nbsp;</p>','Sie hat eine Maßschneiderei gegründet und organisiert deutschlandweit fantastische Modenschauen mit 400 Gästen. Susanne Spitz hat ihr Hobby zum Beruf gemacht. Frei nach dem Motto \"tue Gutes und spreche darüber\" zeigt sie auf ihren Modeschauen ihre selbst gefertigten Kleidungsstücke.',1,0,1,0,0,0,0,0),(5,46,'Donec quam felis!',1507135034,1507035723,3,0,0,0,0,'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>','Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.',0,0,1,0,0,2,2,0),(6,46,'Blog Nr. 2',1507135034,1507126437,3,0,0,0,0,'','',0,1,0,0,0,0,0,1),(7,46,'Blog Nr. 3',1507135034,1507126452,3,0,0,0,0,'','',0,1,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_blog_comment`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_blog_comment` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `article` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_response` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_blog_comment`
--

LOCK TABLES `tx_twnueww_domain_model_blog_comment` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_comment` DISABLE KEYS */;
INSERT INTO `tx_twnueww_domain_model_blog_comment` VALUES (1,46,'Klaus','klaus@tollwerk.de','Wird Zeit, dass man eure Blogbeiträge endlich mal gescheit kommentieren kann.\r\n\r\nGute Arbeit - weiter so :-)',5,1507135034,1507035804,0,0,0,'Danke, wir freuen uns auch - weiter gehts!'),(2,46,'Darth Vader','darth@deathstar.emp','Join the dark side - we have cookies!',5,1507135034,1507055843,0,0,0,'Cookies, yeeeeey!');
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_blog_series`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_blog_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_blog_series` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_blog_series`
--

LOCK TABLES `tx_twnueww_domain_model_blog_series` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_series` DISABLE KEYS */;
INSERT INTO `tx_twnueww_domain_model_blog_series` VALUES (1,2,1507126479,1507126479,3,0,0,'Serie #1');
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_blog_tag`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_blog_tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_blog_tag`
--

LOCK TABLES `tx_twnueww_domain_model_blog_tag` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_tag` DISABLE KEYS */;
INSERT INTO `tx_twnueww_domain_model_blog_tag` VALUES (1,2,1506947517,1506947517,3,0,0,'TYPO3'),(2,2,1506947530,1506947530,3,0,0,'Barrierefreiheit'),(3,2,1506947546,1506947546,3,0,0,'CMS');
/*!40000 ALTER TABLE `tx_twnueww_domain_model_blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_organization_organization`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_organization_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_organization_organization` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xing` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `images` int(10) unsigned NOT NULL DEFAULT '0',
  `sectors` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_organization_organization`
--

LOCK TABLES `tx_twnueww_domain_model_organization_organization` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_organization_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_organization_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_organization_sector`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_organization_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_organization_sector` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_organization_sector`
--

LOCK TABLES `tx_twnueww_domain_model_organization_sector` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_organization_sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_organization_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_person`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_person` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xing` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `images` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_person`
--

LOCK TABLES `tx_twnueww_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_person` DISABLE KEYS */;
INSERT INTO `tx_twnueww_domain_model_person` VALUES (1,3,'Klaus','Fiedler','','klaus@tollwerk.de','','','','','',1,1506806692,1506806692,3,0,0,'','','',''),(2,3,'Joschi','Kuphal','','','','','','','',0,1506807621,1506807621,3,0,0,'','','',''),(3,3,'Nadine','Karrasch','','nadine@usercenteredstrategy.de','','','','','',0,1506944906,1506944906,1,0,0,'','','','');
/*!40000 ALTER TABLE `tx_twnueww_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_domain_model_sponsoring`
--

DROP TABLE IF EXISTS `tx_twnueww_domain_model_sponsoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_domain_model_sponsoring` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `series` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_domain_model_sponsoring`
--

LOCK TABLES `tx_twnueww_domain_model_sponsoring` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_sponsoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_twnueww_domain_model_sponsoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_organization_sector_mm`
--

DROP TABLE IF EXISTS `tx_twnueww_organization_sector_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_organization_sector_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_organization_sector_mm`
--

LOCK TABLES `tx_twnueww_organization_sector_mm` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_organization_sector_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_twnueww_organization_sector_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_twnueww_sponsoring_series_mm`
--

DROP TABLE IF EXISTS `tx_twnueww_sponsoring_series_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_twnueww_sponsoring_series_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_twnueww_sponsoring_series_mm`
--

LOCK TABLES `tx_twnueww_sponsoring_series_mm` WRITE;
/*!40000 ALTER TABLE `tx_twnueww_sponsoring_series_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_twnueww_sponsoring_series_mm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04 16:40:49
