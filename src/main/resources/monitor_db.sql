/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : monitor_db

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2016-07-23 17:26:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biosinfo
-- ----------------------------
DROP TABLE IF EXISTS `biosinfo`;
CREATE TABLE `biosinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `BIOSVersion` varchar(100) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biosinfo
-- ----------------------------
INSERT INTO `biosinfo` VALUES ('4', '192.168.31.213', '50:7B:9D:77:F0:62', 'LENOVO', 'InsydeH2O Version 05.05.260KCN23WW', '{\"LENOVO - 1\",\"InsydeH2O Version 05.05.260KCN23WW\",\"InsydeH2O Version 05.05.260KCN23WW\"}', '2016-07-23 17:19:31');
INSERT INTO `biosinfo` VALUES ('5', '169.254.139.125', '50:7B:9D:77:F0:62', 'LENOVO', 'InsydeH2O Version 05.05.260KCN23WW', '{\"LENOVO - 1\",\"InsydeH2O Version 05.05.260KCN23WW\",\"InsydeH2O Version 05.05.260KCN23WW\"}', '2016-07-23 17:18:31');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cpuinfo
-- ----------------------------
INSERT INTO `cpuinfo` VALUES ('84', '192.168.31.213', '50:7B:9D:77:F0:62', '1', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.9%', '2.5%', '0.0%', '0.0%', '95.5%', '4.4%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('85', '192.168.31.213', '50:7B:9D:77:F0:62', '2', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.6%', '1.4%', '0.0%', '0.0%', '97.9%', '2.0%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('86', '192.168.31.213', '50:7B:9D:77:F0:62', '3', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.8%', '1.4%', '0.0%', '0.0%', '96.7%', '3.2%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('87', '192.168.31.213', '50:7B:9D:77:F0:62', '4', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.9%', '0.7%', '0.0%', '0.0%', '97.3%', '2.6%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('88', '192.168.31.213', '50:7B:9D:77:F0:62', '5', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.3%', '0.9%', '0.0%', '0.0%', '97.7%', '2.2%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('89', '192.168.31.213', '50:7B:9D:77:F0:62', '6', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.7%', '0.8%', '0.0%', '0.0%', '98.3%', '1.6%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('90', '192.168.31.213', '50:7B:9D:77:F0:62', '7', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '2.1%', '0.8%', '0.0%', '0.0%', '96.9%', '3.0%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('91', '192.168.31.213', '50:7B:9D:77:F0:62', '8', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.7%', '0.5%', '0.0%', '0.0%', '98.6%', '1.3%', '2016-07-23 17:19:30');
INSERT INTO `cpuinfo` VALUES ('92', '169.254.139.125', '50:7B:9D:77:F0:62', '1', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.9%', '2.2%', '0.0%', '0.0%', '95.7%', '4.2%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('93', '169.254.139.125', '50:7B:9D:77:F0:62', '2', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.6%', '1.2%', '0.0%', '0.0%', '97.0%', '2.9%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('94', '169.254.139.125', '50:7B:9D:77:F0:62', '3', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.9%', '1.5%', '0.0%', '0.0%', '97.4%', '2.5%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('95', '169.254.139.125', '50:7B:9D:77:F0:62', '4', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.6%', '0.9%', '0.0%', '0.0%', '98.4%', '1.5%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('96', '169.254.139.125', '50:7B:9D:77:F0:62', '5', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '2.5%', '1.1%', '0.0%', '0.0%', '96.3%', '3.6%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('97', '169.254.139.125', '50:7B:9D:77:F0:62', '6', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '1.5%', '0.8%', '0.0%', '0.0%', '97.6%', '2.3%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('98', '169.254.139.125', '50:7B:9D:77:F0:62', '7', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '2.1%', '0.7%', '0.0%', '0.0%', '97.0%', '2.9%', '2016-07-23 17:18:30');
INSERT INTO `cpuinfo` VALUES ('99', '169.254.139.125', '50:7B:9D:77:F0:62', '8', '2592', 'Intel', 'Core(TM) i7-6700HQ CPU @ 2.60GHz', '-1', '8', '8', '1', '0.7%', '0.6%', '0.0%', '0.0%', '98.5%', '1.4%', '2016-07-23 17:18:30');

-- ----------------------------
-- Table structure for diskinfo
-- ----------------------------
DROP TABLE IF EXISTS `diskinfo`;
CREATE TABLE `diskinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `devNo` varchar(50) DEFAULT NULL COMMENT '分区盘符号',
  `devName` varchar(100) DEFAULT NULL COMMENT '盘符名称',
  `dirName` varchar(100) DEFAULT NULL COMMENT '盘符路径',
  `flags` varchar(100) DEFAULT NULL COMMENT '盘符标志',
  `sysTypeName` varchar(100) DEFAULT NULL COMMENT '盘符文件系统类型',
  `typeName` varchar(100) DEFAULT NULL COMMENT '盘符类型名',
  `type` varchar(100) DEFAULT NULL COMMENT '盘符文件系统类型',
  `total` varchar(100) DEFAULT NULL COMMENT '文件系统总大小',
  `free` varchar(100) DEFAULT NULL COMMENT '文件系统剩余大小',
  `avail` varchar(100) DEFAULT NULL COMMENT '文件系统可用大小',
  `used` varchar(100) DEFAULT NULL COMMENT '文件系统已经使用量',
  `usePercent` varchar(100) DEFAULT NULL COMMENT '文件系统资源的利用率',
  `diskReads` varchar(100) DEFAULT NULL COMMENT '磁盘读出',
  `diskWrites` varchar(100) DEFAULT NULL COMMENT '磁盘写入',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diskinfo
-- ----------------------------
INSERT INTO `diskinfo` VALUES ('10', '192.168.31.213', '50:7B:9D:77:F0:62', '0', 'C:\\', 'C:\\', '0', 'NTFS', 'local', '2', '121599', '68700', '68700', '52899', '44.0%', '296333', '212346', '2016-07-23 17:19:30');
INSERT INTO `diskinfo` VALUES ('11', '192.168.31.213', '50:7B:9D:77:F0:62', '1', 'D:\\', 'D:\\', '0', 'NTFS', 'local', '2', '476991', '442116', '442116', '34874', '8.0%', '17980', '7283', '2016-07-23 17:19:30');
INSERT INTO `diskinfo` VALUES ('12', '192.168.31.213', '50:7B:9D:77:F0:62', '2', 'E:\\', 'E:\\', '0', 'NTFS', 'local', '2', '476877', '457135', '457135', '19742', '5.0%', '1376', '3726', '2016-07-23 17:19:30');
INSERT INTO `diskinfo` VALUES ('13', '169.254.139.125', '50:7B:9D:77:F0:62', '0', 'C:\\', 'C:\\', '0', 'NTFS', 'local', '2', '121599', '68700', '68700', '52898', '44.0%', '296330', '210322', '2016-07-23 17:18:30');
INSERT INTO `diskinfo` VALUES ('14', '169.254.139.125', '50:7B:9D:77:F0:62', '1', 'D:\\', 'D:\\', '0', 'NTFS', 'local', '2', '476991', '442116', '442116', '34874', '8.0%', '17980', '7209', '2016-07-23 17:18:30');
INSERT INTO `diskinfo` VALUES ('15', '169.254.139.125', '50:7B:9D:77:F0:62', '2', 'E:\\', 'E:\\', '0', 'NTFS', 'local', '2', '476877', '457135', '457135', '19741', '5.0%', '1376', '3696', '2016-07-23 17:18:30');

-- ----------------------------
-- Table structure for meminfo
-- ----------------------------
DROP TABLE IF EXISTS `meminfo`;
CREATE TABLE `meminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `memtotals` varchar(100) DEFAULT NULL COMMENT '内存总量',
  `memused` varchar(100) DEFAULT NULL COMMENT '当前内存使用量',
  `memfree` varchar(100) DEFAULT NULL COMMENT '当前内存剩余量',
  `swaptotals` varchar(100) DEFAULT NULL COMMENT '交换区总量',
  `swapused` varchar(100) DEFAULT NULL COMMENT '当前交换区使用量',
  `swapfree` varchar(100) DEFAULT NULL COMMENT '当前交换区剩余量',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meminfo
-- ----------------------------
INSERT INTO `meminfo` VALUES ('5', '192.168.31.213', '50:7B:9D:77:F0:62', '8300420k', '3647512k', '4652908k', '16689028k', '3647512k', '4652908k', '2016-07-17 10:34:21');
INSERT INTO `meminfo` VALUES ('6', '169.254.139.125', '50:7B:9D:77:F0:62', '8300420k', '2954856k', '5345564k', '16689028k', '2954856k', '5345564k', '2016-07-23 17:18:30');

-- ----------------------------
-- Table structure for netinfo
-- ----------------------------
DROP TABLE IF EXISTS `netinfo`;
CREATE TABLE `netinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `netNo` varchar(50) DEFAULT NULL COMMENT '网络设备名',
  `netmask` varchar(50) DEFAULT NULL COMMENT '子网掩码',
  `rxPackets` varchar(100) DEFAULT NULL COMMENT '接收的总包裹数',
  `txPackets` varchar(100) DEFAULT NULL COMMENT '发送的总包裹数',
  `rxBytes` varchar(100) DEFAULT NULL COMMENT '接收到的总字节数',
  `txBytes` varchar(100) DEFAULT NULL COMMENT '发送的总字节数',
  `rxErrors` varchar(100) DEFAULT NULL COMMENT '接收到的错误包数',
  `txErrors` varchar(100) DEFAULT NULL COMMENT '发送数据包时的错误数',
  `rxDropped` varchar(100) DEFAULT NULL COMMENT '接收时丢弃的包数',
  `txDropped` varchar(100) DEFAULT NULL COMMENT '发送时丢弃的包数',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of netinfo
-- ----------------------------
INSERT INTO `netinfo` VALUES ('34', '192.168.31.213', '50:7B:9D:77:F0:62', '0', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('35', '192.168.31.213', '50:7B:9D:77:F0:62', '1', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('36', '192.168.31.213', '50:7B:9D:77:F0:62', '2', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('37', '192.168.31.213', '50:7B:9D:77:F0:62', '3', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('38', '192.168.31.213', '50:7B:9D:77:F0:62', '4', '255.255.0.0', '0', '12291', '0', '12297', '0', '0', '0', '0', '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('39', '192.168.31.213', '50:7B:9D:77:F0:62', '5', '255.255.255.0', '0', '11885', '0', '11889', '0', '0', '0', '0', '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('40', '192.168.31.213', '50:7B:9D:77:F0:62', '6', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('41', '192.168.31.213', '50:7B:9D:77:F0:62', '7', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('42', '192.168.31.213', '50:7B:9D:77:F0:62', '8', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('43', '192.168.31.213', '50:7B:9D:77:F0:62', '9', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('44', '192.168.31.213', '50:7B:9D:77:F0:62', '10', '255.0.0.0', '0', '0', '0', '0', '0', '0', '0', '0', '2016-07-23 17:19:30');
INSERT INTO `netinfo` VALUES ('45', '169.254.139.125', '50:7B:9D:77:F0:62', '0', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('46', '169.254.139.125', '50:7B:9D:77:F0:62', '1', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('47', '169.254.139.125', '50:7B:9D:77:F0:62', '2', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('48', '169.254.139.125', '50:7B:9D:77:F0:62', '3', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('49', '169.254.139.125', '50:7B:9D:77:F0:62', '4', '255.255.0.0', '0', '12218', '0', '12224', '0', '0', '0', '0', '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('50', '169.254.139.125', '50:7B:9D:77:F0:62', '5', '255.255.255.0', '0', '11813', '0', '11817', '0', '0', '0', '0', '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('51', '169.254.139.125', '50:7B:9D:77:F0:62', '6', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('52', '169.254.139.125', '50:7B:9D:77:F0:62', '7', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('53', '169.254.139.125', '50:7B:9D:77:F0:62', '8', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('54', '169.254.139.125', '50:7B:9D:77:F0:62', '9', '0.0.0.0', null, null, null, null, null, null, null, null, '2016-07-23 17:18:30');
INSERT INTO `netinfo` VALUES ('55', '169.254.139.125', '50:7B:9D:77:F0:62', '10', '255.0.0.0', '0', '0', '0', '0', '0', '0', '0', '0', '2016-07-23 17:18:30');

-- ----------------------------
-- Table structure for nicinfo
-- ----------------------------
DROP TABLE IF EXISTS `nicinfo`;
CREATE TABLE `nicinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `AdapterType` varchar(100) DEFAULT NULL COMMENT '适配器类型',
  `DeviceID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `MACAddress` varchar(100) DEFAULT NULL COMMENT 'mac地址',
  `Name` varchar(100) DEFAULT NULL COMMENT '名称',
  `NetworkAddresses` varchar(100) DEFAULT NULL COMMENT '网络地址',
  `ServiceName` varchar(100) DEFAULT NULL COMMENT '服务名称',
  `Speed` varchar(100) DEFAULT NULL COMMENT '网卡速率',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nicinfo
-- ----------------------------
INSERT INTO `nicinfo` VALUES ('1', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '0', '00:50:56:C0:00:08', 'VMware Virtual Ethernet Adapter for VMnet8', null, 'VMnetAdapter', '100000000', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('2', '192.168.31.213', '50:7B:9D:77:F0:62', '', '1', '', 'Microsoft Kernel Debug Network Adapter', null, 'kdnic', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('3', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '2', '50:7B:9D:77:F0:62', 'Realtek PCIe GBE Family Controller', null, 'rt640x64', '9223372036854775807', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('4', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '3', '00:50:56:C0:00:01', 'VMware Virtual Ethernet Adapter for VMnet1', null, 'VMnetAdapter', '100000000', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('5', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '4', 'E0:94:67:77:94:03', 'Intel(R) Dual Band Wireless-AC 3165', null, 'Netwtw04', '433300000', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('6', '192.168.31.213', '50:7B:9D:77:F0:62', '以太网 802.3', '5', 'E0:94:67:77:94:04', 'Microsoft Wi-Fi Direct Virtual Adapter', null, 'vwifimp', '9223372036854775807', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('7', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '6', '', 'Microsoft ISATAP Adapter', null, 'tunnel', '100000', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('8', '192.168.31.213', '50:7B:9D:77:F0:62', '', '7', '', 'Microsoft ISATAP Adapter', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('9', '192.168.31.213', '50:7B:9D:77:F0:62', '', '8', '', 'WAN Miniport (SSTP)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('10', '192.168.31.213', '50:7B:9D:77:F0:62', '', '9', '', 'WAN Miniport (IKEv2)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('11', '192.168.31.213', '50:7B:9D:77:F0:62', '', '10', '', 'WAN Miniport (L2TP)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('12', '192.168.31.213', '50:7B:9D:77:F0:62', '', '11', '', 'WAN Miniport (PPTP)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('13', '192.168.31.213', '50:7B:9D:77:F0:62', '', '12', '', 'WAN Miniport (PPPOE)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('14', '192.168.31.213', '50:7B:9D:77:F0:62', '', '13', '', 'WAN Miniport (IP)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('15', '192.168.31.213', '50:7B:9D:77:F0:62', '', '14', '', 'WAN Miniport (IPv6)', null, '', '', '2016-07-23 17:19:30');
INSERT INTO `nicinfo` VALUES ('16', '192.168.31.213', '50:7B:9D:77:F0:62', '', '15', '', 'WAN Miniport (Network Monitor)', null, '', '', '2016-07-23 17:19:31');
INSERT INTO `nicinfo` VALUES ('17', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '16', '', 'Microsoft ISATAP Adapter #3', null, 'tunnel', '100000', '2016-07-23 17:19:31');
INSERT INTO `nicinfo` VALUES ('18', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '17', '', 'Microsoft Teredo Tunneling Adapter', null, 'tunnel', '100000', '2016-07-23 17:19:31');
INSERT INTO `nicinfo` VALUES ('19', '192.168.31.213', '50:7B:9D:77:F0:62', '隧道', '20', '', 'Microsoft ISATAP Adapter #4', null, 'tunnel', '100000', '2016-07-23 17:19:31');
INSERT INTO `nicinfo` VALUES ('20', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '0', '00:50:56:C0:00:08', 'VMware Virtual Ethernet Adapter for VMnet8', null, 'VMnetAdapter', '100000000', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('21', '169.254.139.125', '50:7B:9D:77:F0:62', '', '1', '', 'Microsoft Kernel Debug Network Adapter', null, 'kdnic', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('22', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '2', '50:7B:9D:77:F0:62', 'Realtek PCIe GBE Family Controller', null, 'rt640x64', '9223372036854775807', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('23', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '3', '00:50:56:C0:00:01', 'VMware Virtual Ethernet Adapter for VMnet1', null, 'VMnetAdapter', '100000000', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('24', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '4', 'E0:94:67:77:94:03', 'Intel(R) Dual Band Wireless-AC 3165', null, 'Netwtw04', '390000000', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('25', '169.254.139.125', '50:7B:9D:77:F0:62', '以太网 802.3', '5', 'E0:94:67:77:94:04', 'Microsoft Wi-Fi Direct Virtual Adapter', null, 'vwifimp', '9223372036854775807', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('26', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '6', '', 'Microsoft ISATAP Adapter', null, 'tunnel', '100000', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('27', '169.254.139.125', '50:7B:9D:77:F0:62', '', '7', '', 'Microsoft ISATAP Adapter', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('28', '169.254.139.125', '50:7B:9D:77:F0:62', '', '8', '', 'WAN Miniport (SSTP)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('29', '169.254.139.125', '50:7B:9D:77:F0:62', '', '9', '', 'WAN Miniport (IKEv2)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('30', '169.254.139.125', '50:7B:9D:77:F0:62', '', '10', '', 'WAN Miniport (L2TP)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('31', '169.254.139.125', '50:7B:9D:77:F0:62', '', '11', '', 'WAN Miniport (PPTP)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('32', '169.254.139.125', '50:7B:9D:77:F0:62', '', '12', '', 'WAN Miniport (PPPOE)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('33', '169.254.139.125', '50:7B:9D:77:F0:62', '', '13', '', 'WAN Miniport (IP)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('34', '169.254.139.125', '50:7B:9D:77:F0:62', '', '14', '', 'WAN Miniport (IPv6)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('35', '169.254.139.125', '50:7B:9D:77:F0:62', '', '15', '', 'WAN Miniport (Network Monitor)', null, '', '', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('36', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '16', '', 'Microsoft ISATAP Adapter #3', null, 'tunnel', '100000', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('37', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '17', '', 'Microsoft Teredo Tunneling Adapter', null, 'tunnel', '100000', '2016-07-23 17:18:30');
INSERT INTO `nicinfo` VALUES ('38', '169.254.139.125', '50:7B:9D:77:F0:62', '隧道', '20', '', 'Microsoft ISATAP Adapter #4', null, 'tunnel', '100000', '2016-07-23 17:18:30');

-- ----------------------------
-- Table structure for processinfo
-- ----------------------------
DROP TABLE IF EXISTS `processinfo`;
CREATE TABLE `processinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `CreationClassName` varchar(100) DEFAULT NULL COMMENT '进程创建者',
  `CSName` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ExecutablePath` text COMMENT '运行的应用所在的位置',
  `Name` varchar(100) DEFAULT NULL COMMENT '应用名称',
  `OSName` varchar(200) DEFAULT NULL COMMENT '操作系统版本',
  `ProcessId` varchar(100) DEFAULT NULL COMMENT '进程ID',
  `SessionId` varchar(100) DEFAULT NULL COMMENT 'Session ID',
  `ThreadCount` varchar(100) DEFAULT NULL COMMENT '线程数',
  `VirtualSize` varchar(100) DEFAULT NULL COMMENT '虚拟内存',
  `WindowsVersion` varchar(100) DEFAULT NULL COMMENT '操作系统版本',
  `WorkingSetSize` varchar(100) DEFAULT NULL COMMENT '工作集大小',
  `CpuRatioForWindows` varchar(100) DEFAULT NULL COMMENT 'cpu占用率',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinfo
-- ----------------------------
INSERT INTO `processinfo` VALUES ('74', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'System Idle Process', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '0', '0', '8', '65536', '10.0.10586', '4096', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('75', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'System', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4', '0', '210', '105902080', '10.0.10586', '55840768', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('76', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'smss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '416', '0', '2', '2199029886976', '10.0.10586', '339968', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('77', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'csrss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '572', '0', '10', '2199114149888', '10.0.10586', '1593344', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('78', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'wininit.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '684', '0', '2', '2199086186496', '10.0.10586', '999424', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('79', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'csrss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '692', '1', '14', '2199246979072', '10.0.10586', '28700672', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('80', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'services.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '756', '0', '5', '2199059738624', '10.0.10586', '5185536', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('81', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'lsass.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '764', '0', '7', '2199073320960', '10.0.10586', '8335360', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('82', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '864', '0', '26', '2199113367552', '10.0.10586', '12013568', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('83', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'winlogon.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '920', '1', '3', '2199099793408', '10.0.10586', '2703360', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('84', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '972', '0', '13', '2199076212736', '10.0.10586', '7639040', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('85', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '484', '0', '72', '2199293042688', '10.0.10586', '40206336', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('86', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'dwm.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '472', '1', '11', '2199398961152', '10.0.10586', '76967936', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('87', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '832', '0', '28', '2203615666176', '10.0.10586', '15486976', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('88', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '992', '0', '30', '2199172804608', '10.0.10586', '19816448', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('89', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1040', '0', '31', '2199177977856', '10.0.10586', '20320256', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('90', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1080', '0', '13', '2199080906752', '10.0.10586', '6754304', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('91', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'igfxCUIService.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1344', '0', '7', '50159616', '10.0.10586', '2199552', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('92', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1352', '0', '25', '2199186092032', '10.0.10586', '14258176', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('93', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1696', '0', '28', '2199305269248', '10.0.10586', '24416256', null, '2016-07-23 17:19:33');
INSERT INTO `processinfo` VALUES ('94', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360rps.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1748', '0', '6', '63500288', '10.0.10586', '1605632', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('95', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ZhuDongFangYu.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1756', '0', '16', '107401216', '10.0.10586', '6225920', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('96', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'IntelCpHeciSvc.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1836', '0', '9', '47849472', '10.0.10586', '2191360', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('97', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'spoolsv.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2076', '0', '12', '2199090769920', '10.0.10586', '4743168', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('98', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2468', '0', '9', '2199070068736', '10.0.10586', '2117632', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('99', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2484', '0', '19', '2199081832448', '10.0.10586', '2633728', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('100', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ETDService.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2536', '0', '3', '29749248', '10.0.10586', '1241088', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('101', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'mqsvc.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2580', '0', '34', '2199119724544', '10.0.10586', '2654208', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('102', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2624', '0', '14', '2199217561600', '10.0.10586', '18530304', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('103', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ibtsiva.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2652', '0', '2', '35987456', '10.0.10586', '1327104', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('104', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'TenpayServer.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2660', '0', '5', '68382720', '10.0.10586', '1822720', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('105', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'QQProtect.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2668', '0', '23', '139898880', '10.0.10586', '10518528', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('106', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmnat.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2680', '0', '5', '65548288', '10.0.10586', '2252800', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('107', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'lenovodrvsrv.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2692', '0', '6', '99295232', '10.0.10586', '6746112', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('108', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmware-usbarbitrator64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2752', '0', '5', '81883136', '10.0.10586', '3538944', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('109', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2760', '0', '24', '178393088', '10.0.10586', '3817472', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('110', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmnetdhcp.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2788', '0', '3', '32206848', '10.0.10586', '1814528', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('111', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmware-authd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2844', '0', '7', '117415936', '10.0.10586', '3739648', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('112', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'mysqld.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2860', '0', '29', '202211328', '10.0.10586', '27590656', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('113', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'dasHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2876', '0', '3', '2199043743744', '10.0.10586', '839680', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('114', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2916', '0', '5', '2199162384384', '10.0.10586', '14782464', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('115', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3460', '0', '6', '2199056994304', '10.0.10586', '3878912', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('116', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SMSvcHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3492', '0', '7', '546545664', '10.0.10586', '2211840', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('117', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'Locator.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3884', '0', '3', '2199037485056', '10.0.10586', '991232', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('118', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'alg.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4024', '0', '4', '2199051964416', '10.0.10586', '1859584', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('119', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SMSvcHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8', '0', '6', '539570176', '10.0.10586', '1634304', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('120', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmware-hostd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4152', '0', '23', '183709696', '10.0.10586', '17223680', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('121', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'WmiPrvSE.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4452', '0', '9', '2199125504000', '10.0.10586', '15646720', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('122', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Elantech\\ETDCtrl.exe', 'ETDCtrl.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3296', '1', '15', '141885440', '10.0.10586', '7245824', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('123', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\sihost.exe', 'sihost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3416', '1', '9', '2199125495808', '10.0.10586', '15245312', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('124', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\taskhostw.exe', 'taskhostw.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1960', '1', '11', '2199215620096', '10.0.10586', '17113088', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('125', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'PresentationFontCache.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1828', '0', '6', '550293504', '10.0.10586', '1880064', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('126', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Windows\\System32\\RuntimeBroker.exe', 'RuntimeBroker.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5140', '1', '18', '2199220948992', '10.0.10586', '30195712', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('127', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\WindowsApps\\Microsoft.Messaging_2.15.20002.0_x86__8wekyb3d8bbwe\\SkypeHost.exe', 'SkypeHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5352', '1', '60', '245628928', '10.0.10586', '10080256', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('128', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\Explorer.EXE', 'explorer.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5376', '1', '66', '2199853465600', '10.0.10586', '101969920', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('129', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ETDCtrlHelper.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5476', '1', '2', '103059456', '10.0.10586', '4272128', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('130', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Elantech\\ETDIntelligent.exe', 'ETDIntelligent.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5512', '1', '3', '96231424', '10.0.10586', '3575808', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('131', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\igfxEM.exe', 'igfxEM.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5552', '1', '7', '115187712', '10.0.10586', '4407296', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('132', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\igfxHK.exe', 'igfxHK.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5560', '1', '5', '68370432', '10.0.10586', '2232320', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('133', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\LuDaShi\\Utils\\ComputerZ13.exe', 'ComputerZ13.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5736', '1', '8', '176320512', '10.0.10586', '7528448', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('134', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Windows\\SystemApps\\ShellExperienceHost_cw5n1h2txyewy\\ShellExperienceHost.exe', 'ShellExperienceHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5944', '1', '41', '2199481970688', '10.0.10586', '68907008', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('135', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Windows\\SystemApps\\Microsoft.Windows.Cortana_cw5n1h2txyewy\\SearchUI.exe', 'SearchUI.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6060', '1', '36', '2234139267072', '10.0.10586', '82489344', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('136', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SearchIndexer.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5088', '0', '22', '2199261638656', '10.0.10586', '36507648', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('137', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\SettingSyncHost.exe', 'SettingSyncHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6856', '1', '9', '2199159795712', '10.0.10586', '7229440', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('138', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe', 'RAVBg64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3376', '1', '5', '121044992', '10.0.10586', '3866624', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('139', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Lenovo\\Energy Manager\\Energy Manager.exe', 'Energy Manager.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5896', '1', '9', '264458240', '10.0.10586', '24141824', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('140', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQ.exe', 'QQ.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7036', '1', '96', '698703872', '10.0.10586', '241319936', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('141', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Lenovo\\Energy Manager\\utility.exe', 'utility.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1892', '1', '6', '131391488', '10.0.10586', '11939840', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('142', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\TXPlatform.exe', 'TXPlatform.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6948', '1', '5', '95989760', '10.0.10586', '2174976', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('143', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVCpl64.exe', 'RAVCpl64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4848', '1', '7', '133480448', '10.0.10586', '20070400', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('144', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe', 'RAVBg64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7244', '1', '5', '121044992', '10.0.10586', '4771840', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('145', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe', 'RAVBg64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7332', '1', '5', '121044992', '10.0.10586', '3883008', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('146', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360sd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7620', '1', '23', '218296320', '10.0.10586', '2220032', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('147', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Intel\\Intel(R) USB 3.0 eXtensible Host Controller Driver\\Application\\iusb3mon.exe', 'iusb3mon.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8084', '1', '5', '91688960', '10.0.10586', '2293760', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('148', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\VMWare\\vmware-tray.exe', 'vmware-tray.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7948', '1', '4', '90386432', '10.0.10586', '1744896', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('149', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'fontdrvhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8580', '1', '6', '2199082315776', '10.0.10586', '1413120', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('150', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\svchost.exe', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4192', '1', '12', '2199315181568', '10.0.10586', '9060352', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('151', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360rp.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '9008', '1', '59', '311484416', '10.0.10586', '40382464', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('152', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'dllhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2688', '1', '4', '2199122894848', '10.0.10586', '1933312', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('153', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\ApplicationFrameHost.exe', 'ApplicationFrameHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4240', '1', '5', '2199171842048', '10.0.10586', '16351232', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('154', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\ImmersiveControlPanel\\SystemSettings.exe', 'SystemSettings.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1956', '1', '26', '2199422218240', '10.0.10586', '1638400', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('155', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Users\\kate\\AppData\\Local\\GitHub\\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad\\bin\\ssh-agent.exe', 'ssh-agent.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '9212', '1', '4', '361590784', '10.0.10586', '8179712', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('156', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'D:\\work\\tools\\eclipse\\eclipse.exe', 'eclipse.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1588', '1', '68', '2002952192', '10.0.10586', '547037184', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('157', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3052', '1', '1', '2199039262720', '10.0.10586', '3121152', null, '2016-07-23 16:56:01');
INSERT INTO `processinfo` VALUES ('158', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2092', '1', '7', '146976768', '10.0.10586', '11182080', null, '2016-07-23 17:19:04');
INSERT INTO `processinfo` VALUES ('159', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\navicate\\navicat.exe', 'navicat.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1284', '1', '7', '429076480', '10.0.10586', '124948480', null, '2016-07-23 16:56:01');
INSERT INTO `processinfo` VALUES ('160', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360tray.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6772', '1', '84', '828342272', '10.0.10586', '30617600', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('161', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQExternal.exe', 'QQExternal.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3852', '1', '12', '225763328', '10.0.10586', '52985856', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('162', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQExternal.exe', 'QQExternal.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7824', '1', '21', '244056064', '10.0.10586', '27127808', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('163', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '180', '0', '16', '2199188414464', '10.0.10586', '34168832', null, '2016-07-23 16:56:01');
INSERT INTO `processinfo` VALUES ('164', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'audiodg.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1584', '0', '9', '2199121911808', '10.0.10586', '15691776', null, '2016-07-23 16:56:01');
INSERT INTO `processinfo` VALUES ('165', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'D:\\work\\tools\\Java\\jdk1.7.0_51\\bin\\javaw.exe', 'javaw.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '9016', '1', '25', '539099136', '10.0.10586', '102899712', null, '2016-07-23 16:56:01');
INSERT INTO `processinfo` VALUES ('166', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3636', '1', '4', '2199109169152', '10.0.10586', '6213632', null, '2016-07-23 17:17:34');
INSERT INTO `processinfo` VALUES ('167', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2384', '1', '4', '2199109169152', '10.0.10586', '6176768', null, null);
INSERT INTO `processinfo` VALUES ('168', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6804', '1', '7', '146976768', '10.0.10586', '11083776', null, null);
INSERT INTO `processinfo` VALUES ('169', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7868', '1', '2', '84889600', '10.0.10586', '3510272', null, null);
INSERT INTO `processinfo` VALUES ('170', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2444', '1', '4', '2199109169152', '10.0.10586', '6168576', null, null);
INSERT INTO `processinfo` VALUES ('171', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5268', '1', '7', '146976768', '10.0.10586', '11141120', null, null);
INSERT INTO `processinfo` VALUES ('172', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\wps\\WPS Office\\10.1.0.5862\\office6\\wpscloudsvr.exe', 'wpscloudsvr.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3396', '1', '21', '256790528', '10.0.10586', '12894208', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('173', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'WmiPrvSE.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4624', '0', '11', '151818240', '10.0.10586', '17600512', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('174', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\WindowsApps\\Microsoft.Getstarted_4.0.9.0_x64__8wekyb3d8bbwe\\WhatsNew.Store.exe', 'WhatsNew.Store.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6984', '1', '11', '650199040', '10.0.10586', '23142400', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('175', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'audiodg.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6236', '0', '6', '2199120338944', '10.0.10586', '16547840', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('176', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\SearchProtocolHost.exe', 'SearchProtocolHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2976', '1', '6', '2199083790336', '10.0.10586', '7008256', null, '2016-07-23 17:14:35');
INSERT INTO `processinfo` VALUES ('177', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7848', '1', '7', '146976768', '10.0.10586', '11169792', null, '2016-07-23 17:17:04');
INSERT INTO `processinfo` VALUES ('178', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'D:\\work\\tools\\Java\\jdk1.7.0_51\\bin\\javaw.exe', 'javaw.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8496', '1', '27', '541466624', '10.0.10586', '104857600', null, '2016-07-23 17:14:35');
INSERT INTO `processinfo` VALUES ('179', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SearchProtocolHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7308', '0', '6', '2199097217024', '10.0.10586', '10584064', null, '2016-07-23 17:16:35');
INSERT INTO `processinfo` VALUES ('180', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '852', '1', '2', '84889600', '10.0.10586', '3530752', null, '2016-07-23 17:14:35');
INSERT INTO `processinfo` VALUES ('181', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2996', '1', '4', '2199109169152', '10.0.10586', '6172672', null, '2016-07-23 17:14:35');
INSERT INTO `processinfo` VALUES ('182', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8132', '1', '7', '146976768', '10.0.10586', '11161600', null, '2016-07-23 17:14:35');
INSERT INTO `processinfo` VALUES ('183', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'D:\\work\\tools\\Java\\jdk1.7.0_51\\bin\\javaw.exe', 'javaw.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2552', '1', '27', '543563776', '10.0.10586', '104943616', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('184', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360Safe.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4620', '1', '26', '318562304', '10.0.10586', '105603072', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('185', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3008', '1', '2', '84889600', '10.0.10586', '3526656', null, '2016-07-23 17:16:35');
INSERT INTO `processinfo` VALUES ('186', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8796', '1', '2', '84889600', '10.0.10586', '3526656', null, '2016-07-23 17:17:34');
INSERT INTO `processinfo` VALUES ('187', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '448', '1', '7', '146976768', '10.0.10586', '11116544', null, '2016-07-23 17:16:35');
INSERT INTO `processinfo` VALUES ('188', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '232', '1', '2', '84889600', '10.0.10586', '3530752', null, '2016-07-23 17:17:04');
INSERT INTO `processinfo` VALUES ('189', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4040', '1', '4', '2199109169152', '10.0.10586', '6221824', null, '2016-07-23 17:17:04');
INSERT INTO `processinfo` VALUES ('190', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6100', '1', '7', '146976768', '10.0.10586', '11128832', null, '2016-07-23 17:17:34');
INSERT INTO `processinfo` VALUES ('191', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5824', '1', '2', '84889600', '10.0.10586', '3526656', null, '2016-07-23 17:18:04');
INSERT INTO `processinfo` VALUES ('192', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8704', '1', '4', '2199109169152', '10.0.10586', '6176768', null, '2016-07-23 17:18:04');
INSERT INTO `processinfo` VALUES ('193', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '116', '1', '7', '146976768', '10.0.10586', '11128832', null, '2016-07-23 17:18:04');
INSERT INTO `processinfo` VALUES ('194', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'System Idle Process', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '0', '0', '8', '65536', '10.0.10586', '4096', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('195', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'System', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4', '0', '210', '105902080', '10.0.10586', '55902208', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('196', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'smss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '416', '0', '2', '2199029886976', '10.0.10586', '339968', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('197', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'csrss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '572', '0', '10', '2199114149888', '10.0.10586', '1593344', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('198', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'wininit.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '684', '0', '2', '2199086186496', '10.0.10586', '999424', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('199', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'csrss.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '692', '1', '14', '2199246979072', '10.0.10586', '28700672', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('200', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'services.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '756', '0', '5', '2199059738624', '10.0.10586', '5181440', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('201', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'lsass.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '764', '0', '7', '2199073320960', '10.0.10586', '8327168', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('202', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '864', '0', '27', '2199114416128', '10.0.10586', '12025856', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('203', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'winlogon.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '920', '1', '3', '2199099793408', '10.0.10586', '2703360', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('204', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '972', '0', '13', '2199076212736', '10.0.10586', '7565312', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('205', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '484', '0', '72', '2199293792256', '10.0.10586', '40316928', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('206', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'dwm.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '472', '1', '11', '2199398961152', '10.0.10586', '76967936', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('207', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '832', '0', '30', '2203616714752', '10.0.10586', '15491072', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('208', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '992', '0', '30', '2199172804608', '10.0.10586', '19734528', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('209', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1040', '0', '30', '2199176929280', '10.0.10586', '20291584', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('210', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1080', '0', '13', '2199080906752', '10.0.10586', '6791168', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('211', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'igfxCUIService.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1344', '0', '7', '50159616', '10.0.10586', '2199552', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('212', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1352', '0', '25', '2199186006016', '10.0.10586', '14213120', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('213', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1696', '0', '24', '2199233036288', '10.0.10586', '23633920', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('214', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360rps.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1748', '0', '6', '63500288', '10.0.10586', '1605632', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('215', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ZhuDongFangYu.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1756', '0', '16', '107401216', '10.0.10586', '6225920', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('216', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'IntelCpHeciSvc.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1836', '0', '9', '47849472', '10.0.10586', '2191360', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('217', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'spoolsv.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2076', '0', '12', '2199090769920', '10.0.10586', '4743168', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('218', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2468', '0', '9', '2199070068736', '10.0.10586', '2113536', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('219', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2484', '0', '19', '2199081832448', '10.0.10586', '2637824', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('220', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ETDService.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2536', '0', '3', '29749248', '10.0.10586', '1241088', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('221', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'mqsvc.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2580', '0', '34', '2199119724544', '10.0.10586', '2654208', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('222', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2624', '0', '14', '2199217561600', '10.0.10586', '18550784', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('223', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ibtsiva.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2652', '0', '2', '35987456', '10.0.10586', '1327104', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('224', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'TenpayServer.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2660', '0', '5', '68382720', '10.0.10586', '1822720', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('225', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'QQProtect.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2668', '0', '23', '139898880', '10.0.10586', '10510336', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('226', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmnat.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2680', '0', '5', '65548288', '10.0.10586', '2252800', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('227', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'lenovodrvsrv.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2692', '0', '6', '99295232', '10.0.10586', '6746112', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('228', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmware-usbarbitrator64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2752', '0', '5', '81883136', '10.0.10586', '3538944', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('229', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2760', '0', '24', '178393088', '10.0.10586', '3805184', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('230', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmnetdhcp.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2788', '0', '3', '32206848', '10.0.10586', '1814528', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('231', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmware-authd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2844', '0', '7', '117415936', '10.0.10586', '3739648', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('232', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'mysqld.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2860', '0', '29', '202211328', '10.0.10586', '27590656', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('233', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'dasHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2876', '0', '3', '2199043743744', '10.0.10586', '839680', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('234', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2916', '0', '5', '2199162384384', '10.0.10586', '14798848', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('235', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3460', '0', '6', '2199056994304', '10.0.10586', '3903488', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('236', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SMSvcHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3492', '0', '7', '546545664', '10.0.10586', '2211840', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('237', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'Locator.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3884', '0', '3', '2199037485056', '10.0.10586', '991232', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('238', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'alg.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4024', '0', '4', '2199051964416', '10.0.10586', '1859584', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('239', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SMSvcHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8', '0', '6', '539570176', '10.0.10586', '1634304', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('240', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'vmware-hostd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4152', '0', '23', '183709696', '10.0.10586', '17223680', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('241', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'WmiPrvSE.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4452', '0', '9', '2199125504000', '10.0.10586', '16130048', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('242', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Elantech\\ETDCtrl.exe', 'ETDCtrl.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3296', '1', '15', '141885440', '10.0.10586', '7245824', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('243', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\sihost.exe', 'sihost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3416', '1', '10', '2199126020096', '10.0.10586', '15257600', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('244', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\taskhostw.exe', 'taskhostw.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1960', '1', '11', '2199215620096', '10.0.10586', '17113088', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('245', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'PresentationFontCache.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1828', '0', '6', '550293504', '10.0.10586', '1880064', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('246', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Windows\\System32\\RuntimeBroker.exe', 'RuntimeBroker.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5140', '1', '18', '2199220948992', '10.0.10586', '30199808', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('247', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\WindowsApps\\Microsoft.Messaging_2.15.20002.0_x86__8wekyb3d8bbwe\\SkypeHost.exe', 'SkypeHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5352', '1', '60', '245628928', '10.0.10586', '11771904', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('248', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\Explorer.EXE', 'explorer.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5376', '1', '67', '2199854006272', '10.0.10586', '102899712', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('249', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'ETDCtrlHelper.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5476', '1', '2', '103059456', '10.0.10586', '4272128', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('250', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Elantech\\ETDIntelligent.exe', 'ETDIntelligent.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5512', '1', '3', '96231424', '10.0.10586', '3575808', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('251', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\igfxEM.exe', 'igfxEM.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5552', '1', '7', '115187712', '10.0.10586', '4407296', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('252', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\igfxHK.exe', 'igfxHK.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5560', '1', '5', '68370432', '10.0.10586', '2232320', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('253', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\LuDaShi\\Utils\\ComputerZ13.exe', 'ComputerZ13.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5736', '1', '8', '176320512', '10.0.10586', '7528448', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('254', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Windows\\SystemApps\\ShellExperienceHost_cw5n1h2txyewy\\ShellExperienceHost.exe', 'ShellExperienceHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5944', '1', '41', '2199481970688', '10.0.10586', '68907008', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('255', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Windows\\SystemApps\\Microsoft.Windows.Cortana_cw5n1h2txyewy\\SearchUI.exe', 'SearchUI.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6060', '1', '36', '2234139267072', '10.0.10586', '82489344', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('256', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'SearchIndexer.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5088', '0', '22', '2199261638656', '10.0.10586', '36507648', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('257', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\SettingSyncHost.exe', 'SettingSyncHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6856', '1', '9', '2199159795712', '10.0.10586', '7712768', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('258', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe', 'RAVBg64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3376', '1', '5', '121044992', '10.0.10586', '3866624', null, '2016-07-23 17:18:33');
INSERT INTO `processinfo` VALUES ('259', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Lenovo\\Energy Manager\\Energy Manager.exe', 'Energy Manager.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '5896', '1', '9', '264458240', '10.0.10586', '24141824', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('260', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQ.exe', 'QQ.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7036', '1', '96', '698703872', '10.0.10586', '241475584', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('261', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Lenovo\\Energy Manager\\utility.exe', 'utility.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1892', '1', '6', '131391488', '10.0.10586', '11939840', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('262', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\TXPlatform.exe', 'TXPlatform.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6948', '1', '5', '95989760', '10.0.10586', '2174976', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('263', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVCpl64.exe', 'RAVCpl64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4848', '1', '7', '133480448', '10.0.10586', '20070400', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('264', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe', 'RAVBg64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7244', '1', '5', '121044992', '10.0.10586', '4771840', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('265', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\Realtek\\Audio\\HDA\\RAVBg64.exe', 'RAVBg64.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7332', '1', '5', '121044992', '10.0.10586', '3883008', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('266', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360sd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7620', '1', '23', '218296320', '10.0.10586', '2445312', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('267', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Intel\\Intel(R) USB 3.0 eXtensible Host Controller Driver\\Application\\iusb3mon.exe', 'iusb3mon.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8084', '1', '5', '91688960', '10.0.10586', '2293760', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('268', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\VMWare\\vmware-tray.exe', 'vmware-tray.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7948', '1', '4', '90386432', '10.0.10586', '1744896', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('269', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'fontdrvhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '8580', '1', '6', '2199082315776', '10.0.10586', '1413120', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('270', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\svchost.exe', 'svchost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4192', '1', '11', '2199314132992', '10.0.10586', '9043968', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('271', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360rp.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '9008', '1', '59', '311484416', '10.0.10586', '40382464', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('272', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'dllhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2688', '1', '4', '2199122894848', '10.0.10586', '1933312', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('273', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\ApplicationFrameHost.exe', 'ApplicationFrameHost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4240', '1', '5', '2199171842048', '10.0.10586', '16351232', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('274', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\ImmersiveControlPanel\\SystemSettings.exe', 'SystemSettings.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1956', '1', '26', '2199422218240', '10.0.10586', '1638400', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('275', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Users\\kate\\AppData\\Local\\GitHub\\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad\\bin\\ssh-agent.exe', 'ssh-agent.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '9212', '1', '4', '361590784', '10.0.10586', '8179712', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('276', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'D:\\work\\tools\\eclipse\\eclipse.exe', 'eclipse.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '1588', '1', '67', '2001641472', '10.0.10586', '546742272', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('277', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360tray.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6772', '1', '84', '811761664', '10.0.10586', '29704192', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('278', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQExternal.exe', 'QQExternal.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3852', '1', '12', '225763328', '10.0.10586', '52985856', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('279', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files (x86)\\Tencent\\QQ\\Bin\\QQExternal.exe', 'QQExternal.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '7824', '1', '21', '244056064', '10.0.10586', '27111424', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('280', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\software\\wps\\WPS Office\\10.1.0.5862\\office6\\wpscloudsvr.exe', 'wpscloudsvr.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3396', '1', '21', '256790528', '10.0.10586', '12922880', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('281', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'WmiPrvSE.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4624', '0', '11', '151818240', '10.0.10586', '17600512', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('282', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\Program Files\\WindowsApps\\Microsoft.Getstarted_4.0.9.0_x64__8wekyb3d8bbwe\\WhatsNew.Store.exe', 'WhatsNew.Store.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6984', '1', '11', '650199040', '10.0.10586', '23212032', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('283', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', 'audiodg.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6236', '0', '6', '2199120338944', '10.0.10586', '16547840', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('284', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'D:\\work\\tools\\Java\\jdk1.7.0_51\\bin\\javaw.exe', 'javaw.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '2552', '1', '26', '541925376', '10.0.10586', '104476672', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('285', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', '', '360Safe.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4620', '1', '26', '318562304', '10.0.10586', '105603072', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('286', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6616', '1', '2', '84889600', '10.0.10586', '3526656', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('287', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '3044', '1', '4', '2199109169152', '10.0.10586', '6152192', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('288', '169.254.139.125', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6636', '1', '7', '146976768', '10.0.10586', '11157504', null, '2016-07-23 17:18:34');
INSERT INTO `processinfo` VALUES ('289', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4676', '1', '2', '84889600', '10.0.10586', '3543040', null, '2016-07-23 17:19:04');
INSERT INTO `processinfo` VALUES ('290', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '6472', '1', '4', '2199109169152', '10.0.10586', '6160384', null, '2016-07-23 17:19:04');
INSERT INTO `processinfo` VALUES ('291', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\cmd.exe', 'cmd.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4232', '1', '2', '84889600', '10.0.10586', '3526656', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('292', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\system32\\conhost.exe', 'conhost.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '9120', '1', '4', '2199109169152', '10.0.10586', '6168576', null, '2016-07-23 17:19:34');
INSERT INTO `processinfo` VALUES ('293', '192.168.31.213', '50:7B:9D:77:F0:62', 'Win32_Process', 'ZKT', 'C:\\WINDOWS\\SysWOW64\\Wbem\\WMIC.exe', 'WMIC.exe', 'Microsoft Windows 10 专业版|C:\\WINDOWS|\\Device\\Harddisk0\\Partition1', '4316', '1', '7', '146976768', '10.0.10586', '11177984', null, '2016-07-23 17:19:34');

-- ----------------------------
-- Table structure for serviceinfo
-- ----------------------------
DROP TABLE IF EXISTS `serviceinfo`;
CREATE TABLE `serviceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Description` text COMMENT '服务描述',
  `Name` varchar(100) DEFAULT NULL COMMENT '服务名称',
  `ProcessId` varchar(100) DEFAULT NULL COMMENT '进程ID',
  `StartMode` varchar(100) DEFAULT NULL COMMENT '启动模式',
  `State` varchar(100) DEFAULT NULL COMMENT '状态',
  `PathName` varchar(300) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL COMMENT '现状',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1433 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceinfo
-- ----------------------------
INSERT INTO `serviceinfo` VALUES ('1235', '192.168.31.213', '50:7B:9D:77:F0:62', '本服务只用于加载360杀毒实时防护，请确保开机启动，系统启动后将退出。', '360rp', '1748', 'Auto', 'Running', '\"C:\\software\\360\\360sd\\360rps.exe\"', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1236', '192.168.31.213', '50:7B:9D:77:F0:62', '为 Internet 连接共享提供第三方协议插件的支持', 'ALG', '4024', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\alg.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1237', '192.168.31.213', '50:7B:9D:77:F0:62', '为 IIS 提供管理服务，例如配置历史记录和应用程序池帐户映射。如果停止此服务，则配置历史记录将无法工作，也无法用特定于应用程序池的访问控制项锁定文件或目录。', 'AppHostSvc', '2468', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k apphost', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1238', '169.254.139.125', '50:7B:9D:77:F0:62', '使用辅助管理权限便于交互式应用程序的运行。如果停止此服务，用户将无法使用辅助管理权限启动应用程序，而执行所需用户任务可能需要这些权限。', 'Appinfo', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1239', '169.254.139.125', '50:7B:9D:77:F0:62', '管理 Windows 音频服务的音频设备。如果停止了此服务，音频设备和效果将无法正常工作。如果禁用了此服务，任何明确依赖它的服务将无法启动', 'AudioEndpointBuilder', '832', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1240', '169.254.139.125', '50:7B:9D:77:F0:62', '管理基于 Windows 的程序的音频。如果此服务被停止，音频设备和效果将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动', 'Audiosrv', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1241', '169.254.139.125', '50:7B:9D:77:F0:62', '基本筛选引擎(BFE)是一种管理防火墙和 Internet 协议安全(IPsec)策略以及实施用户模式筛选的服务。停止或禁用 BFE 服务将大大降低系统的安全。还将造成 IPsec 管理和防火墙应用程序产生不可预知的行为。', 'BFE', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1242', '169.254.139.125', '50:7B:9D:77:F0:62', '使用空闲网络带宽在后台传送文件。如果该服务被禁用，则依赖于 BITS 的任何应用程序(如 Windows 更新或 MSN Explorer)将无法自动下载程序和其他信息。', 'BITS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1243', '169.254.139.125', '50:7B:9D:77:F0:62', '控制哪些后台任务可以在系统上运行的 Windows 基础结构服务。', 'BrokerInfrastructure', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1244', '169.254.139.125', '50:7B:9D:77:F0:62', '维护网络上计算机的更新列表，并将列表提供给计算机指定浏览。如果服务停止，列表不会被更新或维护。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'Browser', '484', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1245', '169.254.139.125', '50:7B:9D:77:F0:62', 'Manages communication between system components.', 'CoreMessagingRegistrar', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1246', '169.254.139.125', '50:7B:9D:77:F0:62', 'Intel(R) Content Protection HECI Service - enables communication with the Content Protection FW', 'cphs', '1836', 'Manual', 'Running', 'C:\\WINDOWS\\SysWow64\\IntelCpHeciSvc.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1247', '169.254.139.125', '50:7B:9D:77:F0:62', '提供三种管理服务: 编录数据库服务，用于确认 Windows 文件的签名和允许安装新程序；受保护的根服务，它从此计算机添加和删除受信任的根证书颁发机构的证书；自动根证书更新服务，用于从 Windows 更新中检索根证书和启用 SSL 等方案。如果此服务已停止，这些管理服务将无法正常运行。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'CryptSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1248', '169.254.139.125', '50:7B:9D:77:F0:62', 'DCOMLAUNCH 服务可启动 COM 和 DCOM 服务器，以响应对象激活请求。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 DCOMLAUNCH 服务。', 'DcomLaunch', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1249', '169.254.139.125', '50:7B:9D:77:F0:62', '在系统与有线或无线设备之间启用匹配。', 'DeviceAssociationService', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1250', '169.254.139.125', '50:7B:9D:77:F0:62', '为此计算机注册并更新 IP 地址。如果此服务停止，计算机将不能接收动态 IP 地址和 DNS 更新。如果此服务被禁用，所有明确依赖它的服务都将不能启动。', 'Dhcp', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1251', '169.254.139.125', '50:7B:9D:77:F0:62', 'Connected User Experiences and Telemetry 服务所启用的功能支持应用程序中用户体验和连接的用户体验。此外，如果在“反馈和诊断”下启用诊断和使用情况隐私选项设置，则此服务可以根据事件来管理诊断和使用情况信息的收集和传输(用于改进 Windows 平台的体验和质量)。', 'DiagTrack', '2624', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k utcsvc', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1252', '169.254.139.125', '50:7B:9D:77:F0:62', 'DNS 客户端服务(dnscache)缓存域名系统(DNS)名称并注册该计算机的完整计算机名。如果该服务被停止，将继续解析 DNS 名称。然而，将不缓存 DNS 名称的查询结果，且不注册计算机名。如果该服务被禁用，则任何明确依赖于它的服务都将无法启动。', 'Dnscache', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1253', '169.254.139.125', '50:7B:9D:77:F0:62', '执行内容传递优化任务', 'DoSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1254', '169.254.139.125', '50:7B:9D:77:F0:62', '诊断策略服务启用了 Windows 组件的问题检测、疑难解答和解决方案。如果该服务被停止，诊断将不再运行。', 'DPS', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1255', '169.254.139.125', '50:7B:9D:77:F0:62', '提供应用程序之间的数据代理。', 'DsSvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1256', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'ETDService', '2536', 'Auto', 'Running', '\"C:\\Program Files\\Elantech\\ETDService.exe\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1257', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务管理事件和事件日志。它支持日志记录事件、查询事件、订阅事件、归档事件日志以及管理事件元数据。它可以用 XML 和纯文本两种格式显示事件。停止该服务可能危及系统的安全性和可靠性。', 'EventLog', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1258', '169.254.139.125', '50:7B:9D:77:F0:62', '支持系统事件通知服务 (SENS)，此服务为订阅的组件对象模型 (COM) 组件提供自动分布事件功能。如果停止此服务，SENS 将关闭，而且不能提供登录和注销通知。如果禁用此服务，显式依赖此服务的其他服务都将无法启动。', 'EventSystem', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1259', '169.254.139.125', '50:7B:9D:77:F0:62', '通过缓存常用字体数据优化应用程序的性能。如果尚未运行该服务，则应用程序将启动该服务。也可以禁用该服务，但是这样做会降低应用程序性能。', 'FontCache', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1260', '169.254.139.125', '50:7B:9D:77:F0:62', '通过缓存常用的字体数据来优化 Windows Presentation Foundation (WPF) 应用程序的性能。WPF 应用程序将启动此服务(如果尚未启动)。可以禁用此服务，尽管这样做会降低 WPF 应用程序的性能。', 'FontCache3.0.0.0', '1828', 'Manual', 'Running', 'C:\\WINDOWS\\Microsoft.Net\\Framework64\\v3.0\\WPF\\PresentationFontCache.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1261', '169.254.139.125', '50:7B:9D:77:F0:62', '激活键盘、遥控器和其他多媒体设备上的热按钮并继续使用这些按钮。建议你让此服务一直运行。', 'hidserv', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1262', '169.254.139.125', '50:7B:9D:77:F0:62', 'Intel(R) Wireless Bluetooth(R) iBtSiva Service', 'ibtsiva', '2652', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\ibtsiva', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1263', '169.254.139.125', '50:7B:9D:77:F0:62', 'Service for Intel(R) HD Graphics Control Panel', 'igfxCUIService2.0.0.0', '1344', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\igfxCUIService.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1264', '169.254.139.125', '50:7B:9D:77:F0:62', 'IKEEXT 服务托管 Internet 密钥交换(IKE)和身份验证 Internet 协议(AuthIP)键控模块。这些键控模块用于 Internet 协议安全(IPSec)中的身份验证和密钥交换。停止或禁用 IKEEXT 服务将禁用与对等计算机的 IKE/AuthIP 密钥交换。通常将 IPSec 配置为使用 IKE 或 AuthIP，因此停止或禁用 IKEEXT 服务将导致 IPSec 故障并且危及系统的安全。强烈建议运行 IKEEXT 服务。', 'IKEEXT', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1265', '169.254.139.125', '50:7B:9D:77:F0:62', '使用 IPv6 转换技术(6to4、ISATAP、端口代理和 Teredo)和 IP-HTTPS 提供隧道连接。如果停止该服务，则计算机将不具备这些技术提供的增强连接优势。', 'iphlpsvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetSvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1266', '169.254.139.125', '50:7B:9D:77:F0:62', 'CNG 密钥隔离服务宿主在 LSA 进程中。如一般原则所要求，该服务为私钥和相关加密操作提供密钥进程隔离。该服务在与一般原则要求相一致的安全进程中存储和使用生存期长的密钥。', 'KeyIso', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1267', '169.254.139.125', '50:7B:9D:77:F0:62', '支持此计算机通过网络的文件、打印、和命名管道共享。如果服务停止，这些功能不可用。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'LanmanServer', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1268', '169.254.139.125', '50:7B:9D:77:F0:62', '使用 SMB 协议创建并维护客户端网络与远程服务器之间的连接。如果此服务已停止，这些连接将无法使用。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'LanmanWorkstation', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1269', '169.254.139.125', '50:7B:9D:77:F0:62', '联想驱动管理服务，包括驱动升级、硬件检测以及质保查询服务。', 'LenovoDrvSv', '2692', 'Auto', 'Running', 'C:\\software\\Lenovo Drivers Management\\lenovodrvsrv.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1270', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务将监视系统的当前位置并管理地理围栏(具有关联事件的地理位置)。如果你禁用此服务，应用程序将无法使用或接收有关地理位置或地理围栏的通知。', 'lfsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1271', '169.254.139.125', '50:7B:9D:77:F0:62', '为 Windows 应用商店提供基础结构支持。此服务按需启动，如果禁用此服务，则通过 Windows 应用商店获得的内容将无法正常运行。', 'LicenseManager', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1272', '169.254.139.125', '50:7B:9D:77:F0:62', '提供 TCP/IP (NetBT) 服务上的 NetBIOS 和网络上客户端的 NetBIOS 名称解析的支持，从而使用户能够共享文件、打印和登录到网络。如果此服务被停用，这些功能可能不可用。如果此服务被禁用，任何依赖它的服务将无法启动。', 'lmhosts', '1040', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1273', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'LSM', '864', 'Unknown', 'Running', '', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1274', '169.254.139.125', '50:7B:9D:77:F0:62', 'Windows 防火墙通过阻止未授权用户通过 Internet 或网络访问你的计算机来帮助保护计算机。', 'MpsSvc', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1275', '169.254.139.125', '50:7B:9D:77:F0:62', '提供消息结构和开发工具，用于创建基于 Windows 的网络和程序的分布式消息应用程序。如果停止该服务，那么分布式消息将无法使用，如果禁用该服务，那么任何直接依靠它的服务将无法启动。', 'MSMQ', '2580', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\mqsvc.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1276', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'MySQL', '2860', 'Auto', 'Running', '\"C:\\Program Files (x86)\\MySQL\\MySQL Server 5.5\\bin\\mysqld\" --defaults-file', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1277', '169.254.139.125', '50:7B:9D:77:F0:62', '允许 Windows 应用商店应用从 Internet 接收通知的代理连接。', 'NcbService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1278', '169.254.139.125', '50:7B:9D:77:F0:62', '管理“网络和拨号连接”文件夹中对象，在其中你可以查看局域网和远程连接。', 'Netman', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1279', '169.254.139.125', '50:7B:9D:77:F0:62', '通过 net.msmq 和 msmq.formatname 协议接收到激活请求并将其传递给 Windows 进程激活服务。', 'NetMsmqActivator', '8', 'Auto', 'Running', '\"C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe\" -NetMsmqActivator', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1280', '169.254.139.125', '50:7B:9D:77:F0:62', '通过 net.pipe 协议接收激活请求并将其传递给 Windows 进程激活服务。', 'NetPipeActivator', '3492', 'Auto', 'Running', 'C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1281', '169.254.139.125', '50:7B:9D:77:F0:62', '识别计算机已连接的网络，收集和存储这些网络的属性，并在更改这些属性时通知应用程序。', 'netprofm', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1282', '169.254.139.125', '50:7B:9D:77:F0:62', '收集和存储网络的配置信息，并在此信息被修改时向程序发出通知。如果停止此服务，则配置信息可能不可用；如果禁用此服务，则显式依赖此服务的所有服务都将无法启动。', 'NlaSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1283', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务向用户模式客户端发送网络通知(例如，添加/删除接口等)。停止此服务将导致丢失网络连接。如果禁用此服务，则显式依赖此服务的所有其他服务都将无法启动。', 'nsi', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1284', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务为程序兼容性助手(PCA)提供支持。PCA 监视由用户安装和运行的程序，并检测已知兼容性问题。如果停止此服务，PCA 将无法正常运行。', 'PcaSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1285', '169.254.139.125', '50:7B:9D:77:F0:62', '使计算机在极少或没有用户输入的情况下能识别并适应硬件的更改。终止或禁用此服务会造成系统不稳定。', 'PlugPlay', '864', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1286', '169.254.139.125', '50:7B:9D:77:F0:62', 'Internet 协议安全(IPSec)支持网络级别的对等身份验证、数据原始身份验证、数据完整性、数据机密性(加密)以及重播保护。此服务强制执行通过 IP 安全策略管理单元或命令行工具 \"netsh ipsec\" 创建的 IPSec 策略。停止此服务时，如果策略需要连接使用 IPSec，可能会遇到网络连接问题。同样，此服务停止时，Windows 防火墙的远程管理也不再可用。', 'PolicyAgent', '3460', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkServiceNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1287', '169.254.139.125', '50:7B:9D:77:F0:62', '管理电源策略和电源策略通知传递。', 'Power', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1288', '169.254.139.125', '50:7B:9D:77:F0:62', '此服务负责加载和卸载用户配置文件。如果已停止或禁用此服务，用户将无法再成功登录或注销，应用在获取用户数据时可能会出问题，而且为接收配置文件事件通知注册的组件将无法接收这些通知。', 'ProfSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1289', '169.254.139.125', '50:7B:9D:77:F0:62', '腾讯安全服务', 'QPCore', '2668', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\Tencent\\QQProtect\\Bin\\QQProtect.exe\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1290', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'QQCertificateService', '2660', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\tencent\\paycenter\\TenpayServer.exe\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1291', '169.254.139.125', '50:7B:9D:77:F0:62', '解析 RPC 接口标识符以传输端点。如果此服务被停止或禁用，使用远程过程调用(RPC)服务的程序将无法正常运行。', 'RpcEptMapper', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k RPCSS', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1292', '169.254.139.125', '50:7B:9D:77:F0:62', '在 Windows 2003 和 Windows 的早期版本中，远程过程调用(RPC)定位器服务可管理 RPC 名称服务数据库。在 Windows Vista 和 Windows 的更新版本中，此服务不提供任何功能，但可用于应用程序兼容性。', 'RpcLocator', '3884', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\locator.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1293', '169.254.139.125', '50:7B:9D:77:F0:62', 'RPCSS 服务是 COM 和 DCOM 服务器的服务控制管理器。它执行 COM 和 DCOM 服务器的对象激活请求、对象导出程序解析和分布式垃圾回收。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 RPCSS 服务。', 'RpcSs', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k rpcss', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1294', '169.254.139.125', '50:7B:9D:77:F0:62', '启动此服务将向其他服务发出信号: 安全帐户管理器(SAM)已准备就绪，可以接受请求。禁用此服务将导致在 SAM 准备就绪时，无法通知系统中的其他服务，从而可能导致这些服务无法正确启动。不应禁用此服务。', 'SamSs', '764', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1295', '169.254.139.125', '50:7B:9D:77:F0:62', '使用户可以在此计算机上配置和计划自动任务。此服务还托管多个 Windows 系统关键任务。如果此服务被停止或禁用，这些任务将无法在计划的时间运行。如果此服务被禁用，则明确依赖它的所有服务将无法启动。', 'Schedule', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1296', '169.254.139.125', '50:7B:9D:77:F0:62', '监视系统事件并通知订户这些事件的 COM+ 事件系统。', 'SENS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1297', '169.254.139.125', '50:7B:9D:77:F0:62', '一项用于管理各种传感器的功能的传感器服务。管理传感器的简单设备方向(SDO)和历史记录。加载对设备方向变化进行报告的 SDO 传感器。如果停止或禁用了此服务，则将不会加载 SDO 传感器，因此不会发生自动旋转。来自传感器的历史记录收集也将停止。', 'SensorService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1298', '169.254.139.125', '50:7B:9D:77:F0:62', '为家庭和小型办公网络提供网络地址转换、寻址、名称解析和/或入侵保护服务。', 'SharedAccess', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1299', '169.254.139.125', '50:7B:9D:77:F0:62', '为自动播放硬件事件提供通知。', 'ShellHWDetection', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1300', '169.254.139.125', '50:7B:9D:77:F0:62', '该服务在后台执行打印作业并处理与打印机的交互。如果关闭该服务，则无法进行打印或查看打印机。', 'Spooler', '2076', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\spoolsv.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1301', '169.254.139.125', '50:7B:9D:77:F0:62', '当发现了使用 SSDP 协议的网络设备和服务，如 UPnP 设备，同时还报告了运行在本地计算机上使用的 SSDP 设备和服务。如果停止此服务，基于 SSDP 的设备将不会被发现。如果禁用此服务，任何依赖此服务的服务都无法正常启动。', 'SSDPSRV', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1302', '169.254.139.125', '50:7B:9D:77:F0:62', '为应用程序模型提供所需的基础结构支持。', 'StateRepository', '2916', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1303', '169.254.139.125', '50:7B:9D:77:F0:62', '维护和提高一段时间内的系统性能。', 'SysMain', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1304', '169.254.139.125', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'SystemEventsBroker', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1305', '169.254.139.125', '50:7B:9D:77:F0:62', '为用户提供使用主题管理的体验。', 'Themes', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1306', '169.254.139.125', '50:7B:9D:77:F0:62', '用于获取图块更新的图块服务器。', 'tiledatamodelsvc', '2916', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1307', '169.254.139.125', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'TimeBroker', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1308', '169.254.139.125', '50:7B:9D:77:F0:62', '允许 UPnP 设备宿主在此计算机上。如果停止此服务，则所有宿主的 UPnP 设备都将停止工作，并且不能添加其他宿主设备。如果禁用此服务，则任何显式依赖于它的服务将都无法启动。', 'upnphost', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1309', '169.254.139.125', '50:7B:9D:77:F0:62', '用户管理器提供多用户交互所需要的运行时组件。如果停止此服务，某些应用程序可能无法正确运行。', 'UserManager', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1310', '169.254.139.125', '50:7B:9D:77:F0:62', '为用户、应用程序和安全服务包提供凭据的安全存储和检索。', 'VaultSvc', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1311', '169.254.139.125', '50:7B:9D:77:F0:62', 'Authorization and authentication service for starting and accessing virtual machines.', 'VMAuthdService', '2844', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-authd.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1312', '169.254.139.125', '50:7B:9D:77:F0:62', 'DHCP service for virtual networks.', 'VMnetDHCP', '2788', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnetdhcp.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1313', '169.254.139.125', '50:7B:9D:77:F0:62', 'Arbitration and enumeration of USB devices for virtual machines', 'VMUSBArbService', '2752', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\VMware\\USB\\vmware-usbarbitrator64.exe\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1314', '169.254.139.125', '50:7B:9D:77:F0:62', 'Network address translation for virtual networks.', 'VMware NAT Service', '2680', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnat.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1315', '169.254.139.125', '50:7B:9D:77:F0:62', 'Remote access service for registration and management of virtual machines.', 'VMwareHostd', '4152', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-hostd.exe -u \"C:\\ProgramData\\VMware\\hostd\\config.xml\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1316', '169.254.139.125', '50:7B:9D:77:F0:62', '通过 Internet Information Services 管理器提供 Web 连接和管理', 'W3SVC', '2484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1317', '169.254.139.125', '50:7B:9D:77:F0:62', 'Windows Process Activation Service (WAS)为通过消息激活的应用程序提供进程激活、资源管理和运行状况管理服务。', 'WAS', '2484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1318', '169.254.139.125', '50:7B:9D:77:F0:62', '根据电脑当前可用的网络连接选项做出自动连接/断开连接决策，并根据“组策略”设置启用网络连接管理。', 'Wcmsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1319', '169.254.139.125', '50:7B:9D:77:F0:62', '诊断服务主机被诊断策略服务用来承载需要在本地服务上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiServiceHost', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1320', '169.254.139.125', '50:7B:9D:77:F0:62', '诊断系统主机被诊断策略服务用来承载需要在本地系统上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiSystemHost', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1321', '169.254.139.125', '50:7B:9D:77:F0:62', 'WinHTTP 实现了客户端 HTTP 堆栈并向开发人员提供 Win32 API 和 COM 自动化组件以供发送 HTTP 请求和接收响应。此外，通过执行 Web 代理自动发现(WPAD)协议，WinHTTP 还提供对自动发现代理服务器配置的支持。', 'WinHttpAutoProxySvc', '992', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1322', '169.254.139.125', '50:7B:9D:77:F0:62', '提供共同的界面和对象模式以便访问有关操作系统、设备、应用程序和服务的管理信息。如果此服务被终止，多数基于 Windows 的软件将无法正常运行。如果此服务被禁用，任何依赖它的服务将无法启动。', 'Winmgmt', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1323', '169.254.139.125', '50:7B:9D:77:F0:62', 'WLANSVC 服务提供配置、发现、连接、断开与 IEEE 802.11 标准定义的无线局域网(WLAN)的连接所需的逻辑。它还包含将计算机变成软件访问点的逻辑，以便其他设备或计算机可以使用支持它的 WLAN 适配器无线连接到计算机。停止或禁用 WLANSVC 服务将使得计算机上的所有 WLAN 适配器无法访问 Windows 网络连接 UI。强烈建议: 如果你的计算机具有 WLAN 适配器，则运行 WLANSVC 服务。', 'WlanSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1324', '169.254.139.125', '50:7B:9D:77:F0:62', 'WSCSVC(Windows 安全中心)服务监视并报告计算机上的安全健康设置。健康设置包括防火墙(打开/关闭)、防病毒(打开/关闭/过期)、反间谍软件(打开/关闭/过期)、Windows 更新(自动/手动下载并安装更新)、用户帐户控制(打开/关闭)以及 Internet 设置(推荐/不推荐)。该服务为独立软件供应商提供 COM API 以便向安全中心服务注册并记录其产品的状态。安全性与维护 UI 使用该服务在“安全性与维护”控制面板中提供 systray 警报和安全健康状况的图形视图。网络访问保护(NAP)使用该服务向 NAP 网络策略服务器报告客户端的安全健康状况，以便进行网络隔离决策。该服务还提供一个公共 API，以允许外部客户以编程方式检索系统的聚合安全健康状况。', 'wscsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1325', '169.254.139.125', '50:7B:9D:77:F0:62', '为文件、电子邮件和其他内容提供内容索引、属性缓存和搜索结果。', 'WSearch', '5088', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\SearchIndexer.exe /Embedding', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1326', '169.254.139.125', '50:7B:9D:77:F0:62', '创建并管理用户模式驱动程序进程。该服务不能被停止。', 'wudfsvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1327', '169.254.139.125', '50:7B:9D:77:F0:62', '迅雷基础服务，为迅雷下载软件的正常运行提供支持，保证迅雷下载软件能更稳定快速的运行。', 'XLServicePlatform', '2760', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost -k XLServicePlatform', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1328', '169.254.139.125', '50:7B:9D:77:F0:62', '360主动防御的服务项，提供实时保护、文件变化监控、智能扫描加速等功能。关闭此服务可能导致木马防不住、查不出，严重降低木马扫描速度。', 'ZhuDongFangYu', '1756', 'Auto', 'Running', '\"C:\\Program Files (x86)\\360\\360Safe\\deepscan\\zhudongfangyu.exe\"', null, '2016-07-23 17:18:33');
INSERT INTO `serviceinfo` VALUES ('1329', '192.168.31.213', '50:7B:9D:77:F0:62', '使用辅助管理权限便于交互式应用程序的运行。如果停止此服务，用户将无法使用辅助管理权限启动应用程序，而执行所需用户任务可能需要这些权限。', 'Appinfo', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1330', '192.168.31.213', '50:7B:9D:77:F0:62', '管理 Windows 音频服务的音频设备。如果停止了此服务，音频设备和效果将无法正常工作。如果禁用了此服务，任何明确依赖它的服务将无法启动', 'AudioEndpointBuilder', '832', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1331', '192.168.31.213', '50:7B:9D:77:F0:62', '管理基于 Windows 的程序的音频。如果此服务被停止，音频设备和效果将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动', 'Audiosrv', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1332', '192.168.31.213', '50:7B:9D:77:F0:62', '基本筛选引擎(BFE)是一种管理防火墙和 Internet 协议安全(IPsec)策略以及实施用户模式筛选的服务。停止或禁用 BFE 服务将大大降低系统的安全。还将造成 IPsec 管理和防火墙应用程序产生不可预知的行为。', 'BFE', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1333', '192.168.31.213', '50:7B:9D:77:F0:62', '使用空闲网络带宽在后台传送文件。如果该服务被禁用，则依赖于 BITS 的任何应用程序(如 Windows 更新或 MSN Explorer)将无法自动下载程序和其他信息。', 'BITS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1334', '192.168.31.213', '50:7B:9D:77:F0:62', '控制哪些后台任务可以在系统上运行的 Windows 基础结构服务。', 'BrokerInfrastructure', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1335', '192.168.31.213', '50:7B:9D:77:F0:62', '维护网络上计算机的更新列表，并将列表提供给计算机指定浏览。如果服务停止，列表不会被更新或维护。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'Browser', '484', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1336', '192.168.31.213', '50:7B:9D:77:F0:62', 'Manages communication between system components.', 'CoreMessagingRegistrar', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1337', '192.168.31.213', '50:7B:9D:77:F0:62', 'Intel(R) Content Protection HECI Service - enables communication with the Content Protection FW', 'cphs', '1836', 'Manual', 'Running', 'C:\\WINDOWS\\SysWow64\\IntelCpHeciSvc.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1338', '192.168.31.213', '50:7B:9D:77:F0:62', '提供三种管理服务: 编录数据库服务，用于确认 Windows 文件的签名和允许安装新程序；受保护的根服务，它从此计算机添加和删除受信任的根证书颁发机构的证书；自动根证书更新服务，用于从 Windows 更新中检索根证书和启用 SSL 等方案。如果此服务已停止，这些管理服务将无法正常运行。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'CryptSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1339', '192.168.31.213', '50:7B:9D:77:F0:62', 'DCOMLAUNCH 服务可启动 COM 和 DCOM 服务器，以响应对象激活请求。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 DCOMLAUNCH 服务。', 'DcomLaunch', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1340', '192.168.31.213', '50:7B:9D:77:F0:62', '在系统与有线或无线设备之间启用匹配。', 'DeviceAssociationService', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1341', '192.168.31.213', '50:7B:9D:77:F0:62', '为此计算机注册并更新 IP 地址。如果此服务停止，计算机将不能接收动态 IP 地址和 DNS 更新。如果此服务被禁用，所有明确依赖它的服务都将不能启动。', 'Dhcp', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1342', '192.168.31.213', '50:7B:9D:77:F0:62', 'Connected User Experiences and Telemetry 服务所启用的功能支持应用程序中用户体验和连接的用户体验。此外，如果在“反馈和诊断”下启用诊断和使用情况隐私选项设置，则此服务可以根据事件来管理诊断和使用情况信息的收集和传输(用于改进 Windows 平台的体验和质量)。', 'DiagTrack', '2624', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k utcsvc', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1343', '192.168.31.213', '50:7B:9D:77:F0:62', 'DNS 客户端服务(dnscache)缓存域名系统(DNS)名称并注册该计算机的完整计算机名。如果该服务被停止，将继续解析 DNS 名称。然而，将不缓存 DNS 名称的查询结果，且不注册计算机名。如果该服务被禁用，则任何明确依赖于它的服务都将无法启动。', 'Dnscache', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkService', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1344', '192.168.31.213', '50:7B:9D:77:F0:62', '执行内容传递优化任务', 'DoSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1345', '192.168.31.213', '50:7B:9D:77:F0:62', '诊断策略服务启用了 Windows 组件的问题检测、疑难解答和解决方案。如果该服务被停止，诊断将不再运行。', 'DPS', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1346', '192.168.31.213', '50:7B:9D:77:F0:62', '提供应用程序之间的数据代理。', 'DsSvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1347', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'ETDService', '2536', 'Auto', 'Running', '\"C:\\Program Files\\Elantech\\ETDService.exe\"', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1348', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务管理事件和事件日志。它支持日志记录事件、查询事件、订阅事件、归档事件日志以及管理事件元数据。它可以用 XML 和纯文本两种格式显示事件。停止该服务可能危及系统的安全性和可靠性。', 'EventLog', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1349', '192.168.31.213', '50:7B:9D:77:F0:62', '支持系统事件通知服务 (SENS)，此服务为订阅的组件对象模型 (COM) 组件提供自动分布事件功能。如果停止此服务，SENS 将关闭，而且不能提供登录和注销通知。如果禁用此服务，显式依赖此服务的其他服务都将无法启动。', 'EventSystem', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1350', '192.168.31.213', '50:7B:9D:77:F0:62', '通过缓存常用字体数据优化应用程序的性能。如果尚未运行该服务，则应用程序将启动该服务。也可以禁用该服务，但是这样做会降低应用程序性能。', 'FontCache', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1351', '192.168.31.213', '50:7B:9D:77:F0:62', '通过缓存常用的字体数据来优化 Windows Presentation Foundation (WPF) 应用程序的性能。WPF 应用程序将启动此服务(如果尚未启动)。可以禁用此服务，尽管这样做会降低 WPF 应用程序的性能。', 'FontCache3.0.0.0', '1828', 'Manual', 'Running', 'C:\\WINDOWS\\Microsoft.Net\\Framework64\\v3.0\\WPF\\PresentationFontCache.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1352', '192.168.31.213', '50:7B:9D:77:F0:62', '激活键盘、遥控器和其他多媒体设备上的热按钮并继续使用这些按钮。建议你让此服务一直运行。', 'hidserv', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1353', '192.168.31.213', '50:7B:9D:77:F0:62', 'Intel(R) Wireless Bluetooth(R) iBtSiva Service', 'ibtsiva', '2652', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\ibtsiva', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1354', '192.168.31.213', '50:7B:9D:77:F0:62', 'Service for Intel(R) HD Graphics Control Panel', 'igfxCUIService2.0.0.0', '1344', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\igfxCUIService.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1355', '192.168.31.213', '50:7B:9D:77:F0:62', 'IKEEXT 服务托管 Internet 密钥交换(IKE)和身份验证 Internet 协议(AuthIP)键控模块。这些键控模块用于 Internet 协议安全(IPSec)中的身份验证和密钥交换。停止或禁用 IKEEXT 服务将禁用与对等计算机的 IKE/AuthIP 密钥交换。通常将 IPSec 配置为使用 IKE 或 AuthIP，因此停止或禁用 IKEEXT 服务将导致 IPSec 故障并且危及系统的安全。强烈建议运行 IKEEXT 服务。', 'IKEEXT', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1356', '192.168.31.213', '50:7B:9D:77:F0:62', '使用 IPv6 转换技术(6to4、ISATAP、端口代理和 Teredo)和 IP-HTTPS 提供隧道连接。如果停止该服务，则计算机将不具备这些技术提供的增强连接优势。', 'iphlpsvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetSvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1357', '192.168.31.213', '50:7B:9D:77:F0:62', 'CNG 密钥隔离服务宿主在 LSA 进程中。如一般原则所要求，该服务为私钥和相关加密操作提供密钥进程隔离。该服务在与一般原则要求相一致的安全进程中存储和使用生存期长的密钥。', 'KeyIso', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1358', '192.168.31.213', '50:7B:9D:77:F0:62', '支持此计算机通过网络的文件、打印、和命名管道共享。如果服务停止，这些功能不可用。如果服务被禁用，任何直接依赖于此服务的服务将无法启动。', 'LanmanServer', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1359', '192.168.31.213', '50:7B:9D:77:F0:62', '使用 SMB 协议创建并维护客户端网络与远程服务器之间的连接。如果此服务已停止，这些连接将无法使用。如果此服务已禁用，任何明确依赖它的服务将无法启动。', 'LanmanWorkstation', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1360', '192.168.31.213', '50:7B:9D:77:F0:62', '联想驱动管理服务，包括驱动升级、硬件检测以及质保查询服务。', 'LenovoDrvSv', '2692', 'Auto', 'Running', 'C:\\software\\Lenovo Drivers Management\\lenovodrvsrv.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1361', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务将监视系统的当前位置并管理地理围栏(具有关联事件的地理位置)。如果你禁用此服务，应用程序将无法使用或接收有关地理位置或地理围栏的通知。', 'lfsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1362', '192.168.31.213', '50:7B:9D:77:F0:62', '为 Windows 应用商店提供基础结构支持。此服务按需启动，如果禁用此服务，则通过 Windows 应用商店获得的内容将无法正常运行。', 'LicenseManager', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1363', '192.168.31.213', '50:7B:9D:77:F0:62', '提供 TCP/IP (NetBT) 服务上的 NetBIOS 和网络上客户端的 NetBIOS 名称解析的支持，从而使用户能够共享文件、打印和登录到网络。如果此服务被停用，这些功能可能不可用。如果此服务被禁用，任何依赖它的服务将无法启动。', 'lmhosts', '1040', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1364', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'LSM', '864', 'Unknown', 'Running', '', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1365', '192.168.31.213', '50:7B:9D:77:F0:62', 'Windows 防火墙通过阻止未授权用户通过 Internet 或网络访问你的计算机来帮助保护计算机。', 'MpsSvc', '1696', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNoNetwork', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1366', '192.168.31.213', '50:7B:9D:77:F0:62', '提供消息结构和开发工具，用于创建基于 Windows 的网络和程序的分布式消息应用程序。如果停止该服务，那么分布式消息将无法使用，如果禁用该服务，那么任何直接依靠它的服务将无法启动。', 'MSMQ', '2580', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\mqsvc.exe', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1367', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'MySQL', '2860', 'Auto', 'Running', '\"C:\\Program Files (x86)\\MySQL\\MySQL Server 5.5\\bin\\mysqld\" --defaults-file', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1368', '192.168.31.213', '50:7B:9D:77:F0:62', '允许 Windows 应用商店应用从 Internet 接收通知的代理连接。', 'NcbService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:32');
INSERT INTO `serviceinfo` VALUES ('1369', '192.168.31.213', '50:7B:9D:77:F0:62', '管理“网络和拨号连接”文件夹中对象，在其中你可以查看局域网和远程连接。', 'Netman', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1370', '192.168.31.213', '50:7B:9D:77:F0:62', '通过 net.msmq 和 msmq.formatname 协议接收到激活请求并将其传递给 Windows 进程激活服务。', 'NetMsmqActivator', '8', 'Auto', 'Running', '\"C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe\" -NetMsmqActivator', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1371', '192.168.31.213', '50:7B:9D:77:F0:62', '通过 net.pipe 协议接收激活请求并将其传递给 Windows 进程激活服务。', 'NetPipeActivator', '3492', 'Auto', 'Running', 'C:\\WINDOWS\\Microsoft.NET\\Framework64\\v4.0.30319\\SMSvcHost.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1372', '192.168.31.213', '50:7B:9D:77:F0:62', '识别计算机已连接的网络，收集和存储这些网络的属性，并在更改这些属性时通知应用程序。', 'netprofm', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1373', '192.168.31.213', '50:7B:9D:77:F0:62', '收集和存储网络的配置信息，并在此信息被修改时向程序发出通知。如果停止此服务，则配置信息可能不可用；如果禁用此服务，则显式依赖此服务的所有服务都将无法启动。', 'NlaSvc', '1352', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k NetworkService', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1374', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务向用户模式客户端发送网络通知(例如，添加/删除接口等)。停止此服务将导致丢失网络连接。如果禁用此服务，则显式依赖此服务的所有其他服务都将无法启动。', 'nsi', '992', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1375', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务为程序兼容性助手(PCA)提供支持。PCA 监视由用户安装和运行的程序，并检测已知兼容性问题。如果停止此服务，PCA 将无法正常运行。', 'PcaSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1376', '192.168.31.213', '50:7B:9D:77:F0:62', '使计算机在极少或没有用户输入的情况下能识别并适应硬件的更改。终止或禁用此服务会造成系统不稳定。', 'PlugPlay', '864', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1377', '192.168.31.213', '50:7B:9D:77:F0:62', 'Internet 协议安全(IPSec)支持网络级别的对等身份验证、数据原始身份验证、数据完整性、数据机密性(加密)以及重播保护。此服务强制执行通过 IP 安全策略管理单元或命令行工具 \"netsh ipsec\" 创建的 IPSec 策略。停止此服务时，如果策略需要连接使用 IPSec，可能会遇到网络连接问题。同样，此服务停止时，Windows 防火墙的远程管理也不再可用。', 'PolicyAgent', '3460', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k NetworkServiceNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1378', '192.168.31.213', '50:7B:9D:77:F0:62', '管理电源策略和电源策略通知传递。', 'Power', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1379', '192.168.31.213', '50:7B:9D:77:F0:62', '此服务负责加载和卸载用户配置文件。如果已停止或禁用此服务，用户将无法再成功登录或注销，应用在获取用户数据时可能会出问题，而且为接收配置文件事件通知注册的组件将无法接收这些通知。', 'ProfSvc', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1380', '192.168.31.213', '50:7B:9D:77:F0:62', '腾讯安全服务', 'QPCore', '2668', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\Tencent\\QQProtect\\Bin\\QQProtect.exe\"', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1381', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'QQCertificateService', '2660', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\tencent\\paycenter\\TenpayServer.exe\"', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1382', '192.168.31.213', '50:7B:9D:77:F0:62', '解析 RPC 接口标识符以传输端点。如果此服务被停止或禁用，使用远程过程调用(RPC)服务的程序将无法正常运行。', 'RpcEptMapper', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k RPCSS', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1383', '192.168.31.213', '50:7B:9D:77:F0:62', '在 Windows 2003 和 Windows 的早期版本中，远程过程调用(RPC)定位器服务可管理 RPC 名称服务数据库。在 Windows Vista 和 Windows 的更新版本中，此服务不提供任何功能，但可用于应用程序兼容性。', 'RpcLocator', '3884', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\locator.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1384', '192.168.31.213', '50:7B:9D:77:F0:62', 'RPCSS 服务是 COM 和 DCOM 服务器的服务控制管理器。它执行 COM 和 DCOM 服务器的对象激活请求、对象导出程序解析和分布式垃圾回收。如果此服务被停用或禁用，则使用 COM 或 DCOM 的程序将无法正常工作。强烈建议你运行 RPCSS 服务。', 'RpcSs', '972', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k rpcss', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1385', '192.168.31.213', '50:7B:9D:77:F0:62', '启动此服务将向其他服务发出信号: 安全帐户管理器(SAM)已准备就绪，可以接受请求。禁用此服务将导致在 SAM 准备就绪时，无法通知系统中的其他服务，从而可能导致这些服务无法正确启动。不应禁用此服务。', 'SamSs', '764', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1386', '192.168.31.213', '50:7B:9D:77:F0:62', '使用户可以在此计算机上配置和计划自动任务。此服务还托管多个 Windows 系统关键任务。如果此服务被停止或禁用，这些任务将无法在计划的时间运行。如果此服务被禁用，则明确依赖它的所有服务将无法启动。', 'Schedule', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1387', '192.168.31.213', '50:7B:9D:77:F0:62', '监视系统事件并通知订户这些事件的 COM+ 事件系统。', 'SENS', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1388', '192.168.31.213', '50:7B:9D:77:F0:62', '一项用于管理各种传感器的功能的传感器服务。管理传感器的简单设备方向(SDO)和历史记录。加载对设备方向变化进行报告的 SDO 传感器。如果停止或禁用了此服务，则将不会加载 SDO 传感器，因此不会发生自动旋转。来自传感器的历史记录收集也将停止。', 'SensorService', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1389', '192.168.31.213', '50:7B:9D:77:F0:62', '为家庭和小型办公网络提供网络地址转换、寻址、名称解析和/或入侵保护服务。', 'SharedAccess', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1390', '192.168.31.213', '50:7B:9D:77:F0:62', '为自动播放硬件事件提供通知。', 'ShellHWDetection', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1391', '192.168.31.213', '50:7B:9D:77:F0:62', '该服务在后台执行打印作业并处理与打印机的交互。如果关闭该服务，则无法进行打印或查看打印机。', 'Spooler', '2076', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\spoolsv.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1392', '192.168.31.213', '50:7B:9D:77:F0:62', '当发现了使用 SSDP 协议的网络设备和服务，如 UPnP 设备，同时还报告了运行在本地计算机上使用的 SSDP 设备和服务。如果停止此服务，基于 SSDP 的设备将不会被发现。如果禁用此服务，任何依赖此服务的服务都无法正常启动。', 'SSDPSRV', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1393', '192.168.31.213', '50:7B:9D:77:F0:62', '为应用程序模型提供所需的基础结构支持。', 'StateRepository', '2916', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1394', '192.168.31.213', '50:7B:9D:77:F0:62', '维护和提高一段时间内的系统性能。', 'SysMain', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1395', '192.168.31.213', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'SystemEventsBroker', '864', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k DcomLaunch', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1396', '192.168.31.213', '50:7B:9D:77:F0:62', '为用户提供使用主题管理的体验。', 'Themes', '484', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1397', '192.168.31.213', '50:7B:9D:77:F0:62', '用于获取图块更新的图块服务器。', 'tiledatamodelsvc', '2916', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k appmodel', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1398', '192.168.31.213', '50:7B:9D:77:F0:62', '协调执行 WinRT 应用程序的后台作业。如果停止或禁用此服务，则可能不会触发后台作业。', 'TimeBroker', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1399', '192.168.31.213', '50:7B:9D:77:F0:62', '允许 UPnP 设备宿主在此计算机上。如果停止此服务，则所有宿主的 UPnP 设备都将停止工作，并且不能添加其他宿主设备。如果禁用此服务，则任何显式依赖于它的服务将都无法启动。', 'upnphost', '1080', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceAndNoImpersonation', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1400', '192.168.31.213', '50:7B:9D:77:F0:62', '用户管理器提供多用户交互所需要的运行时组件。如果停止此服务，某些应用程序可能无法正确运行。', 'UserManager', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1401', '192.168.31.213', '50:7B:9D:77:F0:62', '为用户、应用程序和安全服务包提供凭据的安全存储和检索。', 'VaultSvc', '764', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\lsass.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1402', '192.168.31.213', '50:7B:9D:77:F0:62', 'Authorization and authentication service for starting and accessing virtual machines.', 'VMAuthdService', '2844', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-authd.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1403', '192.168.31.213', '50:7B:9D:77:F0:62', 'DHCP service for virtual networks.', 'VMnetDHCP', '2788', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnetdhcp.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1404', '192.168.31.213', '50:7B:9D:77:F0:62', 'Arbitration and enumeration of USB devices for virtual machines', 'VMUSBArbService', '2752', 'Auto', 'Running', '\"C:\\Program Files (x86)\\Common Files\\VMware\\USB\\vmware-usbarbitrator64.exe\"', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1405', '192.168.31.213', '50:7B:9D:77:F0:62', 'Network address translation for virtual networks.', 'VMware NAT Service', '2680', 'Auto', 'Running', 'C:\\Windows\\SysWOW64\\vmnat.exe', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1406', '192.168.31.213', '50:7B:9D:77:F0:62', 'Remote access service for registration and management of virtual machines.', 'VMwareHostd', '4152', 'Auto', 'Running', 'C:\\software\\VMWare\\vmware-hostd.exe -u \"C:\\ProgramData\\VMware\\hostd\\config.xml\"', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1407', '192.168.31.213', '50:7B:9D:77:F0:62', '通过 Internet Information Services 管理器提供 Web 连接和管理', 'W3SVC', '2484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1408', '192.168.31.213', '50:7B:9D:77:F0:62', 'Windows Process Activation Service (WAS)为通过消息激活的应用程序提供进程激活、资源管理和运行状况管理服务。', 'WAS', '2484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k iissvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1409', '192.168.31.213', '50:7B:9D:77:F0:62', '根据电脑当前可用的网络连接选项做出自动连接/断开连接决策，并根据“组策略”设置启用网络连接管理。', 'Wcmsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1410', '192.168.31.213', '50:7B:9D:77:F0:62', '诊断服务主机被诊断策略服务用来承载需要在本地服务上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiServiceHost', '992', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1411', '192.168.31.213', '50:7B:9D:77:F0:62', '诊断系统主机被诊断策略服务用来承载需要在本地系统上下文中运行的诊断。如果停止该服务，则依赖于该服务的任何诊断将不再运行。', 'WdiSystemHost', '832', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1412', '192.168.31.213', '50:7B:9D:77:F0:62', 'WinHTTP 实现了客户端 HTTP 堆栈并向开发人员提供 Win32 API 和 COM 自动化组件以供发送 HTTP 请求和接收响应。此外，通过执行 Web 代理自动发现(WPAD)协议，WinHTTP 还提供对自动发现代理服务器配置的支持。', 'WinHttpAutoProxySvc', '992', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalService', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1413', '192.168.31.213', '50:7B:9D:77:F0:62', '提供共同的界面和对象模式以便访问有关操作系统、设备、应用程序和服务的管理信息。如果此服务被终止，多数基于 Windows 的软件将无法正常运行。如果此服务被禁用，任何依赖它的服务将无法启动。', 'Winmgmt', '484', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1414', '192.168.31.213', '50:7B:9D:77:F0:62', 'WLANSVC 服务提供配置、发现、连接、断开与 IEEE 802.11 标准定义的无线局域网(WLAN)的连接所需的逻辑。它还包含将计算机变成软件访问点的逻辑，以便其他设备或计算机可以使用支持它的 WLAN 适配器无线连接到计算机。停止或禁用 WLANSVC 服务将使得计算机上的所有 WLAN 适配器无法访问 Windows 网络连接 UI。强烈建议: 如果你的计算机具有 WLAN 适配器，则运行 WLANSVC 服务。', 'WlanSvc', '832', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1415', '192.168.31.213', '50:7B:9D:77:F0:62', 'WSCSVC(Windows 安全中心)服务监视并报告计算机上的安全健康设置。健康设置包括防火墙(打开/关闭)、防病毒(打开/关闭/过期)、反间谍软件(打开/关闭/过期)、Windows 更新(自动/手动下载并安装更新)、用户帐户控制(打开/关闭)以及 Internet 设置(推荐/不推荐)。该服务为独立软件供应商提供 COM API 以便向安全中心服务注册并记录其产品的状态。安全性与维护 UI 使用该服务在“安全性与维护”控制面板中提供 systray 警报和安全健康状况的图形视图。网络访问保护(NAP)使用该服务向 NAP 网络策略服务器报告客户端的安全健康状况，以便进行网络隔离决策。该服务还提供一个公共 API，以允许外部客户以编程方式检索系统的聚合安全健康状况。', 'wscsvc', '1040', 'Auto', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k LocalServiceNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1416', '192.168.31.213', '50:7B:9D:77:F0:62', '为文件、电子邮件和其他内容提供内容索引、属性缓存和搜索结果。', 'WSearch', '5088', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\SearchIndexer.exe /Embedding', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1417', '192.168.31.213', '50:7B:9D:77:F0:62', '创建并管理用户模式驱动程序进程。该服务不能被停止。', 'wudfsvc', '832', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k LocalSystemNetworkRestricted', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1418', '192.168.31.213', '50:7B:9D:77:F0:62', '迅雷基础服务，为迅雷下载软件的正常运行提供支持，保证迅雷下载软件能更稳定快速的运行。', 'XLServicePlatform', '2760', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost -k XLServicePlatform', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1419', '192.168.31.213', '50:7B:9D:77:F0:62', '360主动防御的服务项，提供实时保护、文件变化监控、智能扫描加速等功能。关闭此服务可能导致木马防不住、查不出，严重降低木马扫描速度。', 'ZhuDongFangYu', '1756', 'Auto', 'Running', '\"C:\\Program Files (x86)\\360\\360Safe\\deepscan\\zhudongfangyu.exe\"', null, '2016-07-23 17:19:33');
INSERT INTO `serviceinfo` VALUES ('1420', '169.254.139.125', '50:7B:9D:77:F0:62', '本服务只用于加载360杀毒实时防护，请确保开机启动，系统启动后将退出。', '360rp', '1748', 'Auto', 'Running', '\"C:\\software\\360\\360sd\\360rps.exe\"', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1421', '169.254.139.125', '50:7B:9D:77:F0:62', '为 Internet 连接共享提供第三方协议插件的支持', 'ALG', '4024', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\alg.exe', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1422', '169.254.139.125', '50:7B:9D:77:F0:62', '为 IIS 提供管理服务，例如配置历史记录和应用程序池帐户映射。如果停止此服务，则配置历史记录将无法工作，也无法用特定于应用程序池的访问控制项锁定文件或目录。', 'AppHostSvc', '2468', 'Auto', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k apphost', null, '2016-07-23 17:18:32');
INSERT INTO `serviceinfo` VALUES ('1423', '169.254.139.125', '50:7B:9D:77:F0:62', '为部署应用商店应用程序提供基础结构支持。此服务根据需要启动，如果已禁用的应用商店应用程序未部署到系统，此服务可能无法正常工作。', 'AppXSvc', '180', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:30');
INSERT INTO `serviceinfo` VALUES ('1424', '169.254.139.125', '50:7B:9D:77:F0:62', '提供对 Microsoft 商店的基础结构支持。此服务按需启动，并且如果禁用了此服务，则使用 Windows 应用商店购买的应用程序将无法正常运行。', 'ClipSVC', '180', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:30');
INSERT INTO `serviceinfo` VALUES ('1425', '169.254.139.125', '50:7B:9D:77:F0:62', '支持用户通过 Microsoft 帐户标识服务登录。如果此服务已停止，用户将无法使用其 Microsoft 帐户登录到此计算机。', 'wlidsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 16:53:31');
INSERT INTO `serviceinfo` VALUES ('1426', '169.254.139.125', '50:7B:9D:77:F0:62', '启用检测、下载和安装 Windows 和其他程序的更新。如果此服务被禁用，这台计算机的用户将无法使用 Windows 更新或其自动更新功能， 并且这些程序将无法使用 Windows 更新代理(WUA) API。', 'wuauserv', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 16:53:31');
INSERT INTO `serviceinfo` VALUES ('1427', '192.168.31.213', '50:7B:9D:77:F0:62', '为部署应用商店应用程序提供基础结构支持。此服务根据需要启动，如果已禁用的应用商店应用程序未部署到系统，此服务可能无法正常工作。', 'AppXSvc', '180', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:20');
INSERT INTO `serviceinfo` VALUES ('1428', '192.168.31.213', '50:7B:9D:77:F0:62', '提供对 Microsoft 商店的基础结构支持。此服务按需启动，并且如果禁用了此服务，则使用 Windows 应用商店购买的应用程序将无法正常运行。', 'ClipSVC', '180', 'Manual', 'Running', 'C:\\WINDOWS\\System32\\svchost.exe -k wsappx', null, '2016-07-23 16:53:20');
INSERT INTO `serviceinfo` VALUES ('1429', '192.168.31.213', '50:7B:9D:77:F0:62', '支持用户通过 Microsoft 帐户标识服务登录。如果此服务已停止，用户将无法使用其 Microsoft 帐户登录到此计算机。', 'wlidsvc', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 17:14:34');
INSERT INTO `serviceinfo` VALUES ('1430', '192.168.31.213', '50:7B:9D:77:F0:62', '启用检测、下载和安装 Windows 和其他程序的更新。如果此服务被禁用，这台计算机的用户将无法使用 Windows 更新或其自动更新功能， 并且这些程序将无法使用 Windows 更新代理(WUA) API。', 'wuauserv', '484', 'Manual', 'Running', 'C:\\WINDOWS\\system32\\svchost.exe -k netsvcs', null, '2016-07-23 16:53:21');
INSERT INTO `serviceinfo` VALUES ('1431', '192.168.31.213', '50:7B:9D:77:F0:62', '', 'NetSetupSvc', '484', 'Unknown', 'Running', '', null, '2016-07-23 17:19:02');
INSERT INTO `serviceinfo` VALUES ('1432', '169.254.139.125', '50:7B:9D:77:F0:62', '', 'NetSetupSvc', '484', 'Unknown', 'Running', '', null, '2016-07-23 17:18:32');

-- ----------------------------
-- Table structure for soundinfo
-- ----------------------------
DROP TABLE IF EXISTS `soundinfo`;
CREATE TABLE `soundinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `mac` varchar(100) DEFAULT NULL,
  `Description` text COMMENT '音频设备描述',
  `Status` varchar(100) DEFAULT NULL COMMENT '状态',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of soundinfo
-- ----------------------------
INSERT INTO `soundinfo` VALUES ('1', '192.168.31.213', '50:7B:9D:77:F0:62', 'Realtek High Definition Audio', 'OK', '2016-07-23 17:19:32');
INSERT INTO `soundinfo` VALUES ('2', '192.168.31.213', '50:7B:9D:77:F0:62', '英特尔(R) 显示器音频', 'OK', '2016-07-23 17:19:32');
INSERT INTO `soundinfo` VALUES ('3', '169.254.139.125', '50:7B:9D:77:F0:62', 'Realtek High Definition Audio', 'OK', '2016-07-23 17:18:31');
INSERT INTO `soundinfo` VALUES ('4', '169.254.139.125', '50:7B:9D:77:F0:62', '英特尔(R) 显示器音频', 'OK', '2016-07-23 17:18:31');

-- ----------------------------
-- Table structure for sysinfo
-- ----------------------------
DROP TABLE IF EXISTS `sysinfo`;
CREATE TABLE `sysinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `cpuEndian` varchar(100) DEFAULT NULL COMMENT '操作系统CpuEndian',
  `dataModel` varchar(100) DEFAULT NULL COMMENT '操作系统DataModel',
  `description` varchar(100) DEFAULT NULL COMMENT '操作系统的描述',
  `vendor` varchar(100) DEFAULT NULL COMMENT '操作系统的供应商',
  `vendorCodeName` varchar(100) DEFAULT NULL COMMENT '操作系统的供应商编号',
  `vendorName` varchar(100) DEFAULT NULL COMMENT '操作系统的供应商名称',
  `vendorVersion` varchar(100) DEFAULT NULL COMMENT '操作系统供应商类型',
  `version` varchar(100) DEFAULT NULL COMMENT '操作系统的版本号',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysinfo
-- ----------------------------
INSERT INTO `sysinfo` VALUES ('10', '192.168.31.213', '50:7B:9D:77:F0:62', 'x86', 'little', '32', 'Microsoft Windows Vista', 'Microsoft', '', 'Windows Vista', 'Vista', '6.2', '2016-07-17 10:34:21');
INSERT INTO `sysinfo` VALUES ('11', '169.254.139.125', '50:7B:9D:77:F0:62', 'x86', 'little', '32', 'Microsoft Windows Vista', 'Microsoft', '', 'Windows Vista', 'Vista', '6.2', '2016-07-23 17:18:30');
