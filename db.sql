/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixiantougaoxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixiantougaoxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixiantougaoxitong`;

/*Table structure for table `bianji` */

DROP TABLE IF EXISTS `bianji`;

CREATE TABLE `bianji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `bianji_name` varchar(200) DEFAULT NULL COMMENT '编辑姓名  Search',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gaojian_types` int(200) DEFAULT NULL COMMENT '稿件类型 Search',
  `bianji_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `bianji_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `bianji_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `bianji_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='编辑';

/*Data for the table `bianji` */

insert  into `bianji`(`id`,`username`,`password`,`bianji_name`,`sex_types`,`gaojian_types`,`bianji_number`,`bianji_phone`,`bianji_email`,`bianji_photo`,`create_time`) values (1,'333','123456','编辑1',2,1,'410882200011231111','17795544611','1111@qq.com','http://localhost:8080/zaixiantougaoxitong/upload/1620609234890.jpg','2021-05-08 14:17:46'),(2,'444','123456','编辑2',1,2,'410882200011231112','17795544612','2222@qq.com','http://localhost:8080/zaixiantougaoxitong/upload/1620609226475.jpg','2021-05-08 14:18:11');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-08 14:09:42'),(2,'sex_types','性别',2,'女',NULL,'2021-05-08 14:09:42'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-08 14:09:43'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-08 14:09:43'),(5,'gaojian_types','稿件类型名称',1,'类型1',NULL,'2021-05-08 14:09:43'),(6,'gaojian_types','稿件类型名称',2,'类型2',NULL,'2021-05-08 14:09:43'),(7,'zhuangtai_types','稿件状态',1,'未审核',NULL,'2021-05-08 14:09:43'),(8,'zhuangtai_types','稿件状态',2,'初审通过',NULL,'2021-05-08 14:09:43'),(9,'zhuangtai_types','稿件状态',3,'初审拒绝',NULL,'2021-05-08 14:09:43'),(10,'zhuangtai_types','稿件状态',4,'复审通过',NULL,'2021-05-08 14:09:43'),(11,'zhuangtai_types','稿件状态',5,'复审拒绝',NULL,'2021-05-08 14:09:43');

/*Table structure for table `gaojian` */

DROP TABLE IF EXISTS `gaojian`;

CREATE TABLE `gaojian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gaojian_name` varchar(200) DEFAULT NULL COMMENT '稿件标题 Search',
  `gaojian_types` int(200) DEFAULT NULL COMMENT '稿件类型 Search',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `yonghu_types` int(200) DEFAULT NULL COMMENT '上传用户',
  `gaojian_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `chushen_content` text COMMENT '初审结果',
  `fushen_content` text COMMENT '复审结果',
  `zhuangtai_types` int(200) DEFAULT NULL COMMENT '稿件状态 Search',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='稿件信息';

/*Data for the table `gaojian` */

insert  into `gaojian`(`id`,`gaojian_name`,`gaojian_types`,`insert_time`,`yonghu_types`,`gaojian_file`,`chushen_content`,`fushen_content`,`zhuangtai_types`,`create_time`) values (10,'稿件标题1',1,'2021-05-10 15:50:05',1,'http://localhost:8080/zaixiantougaoxitong/upload/1620633004626.xls','初审通过','复审通过',4,NULL),(11,'稿件标题2',2,'2021-05-10 15:53:29',2,'http://localhost:8080/zaixiantougaoxitong/upload/1620633208039.doc','','',1,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/zaixiantougaoxitong/upload/1620624730791.jpg','2021-05-10 13:32:12','<p>公告详情1</p>','2021-05-08 16:33:49');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','cmnmv4aj1bemem1lenl6sby8volva591','2021-05-08 14:15:45','2021-05-10 17:15:27'),(2,1,'333','bianji','用户','37a8h1cnugvbsmk1rgbvllzvgiomwss2','2021-05-08 15:45:26','2021-05-10 16:54:21'),(3,2,'222','yonghu','用户','7vf7ziyzyqoyuwrhx5k432twar706zgz','2021-05-08 16:38:03','2021-05-08 17:38:04'),(4,1,'333','bianji','编辑','9kybvde9jrubm9e6v92lciyc5krbgj24','2021-05-08 16:39:00','2021-05-10 16:58:36'),(5,1,'555','zhuanjia','专家','lvzj0lunef9122bm0pvlqydovlkav4d6','2021-05-08 16:40:12','2021-05-10 17:08:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','11111@qq.com','http://localhost:8080/zaixiantougaoxitong/upload/1620609253333.jpg','2021-05-08 14:31:43'),(2,'222','123456','用户2',1,'410882200011064872','17789944562','22222@qq.com','http://localhost:8080/zaixiantougaoxitong/upload/1620609244337.jpg','2021-05-08 14:31:58');

/*Table structure for table `zhuanjia` */

DROP TABLE IF EXISTS `zhuanjia`;

CREATE TABLE `zhuanjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanjia_name` varchar(200) DEFAULT NULL COMMENT '专家姓名  Search',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gaojian_types` int(200) DEFAULT NULL COMMENT '稿件类型 Search',
  `zhuanjia_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `zhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhuanjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专家';

/*Data for the table `zhuanjia` */

insert  into `zhuanjia`(`id`,`username`,`password`,`zhuanjia_name`,`sex_types`,`gaojian_types`,`zhuanjia_number`,`zhuanjia_phone`,`zhuanjia_email`,`zhuanjia_photo`,`create_time`) values (1,'555','123456','专家1',2,2,'410882200011211131','17789966891','1111@qq.com','http://localhost:8080/zaixiantougaoxitong/upload/1620609214101.jpg','2021-05-08 14:16:47'),(2,'666','123456','专家2',1,2,'410882200011211132','17789966892','2222@qq.com','http://localhost:8080/zaixiantougaoxitong/upload/1620609205326.jpg','2021-05-08 14:17:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
