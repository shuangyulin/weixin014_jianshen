/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmdc11t
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmdc11t` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmdc11t`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmdc11t/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmdc11t/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmdc11t/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjianshenjiaolian` */

DROP TABLE IF EXISTS `discussjianshenjiaolian`;

CREATE TABLE `discussjianshenjiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='健身教练评论表';

/*Data for the table `discussjianshenjiaolian` */

insert  into `discussjianshenjiaolian`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (71,'2021-02-25 11:11:30',1,1,'评论内容1','回复内容1'),(72,'2021-02-25 11:11:30',2,2,'评论内容2','回复内容2'),(73,'2021-02-25 11:11:30',3,3,'评论内容3','回复内容3'),(74,'2021-02-25 11:11:30',4,4,'评论内容4','回复内容4'),(75,'2021-02-25 11:11:30',5,5,'评论内容5','回复内容5'),(76,'2021-02-25 11:11:30',6,6,'评论内容6','回复内容6');

/*Table structure for table `discussjianshenkecheng` */

DROP TABLE IF EXISTS `discussjianshenkecheng`;

CREATE TABLE `discussjianshenkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614224124523 DEFAULT CHARSET=utf8 COMMENT='健身课程评论表';

/*Data for the table `discussjianshenkecheng` */

insert  into `discussjianshenkecheng`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (81,'2021-02-25 11:11:30',1,1,'评论内容1','回复内容1'),(82,'2021-02-25 11:11:30',2,2,'评论内容2','回复内容2'),(83,'2021-02-25 11:11:30',3,3,'评论内容3','回复内容3'),(84,'2021-02-25 11:11:30',4,4,'评论内容4','回复内容4'),(85,'2021-02-25 11:11:30',5,5,'评论内容5','回复内容5'),(86,'2021-02-25 11:11:30',6,6,'评论内容6','回复内容6'),(1614224124522,'2021-02-25 11:35:24',41,1614224100070,'2222','');

/*Table structure for table `jianshenjiaolian` */

DROP TABLE IF EXISTS `jianshenjiaolian`;

CREATE TABLE `jianshenjiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhiyelvli` longtext COMMENT '职业履历',
  `gerenjieshao` longtext COMMENT '个人介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='健身教练';

/*Data for the table `jianshenjiaolian` */

insert  into `jianshenjiaolian`(`id`,`addtime`,`jiaolianxingming`,`xingbie`,`nianling`,`shengao`,`tizhong`,`zhaopian`,`zhiyelvli`,`gerenjieshao`) values (31,'2021-02-25 11:11:30','教练姓名1','男',1,'身高1','体重1','http://localhost:8080/ssmdc11t/upload/jianshenjiaolian_zhaopian1.jpg','职业履历1','个人介绍1'),(32,'2021-02-25 11:11:30','教练姓名2','男',2,'身高2','体重2','http://localhost:8080/ssmdc11t/upload/jianshenjiaolian_zhaopian2.jpg','职业履历2','个人介绍2'),(33,'2021-02-25 11:11:30','教练姓名3','男',3,'身高3','体重3','http://localhost:8080/ssmdc11t/upload/jianshenjiaolian_zhaopian3.jpg','职业履历3','个人介绍3'),(34,'2021-02-25 11:11:30','教练姓名4','男',4,'身高4','体重4','http://localhost:8080/ssmdc11t/upload/jianshenjiaolian_zhaopian4.jpg','职业履历4','个人介绍4'),(35,'2021-02-25 11:11:30','教练姓名5','男',5,'身高5','体重5','http://localhost:8080/ssmdc11t/upload/jianshenjiaolian_zhaopian5.jpg','职业履历5','个人介绍5'),(36,'2021-02-25 11:11:30','教练姓名6','男',6,'身高6','体重6','http://localhost:8080/ssmdc11t/upload/jianshenjiaolian_zhaopian6.jpg','职业履历6','个人介绍6');

/*Table structure for table `jianshenkecheng` */

DROP TABLE IF EXISTS `jianshenkecheng`;

CREATE TABLE `jianshenkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `jianshenleixing` varchar(200) DEFAULT NULL COMMENT '健身类型',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `zongminge` int(11) DEFAULT NULL COMMENT '总名额',
  `shengyuminge` int(11) DEFAULT NULL COMMENT '剩余名额',
  `shangkeshijian` date DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengjiage` int(11) NOT NULL COMMENT '课程价格',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='健身课程';

/*Data for the table `jianshenkecheng` */

insert  into `jianshenkecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`jianshenleixing`,`kechengtupian`,`jiaolianxingming`,`kechengfenlei`,`zongminge`,`shengyuminge`,`shangkeshijian`,`shangkedidian`,`kechengjiage`,`kechengjieshao`,`clicktime`,`clicknum`) values (41,'2021-02-25 11:11:30','课程编号1','课程名称1','xxx类型','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian1.jpg','教练姓名1','团课',100,10,'2021-02-25','上课地点1',100,'<h1>课程介绍1</h1><p>xxxx</p>','2021-02-25 11:36:28',8),(42,'2021-02-25 11:11:30','课程编号2','课程名称2','健身类型2','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian2.jpg','教练姓名2','私教',2,2,'2021-02-25','上课地点2',2,'课程介绍2','2021-02-25 11:11:30',2),(43,'2021-02-25 11:11:30','课程编号3','课程名称3','健身类型3','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian3.jpg','教练姓名3','私教',3,3,'2021-02-25','上课地点3',3,'课程介绍3','2021-02-25 11:11:30',3),(44,'2021-02-25 11:11:30','课程编号4','课程名称4','健身类型4','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian4.jpg','教练姓名4','私教',4,4,'2021-02-25','上课地点4',4,'课程介绍4','2021-02-25 11:11:30',4),(45,'2021-02-25 11:11:30','课程编号5','课程名称5','健身类型5','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian5.jpg','教练姓名5','私教',5,5,'2021-02-25','上课地点5',5,'课程介绍5','2021-02-25 11:17:18',7),(46,'2021-02-25 11:11:30','课程编号6','课程名称6','健身类型6','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian6.jpg','教练姓名6','私教',6,6,'2021-02-25','上课地点6',6,'课程介绍6','2021-02-25 11:35:08',7);

/*Table structure for table `jianshenleixing` */

DROP TABLE IF EXISTS `jianshenleixing`;

CREATE TABLE `jianshenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianshenleixing` varchar(200) DEFAULT NULL COMMENT '健身类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='健身类型';

/*Data for the table `jianshenleixing` */

insert  into `jianshenleixing`(`id`,`addtime`,`jianshenleixing`) values (21,'2021-02-25 11:11:30','xxx类型'),(22,'2021-02-25 11:11:30','健身类型2'),(23,'2021-02-25 11:11:30','健身类型3'),(24,'2021-02-25 11:11:30','健身类型4'),(25,'2021-02-25 11:11:30','健身类型5'),(26,'2021-02-25 11:11:30','健身类型6');

/*Table structure for table `kechengyuyue` */

DROP TABLE IF EXISTS `kechengyuyue`;

CREATE TABLE `kechengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengjiage` varchar(200) DEFAULT NULL COMMENT '课程价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614224139395 DEFAULT CHARSET=utf8 COMMENT='课程预约';

/*Data for the table `kechengyuyue` */

insert  into `kechengyuyue`(`id`,`addtime`,`yuyuebianhao`,`kechengbianhao`,`kechengmingcheng`,`kechengtupian`,`jiaolianxingming`,`kechengfenlei`,`shangkeshijian`,`shangkedidian`,`kechengjiage`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`beizhu`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-02-25 11:11:30','预约编号1','课程编号1','课程名称1','http://localhost:8080/ssmdc11t/upload/kechengyuyue_kechengtupian1.jpg','教练姓名1','课程分类1','上课时间1','上课地点1','课程价格1','用户账号1','用户姓名1','用户手机1','备注1','是','','未支付',1),(52,'2021-02-25 11:11:30','预约编号2','课程编号2','课程名称2','http://localhost:8080/ssmdc11t/upload/kechengyuyue_kechengtupian2.jpg','教练姓名2','课程分类2','上课时间2','上课地点2','课程价格2','用户账号2','用户姓名2','用户手机2','备注2','是','','未支付',2),(53,'2021-02-25 11:11:30','预约编号3','课程编号3','课程名称3','http://localhost:8080/ssmdc11t/upload/kechengyuyue_kechengtupian3.jpg','教练姓名3','课程分类3','上课时间3','上课地点3','课程价格3','用户账号3','用户姓名3','用户手机3','备注3','是','','未支付',3),(54,'2021-02-25 11:11:30','预约编号4','课程编号4','课程名称4','http://localhost:8080/ssmdc11t/upload/kechengyuyue_kechengtupian4.jpg','教练姓名4','课程分类4','上课时间4','上课地点4','课程价格4','用户账号4','用户姓名4','用户手机4','备注4','是','','未支付',4),(55,'2021-02-25 11:11:30','预约编号5','课程编号5','课程名称5','http://localhost:8080/ssmdc11t/upload/kechengyuyue_kechengtupian5.jpg','教练姓名5','课程分类5','上课时间5','上课地点5','课程价格5','用户账号5','用户姓名5','用户手机5','备注5','是','','未支付',5),(56,'2021-02-25 11:11:30','预约编号6','课程编号6','课程名称6','http://localhost:8080/ssmdc11t/upload/kechengyuyue_kechengtupian6.jpg','教练姓名6','课程分类6','上课时间6','上课地点6','课程价格6','用户账号6','用户姓名6','用户手机6','备注6','是','','未支付',6),(1614223036852,'2021-02-25 11:17:16','1614223035505','课程编号5','课程名称5','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian5.jpg','教练姓名5','私教','2021-02-25','上课地点5','5','1','用户姓名1','13823888881','','','','已支付',11),(1614224139394,'2021-02-25 11:35:39','1614224136128','课程编号1','课程名称1','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian1.jpg','教练姓名1','团课','2021-02-25','上课地点1','100','2','xxx用户','13811111111','无','','','已支付',1614224100070);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614224120041 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614224120040,'2021-02-25 11:35:19',1614224100070,41,'jianshenkecheng','课程名称1','http://localhost:8080/ssmdc11t/upload/jianshenkecheng_kechengtupian1.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','wafettc50gqgkdbxd1pdgzo8znjw5zqp','2021-02-25 11:14:04','2021-02-25 12:33:05'),(2,11,'1','yonghu','用户','205lzpb3eijmphig1mxt638ss6s754vw','2021-02-25 11:17:09','2021-02-25 12:18:33'),(3,1614224100070,'2','yonghu','用户','22p5ku0xvc6qsoh1bs4oxp6ixiw24b3n','2021-02-25 11:35:04','2021-02-25 12:35:05');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-25 11:11:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614224100071 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`touxiang`,`yonghushouji`) values (11,'2021-02-25 11:11:30','1','1','用户姓名1','男','http://localhost:8080/ssmdc11t/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-02-25 11:11:30','用户2','123456','用户姓名2','男','http://localhost:8080/ssmdc11t/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-02-25 11:11:30','用户3','123456','用户姓名3','男','http://localhost:8080/ssmdc11t/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-02-25 11:11:30','用户4','123456','用户姓名4','男','http://localhost:8080/ssmdc11t/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-02-25 11:11:30','用户5','123456','用户姓名5','男','http://localhost:8080/ssmdc11t/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-02-25 11:11:30','用户6','123456','用户姓名6','男','http://localhost:8080/ssmdc11t/upload/yonghu_touxiang6.jpg','13823888886'),(1614224100070,'2021-02-25 11:35:00','2','2','xxx用户','女','http://localhost:8080/ssmdc11t/upload/1614224169893.jpg','13811111111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
