/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot3n829
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot3n829` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot3n829`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot3n829/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot3n829/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot3n829/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshiyanjiaoxue` */

DROP TABLE IF EXISTS `discussshiyanjiaoxue`;

CREATE TABLE `discussshiyanjiaoxue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='实验教学评论表';

/*Data for the table `discussshiyanjiaoxue` */

insert  into `discussshiyanjiaoxue`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-16 11:07:43',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshiyanjiaoxue`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-16 11:07:43',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshiyanjiaoxue`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-16 11:07:43',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshiyanjiaoxue`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-16 11:07:43',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshiyanjiaoxue`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-16 11:07:43',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshiyanjiaoxue`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-16 11:07:43',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszaixianxuexi` */

DROP TABLE IF EXISTS `discusszaixianxuexi`;

CREATE TABLE `discusszaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='在线学习评论表';

/*Data for the table `discusszaixianxuexi` */

insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-05-16 11:07:43',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-05-16 11:07:43',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-05-16 11:07:43',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-05-16 11:07:43',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-05-16 11:07:43',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-05-16 11:07:43',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='自由讨论';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (111,'2021-05-16 11:07:43','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (112,'2021-05-16 11:07:43','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (113,'2021-05-16 11:07:43','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (114,'2021-05-16 11:07:43','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (115,'2021-05-16 11:07:43','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (116,'2021-05-16 11:07:43','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`,`youxiang`) values (21,'2021-05-16 11:07:43','1','1','教师姓名1','男','http://localhost:8080/springboot3n829/upload/jiaoshi_touxiang1.jpg','13823888881','773890001@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`,`youxiang`) values (22,'2021-05-16 11:07:43','教师2','123456','教师姓名2','男','http://localhost:8080/springboot3n829/upload/jiaoshi_touxiang2.jpg','13823888882','773890002@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`,`youxiang`) values (23,'2021-05-16 11:07:43','教师3','123456','教师姓名3','男','http://localhost:8080/springboot3n829/upload/jiaoshi_touxiang3.jpg','13823888883','773890003@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`,`youxiang`) values (24,'2021-05-16 11:07:43','教师4','123456','教师姓名4','男','http://localhost:8080/springboot3n829/upload/jiaoshi_touxiang4.jpg','13823888884','773890004@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`,`youxiang`) values (25,'2021-05-16 11:07:43','教师5','123456','教师姓名5','男','http://localhost:8080/springboot3n829/upload/jiaoshi_touxiang5.jpg','13823888885','773890005@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`,`youxiang`) values (26,'2021-05-16 11:07:43','教师6','123456','教师姓名6','男','http://localhost:8080/springboot3n829/upload/jiaoshi_touxiang6.jpg','13823888886','773890006@qq.com');

/*Table structure for table `qicaixinxi` */

DROP TABLE IF EXISTS `qicaixinxi`;

CREATE TABLE `qicaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaimingcheng` varchar(200) NOT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) NOT NULL COMMENT '器材类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `qicaiyongfa` longtext COMMENT '器材用法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='器材信息';

/*Data for the table `qicaixinxi` */

insert  into `qicaixinxi`(`id`,`addtime`,`qicaimingcheng`,`qicaileixing`,`tupian`,`shuliang`,`dengjiriqi`,`zhuyishixiang`,`qicaiyongfa`) values (101,'2021-05-16 11:07:43','器材名称1','器材类型1','http://localhost:8080/springboot3n829/upload/qicaixinxi_tupian1.jpg',1,'2021-05-16','注意事项1','器材用法1');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaimingcheng`,`qicaileixing`,`tupian`,`shuliang`,`dengjiriqi`,`zhuyishixiang`,`qicaiyongfa`) values (102,'2021-05-16 11:07:43','器材名称2','器材类型2','http://localhost:8080/springboot3n829/upload/qicaixinxi_tupian2.jpg',2,'2021-05-16','注意事项2','器材用法2');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaimingcheng`,`qicaileixing`,`tupian`,`shuliang`,`dengjiriqi`,`zhuyishixiang`,`qicaiyongfa`) values (103,'2021-05-16 11:07:43','器材名称3','器材类型3','http://localhost:8080/springboot3n829/upload/qicaixinxi_tupian3.jpg',3,'2021-05-16','注意事项3','器材用法3');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaimingcheng`,`qicaileixing`,`tupian`,`shuliang`,`dengjiriqi`,`zhuyishixiang`,`qicaiyongfa`) values (104,'2021-05-16 11:07:43','器材名称4','器材类型4','http://localhost:8080/springboot3n829/upload/qicaixinxi_tupian4.jpg',4,'2021-05-16','注意事项4','器材用法4');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaimingcheng`,`qicaileixing`,`tupian`,`shuliang`,`dengjiriqi`,`zhuyishixiang`,`qicaiyongfa`) values (105,'2021-05-16 11:07:43','器材名称5','器材类型5','http://localhost:8080/springboot3n829/upload/qicaixinxi_tupian5.jpg',5,'2021-05-16','注意事项5','器材用法5');
insert  into `qicaixinxi`(`id`,`addtime`,`qicaimingcheng`,`qicaileixing`,`tupian`,`shuliang`,`dengjiriqi`,`zhuyishixiang`,`qicaiyongfa`) values (106,'2021-05-16 11:07:43','器材名称6','器材类型6','http://localhost:8080/springboot3n829/upload/qicaixinxi_tupian6.jpg',6,'2021-05-16','注意事项6','器材用法6');

/*Table structure for table `shiyanjiaoxue` */

DROP TABLE IF EXISTS `shiyanjiaoxue`;

CREATE TABLE `shiyanjiaoxue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanmingcheng` varchar(200) DEFAULT NULL COMMENT '实验名称',
  `shiyanleixing` varchar(200) DEFAULT NULL COMMENT '实验类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoxueshipin` varchar(200) DEFAULT NULL COMMENT '教学视频',
  `jiaoxueneirong` longtext COMMENT '教学内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='实验教学';

/*Data for the table `shiyanjiaoxue` */

insert  into `shiyanjiaoxue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`jiaoxueshipin`,`jiaoxueneirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (41,'2021-05-16 11:07:43','实验名称1','实验类型1','http://localhost:8080/springboot3n829/upload/shiyanjiaoxue_tupian1.jpg','','教学内容1','工号1','教师姓名1','2021-05-16 11:07:43');
insert  into `shiyanjiaoxue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`jiaoxueshipin`,`jiaoxueneirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (42,'2021-05-16 11:07:43','实验名称2','实验类型2','http://localhost:8080/springboot3n829/upload/shiyanjiaoxue_tupian2.jpg','','教学内容2','工号2','教师姓名2','2021-05-16 11:07:43');
insert  into `shiyanjiaoxue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`jiaoxueshipin`,`jiaoxueneirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (43,'2021-05-16 11:07:43','实验名称3','实验类型3','http://localhost:8080/springboot3n829/upload/shiyanjiaoxue_tupian3.jpg','','教学内容3','工号3','教师姓名3','2021-05-16 11:07:43');
insert  into `shiyanjiaoxue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`jiaoxueshipin`,`jiaoxueneirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (44,'2021-05-16 11:07:43','实验名称4','实验类型4','http://localhost:8080/springboot3n829/upload/shiyanjiaoxue_tupian4.jpg','','教学内容4','工号4','教师姓名4','2021-05-16 11:07:43');
insert  into `shiyanjiaoxue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`jiaoxueshipin`,`jiaoxueneirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (45,'2021-05-16 11:07:43','实验名称5','实验类型5','http://localhost:8080/springboot3n829/upload/shiyanjiaoxue_tupian5.jpg','','教学内容5','工号5','教师姓名5','2021-05-16 11:07:43');
insert  into `shiyanjiaoxue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`jiaoxueshipin`,`jiaoxueneirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (46,'2021-05-16 11:07:43','实验名称6','实验类型6','http://localhost:8080/springboot3n829/upload/shiyanjiaoxue_tupian6.jpg','','教学内容6','工号6','教师姓名6','2021-05-16 11:07:43');

/*Table structure for table `shiyanpingfen` */

DROP TABLE IF EXISTS `shiyanpingfen`;

CREATE TABLE `shiyanpingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanmingcheng` varchar(200) DEFAULT NULL COMMENT '实验名称',
  `shiyanleixing` varchar(200) DEFAULT NULL COMMENT '实验类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `dianping` longtext COMMENT '点评',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='实验评分';

/*Data for the table `shiyanpingfen` */

insert  into `shiyanpingfen`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`pingfen`,`dianping`,`riqi`,`gonghao`,`jiaoshixingming`) values (91,'2021-05-16 11:07:43','实验名称1','实验类型1','学号1','学生姓名1','班级1','专业1','评分1','点评1','2021-05-16','工号1','教师姓名1');
insert  into `shiyanpingfen`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`pingfen`,`dianping`,`riqi`,`gonghao`,`jiaoshixingming`) values (92,'2021-05-16 11:07:43','实验名称2','实验类型2','学号2','学生姓名2','班级2','专业2','评分2','点评2','2021-05-16','工号2','教师姓名2');
insert  into `shiyanpingfen`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`pingfen`,`dianping`,`riqi`,`gonghao`,`jiaoshixingming`) values (93,'2021-05-16 11:07:43','实验名称3','实验类型3','学号3','学生姓名3','班级3','专业3','评分3','点评3','2021-05-16','工号3','教师姓名3');
insert  into `shiyanpingfen`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`pingfen`,`dianping`,`riqi`,`gonghao`,`jiaoshixingming`) values (94,'2021-05-16 11:07:43','实验名称4','实验类型4','学号4','学生姓名4','班级4','专业4','评分4','点评4','2021-05-16','工号4','教师姓名4');
insert  into `shiyanpingfen`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`pingfen`,`dianping`,`riqi`,`gonghao`,`jiaoshixingming`) values (95,'2021-05-16 11:07:43','实验名称5','实验类型5','学号5','学生姓名5','班级5','专业5','评分5','点评5','2021-05-16','工号5','教师姓名5');
insert  into `shiyanpingfen`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`pingfen`,`dianping`,`riqi`,`gonghao`,`jiaoshixingming`) values (96,'2021-05-16 11:07:43','实验名称6','实验类型6','学号6','学生姓名6','班级6','专业6','评分6','点评6','2021-05-16','工号6','教师姓名6');

/*Table structure for table `shiyanxinxi` */

DROP TABLE IF EXISTS `shiyanxinxi`;

CREATE TABLE `shiyanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanmingcheng` varchar(200) NOT NULL COMMENT '实验名称',
  `shiyanleixing` varchar(200) NOT NULL COMMENT '实验类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyandidian` varchar(200) DEFAULT NULL COMMENT '实验地点',
  `shiyanshijian` date DEFAULT NULL COMMENT '实验时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shiyanneirong` longtext COMMENT '实验内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='实验信息';

/*Data for the table `shiyanxinxi` */

insert  into `shiyanxinxi`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`shiyandidian`,`shiyanshijian`,`gonghao`,`jiaoshixingming`,`shiyanneirong`) values (61,'2021-05-16 11:07:43','实验名称1','实验类型1','http://localhost:8080/springboot3n829/upload/shiyanxinxi_tupian1.jpg','实验地点1','2021-05-16','工号1','教师姓名1','实验内容1');
insert  into `shiyanxinxi`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`shiyandidian`,`shiyanshijian`,`gonghao`,`jiaoshixingming`,`shiyanneirong`) values (62,'2021-05-16 11:07:43','实验名称2','实验类型2','http://localhost:8080/springboot3n829/upload/shiyanxinxi_tupian2.jpg','实验地点2','2021-05-16','工号2','教师姓名2','实验内容2');
insert  into `shiyanxinxi`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`shiyandidian`,`shiyanshijian`,`gonghao`,`jiaoshixingming`,`shiyanneirong`) values (63,'2021-05-16 11:07:43','实验名称3','实验类型3','http://localhost:8080/springboot3n829/upload/shiyanxinxi_tupian3.jpg','实验地点3','2021-05-16','工号3','教师姓名3','实验内容3');
insert  into `shiyanxinxi`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`shiyandidian`,`shiyanshijian`,`gonghao`,`jiaoshixingming`,`shiyanneirong`) values (64,'2021-05-16 11:07:43','实验名称4','实验类型4','http://localhost:8080/springboot3n829/upload/shiyanxinxi_tupian4.jpg','实验地点4','2021-05-16','工号4','教师姓名4','实验内容4');
insert  into `shiyanxinxi`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`shiyandidian`,`shiyanshijian`,`gonghao`,`jiaoshixingming`,`shiyanneirong`) values (65,'2021-05-16 11:07:43','实验名称5','实验类型5','http://localhost:8080/springboot3n829/upload/shiyanxinxi_tupian5.jpg','实验地点5','2021-05-16','工号5','教师姓名5','实验内容5');
insert  into `shiyanxinxi`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`tupian`,`shiyandidian`,`shiyanshijian`,`gonghao`,`jiaoshixingming`,`shiyanneirong`) values (66,'2021-05-16 11:07:43','实验名称6','实验类型6','http://localhost:8080/springboot3n829/upload/shiyanxinxi_tupian6.jpg','实验地点6','2021-05-16','工号6','教师姓名6','实验内容6');

/*Table structure for table `shiyanyuan` */

DROP TABLE IF EXISTS `shiyanyuan`;

CREATE TABLE `shiyanyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='实验员';

/*Data for the table `shiyanyuan` */

insert  into `shiyanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (31,'2021-05-16 11:07:43','1','1','姓名1','男','http://localhost:8080/springboot3n829/upload/shiyanyuan_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `shiyanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (32,'2021-05-16 11:07:43','实验员2','123456','姓名2','男','http://localhost:8080/springboot3n829/upload/shiyanyuan_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `shiyanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (33,'2021-05-16 11:07:43','实验员3','123456','姓名3','男','http://localhost:8080/springboot3n829/upload/shiyanyuan_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `shiyanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (34,'2021-05-16 11:07:43','实验员4','123456','姓名4','男','http://localhost:8080/springboot3n829/upload/shiyanyuan_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `shiyanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (35,'2021-05-16 11:07:43','实验员5','123456','姓名5','男','http://localhost:8080/springboot3n829/upload/shiyanyuan_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `shiyanyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (36,'2021-05-16 11:07:43','实验员6','123456','姓名6','男','http://localhost:8080/springboot3n829/upload/shiyanyuan_touxiang6.jpg','773890006@qq.com','13823888886');

/*Table structure for table `shiyanyuyue` */

DROP TABLE IF EXISTS `shiyanyuyue`;

CREATE TABLE `shiyanyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanmingcheng` varchar(200) DEFAULT NULL COMMENT '实验名称',
  `shiyanleixing` varchar(200) DEFAULT NULL COMMENT '实验类型',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `yuyueneirong` varchar(200) DEFAULT NULL COMMENT '预约内容',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='实验预约';

/*Data for the table `shiyanyuyue` */

insert  into `shiyanyuyue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`sfsh`,`shhf`) values (71,'2021-05-16 11:07:43','实验名称1','实验类型1','工号1','教师姓名1','预约内容1','2021-05-16 11:07:43','学号1','学生姓名1','班级1','专业1','是','');
insert  into `shiyanyuyue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`sfsh`,`shhf`) values (72,'2021-05-16 11:07:43','实验名称2','实验类型2','工号2','教师姓名2','预约内容2','2021-05-16 11:07:43','学号2','学生姓名2','班级2','专业2','是','');
insert  into `shiyanyuyue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`sfsh`,`shhf`) values (73,'2021-05-16 11:07:43','实验名称3','实验类型3','工号3','教师姓名3','预约内容3','2021-05-16 11:07:43','学号3','学生姓名3','班级3','专业3','是','');
insert  into `shiyanyuyue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`sfsh`,`shhf`) values (74,'2021-05-16 11:07:43','实验名称4','实验类型4','工号4','教师姓名4','预约内容4','2021-05-16 11:07:43','学号4','学生姓名4','班级4','专业4','是','');
insert  into `shiyanyuyue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`sfsh`,`shhf`) values (75,'2021-05-16 11:07:43','实验名称5','实验类型5','工号5','教师姓名5','预约内容5','2021-05-16 11:07:43','学号5','学生姓名5','班级5','专业5','是','');
insert  into `shiyanyuyue`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`sfsh`,`shhf`) values (76,'2021-05-16 11:07:43','实验名称6','实验类型6','工号6','教师姓名6','预约内容6','2021-05-16 11:07:43','学号6','学生姓名6','班级6','专业6','是','');

/*Table structure for table `shiyanzhidao` */

DROP TABLE IF EXISTS `shiyanzhidao`;

CREATE TABLE `shiyanzhidao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanmingcheng` varchar(200) DEFAULT NULL COMMENT '实验名称',
  `shiyanleixing` varchar(200) DEFAULT NULL COMMENT '实验类型',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhidaoneirong` longtext COMMENT '指导内容',
  `shiyanriqi` date DEFAULT NULL COMMENT '实验日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='实验指导';

/*Data for the table `shiyanzhidao` */

insert  into `shiyanzhidao`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`zhidaoneirong`,`shiyanriqi`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`zhanghao`) values (81,'2021-05-16 11:07:43','实验名称1','实验类型1','工号1','教师姓名1','指导内容1','2021-05-16','学号1','学生姓名1','班级1','专业1','账号1');
insert  into `shiyanzhidao`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`zhidaoneirong`,`shiyanriqi`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`zhanghao`) values (82,'2021-05-16 11:07:43','实验名称2','实验类型2','工号2','教师姓名2','指导内容2','2021-05-16','学号2','学生姓名2','班级2','专业2','账号2');
insert  into `shiyanzhidao`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`zhidaoneirong`,`shiyanriqi`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`zhanghao`) values (83,'2021-05-16 11:07:43','实验名称3','实验类型3','工号3','教师姓名3','指导内容3','2021-05-16','学号3','学生姓名3','班级3','专业3','账号3');
insert  into `shiyanzhidao`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`zhidaoneirong`,`shiyanriqi`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`zhanghao`) values (84,'2021-05-16 11:07:43','实验名称4','实验类型4','工号4','教师姓名4','指导内容4','2021-05-16','学号4','学生姓名4','班级4','专业4','账号4');
insert  into `shiyanzhidao`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`zhidaoneirong`,`shiyanriqi`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`zhanghao`) values (85,'2021-05-16 11:07:43','实验名称5','实验类型5','工号5','教师姓名5','指导内容5','2021-05-16','学号5','学生姓名5','班级5','专业5','账号5');
insert  into `shiyanzhidao`(`id`,`addtime`,`shiyanmingcheng`,`shiyanleixing`,`gonghao`,`jiaoshixingming`,`zhidaoneirong`,`shiyanriqi`,`xuehao`,`xueshengxingming`,`banji`,`zhuanye`,`zhanghao`) values (86,'2021-05-16 11:07:43','实验名称6','实验类型6','工号6','教师姓名6','指导内容6','2021-05-16','学号6','学生姓名6','班级6','专业6','账号6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','5up4z5j4ua0i4p2ybazi3a8yv8emapwh','2021-05-16 11:10:20','2021-05-16 12:10:20');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','xuesheng','学生','56g27f9sfy3o5l58ck8xcpg34lmt0sof','2021-05-16 11:10:26','2021-05-16 12:10:27');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-16 11:07:43');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`zhuanye`,`youxiang`,`shouji`) values (11,'2021-05-16 11:07:43','1','1','学生姓名1','男','http://localhost:8080/springboot3n829/upload/xuesheng_touxiang1.jpg','班级1','专业1','773890001@qq.com','13823888881');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`zhuanye`,`youxiang`,`shouji`) values (12,'2021-05-16 11:07:43','学生2','123456','学生姓名2','男','http://localhost:8080/springboot3n829/upload/xuesheng_touxiang2.jpg','班级2','专业2','773890002@qq.com','13823888882');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`zhuanye`,`youxiang`,`shouji`) values (13,'2021-05-16 11:07:43','学生3','123456','学生姓名3','男','http://localhost:8080/springboot3n829/upload/xuesheng_touxiang3.jpg','班级3','专业3','773890003@qq.com','13823888883');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`zhuanye`,`youxiang`,`shouji`) values (14,'2021-05-16 11:07:43','学生4','123456','学生姓名4','男','http://localhost:8080/springboot3n829/upload/xuesheng_touxiang4.jpg','班级4','专业4','773890004@qq.com','13823888884');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`zhuanye`,`youxiang`,`shouji`) values (15,'2021-05-16 11:07:43','学生5','123456','学生姓名5','男','http://localhost:8080/springboot3n829/upload/xuesheng_touxiang5.jpg','班级5','专业5','773890005@qq.com','13823888885');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`zhuanye`,`youxiang`,`shouji`) values (16,'2021-05-16 11:07:43','学生6','123456','学生姓名6','男','http://localhost:8080/springboot3n829/upload/xuesheng_touxiang6.jpg','班级6','专业6','773890006@qq.com','13823888886');

/*Table structure for table `zaixianxuexi` */

DROP TABLE IF EXISTS `zaixianxuexi`;

CREATE TABLE `zaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoxueshipin` varchar(200) DEFAULT NULL COMMENT '教学视频',
  `xuexineirong` longtext COMMENT '学习内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线学习';

/*Data for the table `zaixianxuexi` */

insert  into `zaixianxuexi`(`id`,`addtime`,`mingcheng`,`tupian`,`jiaoxueshipin`,`xuexineirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (51,'2021-05-16 11:07:43','名称1','http://localhost:8080/springboot3n829/upload/zaixianxuexi_tupian1.jpg','','学习内容1','工号1','教师姓名1','2021-05-16 11:07:43');
insert  into `zaixianxuexi`(`id`,`addtime`,`mingcheng`,`tupian`,`jiaoxueshipin`,`xuexineirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (52,'2021-05-16 11:07:43','名称2','http://localhost:8080/springboot3n829/upload/zaixianxuexi_tupian2.jpg','','学习内容2','工号2','教师姓名2','2021-05-16 11:07:43');
insert  into `zaixianxuexi`(`id`,`addtime`,`mingcheng`,`tupian`,`jiaoxueshipin`,`xuexineirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (53,'2021-05-16 11:07:43','名称3','http://localhost:8080/springboot3n829/upload/zaixianxuexi_tupian3.jpg','','学习内容3','工号3','教师姓名3','2021-05-16 11:07:43');
insert  into `zaixianxuexi`(`id`,`addtime`,`mingcheng`,`tupian`,`jiaoxueshipin`,`xuexineirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (54,'2021-05-16 11:07:43','名称4','http://localhost:8080/springboot3n829/upload/zaixianxuexi_tupian4.jpg','','学习内容4','工号4','教师姓名4','2021-05-16 11:07:43');
insert  into `zaixianxuexi`(`id`,`addtime`,`mingcheng`,`tupian`,`jiaoxueshipin`,`xuexineirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (55,'2021-05-16 11:07:43','名称5','http://localhost:8080/springboot3n829/upload/zaixianxuexi_tupian5.jpg','','学习内容5','工号5','教师姓名5','2021-05-16 11:07:43');
insert  into `zaixianxuexi`(`id`,`addtime`,`mingcheng`,`tupian`,`jiaoxueshipin`,`xuexineirong`,`gonghao`,`jiaoshixingming`,`fabushijian`) values (56,'2021-05-16 11:07:43','名称6','http://localhost:8080/springboot3n829/upload/zaixianxuexi_tupian6.jpg','','学习内容6','工号6','教师姓名6','2021-05-16 11:07:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
