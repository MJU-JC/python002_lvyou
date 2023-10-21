-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangow3d21
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `djangow3d21`
--

/*!40000 DROP DATABASE IF EXISTS `djangow3d21`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangow3d21` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangow3d21`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dakagonggao`
--

DROP TABLE IF EXISTS `dakagonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dakagonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `jifen` int(11) NOT NULL COMMENT '积分',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='打卡公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dakagonggao`
--

LOCK TABLES `dakagonggao` WRITE;
/*!40000 ALTER TABLE `dakagonggao` DISABLE KEYS */;
INSERT INTO `dakagonggao` VALUES (91,'2022-02-23 00:48:00','名称1',20,'upload/dakagonggao_fengmian1.jpg','2022-02-23','2022-02-23 08:48:00',1),(92,'2022-02-23 00:48:00','名称2',20,'upload/dakagonggao_fengmian2.jpg','2022-02-23','2022-02-23 08:48:00',2),(93,'2022-02-23 00:48:00','名称3',20,'upload/dakagonggao_fengmian3.jpg','2022-02-23','2022-02-23 08:48:00',3),(94,'2022-02-23 00:48:00','名称4',20,'upload/dakagonggao_fengmian4.jpg','2022-02-23','2022-02-23 08:48:00',4),(95,'2022-02-23 00:48:00','名称5',20,'upload/dakagonggao_fengmian5.jpg','2022-02-23','2022-02-23 08:48:00',5),(96,'2022-02-23 00:48:00','名称6',20,'upload/dakagonggao_fengmian6.jpg','2022-02-23','2022-02-23 08:48:00',6);
/*!40000 ALTER TABLE `dakagonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diqumingcheng`
--

DROP TABLE IF EXISTS `diqumingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diqumingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqumingcheng` varchar(200) DEFAULT NULL COMMENT '地区名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diqumingcheng` (`diqumingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='地区名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diqumingcheng`
--

LOCK TABLES `diqumingcheng` WRITE;
/*!40000 ALTER TABLE `diqumingcheng` DISABLE KEYS */;
INSERT INTO `diqumingcheng` VALUES (61,'2022-02-23 00:48:00','地区名称1'),(62,'2022-02-23 00:48:00','地区名称2'),(63,'2022-02-23 00:48:00','地区名称3'),(64,'2022-02-23 00:48:00','地区名称4'),(65,'2022-02-23 00:48:00','地区名称5'),(66,'2022-02-23 00:48:00','地区名称6');
/*!40000 ALTER TABLE `diqumingcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (181,'2022-02-23 00:48:00',1,1,'用户名1','评论内容1','回复内容1'),(182,'2022-02-23 00:48:00',2,2,'用户名2','评论内容2','回复内容2'),(183,'2022-02-23 00:48:00',3,3,'用户名3','评论内容3','回复内容3'),(184,'2022-02-23 00:48:00',4,4,'用户名4','评论内容4','回复内容4'),(185,'2022-02-23 00:48:00',5,5,'用户名5','评论内容5','回复内容5'),(186,'2022-02-23 00:48:00',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiudianxinxi`
--

DROP TABLE IF EXISTS `discussjiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiudianxinxi`
--

LOCK TABLES `discussjiudianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiudianxinxi` DISABLE KEYS */;
INSERT INTO `discussjiudianxinxi` VALUES (201,'2022-02-23 00:48:00',1,1,'用户名1','评论内容1','回复内容1'),(202,'2022-02-23 00:48:00',2,2,'用户名2','评论内容2','回复内容2'),(203,'2022-02-23 00:48:01',3,3,'用户名3','评论内容3','回复内容3'),(204,'2022-02-23 00:48:01',4,4,'用户名4','评论内容4','回复内容4'),(205,'2022-02-23 00:48:01',5,5,'用户名5','评论内容5','回复内容5'),(206,'2022-02-23 00:48:01',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstechanxinxi`
--

DROP TABLE IF EXISTS `discusstechanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstechanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='特产信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstechanxinxi`
--

LOCK TABLES `discusstechanxinxi` WRITE;
/*!40000 ALTER TABLE `discusstechanxinxi` DISABLE KEYS */;
INSERT INTO `discusstechanxinxi` VALUES (191,'2022-02-23 00:48:00',1,1,'用户名1','评论内容1','回复内容1'),(192,'2022-02-23 00:48:00',2,2,'用户名2','评论内容2','回复内容2'),(193,'2022-02-23 00:48:00',3,3,'用户名3','评论内容3','回复内容3'),(194,'2022-02-23 00:48:00',4,4,'用户名4','评论内容4','回复内容4'),(195,'2022-02-23 00:48:00',5,5,'用户名5','评论内容5','回复内容5'),(196,'2022-02-23 00:48:00',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstechanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyoujifenxiang`
--

DROP TABLE IF EXISTS `discussyoujifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyoujifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='游记分享评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyoujifenxiang`
--

LOCK TABLES `discussyoujifenxiang` WRITE;
/*!40000 ALTER TABLE `discussyoujifenxiang` DISABLE KEYS */;
INSERT INTO `discussyoujifenxiang` VALUES (211,'2022-02-23 00:48:01',1,1,'用户名1','评论内容1','回复内容1'),(212,'2022-02-23 00:48:01',2,2,'用户名2','评论内容2','回复内容2'),(213,'2022-02-23 00:48:01',3,3,'用户名3','评论内容3','回复内容3'),(214,'2022-02-23 00:48:01',4,4,'用户名4','评论内容4','回复内容4'),(215,'2022-02-23 00:48:01',5,5,'用户名5','评论内容5','回复内容5'),(216,'2022-02-23 00:48:01',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyoujifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailregistercode`
--

DROP TABLE IF EXISTS `emailregistercode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailregistercode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `email` varchar(200) NOT NULL COMMENT '邮箱',
  `role` varchar(200) NOT NULL COMMENT '角色',
  `code` varchar(200) NOT NULL COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='邮箱验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailregistercode`
--

LOCK TABLES `emailregistercode` WRITE;
/*!40000 ALTER TABLE `emailregistercode` DISABLE KEYS */;
INSERT INTO `emailregistercode` VALUES (171,'2022-02-23 00:48:00','邮箱1','角色1','验证码1'),(172,'2022-02-23 00:48:00','邮箱2','角色2','验证码2'),(173,'2022-02-23 00:48:00','邮箱3','角色3','验证码3'),(174,'2022-02-23 00:48:00','邮箱4','角色4','验证码4'),(175,'2022-02-23 00:48:00','邮箱5','角色5','验证码5'),(176,'2022-02-23 00:48:00','邮箱6','角色6','验证码6');
/*!40000 ALTER TABLE `emailregistercode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaimenpiao`
--

DROP TABLE IF EXISTS `goumaimenpiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaimenpiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `piaoshu` int(11) DEFAULT NULL COMMENT '票数',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='购买门票';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaimenpiao`
--

LOCK TABLES `goumaimenpiao` WRITE;
/*!40000 ALTER TABLE `goumaimenpiao` DISABLE KEYS */;
INSERT INTO `goumaimenpiao` VALUES (101,'2022-02-23 00:48:00','景点名称1',1,1,1,'2022-02-23','备注1','账号1','姓名1','手机1','未支付'),(102,'2022-02-23 00:48:00','景点名称2',2,2,2,'2022-02-23','备注2','账号2','姓名2','手机2','未支付'),(103,'2022-02-23 00:48:00','景点名称3',3,3,3,'2022-02-23','备注3','账号3','姓名3','手机3','未支付'),(104,'2022-02-23 00:48:00','景点名称4',4,4,4,'2022-02-23','备注4','账号4','姓名4','手机4','未支付'),(105,'2022-02-23 00:48:00','景点名称5',5,5,5,'2022-02-23','备注5','账号5','姓名5','手机5','未支付'),(106,'2022-02-23 00:48:00','景点名称6',6,6,6,'2022-02-23','备注6','账号6','姓名6','手机6','未支付');
/*!40000 ALTER TABLE `goumaimenpiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaitechan`
--

DROP TABLE IF EXISTS `goumaitechan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaitechan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='购买特产';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaitechan`
--

LOCK TABLES `goumaitechan` WRITE;
/*!40000 ALTER TABLE `goumaitechan` DISABLE KEYS */;
INSERT INTO `goumaitechan` VALUES (111,'2022-02-23 00:48:00','1111111111','特产名称1',1,1,1,'2022-02-23','账号1','姓名1','备注1','手机1','未支付'),(112,'2022-02-23 00:48:00','2222222222','特产名称2',2,2,2,'2022-02-23','账号2','姓名2','备注2','手机2','未支付'),(113,'2022-02-23 00:48:00','3333333333','特产名称3',3,3,3,'2022-02-23','账号3','姓名3','备注3','手机3','未支付'),(114,'2022-02-23 00:48:00','4444444444','特产名称4',4,4,4,'2022-02-23','账号4','姓名4','备注4','手机4','未支付'),(115,'2022-02-23 00:48:00','5555555555','特产名称5',5,5,5,'2022-02-23','账号5','姓名5','备注5','手机5','未支付'),(116,'2022-02-23 00:48:00','6666666666','特产名称6',6,6,6,'2022-02-23','账号6','姓名6','备注6','手机6','未支付');
/*!40000 ALTER TABLE `goumaitechan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guanggaozixun`
--

DROP TABLE IF EXISTS `guanggaozixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guanggaozixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='广告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guanggaozixun`
--

LOCK TABLES `guanggaozixun` WRITE;
/*!40000 ALTER TABLE `guanggaozixun` DISABLE KEYS */;
INSERT INTO `guanggaozixun` VALUES (41,'2022-02-23 00:48:00','标题1','简介1','2022-02-23','upload/guanggaozixun_fengmian1.jpg','内容1','2022-02-23 08:48:00',1),(42,'2022-02-23 00:48:00','标题2','简介2','2022-02-23','upload/guanggaozixun_fengmian2.jpg','内容2','2022-02-23 08:48:00',2),(43,'2022-02-23 00:48:00','标题3','简介3','2022-02-23','upload/guanggaozixun_fengmian3.jpg','内容3','2022-02-23 08:48:00',3),(44,'2022-02-23 00:48:00','标题4','简介4','2022-02-23','upload/guanggaozixun_fengmian4.jpg','内容4','2022-02-23 08:48:00',4),(45,'2022-02-23 00:48:00','标题5','简介5','2022-02-23','upload/guanggaozixun_fengmian5.jpg','内容5','2022-02-23 08:48:00',5),(46,'2022-02-23 00:48:00','标题6','简介6','2022-02-23','upload/guanggaozixun_fengmian6.jpg','内容6','2022-02-23 08:48:00',6);
/*!40000 ALTER TABLE `guanggaozixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenduihuan`
--

DROP TABLE IF EXISTS `jifenduihuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenduihuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duihuanbianhao` varchar(200) DEFAULT NULL COMMENT '兑换编号',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `duihuanriqi` date DEFAULT NULL COMMENT '兑换日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duihuanbianhao` (`duihuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='积分兑换';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenduihuan`
--

LOCK TABLES `jifenduihuan` WRITE;
/*!40000 ALTER TABLE `jifenduihuan` DISABLE KEYS */;
INSERT INTO `jifenduihuan` VALUES (131,'2022-02-23 00:48:00','1111111111','特产名称1',1,'2022-02-23','账号1','姓名1','手机1','是',''),(132,'2022-02-23 00:48:00','2222222222','特产名称2',2,'2022-02-23','账号2','姓名2','手机2','是',''),(133,'2022-02-23 00:48:00','3333333333','特产名称3',3,'2022-02-23','账号3','姓名3','手机3','是',''),(134,'2022-02-23 00:48:00','4444444444','特产名称4',4,'2022-02-23','账号4','姓名4','手机4','是',''),(135,'2022-02-23 00:48:00','5555555555','特产名称5',5,'2022-02-23','账号5','姓名5','手机5','是',''),(136,'2022-02-23 00:48:00','6666666666','特产名称6',6,'2022-02-23','账号6','姓名6','手机6','是','');
/*!40000 ALTER TABLE `jifenduihuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `diqumingcheng` varchar(200) DEFAULT NULL COMMENT '地区名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jingdianxingji` varchar(200) NOT NULL COMMENT '景点星级',
  `jingdiandizhi` varchar(200) NOT NULL COMMENT '景点地址',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `piaoshu` int(11) DEFAULT NULL COMMENT '票数',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianmingcheng` (`jingdianmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (51,'2022-02-23 00:48:00','景点名称1','地区名称1','upload/jingdianxinxi_fengmian1.jpg','A','景点地址1','营业时间1',1,1,'负责人1','13823888881','景点介绍1',1,1,'2022-02-23 08:48:00',1),(52,'2022-02-23 00:48:00','景点名称2','地区名称2','upload/jingdianxinxi_fengmian2.jpg','A','景点地址2','营业时间2',2,2,'负责人2','13823888882','景点介绍2',2,2,'2022-02-23 08:48:00',2),(53,'2022-02-23 00:48:00','景点名称3','地区名称3','upload/jingdianxinxi_fengmian3.jpg','A','景点地址3','营业时间3',3,3,'负责人3','13823888883','景点介绍3',3,3,'2022-02-23 08:48:00',3),(54,'2022-02-23 00:48:00','景点名称4','地区名称4','upload/jingdianxinxi_fengmian4.jpg','A','景点地址4','营业时间4',4,4,'负责人4','13823888884','景点介绍4',4,4,'2022-02-23 08:48:00',4),(55,'2022-02-23 00:48:00','景点名称5','地区名称5','upload/jingdianxinxi_fengmian5.jpg','A','景点地址5','营业时间5',5,5,'负责人5','13823888885','景点介绍5',5,5,'2022-02-23 08:48:00',5),(56,'2022-02-23 00:48:00','景点名称6','地区名称6','upload/jingdianxinxi_fengmian6.jpg','A','景点地址6','营业时间6',6,6,'负责人6','13823888886','景点介绍6',6,6,'2022-02-23 08:48:00',6);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianxinxi`
--

DROP TABLE IF EXISTS `jiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) NOT NULL COMMENT '酒店名称',
  `jiudianleixing` varchar(200) NOT NULL COMMENT '酒店类型',
  `xingji` varchar(200) NOT NULL COMMENT '星级',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiudianxiangqing` longtext COMMENT '酒店详情',
  `jiudiantupian` varchar(200) DEFAULT NULL COMMENT '酒店图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='酒店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianxinxi`
--

LOCK TABLES `jiudianxinxi` WRITE;
/*!40000 ALTER TABLE `jiudianxinxi` DISABLE KEYS */;
INSERT INTO `jiudianxinxi` VALUES (81,'2022-02-23 00:48:00','酒店名称1','民宿','一星','地址1','单人房',1,'13823888881','酒店详情1','upload/jiudianxinxi_jiudiantupian1.jpg',1,1,'2022-02-23 08:48:00',1),(82,'2022-02-23 00:48:00','酒店名称2','民宿','一星','地址2','单人房',2,'13823888882','酒店详情2','upload/jiudianxinxi_jiudiantupian2.jpg',2,2,'2022-02-23 08:48:00',2),(83,'2022-02-23 00:48:00','酒店名称3','民宿','一星','地址3','单人房',3,'13823888883','酒店详情3','upload/jiudianxinxi_jiudiantupian3.jpg',3,3,'2022-02-23 08:48:00',3),(84,'2022-02-23 00:48:00','酒店名称4','民宿','一星','地址4','单人房',4,'13823888884','酒店详情4','upload/jiudianxinxi_jiudiantupian4.jpg',4,4,'2022-02-23 08:48:00',4),(85,'2022-02-23 00:48:00','酒店名称5','民宿','一星','地址5','单人房',5,'13823888885','酒店详情5','upload/jiudianxinxi_jiudiantupian5.jpg',5,5,'2022-02-23 08:48:00',5),(86,'2022-02-23 00:48:00','酒店名称6','民宿','一星','地址6','单人房',6,'13823888886','酒店详情6','upload/jiudianxinxi_jiudiantupian6.jpg',6,6,'2022-02-23 08:48:00',6);
/*!40000 ALTER TABLE `jiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianyuding`
--

DROP TABLE IF EXISTS `jiudianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `yudingriqi` date DEFAULT NULL COMMENT '预订日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='酒店预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianyuding`
--

LOCK TABLES `jiudianyuding` WRITE;
/*!40000 ALTER TABLE `jiudianyuding` DISABLE KEYS */;
INSERT INTO `jiudianyuding` VALUES (121,'2022-02-23 00:48:00','1111111111','酒店名称1',1,1,1,'2022-02-23','备注1','账号1','姓名1','手机1','身份证1','是','','未支付'),(122,'2022-02-23 00:48:00','2222222222','酒店名称2',2,2,2,'2022-02-23','备注2','账号2','姓名2','手机2','身份证2','是','','未支付'),(123,'2022-02-23 00:48:00','3333333333','酒店名称3',3,3,3,'2022-02-23','备注3','账号3','姓名3','手机3','身份证3','是','','未支付'),(124,'2022-02-23 00:48:00','4444444444','酒店名称4',4,4,4,'2022-02-23','备注4','账号4','姓名4','手机4','身份证4','是','','未支付'),(125,'2022-02-23 00:48:00','5555555555','酒店名称5',5,5,5,'2022-02-23','备注5','账号5','姓名5','手机5','身份证5','是','','未支付'),(126,'2022-02-23 00:48:00','6666666666','酒店名称6',6,6,6,'2022-02-23','备注6','账号6','姓名6','手机6','身份证6','是','','未支付');
/*!40000 ALTER TABLE `jiudianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koujianjifen`
--

DROP TABLE IF EXISTS `koujianjifen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koujianjifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `kouchuyuanyin` longtext COMMENT '扣除原因',
  `kouchuriqi` date DEFAULT NULL COMMENT '扣除日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='扣减积分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koujianjifen`
--

LOCK TABLES `koujianjifen` WRITE;
/*!40000 ALTER TABLE `koujianjifen` DISABLE KEYS */;
INSERT INTO `koujianjifen` VALUES (31,'2022-02-23 00:48:00','账号1','姓名1',1,'扣除原因1','2022-02-23'),(32,'2022-02-23 00:48:00','账号2','姓名2',2,'扣除原因2','2022-02-23'),(33,'2022-02-23 00:48:00','账号3','姓名3',3,'扣除原因3','2022-02-23'),(34,'2022-02-23 00:48:00','账号4','姓名4',4,'扣除原因4','2022-02-23'),(35,'2022-02-23 00:48:00','账号5','姓名5',5,'扣除原因5','2022-02-23'),(36,'2022-02-23 00:48:00','账号6','姓名6',6,'扣除原因6','2022-02-23');
/*!40000 ALTER TABLE `koujianjifen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techanxinxi`
--

DROP TABLE IF EXISTS `techanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanmingcheng` varchar(200) NOT NULL COMMENT '特产名称',
  `techanleixing` varchar(200) NOT NULL COMMENT '特产类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `techanxiangqing` longtext COMMENT '特产详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='特产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techanxinxi`
--

LOCK TABLES `techanxinxi` WRITE;
/*!40000 ALTER TABLE `techanxinxi` DISABLE KEYS */;
INSERT INTO `techanxinxi` VALUES (71,'2022-02-23 00:48:00','特产名称1','特产类型1','upload/techanxinxi_tupian1.jpg',1,1,1,'2022-02-23','保质期1','特产详情1',1,1,'2022-02-23 08:48:00',1),(72,'2022-02-23 00:48:00','特产名称2','特产类型2','upload/techanxinxi_tupian2.jpg',2,2,2,'2022-02-23','保质期2','特产详情2',2,2,'2022-02-23 08:48:00',2),(73,'2022-02-23 00:48:00','特产名称3','特产类型3','upload/techanxinxi_tupian3.jpg',3,3,3,'2022-02-23','保质期3','特产详情3',3,3,'2022-02-23 08:48:00',3),(74,'2022-02-23 00:48:00','特产名称4','特产类型4','upload/techanxinxi_tupian4.jpg',4,4,4,'2022-02-23','保质期4','特产详情4',4,4,'2022-02-23 08:48:00',4),(75,'2022-02-23 00:48:00','特产名称5','特产类型5','upload/techanxinxi_tupian5.jpg',5,5,5,'2022-02-23','保质期5','特产详情5',5,5,'2022-02-23 08:48:00',5),(76,'2022-02-23 00:48:00','特产名称6','特产类型6','upload/techanxinxi_tupian6.jpg',6,6,6,'2022-02-23','保质期6','特产详情6',6,6,'2022-02-23 08:48:00',6);
/*!40000 ALTER TABLE `techanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-02-23 00:48:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-02-23 00:48:00','账号1','123456','姓名1',1,'男','13823888881',1,'440300199101010001','upload/yonghu_zhaopian1.jpg','773890001@qq.com'),(12,'2022-02-23 00:48:00','账号2','123456','姓名2',2,'男','13823888882',2,'440300199202020002','upload/yonghu_zhaopian2.jpg','773890002@qq.com'),(13,'2022-02-23 00:48:00','账号3','123456','姓名3',3,'男','13823888883',3,'440300199303030003','upload/yonghu_zhaopian3.jpg','773890003@qq.com'),(14,'2022-02-23 00:48:00','账号4','123456','姓名4',4,'男','13823888884',4,'440300199404040004','upload/yonghu_zhaopian4.jpg','773890004@qq.com'),(15,'2022-02-23 00:48:00','账号5','123456','姓名5',5,'男','13823888885',5,'440300199505050005','upload/yonghu_zhaopian5.jpg','773890005@qq.com'),(16,'2022-02-23 00:48:00','账号6','123456','姓名6',6,'男','13823888886',6,'440300199606060006','upload/yonghu_zhaopian6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuqiandao`
--

DROP TABLE IF EXISTS `yonghuqiandao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='用户签到';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuqiandao`
--

LOCK TABLES `yonghuqiandao` WRITE;
/*!40000 ALTER TABLE `yonghuqiandao` DISABLE KEYS */;
INSERT INTO `yonghuqiandao` VALUES (151,'2022-02-23 00:48:00','账号1','姓名1',1,'签到','2022-02-23 08:48:00','备注1',1,1),(152,'2022-02-23 00:48:00','账号2','姓名2',2,'签到','2022-02-23 08:48:00','备注2',2,2),(153,'2022-02-23 00:48:00','账号3','姓名3',3,'签到','2022-02-23 08:48:00','备注3',3,3),(154,'2022-02-23 00:48:00','账号4','姓名4',4,'签到','2022-02-23 08:48:00','备注4',4,4),(155,'2022-02-23 00:48:00','账号5','姓名5',5,'签到','2022-02-23 08:48:00','备注5',5,5),(156,'2022-02-23 00:48:00','账号6','姓名6',6,'签到','2022-02-23 08:48:00','备注6',6,6);
/*!40000 ALTER TABLE `yonghuqiandao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youjifenxiang`
--

DROP TABLE IF EXISTS `youjifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youjifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `chuxingtianshu` varchar(200) DEFAULT NULL COMMENT '出行天数',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `chuxingluxian` longtext COMMENT '出行路线',
  `youjineirong` longtext COMMENT '游记内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='游记分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youjifenxiang`
--

LOCK TABLES `youjifenxiang` WRITE;
/*!40000 ALTER TABLE `youjifenxiang` DISABLE KEYS */;
INSERT INTO `youjifenxiang` VALUES (141,'2022-02-23 00:48:00','景点名称1','upload/youjifenxiang_jingdiantupian1.jpg','出行天数1','2022-02-23','出行路线1','游记内容1','账号1','姓名1','是','',1,1,'2022-02-23 08:48:00',1),(142,'2022-02-23 00:48:00','景点名称2','upload/youjifenxiang_jingdiantupian2.jpg','出行天数2','2022-02-23','出行路线2','游记内容2','账号2','姓名2','是','',2,2,'2022-02-23 08:48:00',2),(143,'2022-02-23 00:48:00','景点名称3','upload/youjifenxiang_jingdiantupian3.jpg','出行天数3','2022-02-23','出行路线3','游记内容3','账号3','姓名3','是','',3,3,'2022-02-23 08:48:00',3),(144,'2022-02-23 00:48:00','景点名称4','upload/youjifenxiang_jingdiantupian4.jpg','出行天数4','2022-02-23','出行路线4','游记内容4','账号4','姓名4','是','',4,4,'2022-02-23 08:48:00',4),(145,'2022-02-23 00:48:00','景点名称5','upload/youjifenxiang_jingdiantupian5.jpg','出行天数5','2022-02-23','出行路线5','游记内容5','账号5','姓名5','是','',5,5,'2022-02-23 08:48:00',5),(146,'2022-02-23 00:48:00','景点名称6','upload/youjifenxiang_jingdiantupian6.jpg','出行天数6','2022-02-23','出行路线6','游记内容6','账号6','姓名6','是','',6,6,'2022-02-23 08:48:00',6);
/*!40000 ALTER TABLE `youjifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zengjiajifen`
--

DROP TABLE IF EXISTS `zengjiajifen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zengjiajifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `zengjiayuanyin` longtext COMMENT '增加原因',
  `zengjiariqi` date DEFAULT NULL COMMENT '增加日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='增加积分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zengjiajifen`
--

LOCK TABLES `zengjiajifen` WRITE;
/*!40000 ALTER TABLE `zengjiajifen` DISABLE KEYS */;
INSERT INTO `zengjiajifen` VALUES (21,'2022-02-23 00:48:00','账号1','姓名1',1,'增加原因1','2022-02-23'),(22,'2022-02-23 00:48:00','账号2','姓名2',2,'增加原因2','2022-02-23'),(23,'2022-02-23 00:48:00','账号3','姓名3',3,'增加原因3','2022-02-23'),(24,'2022-02-23 00:48:00','账号4','姓名4',4,'增加原因4','2022-02-23'),(25,'2022-02-23 00:48:00','账号5','姓名5',5,'增加原因5','2022-02-23'),(26,'2022-02-23 00:48:00','账号6','姓名6',6,'增加原因6','2022-02-23');
/*!40000 ALTER TABLE `zengjiajifen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 15:26:26
