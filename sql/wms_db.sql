/*
Navicat MySQL Data Transfer

Source Server         : mysql8.0本地
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : wms_db

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2020-04-09 21:16:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wms_access_record`
-- ----------------------------
DROP TABLE IF EXISTS `wms_access_record`;
CREATE TABLE `wms_access_record` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `ACCESS_TYPE` varchar(30) NOT NULL,
  `ACCESS_TIME` datetime NOT NULL,
  `ACCESS_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_access_record
-- ----------------------------
INSERT INTO `wms_access_record` VALUES ('1', '1001', 'admin', 'login', '2020-04-07 12:05:11', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('2', '1001', 'admin', 'logout', '2020-04-07 12:36:10', '-');
INSERT INTO `wms_access_record` VALUES ('3', '1001', 'admin', 'login', '2020-04-07 12:39:32', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('4', '1001', 'admin', 'login', '2020-04-07 12:42:57', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('5', '1001', 'admin', 'login', '2020-04-07 12:45:52', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('6', '1001', 'admin', 'login', '2020-04-07 12:49:29', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('7', '1001', 'admin', 'login', '2020-04-07 13:05:08', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('8', '1001', 'admin', 'login', '2020-04-07 13:09:10', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('9', '1001', 'admin', 'login', '2020-04-07 13:12:06', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('10', '1001', 'admin', 'login', '2020-04-07 13:16:01', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('11', '1001', 'admin', 'logout', '2020-04-07 13:20:01', '-');
INSERT INTO `wms_access_record` VALUES ('12', '1001', 'admin', 'login', '2020-04-07 13:20:24', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('13', '1001', 'admin', 'logout', '2020-04-07 13:24:09', '-');
INSERT INTO `wms_access_record` VALUES ('14', '1001', 'admin', 'login', '2020-04-07 13:24:47', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('15', '1001', 'admin', 'logout', '2020-04-07 13:26:27', '-');
INSERT INTO `wms_access_record` VALUES ('16', '1001', 'admin', 'login', '2020-04-07 13:27:24', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('17', '1001', 'admin', 'login', '2020-04-07 13:30:06', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('18', '1001', 'admin', 'login', '2020-04-07 13:35:38', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('19', '1001', 'admin', 'logout', '2020-04-07 13:36:32', '-');
INSERT INTO `wms_access_record` VALUES ('20', '1001', 'admin', 'login', '2020-04-07 13:36:53', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('21', '1001', 'admin', 'logout', '2020-04-07 13:37:09', '-');
INSERT INTO `wms_access_record` VALUES ('22', '1001', 'admin', 'login', '2020-04-07 13:37:27', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('23', '1001', 'admin', 'login', '2020-04-07 13:41:52', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('24', '1001', 'admin', 'logout', '2020-04-07 13:42:30', '-');
INSERT INTO `wms_access_record` VALUES ('25', '1001', 'admin', 'login', '2020-04-07 13:42:50', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('26', '1001', 'admin', 'logout', '2020-04-07 13:43:03', '-');
INSERT INTO `wms_access_record` VALUES ('27', '1001', 'admin', 'login', '2020-04-07 13:43:14', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('28', '1001', 'admin', 'login', '2020-04-08 02:53:18', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('29', '1001', 'admin', 'logout', '2020-04-08 03:10:40', '-');
INSERT INTO `wms_access_record` VALUES ('30', '1018', '王皓', 'login', '2020-04-08 03:12:11', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('31', '1018', '王皓', 'logout', '2020-04-08 03:14:30', '-');
INSERT INTO `wms_access_record` VALUES ('32', '1001', 'admin', 'login', '2020-04-08 03:14:40', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('33', '1001', 'admin', 'logout', '2020-04-08 04:09:14', '-');
INSERT INTO `wms_access_record` VALUES ('34', '1001', 'admin', 'login', '2020-04-08 12:39:43', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('35', '1001', 'admin', 'logout', '2020-04-08 13:52:22', '-');
INSERT INTO `wms_access_record` VALUES ('36', '1001', 'admin', 'login', '2020-04-09 01:03:14', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('37', '1001', 'admin', 'login', '2020-04-09 08:31:03', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('38', '1001', 'admin', 'login', '2020-04-09 09:01:51', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('39', '1001', 'admin', 'login', '2020-04-09 09:09:31', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('40', '1001', 'admin', 'login', '2020-04-09 09:17:50', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('41', '1001', 'admin', 'login', '2020-04-09 10:51:17', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('42', '1001', 'admin', 'login', '2020-04-09 10:54:56', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('43', '1001', 'admin', 'login', '2020-04-09 11:53:50', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('44', '1001', 'admin', 'logout', '2020-04-09 12:01:37', '-');
INSERT INTO `wms_access_record` VALUES ('45', '1001', 'admin', 'login', '2020-04-09 12:01:55', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('46', '1001', 'admin', 'login', '2020-04-09 12:04:11', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('47', '1001', 'admin', 'logout', '2020-04-09 12:04:21', '-');
INSERT INTO `wms_access_record` VALUES ('48', '1001', 'admin', 'login', '2020-04-09 12:06:11', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('49', '1001', 'admin', 'logout', '2020-04-09 12:06:18', '-');
INSERT INTO `wms_access_record` VALUES ('50', '1001', 'admin', 'login', '2020-04-09 12:06:47', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('51', '1001', 'admin', 'login', '2020-04-09 12:09:51', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('52', '1001', 'admin', 'logout', '2020-04-09 12:09:58', '-');
INSERT INTO `wms_access_record` VALUES ('53', '1001', 'admin', 'login', '2020-04-09 12:10:57', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('54', '1001', 'admin', 'logout', '2020-04-09 12:12:05', '-');
INSERT INTO `wms_access_record` VALUES ('55', '1001', 'admin', 'login', '2020-04-09 12:12:19', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('56', '1001', 'admin', 'logout', '2020-04-09 12:12:24', '-');
INSERT INTO `wms_access_record` VALUES ('57', '1001', 'admin', 'login', '2020-04-09 12:15:25', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('58', '1001', 'admin', 'logout', '2020-04-09 12:16:15', '-');
INSERT INTO `wms_access_record` VALUES ('59', '1001', 'admin', 'login', '2020-04-09 12:22:31', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('60', '1001', 'admin', 'logout', '2020-04-09 12:22:42', '-');
INSERT INTO `wms_access_record` VALUES ('61', '1001', 'admin', 'login', '2020-04-09 12:40:20', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('62', '1001', 'admin', 'logout', '2020-04-09 12:40:52', '-');
INSERT INTO `wms_access_record` VALUES ('63', '1001', 'admin', 'login', '2020-04-09 12:41:13', '127.0.0.1');
INSERT INTO `wms_access_record` VALUES ('64', '1001', 'admin', 'logout', '2020-04-09 12:46:50', '-');

-- ----------------------------
-- Table structure for `wms_action`
-- ----------------------------
DROP TABLE IF EXISTS `wms_action`;
CREATE TABLE `wms_action` (
  `ACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTION_NAME` varchar(30) NOT NULL,
  `ACTION_DESC` varchar(30) DEFAULT NULL,
  `ACTION_PARAM` varchar(50) NOT NULL,
  PRIMARY KEY (`ACTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_action
-- ----------------------------
INSERT INTO `wms_action` VALUES ('1', 'addSupplier', null, '/supplierManage/addSupplier');
INSERT INTO `wms_action` VALUES ('2', 'deleteSupplier', null, '/supplierManage/deleteSupplier');
INSERT INTO `wms_action` VALUES ('3', 'updateSupplier', null, '/supplierManage/updateSupplier');
INSERT INTO `wms_action` VALUES ('4', 'selectSupplier', null, '/supplierManage/getSupplierList');
INSERT INTO `wms_action` VALUES ('5', 'getSupplierInfo', null, '/supplierManage/getSupplierInfo');
INSERT INTO `wms_action` VALUES ('6', 'importSupplier', null, '/supplierManage/importSupplier');
INSERT INTO `wms_action` VALUES ('7', 'exportSupplier', null, '/supplierManage/exportSupplier');
INSERT INTO `wms_action` VALUES ('8', 'selectCustomer', null, '/customerManage/getCustomerList');
INSERT INTO `wms_action` VALUES ('9', 'addCustomer', null, '/customerManage/addCustomer');
INSERT INTO `wms_action` VALUES ('10', 'getCustomerInfo', null, '/customerManage/getCustomerInfo');
INSERT INTO `wms_action` VALUES ('11', 'updateCustomer', null, '/customerManage/updateCustomer');
INSERT INTO `wms_action` VALUES ('12', 'deleteCustomer', null, '/customerManage/deleteCustomer');
INSERT INTO `wms_action` VALUES ('13', 'importCustomer', null, '/customerManage/importCustomer');
INSERT INTO `wms_action` VALUES ('14', 'exportCustomer', null, '/customerManage/exportCustomer');
INSERT INTO `wms_action` VALUES ('15', 'selectGoods', null, '/goodsManage/getGoodsList');
INSERT INTO `wms_action` VALUES ('16', 'addGoods', null, '/goodsManage/addGoods');
INSERT INTO `wms_action` VALUES ('17', 'getGoodsInfo', null, '/goodsManage/getGoodsInfo');
INSERT INTO `wms_action` VALUES ('18', 'updateGoods', null, '/goodsManage/updateGoods');
INSERT INTO `wms_action` VALUES ('19', 'deleteGoods', null, '/goodsManage/deleteGoods');
INSERT INTO `wms_action` VALUES ('20', 'importGoods', null, '/goodsManage/importGoods');
INSERT INTO `wms_action` VALUES ('21', 'exportGoods', null, '/goodsManage/exportGoods');
INSERT INTO `wms_action` VALUES ('22', 'selectRepository', null, '/repositoryManage/getRepositoryList');
INSERT INTO `wms_action` VALUES ('23', 'addRepository', null, '/repositoryManage/addRepository');
INSERT INTO `wms_action` VALUES ('24', 'getRepositoryInfo', null, '/repositoryManage/getRepository');
INSERT INTO `wms_action` VALUES ('25', 'updateRepository', null, '/repositoryManage/updateRepository');
INSERT INTO `wms_action` VALUES ('26', 'deleteRepository', null, '/repositoryManage/deleteRepository');
INSERT INTO `wms_action` VALUES ('27', 'importRepository', null, '/repositoryManage/importRepository');
INSERT INTO `wms_action` VALUES ('28', 'exportRepository', null, '/repositoryManage/exportRepository');
INSERT INTO `wms_action` VALUES ('29', 'selectRepositoryAdmin', null, '/repositoryAdminManage/getRepositoryAdminList');
INSERT INTO `wms_action` VALUES ('30', 'addRepositoryAdmin', null, '/repositoryAdminManage/addRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('31', 'getRepositoryAdminInfo', null, '/repositoryAdminManage/getRepositoryAdminInfo');
INSERT INTO `wms_action` VALUES ('32', 'updateRepositoryAdmin', null, '/repositoryAdminManage/updateRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('33', 'deleteRepositoryAdmin', null, '/repositoryAdminManage/deleteRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('34', 'importRepositoryAd,om', null, '/repositoryAdminManage/importRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('35', 'exportRepository', null, '/repositoryAdminManage/exportRepositoryAdmin');
INSERT INTO `wms_action` VALUES ('36', 'getUnassignRepository', null, '/repositoryManage/getUnassignRepository');
INSERT INTO `wms_action` VALUES ('37', 'getStorageListWithRepository', null, '/storageManage/getStorageListWithRepository');
INSERT INTO `wms_action` VALUES ('38', 'getStorageList', null, '/storageManage/getStorageList');
INSERT INTO `wms_action` VALUES ('39', 'addStorageRecord', null, '/storageManage/addStorageRecord');
INSERT INTO `wms_action` VALUES ('40', 'updateStorageRecord', null, '/storageManage/updateStorageRecord');
INSERT INTO `wms_action` VALUES ('41', 'deleteStorageRecord', null, '/storageManage/deleteStorageRecord');
INSERT INTO `wms_action` VALUES ('42', 'importStorageRecord', null, '/storageManage/importStorageRecord');
INSERT INTO `wms_action` VALUES ('43', 'exportStorageRecord', null, '/storageManage/exportStorageRecord');
INSERT INTO `wms_action` VALUES ('44', ' stockIn', null, '/stockRecordManage/stockIn');
INSERT INTO `wms_action` VALUES ('45', 'stockOut', null, '/stockRecordManage/stockOut');
INSERT INTO `wms_action` VALUES ('46', 'searchStockRecord', null, '/stockRecordManage/searchStockRecord');
INSERT INTO `wms_action` VALUES ('47', 'getAccessRecords', null, '/systemLog/getAccessRecords');
INSERT INTO `wms_action` VALUES ('48', 'selectUserOperationRecords', null, '/systemLog/selectUserOperationRecords');

-- ----------------------------
-- Table structure for `wms_customer`
-- ----------------------------
DROP TABLE IF EXISTS `wms_customer`;
CREATE TABLE `wms_customer` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(30) NOT NULL,
  `CUSTOMER_PERSON` varchar(10) NOT NULL,
  `CUSTOMER_TEL` varchar(20) NOT NULL,
  `CUSTOMER_EMAIL` varchar(20) NOT NULL,
  `CUSTOMER_ADDRESS` varchar(30) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_customer
-- ----------------------------
INSERT INTO `wms_customer` VALUES ('1214', '醴陵荣旗瓷业有限公司', '陈娟', '17716786888', '23369888@136.com', '中国 湖南 醴陵市 嘉树乡玉茶村柏树组');
INSERT INTO `wms_customer` VALUES ('1215', '深圳市松林达电子有限公司', '刘明', '85263335-820', '85264958@126.com', '中国 广东 深圳市宝安区 深圳市宝安区福永社区桥头村桥塘路育');
INSERT INTO `wms_customer` VALUES ('1216', '郑州绿之源饮品有限公司 ', '赵志敬', '87094196', '87092165@qq.com', '中国 河南 郑州市 郑州市嘉亿东方大厦609');

-- ----------------------------
-- Table structure for `wms_goods`
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods`;
CREATE TABLE `wms_goods` (
  `GOOD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOOD_NAME` varchar(30) NOT NULL,
  `GOOD_RYPE` varchar(20) DEFAULT NULL,
  `GOOD_SIZE` varchar(20) DEFAULT NULL,
  `GOOD_VALUE` double NOT NULL,
  PRIMARY KEY (`GOOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_goods
-- ----------------------------
INSERT INTO `wms_goods` VALUES ('103', '五孔插座西门子墙壁开关', '电器', '86*86', '1.85');
INSERT INTO `wms_goods` VALUES ('104', '陶瓷马克杯', '陶瓷', '9*9*11', '3.5');
INSERT INTO `wms_goods` VALUES ('105', '精酿苹果醋', '饮料', '312ml', '300');

-- ----------------------------
-- Table structure for `wms_operation_record`
-- ----------------------------
DROP TABLE IF EXISTS `wms_operation_record`;
CREATE TABLE `wms_operation_record` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `OPERATION_NAME` varchar(30) NOT NULL,
  `OPERATION_TIME` datetime NOT NULL,
  `OPERATION_RESULT` varchar(15) NOT NULL,
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_operation_record
-- ----------------------------
INSERT INTO `wms_operation_record` VALUES ('1', '1001', 'admin', '货物入库', '2020-04-08 03:28:21', '成功');
INSERT INTO `wms_operation_record` VALUES ('2', '1001', 'admin', '货物入库', '2020-04-08 03:36:38', '成功');

-- ----------------------------
-- Table structure for `wms_record_in`
-- ----------------------------
DROP TABLE IF EXISTS `wms_record_in`;
CREATE TABLE `wms_record_in` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_SUPPLIERID` int(11) NOT NULL,
  `RECORD_GOODID` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  `RECORD_TIME` datetime NOT NULL,
  `RECORD_PERSON` varchar(10) NOT NULL,
  `RECORD_REPOSITORYID` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_ID`),
  KEY `RECORD_SUPPLIERID` (`RECORD_SUPPLIERID`),
  KEY `RECORD_GOODID` (`RECORD_GOODID`),
  KEY `RECORD_REPOSITORYID` (`RECORD_REPOSITORYID`),
  CONSTRAINT `wms_record_in_ibfk_1` FOREIGN KEY (`RECORD_SUPPLIERID`) REFERENCES `wms_supplier` (`supplier_id`),
  CONSTRAINT `wms_record_in_ibfk_2` FOREIGN KEY (`RECORD_GOODID`) REFERENCES `wms_goods` (`good_id`),
  CONSTRAINT `wms_record_in_ibfk_3` FOREIGN KEY (`RECORD_REPOSITORYID`) REFERENCES `wms_respository` (`repo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_record_in
-- ----------------------------
INSERT INTO `wms_record_in` VALUES ('15', '1015', '105', '1000', '2016-12-31 00:00:00', 'admin', '1004');
INSERT INTO `wms_record_in` VALUES ('16', '1015', '105', '200', '2017-01-02 00:00:00', 'admin', '1004');
INSERT INTO `wms_record_in` VALUES ('17', '1015', '105', '200', '2020-04-08 03:28:21', 'admin', '1004');
INSERT INTO `wms_record_in` VALUES ('18', '1015', '105', '200', '2020-04-08 03:36:38', 'admin', '1004');

-- ----------------------------
-- Table structure for `wms_record_out`
-- ----------------------------
DROP TABLE IF EXISTS `wms_record_out`;
CREATE TABLE `wms_record_out` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_CUSTOMERID` int(11) NOT NULL,
  `RECORD_GOODID` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  `RECORD_TIME` datetime NOT NULL,
  `RECORD_PERSON` varchar(10) NOT NULL,
  `RECORD_REPOSITORYID` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_ID`),
  KEY `RECORD_CUSTOMERID` (`RECORD_CUSTOMERID`),
  KEY `RECORD_GOODID` (`RECORD_GOODID`),
  KEY `RECORD_REPOSITORYID` (`RECORD_REPOSITORYID`),
  CONSTRAINT `wms_record_out_ibfk_1` FOREIGN KEY (`RECORD_CUSTOMERID`) REFERENCES `wms_customer` (`customer_id`),
  CONSTRAINT `wms_record_out_ibfk_2` FOREIGN KEY (`RECORD_GOODID`) REFERENCES `wms_goods` (`good_id`),
  CONSTRAINT `wms_record_out_ibfk_3` FOREIGN KEY (`RECORD_REPOSITORYID`) REFERENCES `wms_respository` (`repo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_record_out
-- ----------------------------
INSERT INTO `wms_record_out` VALUES ('7', '1214', '104', '750', '2016-12-31 00:00:00', 'admin', '1003');

-- ----------------------------
-- Table structure for `wms_record_storage`
-- ----------------------------
DROP TABLE IF EXISTS `wms_record_storage`;
CREATE TABLE `wms_record_storage` (
  `RECORD_GOODID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_REPOSITORY` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_GOODID`),
  KEY `RECORD_REPOSITORY` (`RECORD_REPOSITORY`),
  CONSTRAINT `wms_record_storage_ibfk_1` FOREIGN KEY (`RECORD_GOODID`) REFERENCES `wms_goods` (`good_id`),
  CONSTRAINT `wms_record_storage_ibfk_2` FOREIGN KEY (`RECORD_REPOSITORY`) REFERENCES `wms_respository` (`repo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_record_storage
-- ----------------------------
INSERT INTO `wms_record_storage` VALUES ('103', '1005', '10000');
INSERT INTO `wms_record_storage` VALUES ('104', '1003', '1750');
INSERT INTO `wms_record_storage` VALUES ('105', '1004', '2400');

-- ----------------------------
-- Table structure for `wms_repo_admin`
-- ----------------------------
DROP TABLE IF EXISTS `wms_repo_admin`;
CREATE TABLE `wms_repo_admin` (
  `REPO_ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADMIN_NAME` varchar(10) NOT NULL,
  `REPO_ADMIN_SEX` varchar(10) NOT NULL,
  `REPO_ADMIN_TEL` varchar(20) NOT NULL,
  `REPO_ADMIN_ADDRESS` varchar(30) NOT NULL,
  `REPO_ADMIN_BIRTH` datetime NOT NULL,
  `REPO_ADMIN_REPOID` int(11) DEFAULT NULL,
  PRIMARY KEY (`REPO_ADMIN_ID`),
  KEY `REPO_ADMIN_REPOID` (`REPO_ADMIN_REPOID`),
  CONSTRAINT `wms_repo_admin_ibfk_1` FOREIGN KEY (`REPO_ADMIN_REPOID`) REFERENCES `wms_respository` (`repo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_repo_admin
-- ----------------------------
INSERT INTO `wms_repo_admin` VALUES ('1018', '王皓', '女', '12345874526', '中国佛山', '2016-12-09 00:00:00', '1004');
INSERT INTO `wms_repo_admin` VALUES ('1019', '李富荣', '男', '1234', '广州', '2016-12-07 00:00:00', '1003');

-- ----------------------------
-- Table structure for `wms_respository`
-- ----------------------------
DROP TABLE IF EXISTS `wms_respository`;
CREATE TABLE `wms_respository` (
  `REPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADDRESS` varchar(30) NOT NULL,
  `REPO_STATUS` varchar(20) NOT NULL,
  `REPO_AREA` varchar(20) NOT NULL,
  `REPO_DESC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_respository
-- ----------------------------
INSERT INTO `wms_respository` VALUES ('1003', '北京顺义南彩工业园区彩祥西路9号', '可用', '11000㎡', '提供服务完整');
INSERT INTO `wms_respository` VALUES ('1004', '广州白云石井石潭路大基围工业区', '可用', '1000㎡', '物流极为便利');
INSERT INTO `wms_respository` VALUES ('1005', ' 香港北区文锦渡路（红桥新村）', '可用', '5000.00㎡', null);

-- ----------------------------
-- Table structure for `wms_roles`
-- ----------------------------
DROP TABLE IF EXISTS `wms_roles`;
CREATE TABLE `wms_roles` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) NOT NULL,
  `ROLE_DESC` varchar(30) DEFAULT NULL,
  `ROLE_URL_PREFIX` varchar(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_roles
-- ----------------------------
INSERT INTO `wms_roles` VALUES ('1', 'systemAdmin', null, 'systemAdmin');
INSERT INTO `wms_roles` VALUES ('2', 'commonsAdmin', null, 'commonsAdmin');

-- ----------------------------
-- Table structure for `wms_role_action`
-- ----------------------------
DROP TABLE IF EXISTS `wms_role_action`;
CREATE TABLE `wms_role_action` (
  `ACTION_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACTION_ID`,`ROLE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `wms_role_action_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `wms_roles` (`role_id`),
  CONSTRAINT `wms_role_action_ibfk_2` FOREIGN KEY (`ACTION_ID`) REFERENCES `wms_action` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_role_action
-- ----------------------------
INSERT INTO `wms_role_action` VALUES ('1', '1');
INSERT INTO `wms_role_action` VALUES ('2', '1');
INSERT INTO `wms_role_action` VALUES ('3', '1');
INSERT INTO `wms_role_action` VALUES ('4', '1');
INSERT INTO `wms_role_action` VALUES ('5', '1');
INSERT INTO `wms_role_action` VALUES ('6', '1');
INSERT INTO `wms_role_action` VALUES ('7', '1');
INSERT INTO `wms_role_action` VALUES ('8', '1');
INSERT INTO `wms_role_action` VALUES ('9', '1');
INSERT INTO `wms_role_action` VALUES ('10', '1');
INSERT INTO `wms_role_action` VALUES ('11', '1');
INSERT INTO `wms_role_action` VALUES ('12', '1');
INSERT INTO `wms_role_action` VALUES ('13', '1');
INSERT INTO `wms_role_action` VALUES ('14', '1');
INSERT INTO `wms_role_action` VALUES ('15', '1');
INSERT INTO `wms_role_action` VALUES ('16', '1');
INSERT INTO `wms_role_action` VALUES ('17', '1');
INSERT INTO `wms_role_action` VALUES ('18', '1');
INSERT INTO `wms_role_action` VALUES ('19', '1');
INSERT INTO `wms_role_action` VALUES ('20', '1');
INSERT INTO `wms_role_action` VALUES ('21', '1');
INSERT INTO `wms_role_action` VALUES ('22', '1');
INSERT INTO `wms_role_action` VALUES ('23', '1');
INSERT INTO `wms_role_action` VALUES ('24', '1');
INSERT INTO `wms_role_action` VALUES ('25', '1');
INSERT INTO `wms_role_action` VALUES ('26', '1');
INSERT INTO `wms_role_action` VALUES ('27', '1');
INSERT INTO `wms_role_action` VALUES ('28', '1');
INSERT INTO `wms_role_action` VALUES ('29', '1');
INSERT INTO `wms_role_action` VALUES ('30', '1');
INSERT INTO `wms_role_action` VALUES ('31', '1');
INSERT INTO `wms_role_action` VALUES ('32', '1');
INSERT INTO `wms_role_action` VALUES ('33', '1');
INSERT INTO `wms_role_action` VALUES ('34', '1');
INSERT INTO `wms_role_action` VALUES ('35', '1');
INSERT INTO `wms_role_action` VALUES ('36', '1');
INSERT INTO `wms_role_action` VALUES ('37', '1');
INSERT INTO `wms_role_action` VALUES ('39', '1');
INSERT INTO `wms_role_action` VALUES ('40', '1');
INSERT INTO `wms_role_action` VALUES ('41', '1');
INSERT INTO `wms_role_action` VALUES ('42', '1');
INSERT INTO `wms_role_action` VALUES ('43', '1');
INSERT INTO `wms_role_action` VALUES ('44', '1');
INSERT INTO `wms_role_action` VALUES ('45', '1');
INSERT INTO `wms_role_action` VALUES ('46', '1');
INSERT INTO `wms_role_action` VALUES ('47', '1');
INSERT INTO `wms_role_action` VALUES ('48', '1');
INSERT INTO `wms_role_action` VALUES ('4', '2');
INSERT INTO `wms_role_action` VALUES ('38', '2');
INSERT INTO `wms_role_action` VALUES ('43', '2');

-- ----------------------------
-- Table structure for `wms_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `wms_supplier`;
CREATE TABLE `wms_supplier` (
  `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPPLIER_NAME` varchar(30) NOT NULL,
  `SUPPLIER_PERSON` varchar(10) NOT NULL,
  `SUPPLIER_TEL` varchar(20) NOT NULL,
  `SUPPLIER_EMAIL` varchar(20) NOT NULL,
  `SUPPLIER_ADDRESS` varchar(30) NOT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_supplier
-- ----------------------------
INSERT INTO `wms_supplier` VALUES ('1013', '浙江奇同电器有限公司', '王泽伟', '13777771126', '86827868@126.com', '中国 浙江 温州市龙湾区 龙湾区永强大道1648号');
INSERT INTO `wms_supplier` VALUES ('1014', '醴陵春天陶瓷实业有限公司', '温仙容', '13974167256', '23267999@126.com', '中国 湖南 醴陵市 东正街15号');
INSERT INTO `wms_supplier` VALUES ('1015', '洛阳嘉吉利饮品有限公司', '郑绮云', '26391678', '22390898@qq.com', '中国 广东 佛山市顺德区 北滘镇怡和路2号怡和中心14楼');

-- ----------------------------
-- Table structure for `wms_user`
-- ----------------------------
DROP TABLE IF EXISTS `wms_user`;
CREATE TABLE `wms_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_USERNAME` varchar(30) NOT NULL,
  `USER_PASSWORD` varchar(40) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_user
-- ----------------------------
INSERT INTO `wms_user` VALUES ('1001', 'admin', '6f5379e73c1a9eac6163ab8eaec7e41c');
INSERT INTO `wms_user` VALUES ('1018', '王皓', '50f202f4862360e55635b0a9616ded13');
INSERT INTO `wms_user` VALUES ('1019', '李富荣', 'c4b3af5a5ab3e3d5aac4c5a5436201b8');

-- ----------------------------
-- Table structure for `wms_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `wms_user_role`;
CREATE TABLE `wms_user_role` (
  `ROLE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `wms_user_role_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `wms_roles` (`role_id`),
  CONSTRAINT `wms_user_role_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `wms_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_user_role
-- ----------------------------
INSERT INTO `wms_user_role` VALUES ('1', '1001');
INSERT INTO `wms_user_role` VALUES ('2', '1018');
INSERT INTO `wms_user_role` VALUES ('2', '1019');
