-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboota53y0
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboota53y0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboota53y0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboota53y0/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiziliao`
--

DROP TABLE IF EXISTS `discussxuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349158511 DEFAULT CHARSET=utf8 COMMENT='学习资料评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiziliao`
--

LOCK TABLES `discussxuexiziliao` WRITE;
/*!40000 ALTER TABLE `discussxuexiziliao` DISABLE KEYS */;
INSERT INTO `discussxuexiziliao` VALUES (111,'2021-02-26 14:03:29',1,1,'评论内容1','回复内容1'),(112,'2021-02-26 14:03:29',2,2,'评论内容2','回复内容2'),(113,'2021-02-26 14:03:29',3,3,'评论内容3','回复内容3'),(114,'2021-02-26 14:03:29',4,4,'评论内容4','回复内容4'),(115,'2021-02-26 14:03:29',5,5,'评论内容5','回复内容5'),(116,'2021-02-26 14:03:29',6,6,'评论内容6','回复内容6'),(1614349158510,'2021-02-26 14:19:18',31,1614349089542,'222222','3333');
/*!40000 ALTER TABLE `discussxuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348940829 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1614348940828,'2021-02-26 14:15:40','语文测试题',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349012253 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1614348969104,'2021-02-26 14:16:08',1614348940828,'语文测试题','1111','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.1\",\"code\":\"B\"},{\"text\":\"C.2\",\"code\":\"C\"},{\"text\":\"D.1\",\"code\":\"D\"}]',20,'B','11',0,1),(1614348995080,'2021-02-26 14:16:34',1614348940828,'语文测试题','222','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.1\",\"code\":\"C\"},{\"text\":\"D.1\",\"code\":\"D\"}]',20,'A,B,C,D','1111',1,2),(1614349003608,'2021-02-26 14:16:42',1614348940828,'语文测试题','2222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','11',2,1),(1614349012252,'2021-02-26 14:16:51',1614348940828,'语文测试题','2222','[]',20,'2','1111',3,1);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349218974 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1614349210148,'2021-02-26 14:20:09',1614349089542,NULL,1614348940828,'语文测试题',1614349012252,'2222','[]',20,'2','1111',20,'2'),(1614349213575,'2021-02-26 14:20:12',1614349089542,NULL,1614348940828,'语文测试题',1614349003608,'2222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','11',20,'A'),(1614349215272,'2021-02-26 14:20:15',1614349089542,NULL,1614348940828,'语文测试题',1614348969104,'1111','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.1\",\"code\":\"B\"},{\"text\":\"C.2\",\"code\":\"C\"},{\"text\":\"D.1\",\"code\":\"D\"}]',20,'B','11',20,'B'),(1614349218973,'2021-02-26 14:20:18',1614349089542,NULL,1614348940828,'语文测试题',1614348995080,'222','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.1\",\"code\":\"C\"},{\"text\":\"D.1\",\"code\":\"D\"}]',20,'A,B,C,D','1111',0,'B,C');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349197443 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (41,'2021-02-26 14:03:29','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-02-26 14:03:29','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(43,'2021-02-26 14:03:29','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(44,'2021-02-26 14:03:29','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-02-26 14:03:29','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-02-26 14:03:29','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614349191006,'2021-02-26 14:19:50','22222','<p>用户可以在这里发布信息用于彼此之间进行交流讨论</p>',0,1614349089542,'001','开放'),(1614349197442,'2021-02-26 14:19:57',NULL,'22222',1614349191006,1614349089542,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349235393 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-02-26 14:03:29',1,'用户名1','留言内容1','回复内容1'),(102,'2021-02-26 14:03:29',2,'用户名2','留言内容2','回复内容2'),(103,'2021-02-26 14:03:29',3,'用户名3','留言内容3','回复内容3'),(104,'2021-02-26 14:03:29',4,'用户名4','留言内容4','回复内容4'),(105,'2021-02-26 14:03:29',5,'用户名5','留言内容5','回复内容5'),(106,'2021-02-26 14:03:29',6,'用户名6','留言内容6','回复内容6'),(1614349235392,'2021-02-26 14:20:35',1614349089542,'001','有什么问题可以这里给管理留言反馈','2222222');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-02-26 14:03:29','公告信息','简介11211221','http://localhost:8080/springboota53y0/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/springboota53y0/upload/1614349052781.jpg\"></p><p>这里可以发布一些弓信息内容1</p>'),(92,'2021-02-26 14:03:29','标题2','简介2','http://localhost:8080/springboota53y0/upload/news_picture2.jpg','内容2'),(93,'2021-02-26 14:03:29','标题3','简介3','http://localhost:8080/springboota53y0/upload/news_picture3.jpg','内容3'),(94,'2021-02-26 14:03:29','标题4','简介4','http://localhost:8080/springboota53y0/upload/news_picture4.jpg','内容4'),(95,'2021-02-26 14:03:29','标题5','简介5','http://localhost:8080/springboota53y0/upload/news_picture5.jpg','内容5'),(96,'2021-02-26 14:03:29','标题6','简介6','http://localhost:8080/springboota53y0/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349145620 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614349145619,'2021-02-26 14:19:04',1614349089542,31,'xuexiziliao','你的选择就是你的世界','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','qlx8oukt1ujlkxenxmabwpx0qrpvtu1j','2021-02-26 14:09:59','2021-02-26 07:21:23'),(2,11,'1','xueyuan','学员','t0qiwqrirm9kyns3beg1dd31k0j87w6f','2021-02-26 14:10:15','2021-02-26 07:10:39'),(3,1614349089542,'001','xueyuan','学员','ghxiofdranoqsn5791xf7sc4pid8qnyo','2021-02-26 14:18:17','2021-02-26 07:22:06');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-26 14:03:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziliao`
--

DROP TABLE IF EXISTS `xuexiziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `ziliaoleixing` varchar(200) DEFAULT NULL COMMENT '资料类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ziliaowenjian` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `jiaoxueshipin` varchar(200) DEFAULT NULL COMMENT '教学视频',
  `ziliaoxiangqing` longtext COMMENT '资料详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学习资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziliao`
--

LOCK TABLES `xuexiziliao` WRITE;
/*!40000 ALTER TABLE `xuexiziliao` DISABLE KEYS */;
INSERT INTO `xuexiziliao` VALUES (31,'2021-02-26 14:03:29','你的选择就是你的世界','语文资料','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian1.jpg','http://localhost:8080/springboota53y0/upload/1614348862295.doc','http://localhost:8080/springboota53y0/upload/1614348874880.mp4','<p><img src=\"http://localhost:8080/springboota53y0/upload/1614348895157.jpg\"></p><p>这里可以发布一些资料想起，可以图片文字一起描述，这里的内容都是用于测试的。可以自行添加修删除的</p>','2021-02-25'),(32,'2021-02-26 14:03:29','资料名称2','资料类型2','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian2.jpg','','','资料详情2','2021-02-26'),(33,'2021-02-26 14:03:29','资料名称3','资料类型3','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian3.jpg','','','资料详情3','2021-02-26'),(34,'2021-02-26 14:03:29','资料名称4','资料类型4','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian4.jpg','','','资料详情4','2021-02-26'),(35,'2021-02-26 14:03:29','资料名称5','资料类型5','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian5.jpg','','','资料详情5','2021-02-26'),(36,'2021-02-26 14:03:29','资料名称6','资料类型6','http://localhost:8080/springboota53y0/upload/xuexiziliao_tupian6.jpg','','','资料详情6','2021-02-26');
/*!40000 ALTER TABLE `xuexiziliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuan`
--

DROP TABLE IF EXISTS `xueyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349089543 DEFAULT CHARSET=utf8 COMMENT='学员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuan`
--

LOCK TABLES `xueyuan` WRITE;
/*!40000 ALTER TABLE `xueyuan` DISABLE KEYS */;
INSERT INTO `xueyuan` VALUES (11,'2021-02-26 14:03:29','1','1','姓名1','男','http://localhost:8080/springboota53y0/upload/xueyuan_touxiang1.jpg','773890001@qq.com','13823888881'),(12,'2021-02-26 14:03:29','学员2','123456','姓名2','男','http://localhost:8080/springboota53y0/upload/xueyuan_touxiang2.jpg','773890002@qq.com','13823888882'),(13,'2021-02-26 14:03:29','学员3','123456','姓名3','男','http://localhost:8080/springboota53y0/upload/xueyuan_touxiang3.jpg','773890003@qq.com','13823888883'),(14,'2021-02-26 14:03:29','学员4','123456','姓名4','男','http://localhost:8080/springboota53y0/upload/xueyuan_touxiang4.jpg','773890004@qq.com','13823888884'),(15,'2021-02-26 14:03:29','学员5','123456','姓名5','男','http://localhost:8080/springboota53y0/upload/xueyuan_touxiang5.jpg','773890005@qq.com','13823888885'),(16,'2021-02-26 14:03:29','学员6','123456','姓名6','男','http://localhost:8080/springboota53y0/upload/xueyuan_touxiang6.jpg','773890006@qq.com','13823888886'),(1614349089542,'2021-02-26 14:18:09','001','001','李铭','男','http://localhost:8080/springboota53y0/upload/1614349116895.png','12121@163.com','15214121411');
/*!40000 ALTER TABLE `xueyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoleixing`
--

DROP TABLE IF EXISTS `ziliaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaoleixing` varchar(200) NOT NULL COMMENT '资料类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='资料类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoleixing`
--

LOCK TABLES `ziliaoleixing` WRITE;
/*!40000 ALTER TABLE `ziliaoleixing` DISABLE KEYS */;
INSERT INTO `ziliaoleixing` VALUES (21,'2021-02-26 14:03:29','语文资料'),(22,'2021-02-26 14:03:29','数学资料'),(23,'2021-02-26 14:03:29','资料类型3'),(24,'2021-02-26 14:03:29','资料类型4'),(25,'2021-02-26 14:03:29','资料类型5'),(26,'2021-02-26 14:03:29','资料类型6');
/*!40000 ALTER TABLE `ziliaoleixing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27  9:33:42
