/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50521
Source Host           : 127.0.0.1:3306
Source Database       : monitor_center

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2016-07-15 18:08:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alerter_info
-- ----------------------------
DROP TABLE IF EXISTS `alerter_info`;
CREATE TABLE `alerter_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `alerter_name` varchar(50) DEFAULT NULL COMMENT '报警器名称',
  `alerter_type` varchar(10) DEFAULT NULL COMMENT '通知类型',
  `alerter_count` int(10) DEFAULT NULL COMMENT '报警次数',
  `alerter_users` varchar(500) DEFAULT NULL COMMENT '通知用户',
  `alerter_msg` int(5) DEFAULT NULL COMMENT '报警信息模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='报警器信息';

-- ----------------------------
-- Records of alerter_info
-- ----------------------------
INSERT INTO `alerter_info` VALUES ('32', '默认报警器', '0|1', '1', '2', '1');

-- ----------------------------
-- Table structure for alerter_record
-- ----------------------------
DROP TABLE IF EXISTS `alerter_record`;
CREATE TABLE `alerter_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ip` varchar(20) DEFAULT NULL COMMENT '报警服务的ip',
  `server_type` varchar(50) DEFAULT NULL COMMENT '报警服务',
  `alert_type` varchar(10) DEFAULT NULL COMMENT 'baojingleixing',
  `alert_time` datetime DEFAULT NULL COMMENT '报警时间',
  `alert_msg` text COMMENT '报警信息',
  `server_id` varchar(20) DEFAULT NULL COMMENT '服务器ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='报警历史表记录信息';

-- ----------------------------
-- Records of alerter_record
-- ----------------------------
INSERT INTO `alerter_record` VALUES ('49', '192.168.15.100', 'PhpLiveService', 'FATALERROR', '2015-11-23 15:35:03', 'Mongo数据库进程消失!', '1');
INSERT INTO `alerter_record` VALUES ('57', '192.168.15.100', 'PhpLiveService', 'FATALERROR', '2016-05-09 15:15:25', 'mysql连接失败...', '1');
INSERT INTO `alerter_record` VALUES ('58', '192.168.15.100', 'PhpLiveService', 'FATALERROR', '2016-05-09 15:07:30', 'mysql连接失败...', '1');
INSERT INTO `alerter_record` VALUES ('59', '192.168.15.100', 'PhpLiveService', 'FATALERROR', '2016-05-09 15:09:35', 'mysql连接失败...', '1');
INSERT INTO `alerter_record` VALUES ('60', '192.168.15.100', 'PhpLiveService', 'FATALERROR', '2016-05-09 15:11:40', 'mysql连接失败...', '1');
INSERT INTO `alerter_record` VALUES ('61', '192.168.15.100', 'PhpLiveService', 'FATALERROR', '2016-05-09 15:15:00', 'mysql连接失败...', '1');

-- ----------------------------
-- Table structure for cpuinfo
-- ----------------------------
DROP TABLE IF EXISTS `cpuinfo`;
CREATE TABLE `cpuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `cpuNo` varchar(50) DEFAULT NULL,
  `cpuMhz` varchar(50) DEFAULT NULL,
  `cpuVendor` varchar(50) DEFAULT NULL,
  `cpuModel` varchar(50) DEFAULT NULL,
  `cpuCacheSize` varchar(50) DEFAULT NULL,
  `cpuTotalCores` varchar(50) DEFAULT NULL,
  `cpuTotalSockets` varchar(50) DEFAULT NULL,
  `cpuCoresPerSocket` varchar(50) DEFAULT NULL,
  `cpuUser` varchar(50) DEFAULT NULL,
  `cpuSys` varchar(50) DEFAULT NULL,
  `cpuWait` varchar(50) DEFAULT NULL,
  `cpuNice` varchar(50) DEFAULT NULL,
  `cpuIdle` varchar(50) DEFAULT NULL,
  `cpuTotal` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cpuinfo
-- ----------------------------
INSERT INTO `cpuinfo` VALUES ('56', '192.168.13.38', '28:D2:44:F6:F3:B6', '1', '2494', 'Intel', 'Core(TM) i5-4200M CPU @ 2.50GHz', '-1', '4', '4', '1', '2.8%', '2.4%', '0.0%', '0.0%', '94.6%', '5.3%', '2016-07-15 17:31:55');
INSERT INTO `cpuinfo` VALUES ('57', '192.168.13.38', '28:D2:44:F6:F3:B6', '2', '2494', 'Intel', 'Core(TM) i5-4200M CPU @ 2.50GHz', '-1', '4', '4', '1', '2.5%', '2.8%', '0.0%', '0.0%', '94.6%', '5.3%', '2016-07-15 17:31:55');
INSERT INTO `cpuinfo` VALUES ('58', '192.168.13.38', '28:D2:44:F6:F3:B6', '3', '2494', 'Intel', 'Core(TM) i5-4200M CPU @ 2.50GHz', '-1', '4', '4', '1', '2.8%', '0.9%', '0.0%', '0.0%', '96.2%', '3.7%', '2016-07-15 17:31:55');
INSERT INTO `cpuinfo` VALUES ('59', '192.168.13.38', '28:D2:44:F6:F3:B6', '4', '2494', 'Intel', 'Core(TM) i5-4200M CPU @ 2.50GHz', '-1', '4', '4', '1', '3.1%', '0.0%', '0.0%', '0.0%', '96.8%', '3.1%', '2016-07-15 17:31:55');

-- ----------------------------
-- Table structure for ip_allowed
-- ----------------------------
DROP TABLE IF EXISTS `ip_allowed`;
CREATE TABLE `ip_allowed` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` int(11) DEFAULT NULL COMMENT 'ip显示类型',
  `start_ip` varchar(20) DEFAULT NULL COMMENT '开始段ip',
  `end_ip` varchar(20) DEFAULT NULL COMMENT '结束段ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='有访问权限的ip表';

-- ----------------------------
-- Records of ip_allowed
-- ----------------------------
INSERT INTO `ip_allowed` VALUES ('18', '2', '192.168.12.1', '192.168.12.255');
INSERT INTO `ip_allowed` VALUES ('19', '2', '192.168.13.1', '192.168.13.255');
INSERT INTO `ip_allowed` VALUES ('20', '2', '192.168.15.1', '192.168.15.255');
INSERT INTO `ip_allowed` VALUES ('21', '2', '192.168.1.10', '192.168.1.20');

-- ----------------------------
-- Table structure for meminfo
-- ----------------------------
DROP TABLE IF EXISTS `meminfo`;
CREATE TABLE `meminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `memtotals` varchar(100) DEFAULT NULL,
  `memused` varchar(100) DEFAULT NULL,
  `memfree` varchar(100) DEFAULT NULL,
  `swaptotals` varchar(100) DEFAULT NULL,
  `swapused` varchar(100) DEFAULT NULL,
  `swapfree` varchar(100) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meminfo
-- ----------------------------
INSERT INTO `meminfo` VALUES ('1', '192.168.13.38', '28:D2:44:F6:F3:B6', '8066080k', '4390884k', '3675196k', '16192544k', '4390884k', '3675196k', '2016-07-15 17:26:16');

-- ----------------------------
-- Table structure for threshold_info
-- ----------------------------
DROP TABLE IF EXISTS `threshold_info`;
CREATE TABLE `threshold_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `threshold_name` varchar(100) DEFAULT NULL COMMENT '阀值名称',
  `threshold_value` varchar(100) DEFAULT NULL COMMENT '阀值指标',
  `threshold_type` varchar(50) DEFAULT NULL COMMENT '阀值所属系统',
  `threshold_alerter_ids` varchar(50) DEFAULT NULL,
  `threshold_set` bigint(20) DEFAULT NULL COMMENT '阀值系统',
  `threshold_show_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8 COMMENT='阀值信息表';

-- ----------------------------
-- Records of threshold_info
-- ----------------------------
INSERT INTO `threshold_info` VALUES ('6', 'CPU', '80', 'AvServerTransmitService', '32', '1', 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('7', 'Disk', '800', 'AvServerTransmitService', '32', '10', '硬盘空间');
INSERT INTO `threshold_info` VALUES ('8', 'MEM', '3500', 'AvServerTransmitService', '32', '10', '内存占用');
INSERT INTO `threshold_info` VALUES ('11', 'UdxConnectionLength', '900', 'AvServerTransmitService', '32', null, '当前的连接列表长度');
INSERT INTO `threshold_info` VALUES ('14', 'RoomCount', '900', 'AvServerTransmitService', '32', null, '房间数量');
INSERT INTO `threshold_info` VALUES ('22', 'CPU', '9999', 'PhpLiveService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('23', 'Disk', '9999', 'PhpLiveService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('24', 'MEM', '9999', 'PhpLiveService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('25', 'SysLoad', '9999', 'PhpLiveService', '32', null, '系统平均负载系数');
INSERT INTO `threshold_info` VALUES ('26', 'NetConnections', '9999', 'PhpLiveService', '32', null, '网络连接数');
INSERT INTO `threshold_info` VALUES ('32', 'CPU', '80', 'AvServerControlService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('33', 'Disk', '4000', 'AvServerControlService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('34', 'MEM', '5000', 'AvServerControlService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('35', 'CreatedRoomCount', '1000', 'AvServerControlService', '32', null, '创建房间的数量');
INSERT INTO `threshold_info` VALUES ('37', 'InputMessages', '100000', 'AvServerControlService', '32', null, '输入消息数量');
INSERT INTO `threshold_info` VALUES ('38', 'OutputMessages', '100000', 'AvServerControlService', '32', null, '输出消息数量');
INSERT INTO `threshold_info` VALUES ('39', 'CPU', '9999', 'ScreenshotService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('40', 'Disk', '9999', 'ScreenshotService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('41', 'MEM', '9999', 'ScreenshotService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('43', 'CPU', '9999', 'TranscodingService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('44', 'Disk', '9999', 'TranscodingService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('45', 'MEM', '9999', 'TranscodingService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('47', 'CPU', '80', 'ImShowLbsService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('48', 'Disk', '900', 'ImShowLbsService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('49', 'MEM', '900', 'ImShowLbsService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('50', 'WorkThread', '900', 'ImShowLbsService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('54', 'CPU', '9999', 'ImShowMdsService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('55', 'Disk', '9999', 'ImShowMdsService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('56', 'MEM', '9999', 'ImShowMdsService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('57', 'WorkThread', '9999', 'ImShowMdsService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('58', 'CPU', '9999', 'ImShowMtsService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('59', 'Disk', '9999', 'ImShowMtsService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('60', 'MEM', '9999', 'ImShowMtsService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('61', 'WorkThread', '9999', 'ImShowMtsService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('69', 'CPU', '9999', 'ImShowTasService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('70', 'Disk', '9999', 'ImShowTasService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('71', 'MEM', '9999', 'ImShowTasService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('72', 'WorkThread', '9999', 'ImShowTasService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('73', 'CPU', '9999', 'ImShowUmsService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('74', 'Disk', '9999', 'ImShowUmsService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('75', 'MEM', '9999', 'ImShowUmsService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('76', 'WorkThread', '9999', 'ImShowUmsService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('77', 'CPU', '9999', 'ImShowPrsService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('78', 'Disk', '9999', 'ImShowPrsService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('79', 'MEM', '9999', 'ImShowPrsService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('80', 'WorkThread', '9999', 'ImShowPrsService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('81', 'CPU', '9999', 'ImShowMssService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('82', 'Disk', '9999', 'ImShowMssService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('83', 'MEM', '9999', 'ImShowMssService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('84', 'WorkThread', '9999', 'ImShowMssService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('100', 'CPU', '9999', 'ImShowHttpProxyService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('101', 'Disk', '9999', 'ImShowHttpProxyService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('102', 'MEM', '9999', 'ImShowHttpProxyService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('103', 'WorkThread', '999', 'ImShowHttpProxyService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('545', 'CPU', '9999', 'ImShowRmsService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('546', 'Disk', '9999', 'ImShowRmsService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('547', 'MEM', '9999', 'ImShowRmsService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('548', 'WorkThread', '9999', 'ImShowRmsService', '32', null, '工作线程');
INSERT INTO `threshold_info` VALUES ('549', 'InputCmds', '9999', 'ImShowRmsService', '32', null, '已收到命令包');
INSERT INTO `threshold_info` VALUES ('550', 'OutputCmds', '9999', 'ImShowRmsService', '32', null, '已响应命令包');
INSERT INTO `threshold_info` VALUES ('551', 'GroupCount', '9999', 'ImShowMdsService', '32', null, '群组数量');
INSERT INTO `threshold_info` VALUES ('553', 'ClientConnectionCount', '9999', 'ImShowMtsService', '32', null, '客户端连接数量');
INSERT INTO `threshold_info` VALUES ('562', 'NetLoad', '1024', 'PhpLiveService', '32', null, '网络流量Mb数');
INSERT INTO `threshold_info` VALUES ('563', 'CPU', '9999', 'PhpManageService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('564', 'Disk', '9999', 'PhpManageService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('565', 'MEM', '9999', 'PhpManageService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('566', 'SysLoad', '9999', 'PhpManageService', '32', null, '系统平均负载系数');
INSERT INTO `threshold_info` VALUES ('567', 'NetConnections', '9999', 'PhpManageService', '32', null, '网络连接数');
INSERT INTO `threshold_info` VALUES ('573', 'NetLoad', '1024', 'PhpManageService', '32', null, '网络流量Mb数');
INSERT INTO `threshold_info` VALUES ('578', 'CPU', '9999', 'PhpVideoService', '32', null, 'CPU占用率');
INSERT INTO `threshold_info` VALUES ('579', 'Disk', '9999', 'PhpVideoService', '32', null, '硬盘空间');
INSERT INTO `threshold_info` VALUES ('580', 'MEM', '9999', 'PhpVideoService', '32', null, '内存占用');
INSERT INTO `threshold_info` VALUES ('581', 'SysLoad', '9999', 'PhpVideoService', '32', null, '系统平均负载系数');
INSERT INTO `threshold_info` VALUES ('582', 'NetConnections', '9999', 'PhpVideoService', '32', null, '网络连接数');
INSERT INTO `threshold_info` VALUES ('588', 'NetLoad', '1024', 'PhpVideoService', '32', null, '网络流量Mb数');
INSERT INTO `threshold_info` VALUES ('589', 'CPU', '100', 'DcUserCenterService', '32', null, 'CPU');
INSERT INTO `threshold_info` VALUES ('590', 'CPU', '100', 'DcPayCenterService', '32', null, 'CPU');
INSERT INTO `threshold_info` VALUES ('609', 'CPU', '100', 'DcPayCenterService', '32', null, 'CPU');
INSERT INTO `threshold_info` VALUES ('610', 'CPU', '100', 'DcPayCenterService', '32', null, 'CPU');

-- ----------------------------
-- Table structure for user_base
-- ----------------------------
DROP TABLE IF EXISTS `user_base`;
CREATE TABLE `user_base` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户名称',
  `user_real_name` varchar(30) DEFAULT NULL COMMENT '用户真实姓名',
  `user_passwd` varchar(50) NOT NULL COMMENT '用户密码',
  `user_mobile` varchar(20) DEFAULT NULL COMMENT '用户手机',
  `user_mail` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `user_status` int(2) NOT NULL COMMENT '用户状态',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user_base
-- ----------------------------
INSERT INTO `user_base` VALUES ('1', 'admin', '超级管理员', '0192023a7bbd73250516f069df18b500', '18500061826', 'zengshuai@ttmv.com', '系统超级管理员', '1', '2015-11-01 11:11:11');
