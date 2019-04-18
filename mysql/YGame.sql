/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.59 : Database - yougame
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yougame` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yougame`;

/*Table structure for table `allteam` */

CREATE TABLE `allteam` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(20) DEFAULT NULL,
  `a_name` varchar(30) DEFAULT NULL,
  `a_image` varchar(200) DEFAULT NULL,
  `Focus` tinyint(1) DEFAULT '0',
  `officalImage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `allteam` */

insert  into `allteam`(`a_id`,`a_type`,`a_name`,`a_image`,`Focus`,`officalImage`) values (1,'其他','崇拜之手','../images/allTeam/cbzs.jpg',0,'../images/officialDetails/cbzs.jpg'),(2,'官方小组','YouGame 综合讨论组','../images/allTeam/yougameteam.png',1,'../images/officialDetails/yougame.png'),(3,'官方小组','辐射76','../images/allTeam/fushe.jpg',0,'../images/officialDetails/fs76.jpg'),(4,'官方小组','疑问集中组','../images/allTeam/jizhongying.jpg',0,'../images/officialDetails/ywjzz.jpg'),(5,'新游上线','暗黑血统 III','../images/allTeam/ahxt3.jpg',0,'../images/officialDetails/ahxt3.jpg'),(6,'新游上线','鬼泣5','../images/allTeam/gq5.jpg',1,'../images/officialDetails/gq5.jpg'),(7,'新游上线','克苏鲁的呼唤','../images/allTeam/csldhh.jpg',0,'../images/officialDetails/csldhh.jpg'),(8,'新游上线','生化危机2 重置版','../images/allTeam/shwj2.jpg',0,'../images/officialDetails/shwj2.jpg'),(9,'新游上线','开拓者：拥王者','../images/allTeam/ktzywz.jpg',0,'../images/officialDetails/ktzywz.jpg'),(10,'新游上线','叛乱：沙漠风暴','../images/allTeam/plsmfb.jpg',0,'../images/officialDetails/plsmfb.jpg'),(11,'新游上线','救赎之路','../images/allTeam/jszl.jpg',0,'../images/officialDetails/jszl.jpg'),(12,'动作冒险','黑暗之魂3','../images/allTeam/hazh3.jpg',0,'../images/officialDetails/hazh3.jpg'),(13,'动作冒险','最终幻想15','../images/allTeam/zzhx15.jpg',0,'../images/officialDetails/zzhx15.jpg'),(14,'动作冒险','精灵与森林 终极版','../images/allTeam/jlysl.jpg',0,'../images/officialDetails/jlysl.jpg'),(15,'动作冒险','怪物猎人:世界','../images/allTeam/gwlrsj.jpg',0,'../images/officialDetails/gwlrsj.jpg'),(16,'动作冒险','死亡细胞','../images/allTeam/swxb.jpg',0,'../images/officialDetails/swxb.jpg'),(17,'动作冒险','街霸 V','../images/allTeam/jb.jpg',0,'../images/officialDetails/jbV.jpg'),(18,'角色扮演','上古卷轴V :天际','../images/allTeam/sgjz.jpg',0,'../images/officialDetails/sgjzV.jpg'),(19,'角色扮演','中国式家长','../images/allTeam/zgsjz.jpg',0,'../images/officialDetails/zgsjz.jpg'),(20,'角色扮演','女巫来了','../images/allTeam/nwll.jpg',0,'../images/officialDetails/nwll.jpg'),(21,'射击竞技','消逝的光芒','../images/allTeam/xsdgm.jpg',0,'../images/officialDetails/xsdgm.jpg'),(22,'射击竞技','毁灭战士4','../images/allTeam/hmzs4.jpg',0,'../images/officialDetails/hmzs4.jpg'),(23,'射击竞技','狙击手：幽灵战士','../images/allTeam/jjsylzs3.jpg',0,'../images/officialDetails/jjsylzs3.jpg'),(24,'策略模拟','太吾绘卷','../images/allTeam/taiwuhuijuan.jpg',0,'../images/officialDetails/twhj.jpg'),(25,'策略模拟','冰汽时代','../images/allTeam/bqsd.jpg',0,'../images/officialDetails/bqsd.jpg'),(26,'体育竞速','足球经理2018','../images/allTeam/zqjl2018.jpg',0,'../images/officialDetails/zqjl2018.jpg'),(27,'体育竞速','神力科莎','../images/allTeam/slks.jpg',0,'../images/officialDetails/slks.jpg'),(28,'其他','古墓丽影：暗影','../images/allTeam/gmlyay.jpg',0,'../images/officialDetails/gmlyan.jpg'),(29,'其他','光之子','../images/allTeam/gzz.jpg',0,'../images/officialDetails/gzj.jpg');

/*Table structure for table `collection` */

CREATE TABLE `collection` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `p_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `FK_Reference_11` (`u_id`),
  KEY `FK_Reference_12` (`p_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`p_id`) REFERENCES `postinformation` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `collection` */

insert  into `collection`(`c_id`,`u_id`,`p_id`) values (7,1,3),(8,1,3),(9,1,3),(10,1,4),(11,1,4),(12,1,4),(13,1,27);

/*Table structure for table `confirmation` */

CREATE TABLE `confirmation` (
  `con_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `con_num` int(10) DEFAULT NULL,
  `m_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`con_id`),
  KEY `FK_Reference_39` (`m_id`),
  KEY `FK_Reference_41` (`u_id`),
  CONSTRAINT `FK_Reference_39` FOREIGN KEY (`m_id`) REFERENCES `merchandise` (`m_id`),
  CONSTRAINT `FK_Reference_41` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `confirmation` */

/*Table structure for table `gamelanguage` */

CREATE TABLE `gamelanguage` (
  `L_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  `L_language` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`L_id`),
  KEY `FK_Reference_2` (`g_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `gamelanguage` */

insert  into `gamelanguage`(`L_id`,`g_id`,`L_language`) values (1,1,'英文'),(2,1,'简体中文'),(6,3,'繁体中文'),(7,3,'英文'),(8,4,'繁体中文'),(9,4,'英文'),(10,5,'英文'),(11,5,'简体中文'),(12,5,'繁体中文'),(13,6,'简体中文'),(14,6,'英文'),(15,7,'英文'),(16,7,'简体中文'),(17,7,'繁体中文'),(18,8,'英文'),(19,8,'简体中文'),(20,8,'繁体中文'),(21,9,'英文'),(22,9,'简体中文'),(23,9,'繁体中文'),(24,10,'英文'),(25,10,'简体中文'),(26,11,'英文'),(27,11,'简体中文'),(28,11,'繁体中文'),(29,12,'英文'),(30,12,'简体中文'),(31,13,'英文'),(32,14,'英文'),(33,15,'英文'),(34,15,'简体中文'),(35,15,'繁体中文'),(36,16,'英文'),(37,2,'英文'),(38,2,'简体中文'),(39,2,'繁体中文'),(40,17,'繁体中文');

/*Table structure for table `gamemessage` */

CREATE TABLE `gamemessage` (
  `m_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  `u_id` int(10) DEFAULT NULL,
  `m_score` int(10) DEFAULT NULL,
  `m_message` varchar(100) DEFAULT NULL,
  `m_give` int(10) DEFAULT NULL,
  `m_date` varchar(30) DEFAULT NULL,
  `m_step` int(10) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `FK_Reference_5` (`g_id`),
  KEY `FK_Reference_6` (`u_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

/*Data for the table `gamemessage` */

insert  into `gamemessage`(`m_id`,`g_id`,`u_id`,`m_score`,`m_message`,`m_give`,`m_date`,`m_step`) values (1,1,1,8,'可以的',4,'2018-12-01',0),(2,2,1,8,'可以的',3,'2018-03-01',1),(3,3,1,9,'可以的',5,'2017-11-01',1),(4,4,1,8,'还行',6,'2016-11-01',1),(5,2,2,9,'可以的',0,'2018-04-01',1),(6,3,2,8,'不可多得',3,'2017-12-01',1),(7,4,2,7,'一般',7,'2015-11-01',2),(8,5,2,9,'很帮',8,'2017-11-01',0),(9,3,3,7,'一般',1,'2017-11-01',6),(10,4,3,7,'可以，但不好玩',5,'2016-11-01',1),(11,5,3,9,'可以的',5,'2017-10-01',1),(12,6,3,9,'可以的',5,'2018-04-01',1),(13,4,4,9,'全新的游戏',5,'2015-10-01',1),(14,5,4,9,'很好',5,'2018-03-01',1),(15,6,4,9,'可以的',5,'2018-08-01',1),(16,7,4,7,'过分',5,'2018-11-01',1),(17,5,5,9,'可以的',5,'2017-06-01',1),(18,6,5,8,'可以',0,'2018-03-21',1),(19,7,5,8,'太过分',2,'2018-11-01',1),(20,8,5,9,'可以的',5,'2016-11-01',1),(21,6,6,8,'好玩',5,'2018-12-01',1),(22,7,6,5,'垃圾',5,'2018-12-06',1),(23,8,6,10,'完美',8,'2017-07-01',1),(24,9,6,7,'还行',5,'2017-11-21',1),(25,7,7,4,'还我女主',7,'2018-06-01',1),(26,8,7,9,'可以',5,'2017-06-14',1),(27,9,7,5,'晕',2,'2017-11-17',1),(28,10,7,8,'将就',2,'2017-11-06',6),(29,8,8,10,'可以的',5,'2017-06-01',1),(30,9,8,7,'可以的',3,'2017-12-03',1),(31,10,8,8,'可以的',5,'2017-11-01',1),(32,11,8,8,'还好',3,'2018-10-01',4),(33,9,9,7,'一般',2,'2017-11-01',1),(34,10,9,9,'可以的',3,'2017-10-06',1),(35,11,9,8,'可以的',0,'2018-10-15',0),(36,12,9,8,'可以的',0,'2017-10-15',0),(37,10,10,8,'可以的',0,'2018-10-15',0),(38,11,10,8,'可以的',0,'2018-10-14',0),(39,12,10,8,'可以的',0,'2018-10-25',0),(40,13,10,8,'可以的',0,'2017-11-15',0),(41,11,11,8,'可以的',0,'2018-10-16',0),(42,12,11,8,'可以的',0,'2017-11-15',0),(43,13,11,8,'可以的',0,'2018-10-15',0),(44,14,11,8,'可以的',0,'2018-10-11',0),(45,12,12,8,'可以的',3,'2018-10-15',0),(46,13,12,8,'可以的',0,'2017-11-25',0),(47,14,12,8,'可以的',0,'2018-10-13',0),(48,15,12,8,'可以的',0,'2018-12-05',0),(49,13,13,8,'可以的',3,'2017-10-29',0),(50,14,13,8,'可以的',0,'2018-10-18',0),(51,15,13,8,'可以的',0,'2018-12-01',0),(52,16,13,8,'可以的',0,'2016-10-15',0),(53,13,14,8,'可以的',4,'2017-11-25',0),(54,14,14,8,'可以的',1,'2018-11-22',0),(55,15,14,8,'可以的',2,'2018-12-03',0),(56,16,14,8,'可以的',1,'2017-10-15',0),(61,15,1,1,'草',0,'2019-01-10',0),(62,15,1,7,'法尔',0,'2019-01-10',0),(63,8,1,10,'666',0,'2019-01-10',0),(64,15,1,6,'好的',0,'2019-01-11',0),(65,11,1,7,'可以',0,'2019-01-11',0),(66,11,1,1,'啊啊啊',0,'2019-01-11',0),(67,17,1,1,'aaaaaa',0,'2019-01-11',0);

/*Table structure for table `gameorders` */

CREATE TABLE `gameorders` (
  `o_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `g_id` int(10) DEFAULT NULL,
  `o_ordertime` varchar(50) DEFAULT NULL,
  `o_ordernum` varchar(22) DEFAULT NULL,
  `o_orderstatus` varchar(10) DEFAULT '发货中',
  PRIMARY KEY (`o_id`),
  KEY `FK_Reference_33` (`g_id`),
  KEY `FK_Reference_34` (`u_id`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `gameorders` */

insert  into `gameorders`(`o_id`,`u_id`,`g_id`,`o_ordertime`,`o_ordernum`,`o_orderstatus`) values (1,3,2,'2018-12-06 14:56:43','201812061564332','发货中'),(2,2,10,'2018-12-11 19:34:38','201812111934322','发货中'),(3,4,6,'2018-12-16 04:46:45','201812160446434','发货中'),(4,1,13,'2017-12-01 14:34:42','201712011434421','发货中'),(5,10,13,'2018-11-21 17:54:53','201811211754531','发货中'),(6,9,6,'2018-05-11 11:44:39','201805111144399','发货中'),(7,5,3,'2018-10-11 18:34:59','201810111834595','发货中'),(8,12,4,'2018-10-21 14:34:24','201810211434241','发货中'),(9,13,1,'2018-12-10 06:34:34','201812100634341','发货中'),(10,1,1,'2019-01-09 10:03:05','201901091003051','发货中'),(11,1,15,'2019-01-09 10:03:05','201901091003051','发货中'),(12,1,15,'2019-01-11 10:41:51','201901111041511','发货中'),(13,1,13,'2019-01-11 10:41:51','201901111041511','发货中'),(14,1,11,'2019-01-11 10:41:51','201901111041511','发货中'),(15,1,9,'2019-01-11 10:41:51','201901111041511','发货中'),(16,1,6,'2019-01-11 10:41:51','201901111041511','发货中'),(17,1,4,'2019-01-11 10:41:51','201901111041511','发货中'),(18,1,1,'2019-01-11 10:41:51','201901111041511','发货中');

/*Table structure for table `gameos` */

CREATE TABLE `gameos` (
  `o_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  `o_os` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FK_Reference_4` (`g_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `gameos` */

insert  into `gameos`(`o_id`,`g_id`,`o_os`) values (1,1,'Win'),(3,3,'Win'),(4,4,'Win'),(5,5,'Win'),(6,6,'Win'),(7,7,'Win'),(8,8,'Win'),(9,9,'Win'),(10,10,'Win'),(11,11,'Win'),(12,12,'Win'),(13,13,'Win'),(14,14,'Win'),(15,15,'Win'),(16,16,'Win'),(17,2,'Win'),(18,17,'Linux');

/*Table structure for table `gamepicture` */

CREATE TABLE `gamepicture` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FK_Reference_3` (`g_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gamepicture` */

/*Table structure for table `games` */

CREATE TABLE `games` (
  `g_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(50) DEFAULT NULL,
  `g_en_name` varchar(50) DEFAULT NULL,
  `g_time` date DEFAULT NULL,
  `g_price` float DEFAULT NULL,
  `g_salePrice` float DEFAULT NULL,
  `g_publisher` varchar(40) DEFAULT NULL,
  `g_developer` varchar(40) DEFAULT NULL,
  `g_Introduction` varchar(500) DEFAULT NULL,
  `g_system` varchar(100) DEFAULT NULL,
  `g_memory` varchar(100) DEFAULT NULL,
  `g_processor` varchar(100) DEFAULT NULL,
  `g_image` varchar(100) DEFAULT NULL,
  `g_soundCard` varchar(100) DEFAULT NULL,
  `g_disk` varchar(100) DEFAULT NULL,
  `g_directX` varchar(100) DEFAULT NULL,
  `p_Path2` varchar(200) DEFAULT NULL,
  `p_Path1` varchar(200) DEFAULT NULL,
  `p_Path3` varchar(200) DEFAULT NULL,
  `p_Path4` varchar(200) DEFAULT NULL,
  `p_Path5` varchar(200) DEFAULT NULL,
  `p_Path6` varchar(200) DEFAULT NULL,
  `p_Path7` varchar(200) DEFAULT NULL,
  `g_Int` varchar(500) DEFAULT NULL,
  `g_copy` varchar(500) DEFAULT NULL,
  `g_state` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `games` */

insert  into `games`(`g_id`,`g_name`,`g_en_name`,`g_time`,`g_price`,`g_salePrice`,`g_publisher`,`g_developer`,`g_Introduction`,`g_system`,`g_memory`,`g_processor`,`g_image`,`g_soundCard`,`g_disk`,`g_directX`,`p_Path2`,`p_Path1`,`p_Path3`,`p_Path4`,`p_Path5`,`p_Path6`,`p_Path7`,`g_Int`,`g_copy`,`g_state`) values (1,'暗黑血统 III 豪华版','Darksiders III Deluxe Edition','2018-11-27',265,NULL,'Gunfire Games','THQ Nordic','砍杀动作冒险游戏《暗黑血统 III》的玩家将扮演“怒神”，重返灾变的人间界，展开猎杀“七宗罪”的任务。身为神秘四骑士之中最变化莫测怒神，这趟任务只许成功，不许失败，为目前饱受蹂躏的人间界带来各力量的平衡。广受好评的《暗黑血统》终于推出备受瞩目的第三章——《暗黑血统 III》。扮演法师“怒神”，运用她的鞭子与魔法，恢复人间界善恶平衡！驾驭“怒神”的魔法，释放她的各种变身形体，每种形体都可赋予她新武器、招数与穿越能力。探索永无止境、生生不息的自由游戏世界，让“怒神”来回穿越不同环境来解开谜题，同时推进故事的剧情进展。击败“七宗罪”和他们的党羽，包括神秘怪物和变形生物。\n','Windows 7 / 8 / 10 64 bit','6 GB RAM','Intel Core i5-2400, AMD FX-6100, or better','Recent Shader Model 5 GPU with 2 GB VRAM',NULL,'需要 15 GB 可用空间','11','images/games/Darksiders/1.JPG','images/games/Darksiders/2.JPG','images/games/Darksiders/3.JPG','images/games/Darksiders/4.JPG','images/games/Darksiders III Deluxe Edition/5.JPG','images/games/Darksiders/6.JPG','images/games/Darksiders/7.JPG','砍杀动作冒险游戏《暗黑血统 III》的玩家将扮演“怒神”，重返灾变的人间界，展开猎杀“七宗罪”的任务。身为神秘四骑士之中最变化莫测怒神，这趟任务只许成功，不许失败，为目前饱受蹂躏的人间界带来各力量的平衡。广受好评的《暗黑血统》终于推出备受瞩目的第三章——《暗黑血统 III》。','© 2017 THQ Nordic AB, Sweden. Developed by Gunfire Games. Darksiders, THQ and their respective logos are trademarks and/or registered trademarks of THQ Nordic AB. All rights reserved. All other trademarks, logos and copyrights are property of their respective owners.','上架'),(2,'刀剑神域：夺命凶弹111','Sword Art Online: Fatal Bullet','2018-02-23',2781,NULL,'DIMPS','Bandai Namco Entertainment Inc.','你的命运才刚刚开始……\n作为主角体验以枪之世界为故事背景的世界。\n创建自己的人物，探索满目疮痍的土地，同时在这款动作RPG游戏中，你将体验激动人心的第三人称射击动作。在游戏中，你会遭遇敌人的攻击，也会遇到新的面孔，或者《刀剑神域》系列中的熟悉角色。\n穿越充满枪战的世界，你会遇到稀有AI，ArFA-Sys.，并受到它的帮助。\n在游戏过程中，你要做出选择。\n但是，你要为每次选择做出代价……\n你会带来希望还是失望？\n这是你的冒险旅程……是- 你的故事……\n','Windows 7/8/10 (64-bit OS required)','4 GB RAM','Intel Core i5 3570K 3.40 GHz / AMD FX-4100 Quad-Core Processor 3.6GHz','NVIDIA Geforce GTX 660 2 GB','DirectX compatible soundcard','需要 30 GB 可用空间\n','11','images/games/Bullet/1.JPG','images/games/Bullet/2.JPG','images/games/Sword Art Online: Fatal Bullet/3.JPG','images/games/Bullet/4.JPG','images/games/Bullet/5.JPG','images/games/Bullet/6.JPG','images/games/Bullet/7.JPG','SAO游戏最新作品是「您」化身为主角的RPG。在TPS风格的战斗中，增加了成长性、故事性等RPG的快感，SAO将以TPSRPG类型游戏脱胎换骨。\r\n','©2016 REKI KAWAHARA/PUBLISHED BY KADOKAWA CORPORATION ASCII MEDIA WORKS/SAO MOVIE Project\r\n©KEIICHI SIGSAWA/REKI KAWAHARA\r\n©2018 BANDAI NAMCO Entertainment Inc.','上架'),(3,'德军总部II：新巨像','Wolfenstein II: The New Colossus','2017-10-27',199,NULL,'Machine Games','Bethesda Softworks','继广受好评的《德军总部：新秩序》（Wolfenstein®: The New Order™）后，获奖无数的MachineGames工作室推出了万众瞩目的续作《德军总部II：新巨像》（Wolfenstein® II: The New Colossus™）。《Wolfenstein®II》采用领先业界的id Tech®6引擎，完美呈现了一场精彩刺激的冒险。玩家将前往受纳粹控制的美国，召集所有遗留下的英勇反抗军领袖。在美国各个知名地标与纳粹浴血奋战，并装备强力武装、解放全新技能，在这场第一人称射击游戏中力搏纳粹军队，杀出一条血路。1961年，美国。整个世界仍受纳粹的魔爪所操控。你是人称“恐怖威廉”的B‧J‧布拉柯威奇，是反抗军的一员、纳粹帝国的心腹之患，也是人类重获自由的最后希望。只有你有足够的胆识、武力和决心返回美国境内，击杀所有视线内的纳粹分子，发动第二次美国革命。\n','Win7, 8.1, or 10 (64-Bit versions)','8 GB RAM','AMD FX-8350/Ryzen 5 1400 or Intel Core i5-3570/i7-3770','Nvidia GTX 770 4GB/AMD Radeon R9 290 4GB or better',NULL,'需要 55 GB 可用空间\n',NULL,'images/games/Wolfenstein/1.JPG','images/games/Wolfenstein/2.JPG','images/games/Wolfenstein/3.JPG','images/games/Wolfenstein/4.JPG','images/games/Wolfenstein/5.JPG','images/games/Wolfenstein/6.JPG','images/games/Wolfenstein/7.JPG','玩家将前往受纳粹控制的美国，召集所有遗留下的英勇反抗军领袖。在美国各个知名地标与纳粹浴血奋战，并装备强力武装、解放全新技能，在这场第一人称射击游戏中力搏纳粹军队，杀出一条血路。\r\n','Wolfenstein® II: The New Colossus™ © 2017 ZeniMax Media Inc. Developed in association with MachineGames. MachineGames, Bethesda, Bethesda Softworks, ZeniMax and related logos are registered trademarks or trademarks of ZeniMax Media Inc. in the U.S. and/or other countries. Wolfenstein, id, id Software, id Tech and related logos are registered trademarks or trademarks of id Software LLC in the U.S. and/or other countries. All Rights Reserved.\r\n','上架'),(4,'进化','Evolve','2015-02-10',125,NULL,'Turtle Rock Studios','2K Games','时至今日，即将上市的《进化》已经获得60余个奖项。值得一提的是，本作也是第一个在同一年中赢得E3与科隆游 戏展中“最佳游戏秀”奖项的作品。在蛮荒的世界当中，你愿意当猎人，还是猎物？Turtle Rock工作室在此为您呈现《进化》，一款次时代多人射击游戏。游戏中将由四名猎人对抗一名同为玩家所操控的怪物。现在就请放轻脚步，蓄势待攻，证明你自己就是这场四对一比赛中无可匹敌的猎食者！主要特色：\n4 VS 1 :召集三名朋友一起狩猎或是作为进化中的巨怪尾行人类。无论您选择哪一方，都可以使用威力强劲的 武器或能力来进行一场场激烈又不失公平的竞赛！\n围猎或湮灭：选择适合你风格的猎人。不论你选择做陷阱师，支援者，进攻手或是医护兵，每一个角色都是整个团队在对抗怪物时的关键人物。\n掠食怪物：当你选择作为怪物时，这个孤独的猎食者会成为整场战斗的最终BOSS。利用可怕的超能力和兽性感官摧毁一切，猎食人类，证明处于食物链最顶端的就是你。\n ','Windows 7 64-bit','4 GB RAM','Core 2 Duo E6600 / Athlon 64 X2 6400','NVIDIA GeForce GTX 560 / ATI Radeon HD 5770','DirectX Compliant Sound card','50 GB available space\n','Version 11','images/games/Evolve/1.JPG','images/games/Evolve/2.JPG','images/games/Evolve/3.JPG','images/games/Evolve/4.JPG','images/games/Evolve/5.JPG','images/games/Evolve/6.JPG','images/games/Evolve/7.JPG','在蛮荒的世界当中，你愿意当猎人，还是猎物？Turtle Rock工作室在此为您呈现《进化》，一款次时代多人射击游戏。\r\n','©2010 – 2015 Take-Two Interactive Software, Inc. 2K, the 2K logo, Evolve, the Evolve logo, and Take-Two Interactive Software are trademarks of Take-Two Interactive Software, Inc. Turtle Rock Studios and the Turtle Rock Studios logo are trademarks of Turtle Rock Studios, Inc. Portions of this software are included under license © 2004-2014 Crytek GmbH. All rights reserved. All other marks are property of their respective owners.\r\n','上架'),(5,'席德•梅尔的文明VI','Civilization VI','2016-10-20',199,NULL,'Firaxis','2K','最早由传奇游戏设计大师席德•梅尔创作出来的《文明》是一款回合制策略游戏，让玩家尝试建立起一个帝国，并接受时间的考验。玩家将创建及带领自己的文明从石器时代迈向信息时代，并成为世界的领导者。在尝试建立起世界上赫赫有名的伟大文明的过程中，玩家将启动战争、实行外交、促进文化，同时正面对抗历史上的众多伟大领袖。\n《文明VI》带给玩家与世界互动的新方式：城市现在可以在地图上实际地扩张，积极钻研科技和文化可以解锁新潜能，互相竞争的领袖会依据历史所记载的个人特征去追求自我宗旨，而且玩家可通过五种方式之一取得游戏胜利。\n','Windows 7x64 / Windows 8.1x64 / Windows 10x64','4 GB RAM','Intel Core i3 2.5 Ghz or AMD Phenom II 2.6 Ghz or greater','1 GB & AMD 5570 or nVidia 450','DirectX Compatible Sound Device','需要 12 GB 可用空间\n','11','images/games/Civilization/1.JPG','images/games/Civilization/2.JPG','images/games/Civilization/3.JPG','images/games/Civilization/4.JPG','images/games/Civilization/5.JPG','images/games/Civilization/6.JPG','images/games/Civilization/7.JPG','最早由传奇游戏设计大师席德·梅尔创作出来的《文明》是一款回合制策略游戏，让玩家尝试建立起一个帝国，并接受时间的考验。玩家将创建及带领自己的文明从石器时代迈向信息时代，并成为世界的领导者。\r\n','©2017 Take-Two Interactive Software and its subsidiaries. Sid Meier’s Civilization, Civilization, Civ, 2K, Firaxis Games, Take-Two Interactive Software and their respective logos are all trademarks of Take-Two Interactive Software, Inc. All other marks and trademarks are the property of their respective owners. All rights reserved.\r\n','上架'),(6,'铁路帝国','Railway Empire','2018-01-26',169,NULL,'Gaming Minds Studios','Kalypso Media Digital','1830年的美利坚，这个堪称“新世界”的国家正在蓬勃发展。随着工业革命的突飞猛进，美国人民正打算在北美建立起最强有力的铁路帝国。现在，是时候引领你的公司在思维与策略上超越竞争者了，高歌挺进20世纪吧！在《铁路帝国》中，你将亲手打造出一个复杂而广袤的铁路网络。你可以购买超过40种火车类型，每一种火车的建模都细致入微。同时，你也可以收购或建造火车站、维修厂、工厂和旅游设施来使你的交通网络在激烈的竞争中立于不败之地。然而，仅仅通过建造和研究是无法让你到达顶端的 —— 竞争无处不在，你必须时刻照顾好自己的生意，你将迎来多达三家竞争公司的挑战。为了在竞争中脱颖而出，你可能需要使出更加狡诈的计谋，攻击并洗劫你的对手，或是派出商业间谍监视他们的一举一动。\n','Windows 7 SP1 or Windows 8.1 or Windows 10 (64bit versions)','4 GB RAM','Intel Core i5 750 @ 2.6 GHz or AMD Phenom II X4 @ 3.2 GHz','nVidia GeForce GTX460 or AMD Radeon HD5870 (2048MB VRAM with Shader Model 5.0)','DirectX Compatible Sound Card with latest drivers','需要 7 GB 可用空间\n','11','images/games/Railway/1.JPG','images/games/Railway/2.JPG','images/games/Railway/3.JPG','images/games/Railway/4.JPG','images/games/Railway/5.JPG','images/games/Railway/6.JPG','images/games/Railway/7.JPG','在《铁路帝国》中，你将亲手打造出一个复杂而广袤的铁路网络。\r\n','©2017 Take-Two Interactive Software and its subsidiaries. Sid Meier’s Civilization, Civilization, Civ, 2K, Firaxis Games, Take-Two Interactive Software and their respective logos are all trademarks of Take-Two Interactive Software, Inc. All other marks and trademarks are the property of their respective owners. All rights reserved.\r\n','上架'),(7,'最终幻想15','FF15','2018-03-06',329,NULL,'Square Enix','CE-ASIA','准备好投入终极奇幻历险了吗？现在推出 Windows PC 版本。与挚友一同踏上这场永生难忘的旅程，穿越令人屏息的开放世界、目睹迷人的大地风采，在旅途中挑战体型惊人的猛兽，并奋力打败强大敌人，夺回家园。采用动感十足的战斗系统，在惊险刺激的战斗中，轻松引导先祖的力量，穿梭战场时空。和战友携手合作，掌握武器、魔法和团队战斗的技能。现在推出的 Windows PC 版本，搭配尖端科技的强大功能，包括支持高分辨率画面显示和 HDR10，立即来畅玩这款画面精美且精心制作的《FINAL FANTASY XV》，享受前所未有的游戏体验。\n','Windows® 7 SP1/ Windows® 8.1 / Windows® 10 64-bit（需要 64 位处理器和操作系统）','8 GB RAM','Intel® Core™ i5-2500（3.3GHz and above）/ AMD FX™-6100 （3.3GHz and above）','NVIDIA® GeForce® GTX 760 / NVIDIA® GeForce® GTX 1050 / AMD Radeon™ R9 280','DirectSound® compatible sound card, Windows Sonic and Dolby Atmos support','	需要 100 GB 可用空间\n','11','images/games/FF15/1.JPG','images/games/FF15/2.JPG','images/games/FF15/3.JPG','images/games/FF15/4.JPG','images/games/FF15/5.JPG','images/games/FF15/6.JPG','images/games/FF15/7.JPG','展开一场超凡绝伦的高质量旅程吧！本游戏提供各种丰富额外内容，而且支持超高分辨率的图形选项和 HDR 10，立即来畅玩这款画面精美且精心制作的《FINAL FANTASY XV》，享受前所未有的游戏体验。\r\n','©2016-2018 SQUARE ENIX CO., LTD. All Rights Reserved.\r\n','上架'),(8,'黑暗之魂3','DARK SOULS™ III','2016-04-12',268,NULL,'FromSoftware, Inc.','Bandai Namco Entertainment Inc.','─赢得gamescom 2015 \"\"Best RPG\"\" 奖项，以及于2015 E3展获得超过35项奖项及提名─\nDARK SOULS™ III为即将推出，极具话题性及代表性的系列新作。\n当火渐熄，世界趋于毁灭，您将再踏上面临更多磨难、大量敌人与难关的旅途。玩家将沉浸在史诗氛围的世界之中，感受更快速的游玩节奏与棘手的战斗强度带来的黑暗气息。不论新手或是老玩家，都将因著名的游戏体验、实境般的游戏画面为之着迷。\n如今仅剩余火尚存……作好准备，再次拥抱黑暗！\n','Windows 7 SP1 64bit, Windows 8.1 64bit Windows 10 64bit','4 GB RAM','Intel Core i3-2100 / AMD® FX-6300','NVIDIA® GeForce GTX 750 Ti / ATI Radeon HD 7950','DirectX 11 sound device','需要 100 GB 可用空间\n','11','images/games/DARK/1.JPG','images/games/DARK/2.JPG','images/games/DARK/3.JPG','images/games/DARK/4.JPG','images/games/DARK/5.JPG','images/games/DARK/6.JPG','images/games/DARK/7.JPG','当火渐熄，世界趋于毁灭，您将再踏上面临更多磨难、大量敌人与难关的旅途。玩家将沉浸在史诗氛围的世界之中，感受更快速的游玩节奏与棘手的战斗强度带来的黑暗气息。\r\n','Dark Souls™ III & © BANDAI NAMCO Entertainment Inc. ©2011-2016 FromSoftware, Inc.\r\n','上架'),(9,'赛车计划 2','Project Cars 2','2017-09-22',305,NULL,'Slightly Mad Studios','Bandai Namco Entertainment Inc.','特色：\n180 多款来自标志性汽车厂商的授权车型;\n完全支持 12K 和 VR;\n由专业赛车手亲自测试和优化;\n全新赛车运动（印第车赛赛车、环道赛车、场地拉力赛）融合了包含 GT3 级别在内的经典赛车;\nLiveTrack 3.0：动态表面和天气现象将影响赛车的性能以及实时操控;\n全新松散地形赛车（冰雪、泥土、淤泥）;\n24 小时完整循环，主打实时气候状况和季节环境特色;\n最先进的物理模型;\n改良的游戏手柄操控;\n领先的电子竞技功能.\n','Windows 10 (+ specific versions of 7)','8 GB RAM','3.5 GHz Intel Core i5 3450, 4.0 GHz AMD FX-8350','GTX680 or equivalent','DirectX compatible sound card','需要 50 GB 可用空间\n','11','images/games/Project/1.JPG','images/games/Project/2.JPG','images/games/Project/3.JPG','images/games/Project/4.JPG','images/games/Project/5.JPG','images/games/Project/6.JPG','images/games/Project/7.JPG','终极车手之旅 《Project CARS 2》是一款全球最美丽、最逼真，技术最先进的赛车游戏，为玩家献上赛车的热血灵魂。\r\n','© 2017 Slightly Mad Studios Limited. Published and distributed by the BANDAI NAMCO Entertainment Group. Slightly Mad Studios, Project CARS, the SMS logo, and the Project CARS logo are trademarks or registered trademarks of Slightly Mad Studios Limited in the United Kingdom and/or other countries. The names, designs, and logos of all products are the property of their respective owners and used with permission.\r\n','上架'),(10,'NBA 2K18','NBA 2K18','2017-09-14',199,NULL,'Visual Concepts','2k','全新的动作系统让玩家不但可以全权操控球员，还可获得极高的真实感。现在，运球和无球动作不再是 动画趋向。这项突破性的技术能动态地产生动画以提供最棒的游戏体验。现在一切操之在您。改良过得投篮量表能让球员更连贯地投篮命中。多种回馈资讯（数值）让玩家能更精准地拿捏出手时机。开发团队投入了无数小时的时间，只为了让每一位NBA球员看起来及感觉起来与他们在现实世界中的本 尊无异，而且就连最小的细节也不放过，例如疤痕、生长纹、退色的刺青等等。球员躯体系统已经过重 新设计，以便能精确地重现联盟里每位球员的体格。另外，也从无到有重建了所有球员的脸孔，好更细 腻地呈现更多细节，以及更逼真地呈现光影效果。\n','Windows 7x64 / Windows 8.1x64 / Windows 10x64','4 GB RAM','	Intel® Core™ i3-530 @ 2.93 GHz / AMD Phenom™ II X4 805 @ 2.50 GHz or better','NVIDIA® GeForce® GT 450 1GB / ATI® Radeon™ HD 7770 1GB or better','DirectX 9.0x compatible Dual-Analog Gamepad: Recommended','需要 70 GB 可用空间\n','11','images/games/NBA2K18/1.JPG','images/games/NBA2K18/2.JPG','images/games/NBA2K18/3.JPG','images/games/NBA2K18/4.JPG','images/games/NBA2K18/5.JPG','images/games/NBA2K18/6.JPG','images/games/NBA2K18/7.JPG','最高评分的*年度本世代主机体育游戏再次回归了，《NBA 2K18》将为赛场带来前所未有的真实性和改进。\r\n','© 2005-2017 Take-Two Interactive Software and its subsidiaries. All rights reserved. 2K, the 2K logo, and Take-Two Interactive Software are all trademarks and/or registered trademarks of Take-Two Interactive Software, Inc. The NBA and NBA member team identifications are the intellectual property of NBA Properties, Inc. and the respective NBA member teams. © 2017 NBA Properties, Inc. All Rights Reserved.\r\n','上架'),(11,'越野英雄4','V-Rally 4 Standard Edition','2018-09-26',199,NULL,'KT Racing','Plug In Digital','传奇的越野赛车游戏回来了！在极限路况中大展身手，畅享终极的赛车体验。挑战拉力赛、场地拉力赛、漂移、巴吉赛车和爬山赛，在各个大陆展开一场精彩的冒险。\n统治危险的道路、恶劣的条件与环境，不断追求更极限的速度，用通过肾上腺素强化你的反应速度。驾驶不同类别最传奇的越野赛车，挑战美景环绕的最困难的路线。50 多种型号的赛车，包括拉力赛与极限汽车运动中最著名的型号，供你试驾、收集、升级、改装和精通！\n','Windows® 7 64bits','4 GB RAM','Intel Core i3-540 or AMD Phenom II X4 940','Nvidia GeForce GTX 560 or AMD Radeon HD 6870','DirectX Compatible Soundcard','需要 19 GB 可用空间\n','11','images/games/V-Rally/1.JPG','images/games/V-Rally/2.JPG','images/games/V-Rally/3.JPG','images/games/V-Rally/4.JPG','images/games/V-Rally/5.JPG','images/games/V-Rally/6.JPG','images/games/V-Rally/7.JPG','传奇的越野赛车游戏回来了！在极限路况中大展身手，畅享终极的赛车体验。挑战拉力赛、场地拉力赛、漂移、巴吉赛车和爬山赛，在各个大陆展开一场精彩的冒险。\r\n','©2018 Published by Bigben Interactive and developed by KT Racing. Manufacturers, vehicles, names, brands and associated imagery featured in this game are trademarks and/or copyrighted materials of their respective owners. All rights reserved. Warning: This is a virtual game and not real life. Be cautious, do not imitate the vehicle movements shown in this game when you are driving a car in real life. Remember: drive safely!\r\n','上架'),(12,'世界拉力锦标赛7\n','WRC 7','2017-09-15',182,NULL,'Kylotonn Racing Games','Plug In Digital','参加 FIA 世界拉力锦标赛 13 场拉力赛、52 个特别赛道，所有环境均真实重现。体验更快、更强大、更灵活的新车车轮背后锦标赛的最佳赛车手。选择现代、丰田、雪铁龙和福特等知名汽车制造商生产的赛车，它们将完美呈现真实的驾驶体验。有 55 个官方车队可供选择，包括 WRC 2 和 WRC Junior赛车手等众多选择。13 Epic Stages提供无与伦比的游戏体验，所有特别赛道时间都超过 15 分钟。对赛车手和 WRC 粉丝而言，这都是终极忍耐力体验！\n','Windows® 7','4 GB RAM','Intel® Core i3 / AMD Phenom™ II X2','NVIDIA® GeForce® 9800 GTX / AMD Radeon™ HD 5750','DirectX Compatible Soundcard','需要 19 GB 可用空间\n','11','images/games/WRC7/1.JPG','images/games/WRC7/2.JPG','images/games/WRC7/3.JPG','images/games/WRC7/4.JPG','images/games/WRC7/5.JPG','images/games/WRC7/6.JPG','images/games/WRC7/7.JPG','参加 FIA 世界拉力锦标赛 13 场拉力赛、52 个特别赛道，所有环境均真实重现。体验更快、更强大、更灵活的新车车轮背后锦标赛的最佳赛车手。\r\n','©2018 Published by Bigben Interactive and developed by KT Racing. Manufacturers, vehicles, names, brands and associated imagery featured in this game are trademarks and/or copyrighted materials of their respective owners. All rights reserved. Warning: This is a virtual game and not real life. Be cautious, do not imitate the vehicle movements shown in this game when you are driving a car in real life. Remember: drive safely!\r\n','上架'),(13,'橄榄球18','RUGBY 18','2017-10-27',248,NULL,'Eko Software','Plug In Digital','在《RUGBY 18》中，感受超大规模比赛带来的激烈刺激体验，它是迄今为止颇为完善的英式橄榄球游戏。\n在2017-2018赛季声名远扬的联赛和球队中，扮演官方的正式球员。\n通过直观的控制主宰整场比赛，并通过创意性的玩法，真实的还原了该项运动中的各种场景。\n在进攻或防守时，你的队友们会根据你的决定确定他们的位置、移动方向来进行比赛。\n在职业生涯模式中，你可以领导你喜爱的俱乐部，在联赛模式中，重现超大规模的联赛和锦标赛，并在每周最佳比赛中重写历史。\n在 My Squad （我的阵容）模式中，通过在所有的参赛球队中选择你喜欢的球员，来组建你的梦之队。\n在同一个主机上与朋友进行一对一的对战，或是在网上与来自全世界的玩家对抗。\n','64bits version of Windows® 7, Windows® 8, Windows® 10','6 GB RAM','Intel® Core i3 or AMD Phenom™ II X3','NVIDIA® GeForce® GTX 660 or AMD Radeon™ HD 7850 with 2 GB RAM','DirectX Compatible Soundcard','需要 15 GB 可用空间\n','11','images/games/RUGBY18/1.JPG','images/games/RUGBY18/2.JPG','images/games/RUGBY18/3.JPG','images/games/RUGBY18/4.JPG','images/games/RUGBY18/5.JPG','images/games/RUGBY18/6.JPG','images/games/RUGBY18/7.JPG','在《RUGBY 18》中，感受超大规模比赛带来的激烈刺激体验，它是迄今为止颇为完善的英式橄榄球游戏。\r\n','An Official Licensed Product of the Aviva Premiership Rugby. The Premiership Rugby logo is a registered trademark of Premier Rugby Limited. The Premiership Rugby logo and competing club logos, emblems, names and kits are all trademarks of Premier Rugby Limited and its clubs. The relevant clubs or associated organisations are used under license from Premier Rugby Limited. \r\n','上架'),(14,'WWE 2K19','WWE 2K19','2018-10-10',199,NULL,'Visual Concepts','2K','作为WWE电子游戏系列的旗舰产品，《WWE 2K19》再次回归了，由超级巨星AJ Styles担纲封面人物！《WWE 2K19》拥有WWE的庞大阵容，还有NXT的热门超级明星和传奇巨星！您将能体验最真实的游戏性、大量创造选项、比赛类型、动作以及更多内容！\n','64-bit: Windows® 7 (latest updates)','4 GB RAM','Intel Core i5-3550 / AMD FX 8150','GeForce GTX 670 / Radeon HD 7850','DirectX 9.0c compatible sound card','需要 50 GB 可用空间\n','11','images/games/WWE2K19/1.JPG','images/games/WWE2K19/2.JPG','images/games/WWE2K19/3.JPG','images/games/WWE2K19/4.JPG','images/games/WWE2K19/5.JPG','images/games/WWE2K19/6.JPG','images/games/WWE2K19/7.JPG','作为WWE电子游戏系列的旗舰产品，《WWE 2K19》再次回归了，由超级巨星AJ Styles担纲封面人物！体验丰富的创造选项、比赛类型以及更多内容！\r\n','© 2005-2018 Take-Two Interactive Software, Inc. and its subsidiaries. 2K, the 2K logo, and Take-Two Interactive Software are all trademarks and/or registered trademarks of Take-Two Interactive Software, Inc. subsidiaries. All other trademarks, logos and copyrights are the property of their respective owners. © 2018 WWE. All Rights Reserved.\r\n','上架'),(15,'专业钓鱼模拟','Pro Fishing Simulator','2018-11-30',169,NULL,'Sanuk Games','Plug In Digital','不亚于真实垂钓的游戏体验！\nPro Fishing Simulator是一款初学者和资深钓客皆宜的拟真钓鱼游戏。自由探索世界上最美丽的钓鱼地点，并结合高效的钓法和最先进的官方设备钓到最多的鱼。\n穿越 9 个模拟世界真实地区的绝佳钓鱼点，从科西嘉岛到黑森林，再到科罗拉多河。\n掌握 6 种玩法不同的钓法：飞蝇钓、路亚钓、船钓……\n钓上 79 种栩栩如生的鱼儿。\n数百件来自官方品牌的装备有待赢取和组合：Vision、JMC、KastKing、13 Fishing、Lew’s、Strike King……\n适用于所有水平的游戏教程，一部记载各种鱼详细特性的鱼维基，以及 100 多个有待应对的挑战任务。\n','Microsoft Windows 10 64bit','8 GB RAM','Intel i5-6400/AMD Ryzen 3 1200','GeForce GTX 750',NULL,'需要 6 GB 可用空间\n','11','images/games/ProFishingSimulator/1.JPG','images/games/ProFishingSimulator/2.JPG','images/games/ProFishingSimulator/3.JPG','images/games/ProFishingSimulator/4.JPG','images/games/ProFishingSimulator/5.JPG','images/games/ProFishingSimulator/6.JPG','images/games/ProFishingSimulator/7.JPG','初学者和资深钓客皆宜的拟真钓鱼游戏。自由探索世界上最美丽的钓鱼地点，并结合高效的钓法和最先进的官方设备钓到最多的鱼。\r\n','© 2018 Published by Bigben Interactive and developped by Sanuk Games and RingZero Games Studio.\r\n','上架'),(16,'一起歌唱 2016','Let\'s Sing 2016','2016-01-21',129,NULL,'Voxler Games','Plug In Digital','喜欢唱歌？独唱或是与朋友一起？在聚光灯下一展歌喉吧！《一起歌唱 2016》将次时代的卡拉OK体验带进你的PC！\n无论你是一位经验丰富的麦霸，还是只会对着淋浴头哼哼的菜鸟，拿起的麦克，尽情歌唱吧。共有35首流行歌曲，任君选择。Bruno Mars，Meghan Trainor，Calvin Harris，Sam Smith，Acicii，Maroon 5，John Legend等等等，这些知名乐手或乐队全部包含其中。人越多越开心！《一起歌唱 2016》可以支持最多8名玩家同时演唱，并且还7种新模式可供选择！快来挑战你的朋友，或者和他们一起合唱吧，看看谁才是最佳歌手。\n','Windows® 7 ','4 GB RAM ','AMD Phenom™ II X4 840 Processor 3.2 GHz AM3 ','NVidia GeForce GT 520 1GB ',NULL,'需要 5 GB 可用空间\n','9.0c ','images/games/Sing2016/1.JPG','images/games/Sing2016/2.JPG','images/games/Sing2016/3.JPG','images/games/Sing2016/4.JPG','images/games/Sing2016/5.JPG','images/games/Sing2016/6.JPG','images/games/Sing2016/1.JPG','《一起歌唱 2016》将次时代的卡拉OK体验带进你的PC！\r\n','© 2018 Published by Bigben Interactive and developped by Sanuk Games and RingZero Games Studio.\r\n','上架'),(17,'啊啊啊','eeee','2019-01-16',111,NULL,'afdfadaf','afdadsf','adsfadsfa','adfadsf','afdsfa','fadsf','adsfadsf','afdsfa','afsdfa','11','images/games/upload/1.jpg','images/games/upload/bj.jpg','images/games/upload/2.jpg','images/games/upload/3.jpg','images/games/upload/4.jpg','images/games/upload/5.jpg','images/games/upload/6.jpg','adfsasdf','adfadsfa','上架');

/*Table structure for table `gamesnumber` */

CREATE TABLE `gamesnumber` (
  `n_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  `u_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`n_id`),
  KEY `FK_Reference_23` (`g_id`),
  KEY `FK_Reference_24` (`u_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

/*Data for the table `gamesnumber` */

insert  into `gamesnumber`(`n_id`,`g_id`,`u_id`) values (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,2,2),(6,3,2),(7,4,2),(8,5,2),(9,3,3),(10,4,3),(11,5,3),(12,6,3),(13,4,4),(14,5,4),(15,6,4),(16,7,4),(17,5,5),(18,6,5),(19,7,5),(20,8,5),(21,6,6),(22,7,6),(23,8,6),(24,9,6),(25,7,7),(26,8,7),(27,9,7),(28,10,7),(29,8,8),(30,9,8),(31,10,8),(32,11,8),(33,9,9),(34,10,9),(35,11,9),(36,12,9),(37,10,10),(38,11,10),(39,12,10),(40,13,10),(41,11,11),(42,12,11),(43,13,11),(44,14,11),(45,12,12),(46,13,12),(47,14,12),(48,15,12),(49,13,13),(50,14,13),(51,15,13),(52,16,13),(53,13,14),(54,14,14),(55,15,14),(56,16,14);

/*Table structure for table `gametype` */

CREATE TABLE `gametype` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  `t_type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `FK_Reference_1` (`g_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

/*Data for the table `gametype` */

insert  into `gametype`(`t_id`,`g_id`,`t_type`) values (1,1,'动作'),(2,1,'角色扮演'),(3,1,'冒险'),(7,3,'射击'),(8,3,'动作'),(9,3,'战争'),(10,3,'第一人称'),(11,3,'历史'),(12,4,'射击'),(13,4,'科幻'),(14,4,'第一人称'),(15,5,'策略'),(16,5,'模拟'),(17,5,'回合'),(18,5,'历史'),(19,5,'4X'),(20,5,'多人'),(21,6,'策略'),(22,6,'模拟'),(23,7,'动作'),(24,7,'角色扮演'),(25,7,'冒险'),(26,7,'开放世界'),(27,7,'日系'),(28,8,'动作'),(29,8,'角色扮演'),(30,8,'日系'),(31,9,'竞速'),(32,9,'模拟'),(33,9,'VR'),(34,9,'体育'),(35,9,'多人'),(36,10,'体育'),(37,10,'多人'),(38,10,'模拟'),(39,11,'竞速'),(40,12,'竞速'),(41,12,'模拟'),(42,12,'体育'),(43,13,'体育'),(44,14,'模拟'),(45,14,'体育'),(46,15,'模拟'),(47,15,'体育'),(48,15,'休闲'),(49,16,'休闲'),(50,16,'家庭'),(51,16,'单机多人'),(52,2,'动作'),(53,2,'角色扮演'),(54,2,'日系'),(55,2,'VR'),(56,17,'策略'),(57,17,'射击'),(58,17,'4X');

/*Table structure for table `harvestaddress` */

CREATE TABLE `harvestaddress` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  `a_phone` varchar(11) DEFAULT NULL,
  `a_address` varchar(100) DEFAULT NULL,
  `postalcode` int(12) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `inTheArea` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `FK_Reference_9` (`u_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `harvestaddress` */

insert  into `harvestaddress`(`a_id`,`u_id`,`a_name`,`a_phone`,`a_address`,`postalcode`,`telephone`,`inTheArea`) values (2,2,'微风里暖到心光1','18681305954','石山村',643212,'12354678921','四川省-成都市-高新区'),(3,3,'毛国权','18683278914','月球村',343215,'17387961245','四川省-成都市-金牛区'),(4,4,'华佳辉','18498234563','太平村',454222,'18756546245','四川省-攀枝花-曹尼玛'),(5,8,'杨大街','14563246885','红斗村',214525,'17754444554','湖北省-黄冈市-好嗨哟'),(6,13,'李雪容1','17863563585','黄土高坡',121344,'15535464895','北京市-天安门'),(7,10,'陈同贵','13096221235','四川成都',643200,'12345678910','四川省-成都市-A区'),(8,7,'华辉','13880997262','四川德阳',618406,'13880997262','四川省-什邡市-C区'),(9,9,'李宏毅','13880359819','广东',164655,'13880359819','广东省-A区-C区'),(10,12,'王道明','13880361060','香港',156425,'13880361060','香港-D区-F区'),(11,5,'杨杰','14147556885','深圳',154635,'14147556885','广东省-5区-4区'),(12,6,'姚杰','13465486582','红斗村',643200,'13465486582','四川省-攀枝花-曹尼玛'),(13,11,'陈俊东','13480997262','太平村',618406,'13480997262','四川省-西昌市-发射塔'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,14,'沃书恒','18468486246','太平村',164655,'18468486246','四川省-成都市-新都区'),(16,1,'长生','18643185211','是成功黄芽白',123456,'17780836023','自行车');

/*Table structure for table `holidaypromotion` */

CREATE TABLE `holidaypromotion` (
  `h_id` int(10) NOT NULL AUTO_INCREMENT,
  `g_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`h_id`),
  KEY `FK_Reference_37` (`g_id`),
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `holidaypromotion` */

/*Table structure for table `managelist` */

CREATE TABLE `managelist` (
  `ma_id` int(16) NOT NULL AUTO_INCREMENT,
  `ma_name` varchar(40) DEFAULT NULL,
  `ma_pass` int(32) DEFAULT NULL,
  `ma_power` int(2) NOT NULL,
  `ma_nickname` varchar(40) NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `managelist` */

insert  into `managelist`(`ma_id`,`ma_name`,`ma_pass`,`ma_power`,`ma_nickname`) values (1,'maoguoquan',123456,1,'武大郎'),(2,'aaa',111,2,'a');

/*Table structure for table `merchandise` */

CREATE TABLE `merchandise` (
  `m_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(20) DEFAULT NULL,
  `m_cost` float DEFAULT NULL,
  `m_type` varchar(10) DEFAULT NULL,
  `m_price` float DEFAULT NULL,
  `m_surplus` int(10) DEFAULT NULL,
  `m_show` varchar(100) DEFAULT NULL,
  `m_introduce` varchar(100) DEFAULT NULL,
  `m_tag` varchar(20) DEFAULT NULL,
  `m_trademark` varchar(20) DEFAULT NULL,
  `m_staate` varchar(20) DEFAULT '已上架',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `merchandise` */

insert  into `merchandise`(`m_id`,`m_name`,`m_cost`,`m_type`,`m_price`,`m_surplus`,`m_show`,`m_introduce`,`m_tag`,`m_trademark`,`m_staate`) values (1,'怪物猎人 超软可爱布偶',129,'周边',129,98,'../images/roundImage/1.png','../images/roundImage/shop.jpg','怪物猎人世界',NULL,'已上架'),(2,'怪物猎人CFB雄火龙模型【复刻版】',699,'周边',699,96,'../images/roundImage/2.png','../images/roundImage/shop2.jpg','怪物猎人世界','Capcom','已上架'),(3,'怪物猎人：烤肉抱枕',279,'周边',279,98,'../images/roundImage/3.png','../images/roundImage/shop3.jpg','怪物猎人世界',NULL,'已上架'),(4,'怪物猎人 怪物布偶',139,'周边',139,99,'../images/roundImage/4.png','../images/roundImage/shop4.jpg','怪物猎人世界',NULL,'已上架'),(5,'《暗黑破坏神》典藏全书',168,'周边',168,100,'../images/roundImage/5.png','../images/roundImage/shop5.jpg',NULL,'读库','已上架'),(6,'黑暗之魂：传火录',48,'周边',48,98,'../images/roundImage/6.png','../images/roundImage/shop6.jpg',NULL,'读库','已上架'),(7,'《超级马力欧兄弟3》经典游戏丛书',32,'周边',32,99,'../images/roundImage/7.png','../images/roundImage/shop7.jpg',NULL,'读库','已上架'),(8,'《潜龙谍影》经典游戏丛书',28,'周边',28,100,'../images/roundImage/8.png','../images/roundImage/shop8.jpg',NULL,'读库','已上架'),(9,'怪物猎人CFB雷狼龙模型【复刻版】',699,'周边',699,100,'../images/roundImage/9.png','../images/roundImage/shop9.jpg','怪物猎人XX','Capcom','已上架'),(10,'怪物猎人XX 毛绒玩具',129,'周边',129,100,'../images/roundImage/10.png','../images/roundImage/shop10.jpg','怪物猎人XX','Capcom','已上架'),(11,'怪物猎人CFB标准模型 第八版',329,'周边',329,100,'../images/roundImage/11.png','../images/roundImage/shop11.jpg','怪物猎人XX','Capcom','已上架'),(12,'怪物猎人 超软可爱布偶 第三弹',129,'周边',129,100,'../images/roundImage/12.png','../images/roundImage/shop12.jpg','怪物猎人XX',NULL,'已上架'),(13,'生化危机 火箭筒抱枕',395,'周边',395,100,'../images/roundImage/13.png','../images/roundImage/shop13.jpg','生化危机','Capcom','已上架'),(14,'生化危机7 限量版棒球帽',245,'周边',245,99,'../images/roundImage/14.png','../images/roundImage/shop14.jpg','生化危机','Capcom','已上架'),(15,'生化危机7 伞公司肩章',129,'周边',129,100,'../images/roundImage/15.png','../images/roundImage/shop15.jpg','生化危机','Capcom','已上架'),(16,'生化危机7 限量版T恤',248,'周边',248,99,'../images/roundImage/16.png','../images/roundImage/shop16.jpg','生化危机','Capcom','已上架'),(17,'北通阿修罗2游戏手柄白色有线版',129,'促销',109,100,'../images/roundImage/17.png','../images/roundImage/shop17.jpg',NULL,'北通游戏手柄','已上架'),(18,'北通手游W1游戏手柄红黑色蓝牙版',249,'促销',249,100,'../images/roundImage/18.png','../images/roundImage/shop18.jpg',NULL,'北通游戏手柄','已上架'),(19,'北通阿修罗2游戏手柄黑色有线版',129,'促销',109,100,'../images/roundImage/19.png','../images/roundImage/shop19.jpg',NULL,'北通游戏手柄','已上架'),(20,'北通阿修罗2游戏手柄蓝紫色蓝牙版',249,'促销',249,100,'../images/roundImage/20.png','../images/roundImage/shop20.jpg',NULL,'北通游戏手柄','已上架'),(21,'光环战争2-劲爆大礼包',199,'周边',199,99,'../images/roundImage/21.png','../images/roundImage/shop21.jpg',NULL,'微软中国','已上架'),(22,'战争机器4-精钢离子去味皂',99,'周边',99,100,'../images/roundImage/22.png','../images/roundImage/shop22.jpg',NULL,'微软中国','已上架'),(23,'核心重铸-主题抱枕',99,'周边',99,100,'../images/roundImage/23.png','../images/roundImage/shop23.jpg',NULL,'微软中国','已上架'),(24,'战争机器4-限量版T恤',149,'周边',149,100,'../images/roundImage/24.png','../images/roundImage/shop24.jpg',NULL,'微软中国','已上架'),(25,'怪物猎人：烤肉抱枕',279,'热门',279,100,'../images/roundImage/3.png','../images/roundImage/shop3.jpg','怪物猎人世界',NULL,'已上架'),(26,'怪物猎人：1:1回复药水瓶袋',199,'热门',199,100,'../images/roundImage/2-1.png','../images/roundImage/shop25.jpg','怪物猎人世界',NULL,'已上架'),(27,'怪物猎人:世界 钥匙扣',99,'热门',99,100,'../images/roundImage/2-2.png','../images/roundImage/shop26.jpg','怪物猎人世界',NULL,'已上架'),(28,'怪物猎人:世界 武器图标小饰品',49,'热门',49,100,'../images/roundImage/2-3.png','../images/roundImage/shop27.jpg','怪物猎人世界',NULL,'已上架'),(29,'《魔兽世界：巫妖王之怒》动画影像艺术',168,'促销',100,100,'../images/roundImage/d-2.png','../images/roundImage/shop28.jpg',NULL,'读库','已上架'),(30,'《刺客信条》完全视觉史',180,'促销',168,100,'../images/roundImage/d-8.png','../images/roundImage/shop29.jpg',NULL,'读库','已上架'),(31,'《辐射4》艺术设定集',188,'促销',128,100,'../images/roundImage/d-1.png','../images/roundImage/shop30.jpg',NULL,'读库','已上架'),(32,'怪物猎人：世界 和风礼品套装',88,'促销',66,100,'../images/roundImage/33.png','../images/roundImage/shop31.jpg',NULL,'读库','已上架'),(33,'怪物猎人XX 毛绒玩具',129,NULL,129,100,'../images/roundImage/3-9.png','../images/roundImage/shop32.jpg','Capcom','怪物猎人XX','已上架'),(34,'核心重铸-限量版T恤',149,NULL,149,100,'../images/roundImage/2-4.png','../images/roundImage/shop35.jpg',NULL,'微软中国','已上架'),(35,'战争机器4-限量版T恤',149,NULL,149,100,'../images/roundImage/2-7.png','../images/roundImage/shop34.jpg',NULL,'微软中国','已上架'),(36,'堕落之王 典藏雕像',399,NULL,399,100,'../images/roundImage/ci.png','../images/roundImage/shop33.jpg','堕落之王','CI Games','已上架'),(37,'111',111,'热门',111,111,'../images/roundImage/timg.jpg','../images/roundImage/timg_看图王.jpg','111','111','已上架'),(38,'123321qw',12,'热门',12212,212,'../images/roundImage/timg.jpg','../images/roundImage/timg_看图王.jpg','12','12','已上架'),(39,'1111',1111,'热门',111,111,'../images/roundImage/2.jpg','../images/roundImage/101.jpg','11','11','已上架'),(40,'111',111,'热门',11,11,'../images/roundImage/2.jpg','../images/roundImage/101.jpg','11','11','已上架'),(41,'22222',222,'热门',222,22,'../images/roundImage/1.jpg','../images/roundImage/2.jpg','22','22','已上架'),(42,'222',222,'热门',22,22,'../images/roundImage/1.jpg','../images/roundImage/2.jpg','22','22','已上架'),(43,'22',22,'热门',2,2,'../images/roundImage/1.jpg','../images/roundImage/2.jpg','2','2','已上架'),(44,'33',3,'热门',33,33,'../images/roundImage/1.jpg','../images/roundImage/2.jpg','33','33','已上架'),(45,'44',44,'热门',44,4,'../images/roundImage/1.jpg','../images/roundImage/2.jpg','4','4','已上架'),(46,'brid',1232,'热门',120,12,'../images/roundImage/ni.jpg','../images/roundImage/nis.jpg','wqeq','qwe','已上架');

/*Table structure for table `postinformation` */

CREATE TABLE `postinformation` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `p_text` varchar(40) DEFAULT NULL,
  `p_message` text,
  `p_date` varchar(30) DEFAULT NULL,
  `p_fabulous` int(10) DEFAULT '0',
  `a_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FK_Reference_13` (`u_id`),
  KEY `FK_Reference_99` (`a_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_99` FOREIGN KEY (`a_id`) REFERENCES `allteam` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `postinformation` */

insert  into `postinformation`(`p_id`,`u_id`,`p_text`,`p_message`,`p_date`,`p_fabulous`,`a_id`) values (3,1,'风停了剩尘埃飘落','真的好冷呀！！！','2018-12-10 17:44:23',13,2),(4,1,'今夜冷风吹','\n        呼拉呼的吹','2018-12-10 18:42:41',15,4),(5,1,'风好大呀','\n        冷的打紏紏','2018-12-10 19:21:43',5,2),(9,1,'今夜冷风吹呀','\n        冷！','2018-12-10 19:45:42',0,2),(12,1,'今夜冷风吹啊','\n        爱上大苏刚刚阿萨德ad','2018-12-10 19:53:38',30,2),(13,1,'今夜冷风吹啊','\n        是局','2018-12-10 19:54:23',4,2),(14,1,'今夜冷风吹啊','\n        啊实打实的啊实打实的','2018-12-10 19:55:12',0,2),(15,1,'今夜冷风','\n        11231','2018-12-10 19:55:40',0,2),(16,1,'死亡如风','\n        常伴吾身','2018-12-10 19:57:21',1,4),(17,1,'为人之道','\n        贵在无愧本心','2018-12-10 20:12:11',20,24),(18,1,'好嗨说的','\n        \r\n        常伴吾身','2018-12-27 18:27:50',NULL,2),(19,2,'好嗨哟','\n        感觉人生已经到达了巅峰','2019-01-09 09:24:34',0,29),(20,2,'好嗨说的','\n        啊速度快打看的撒看到可大可看看看看看看看 ','2019-01-09 09:30:19',0,3),(21,2,'好嗨啊','\n        阿萨德阿萨德 打撒啊的','2019-01-09 09:36:01',0,3),(22,2,'武器','\n        哼  一个能打的都没有','2019-01-09 09:37:28',0,3),(23,1,'hello','\n        hello world','2019-01-10 14:31:13',0,2),(24,1,'5555','\n        客户看了湖南路口监控立即离开','2019-01-10 22:18:02',0,2),(25,1,'555','\n        666','2019-01-10 22:19:04',0,7),(26,1,'阿发啊','\n        啊    ','2019-01-11 10:32:51',0,2),(27,1,'啊啊啊','\n        啊啊','2019-01-11 10:33:20',1,2);

/*Table structure for table `postmessage` */

CREATE TABLE `postmessage` (
  `pm_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) DEFAULT NULL,
  `u_id` int(10) DEFAULT NULL,
  `pm_message` varchar(200) DEFAULT NULL,
  `pm_give` int(10) DEFAULT '0',
  `pm_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pm_id`),
  KEY `FK_Reference_19` (`p_id`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`p_id`) REFERENCES `postinformation` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `postmessage` */

insert  into `postmessage`(`pm_id`,`p_id`,`u_id`,`pm_message`,`pm_give`,`pm_date`) values (2,3,2,'S vADNF MHFKFG',7,'2018-12-17'),(3,3,4,'rgrgw',5,'2018-12-12'),(4,3,3,'你好',4,'2018-09-09'),(10,3,1,'24符',0,'2018-12-12'),(11,3,1,'你好',0,'2018-12-12'),(12,27,1,'发发 ',0,'2019-01-11 10:33:42');

/*Table structure for table `postreply` */

CREATE TABLE `postreply` (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `pm_id` int(10) DEFAULT NULL,
  `use_u_id` int(10) DEFAULT NULL,
  `r_message` varchar(100) DEFAULT NULL,
  `r_date` date DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `FK_Reference_21` (`u_id`),
  KEY `FK_Reference_22` (`pm_id`),
  KEY `FK_Reference_40` (`use_u_id`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`pm_id`) REFERENCES `postmessage` (`pm_id`),
  CONSTRAINT `FK_Reference_40` FOREIGN KEY (`use_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `postreply` */

/*Table structure for table `roundcover` */

CREATE TABLE `roundcover` (
  `co_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_id` varchar(50) DEFAULT NULL,
  `co_route` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `roundcover` */

insert  into `roundcover`(`co_id`,`m_id`,`co_route`) values (1,'怪物猎人世界','../images/roundImage/1-1.jpg'),(2,'读库','../images/roundImage/1-2.jpg'),(3,'怪物猎人XX','../images/roundImage/1-3.jpg'),(4,'生化危机','../images/roundImage/1-4.jpg'),(5,'北通游戏手柄','../images/roundImage/1-5.jpg'),(6,'微软中国','../images/roundImage/1-6.jpg');

/*Table structure for table `roundinformation` */

CREATE TABLE `roundinformation` (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_id` int(10) DEFAULT NULL,
  `r_type` varchar(20) DEFAULT NULL,
  `r_size` varchar(20) DEFAULT NULL,
  `r_spec` varchar(20) DEFAULT NULL,
  `r_edition` varchar(20) DEFAULT NULL,
  `r_color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `FK_Reference_10` (`m_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`m_id`) REFERENCES `merchandise` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `roundinformation` */

insert  into `roundinformation`(`r_id`,`m_id`,`r_type`,`r_size`,`r_spec`,`r_edition`,`r_color`) values (1,1,'居家办公',NULL,NULL,'搔鸟',NULL),(2,2,'模型',NULL,'标准',NULL,NULL),(3,3,'居家办公',NULL,'标准',NULL,NULL),(4,4,'居家办公',NULL,NULL,'角龙',NULL),(5,5,'图书音像',NULL,'标准',NULL,NULL),(6,6,'图书音像',NULL,'标准',NULL,NULL),(7,7,'图书音像',NULL,'标准',NULL,NULL),(8,8,'图书音像',NULL,'标准',NULL,NULL),(9,9,'模型',NULL,'标准',NULL,NULL),(10,10,'居家办公',NULL,'宠物猪',NULL,NULL),(11,11,'模型',NULL,'标准',NULL,NULL),(12,12,'居家办公',NULL,NULL,'雷狼龙',NULL),(13,13,'居家办公',NULL,'标准',NULL,NULL),(14,14,'服饰',NULL,NULL,NULL,'黑色'),(15,15,'服饰',NULL,'徽纹',NULL,NULL),(16,16,'服饰','M',NULL,NULL,'灰色'),(17,17,'电脑硬件',NULL,NULL,NULL,'白色'),(18,18,'电脑硬件',NULL,NULL,NULL,'红黑色'),(19,19,'电脑硬件',NULL,NULL,NULL,'黑色'),(20,20,'电脑硬件',NULL,NULL,NULL,'蓝紫色'),(21,21,'其他',NULL,'标准',NULL,NULL),(22,22,'居家办公',NULL,'标准',NULL,NULL),(23,23,'居家办公',NULL,'标准',NULL,NULL),(24,24,'服饰','L',NULL,NULL,'黑色'),(25,25,'居家办公',NULL,'标准',NULL,NULL),(26,26,'居家办公',NULL,'标准',NULL,NULL),(27,27,'居家办公',NULL,'标准',NULL,NULL),(28,28,'居家办公',NULL,NULL,'单件随机发货',NULL),(29,29,'图书音像',NULL,'标准',NULL,NULL),(30,30,'图书音像',NULL,'标准',NULL,NULL),(31,31,'图书音像',NULL,'标准',NULL,NULL),(32,32,'居家办公',NULL,'标准','飞雷龙','默认'),(33,33,'居家办公',NULL,'米尔西',NULL,NULL),(34,34,'服饰','XL',NULL,NULL,'红色'),(35,35,'服饰','L',NULL,NULL,'黑色'),(36,36,'模型',NULL,'标准',NULL,NULL),(37,37,'居家办公',NULL,'标准',NULL,NULL),(38,37,'居家办公',NULL,'标准',NULL,NULL),(39,43,'居家办公',NULL,'标准',NULL,NULL),(40,45,'居家办公',NULL,'标准',NULL,NULL),(41,46,'居家办公',NULL,'标准',NULL,NULL);

/*Table structure for table `roundorders` */

CREATE TABLE `roundorders` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `m_id` int(10) DEFAULT NULL,
  `p_ordertime` varchar(50) DEFAULT NULL,
  `p_ordernum` varchar(20) DEFAULT NULL,
  `p_orderstatus` varchar(10) DEFAULT '发货中',
  `roundNum` int(10) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FK_Reference_35` (`u_id`),
  KEY `FK_Reference_36` (`m_id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`m_id`) REFERENCES `merchandise` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `roundorders` */

insert  into `roundorders`(`p_id`,`u_id`,`m_id`,`p_ordertime`,`p_ordernum`,`p_orderstatus`,`roundNum`) values (1,8,2,'2018-11-13 00:00:00','2018111300000082','发货中',1),(2,7,8,'2018-10-24 14:33:16','2018102414331678','发货中',1),(3,13,6,'2018-11-20 14:45:45','2018112014454513','发货中',2),(4,2,13,'2018-10-16 18:46:15','2018101618461521','发货中',1),(5,11,25,'2018-02-28 04:46:45','2018022804464511','发货中',2),(6,5,24,'2018-12-24 14:13:16','2018122414131652','发货中',4),(7,4,23,'2018-11-29 18:26:45','2018112918264542','发货中',4),(8,3,12,'2018-12-19 14:36:29','2018122914362931','发货中',5),(9,6,4,'2018-12-29 15:46:36','2018122915463664','发货中',7),(10,10,12,'2018-11-20 12:56:19','2018112012561910','发货中',4),(11,9,20,'2018-12-28 20:46:45','2018122820464592','发货中',10),(12,1,1,'2019-01-09 09:21:55','2019010909215511','发货中',1),(13,1,6,'2019-01-09 09:21:55','2019010909215516','发货中',1),(14,1,3,'2019-01-09 09:55:33','201901090955331','发货中',1),(15,1,2,'2019-01-09 10:00:02','201901091000023','发货中',3),(16,1,2,'2019-01-09 10:00:17','201901091000173','发货中',3),(17,1,2,'2019-01-09 10:00:50','201901091000503','发货中',3),(18,1,1,'2019-01-09 14:27:19','201901091427191','发货中',1),(19,1,2,'2019-01-09 14:27:19','201901091427191','发货中',1),(20,1,3,'2019-01-09 14:27:19','201901091427191','发货中',1),(21,1,4,'2019-01-09 14:27:19','201901091427191','发货中',1),(22,1,6,'2019-01-09 14:27:19','201901091427191','发货中',1),(23,1,7,'2019-01-09 14:27:19','201901091427191','发货中',1),(24,1,14,'2019-01-09 14:27:19','201901091427191','发货中',1),(25,1,16,'2019-01-09 14:27:19','201901091427191','发货中',1),(26,1,21,'2019-01-09 14:27:19','201901091427191','发货中',1);

/*Table structure for table `sereply` */

CREATE TABLE `sereply` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_userid` int(11) DEFAULT NULL,
  `s_username` varchar(11) DEFAULT NULL,
  `s_reply` varchar(100) DEFAULT NULL,
  `s_replydate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `sereply` */

insert  into `sereply`(`s_id`,`s_userid`,`s_username`,`s_reply`,`s_replydate`) values (1,7,'华辉','亲，最近活动，发货有些慢，请耐心等待','2019-01-01 12:00:00'),(2,7,'华辉','您还有其他问题吗？','2019-01-01 12:05:00'),(3,10,'方寒','亲，可以的哦，请提供新收货地址','2018-12-14 15:55:52'),(4,10,'方寒','亲，已经成功修改收货地址咯','2018-12-14 15:58:12'),(5,4,'张宁','亲，您可以选择退货哦','2019-01-15 16:43:23'),(9,10,'方寒','啊实打实大所大所多','2019-1-10  10:51:40'),(10,10,'方寒','0000','2019-1-10  10:54:55'),(11,4,'张宁','0.0.0','2019-1-10  11:40:16'),(12,4,'张宁','0.0','2019-1-10  11:46:50'),(13,7,'华辉','0','2019-1-10  12:39:24'),(14,7,'华辉','0.00','2019-1-10  12:39:24'),(15,7,'华辉','','2019-1-10  12:39:24'),(16,7,'华辉','','2019-1-10  12:39:24'),(17,7,'华辉','0','2019-1-10  12:42:23');

/*Table structure for table `service` */

CREATE TABLE `service` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_username` varchar(30) DEFAULT NULL,
  `s_message` varchar(100) DEFAULT NULL,
  `s_date` varchar(100) DEFAULT NULL,
  `s_userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `service` */

insert  into `service`(`s_id`,`s_username`,`s_message`,`s_date`,`s_userid`) values (1,'华辉','为什么还没有发货啊？','2019-01-01 11:30:12',7),(2,'方寒','我可以修改收货地址么？','2018-12-14 15:52:12',10),(3,'张宁','什么垃圾东西，我要退货！','2019-01-15 16:40:56',4),(4,'方寒','四川省XXX区XXX街','2018-12-14 15:56:12',10),(5,'华辉','我可以修改收货地址么？','2019-01-15 16:40:56',7),(6,'树大不招风','发到付啊','2019-01-11 10:59:41',1),(7,'树大不招风','啊','2019-01-11 11:20:05',1),(8,'树大不招风','啊','2019-01-11 11:20:11',1),(9,'树大不招风','撒','2019-01-11 11:20:15',1);

/*Table structure for table `shopgames` */

CREATE TABLE `shopgames` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `g_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `FK_Reference_29` (`u_id`),
  KEY `FK_Reference_30` (`g_id`),
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `shopgames` */

insert  into `shopgames`(`s_id`,`u_id`,`g_id`) values (2,1,15),(3,1,4),(4,1,9),(5,1,13),(6,1,6),(7,1,1),(8,1,11);

/*Table structure for table `shopperiphery` */

CREATE TABLE `shopperiphery` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `m_id` int(10) DEFAULT NULL,
  `m_num` int(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `FK_Reference_25` (`u_id`),
  KEY `FK_Reference_26` (`m_id`),
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`m_id`) REFERENCES `merchandise` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

/*Data for the table `shopperiphery` */

insert  into `shopperiphery`(`s_id`,`u_id`,`m_id`,`m_num`) values (161,1,19,1),(162,1,2,1),(164,1,3,1),(165,1,1,1),(166,1,26,1),(167,1,2,1);

/*Table structure for table `user` */

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_mail` varchar(40) DEFAULT NULL,
  `u_phone` varchar(11) DEFAULT NULL,
  `u_name` varchar(20) DEFAULT NULL,
  `u_nickName` varchar(16) DEFAULT NULL,
  `u_atuograph` varchar(100) DEFAULT NULL,
  `u_sex` varchar(4) DEFAULT NULL,
  `u_idNumber` varchar(30) DEFAULT NULL,
  `u_photo` varchar(200) DEFAULT NULL,
  `u_pass` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`u_id`,`u_mail`,`u_phone`,`u_name`,`u_nickName`,`u_atuograph`,`u_sex`,`u_idNumber`,`u_photo`,`u_pass`) values (1,'631921773@qq.com','13096221235','陈同贵1','树大不招风','遇到一个很丧的人','男','513922199507056670','../images/personal/tou2.jpg','594188'),(2,'1569621032@qq.com','15960396021','李俊','自动连接','找不到的人就别找了，何必为难自己还为难别人。','男','513922199204043213','../images/personal/tou3.jpg','123456'),(3,'1951358495@qq.com','13440601851','许三多','进修班','本宫不死，尔等终究是三儿','男','512501197203035172','../images/personal/tou8.jpg','xhc555478'),(4,'2285377058@qq.com','13880607690','张宁','蓝色地带','长大吧 这世界可不是你的老妈子','女','370205621219253','../images/personal/tou9.jpg','qwe3651760'),(5,'1016019376@qq.com','13880607690','宋立嘉',' 课本油的像张饼','墨奕怀从始至终要的只不过一个曲檀儿罢了','女','370203390214161','../images/personal/tou4.jpg','yy266001'),(6,'534955249@qq.com','13880607330','闫立学','后天星期五','哦 我也好像并不缺你','男','370205551013054','../images/personal/tou7.jpg','ply785120'),(7,'1251512796@qq.com','13880997262','华辉','小老弟','巨大财富的背后，都隐藏着罪恶','男','420982196205066779','../images/personal/tou2.jpg','pyjy5784'),(8,'936427234@qq.com','13880359819','沃书晴','Константин','我将给他一个他无法拒绝的条件','女','112044165412202431','../images/personal/tou4.jpg','cjd63192221'),(9,'2153799961@qq.com','13880359819','李宏毅','钱与权永不分家','你做出了这个决定，这是你的代价','男','000003165405049842','../images/personal/tou9.jpg','lhywjs088'),(10,'1473288890@qq.com','13880621636','方寒','笑的放肆','我花了一辈子，才学会了小心。女人和小孩能够粗心大意，但男人不行','男','420983153205031772','../images/personal/tou8.jpg','asd331577'),(11,'3535233881@qq.com','13881719790','李海燕','爱尔巴桑','为什么！为什么你总是不','女','32622196108040096','../images/personal/tou3.jpg','lhywg1600'),(12,'1318953864@qq.com','13880361060','王道明','一语道破','如果强奸不犯法你已是我棍下囚','男','32622196108040096','../images/personal/tou7.jpg','wbuswangxiaoming'),(13,'702479631@qq.com','13881708682','杨先玺','微笑、掩饰不了内心的痛','世界上的任何事情都不会永恒不变，唯一永恒不变的东西就是变化','男','\n41270198604045118','../images/personal/tou4.jpg','wbuswangxiaoming'),(14,'1715479488@qq.com','13880601170','萧肖','永夜 依月而眠','道理，只有弱者面对强者时才需要，唯一永恒不变的东西就是变化','男','\n3710022006100200000','../images/personal/tou5.jpg','rtgh785410');

/*Table structure for table `userattention` */

CREATE TABLE `userattention` (
  `ua_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `a_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`ua_id`),
  KEY `FK_Reference_14` (`a_id`),
  KEY `FK_Reference_15` (`u_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`a_id`) REFERENCES `allteam` (`a_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `userattention` */

insert  into `userattention`(`ua_id`,`u_id`,`a_id`) values (1,1,1),(3,3,2),(5,5,12),(6,3,12),(7,3,24),(8,3,5),(9,13,10),(10,2,22),(11,11,6),(12,4,3),(13,4,2),(17,7,2),(44,2,29),(45,2,26),(46,2,21),(47,2,3),(53,2,4),(55,2,2),(59,1,2),(60,1,6);

/*Table structure for table `wishgames` */

CREATE TABLE `wishgames` (
  `w_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `g_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`w_id`),
  KEY `FK_Reference_31` (`u_id`),
  KEY `FK_Reference_32` (`g_id`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `wishgames` */

insert  into `wishgames`(`w_id`,`u_id`,`g_id`) values (1,1,12),(2,1,13),(3,1,14),(4,1,15),(5,2,13),(6,2,14),(7,2,15),(8,2,16),(9,3,11),(10,3,12),(11,3,13),(12,3,14),(13,4,10),(14,4,11),(15,4,12),(16,4,13),(17,5,9),(18,5,10),(19,5,11),(20,5,12),(21,6,9),(22,6,10),(23,6,11),(24,6,12),(25,7,8),(26,7,9),(27,7,10),(28,7,11),(29,8,7),(30,8,8),(31,8,9),(32,8,10),(33,9,6),(34,9,7),(35,9,8),(36,9,9),(37,10,5),(38,10,6),(39,10,7),(40,10,8),(41,11,4),(42,11,5),(43,11,6),(44,11,7),(45,12,3),(46,12,4),(47,12,5),(48,12,6),(49,13,2),(50,13,3),(51,13,4),(52,13,5),(53,14,1),(54,14,2),(55,14,3),(56,14,4),(57,14,5),(58,1,1),(60,1,4),(61,1,11);

/*Table structure for table `wishround` */

CREATE TABLE `wishround` (
  `w_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_id` int(10) DEFAULT NULL,
  `u_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`w_id`),
  KEY `FK_Reference_27` (`m_id`),
  KEY `FK_Reference_28` (`u_id`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`m_id`) REFERENCES `merchandise` (`m_id`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `wishround` */

insert  into `wishround`(`w_id`,`m_id`,`u_id`) values (1,4,1),(3,16,1),(4,6,1),(5,21,1),(6,21,1),(7,13,1),(8,32,1),(9,30,1),(10,30,1),(11,30,1),(12,10,1),(13,22,1),(16,26,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
