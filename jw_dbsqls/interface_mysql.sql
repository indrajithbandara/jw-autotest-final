/*
Navicat MySQL Data Transfer

Source Server         : 192.168.18.200
Source Server Version : 50632
Source Host           : 192.168.18.200:3306
Source Database       : jw_platform

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-03-06 14:23:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for IFD_DTODEF
-- ----------------------------
DROP TABLE IF EXISTS `IFD_DTODEF`;
CREATE TABLE `IFD_DTODEF` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `DTONM` varchar(200) DEFAULT NULL,
  `DTODRPT` varchar(200) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_DTODEF
-- ----------------------------

-- ----------------------------
-- Table structure for IFD_EXAMPLEDEF
-- ----------------------------
DROP TABLE IF EXISTS `IFD_EXAMPLEDEF`;
CREATE TABLE `IFD_EXAMPLEDEF` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `CLSNM` varchar(200) DEFAULT NULL,
  `INFNM` varchar(100) DEFAULT NULL,
  `EXAMPLENM` varchar(200) DEFAULT NULL,
  `EXAMPLETYP` varchar(1) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  `CREATED_BY_ID` varchar(50) DEFAULT NULL,
  `CREATED_BY_CODE` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY_ID` varchar(50) DEFAULT NULL,
  `MODIFIED_BY_CODE` varchar(100) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_EXAMPLEDEF
-- ----------------------------
INSERT INTO `IFD_EXAMPLEDEF` VALUES ('1', '1', '1', 'testcase1', '1', '1', '1', '0', '1', '1', '1', '2010-01-01 00:00:00', '1', '1', '1', '2010-01-01 00:00:00');
INSERT INTO `IFD_EXAMPLEDEF` VALUES ('2', '1', '1', 'testcase1', '1', '1', '1', '0', '1', '1', '1', '2010-01-01 00:00:00', '1', '1', '1', '2010-01-01 00:00:00');

-- ----------------------------
-- Table structure for IFD_EXPASSERT
-- ----------------------------
DROP TABLE IF EXISTS `IFD_EXPASSERT`;
CREATE TABLE `IFD_EXPASSERT` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `EXAMPLEDEF_ID` int(13) DEFAULT NULL,
  `SCRIPT` text,
  `VERSION` int(10) DEFAULT NULL,
  `CREATED_BY_ID` varchar(50) DEFAULT NULL,
  `CREATED_BY_CODE` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY_ID` varchar(50) DEFAULT NULL,
  `MODIFIED_BY_CODE` varchar(100) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_EXPASSERT
-- ----------------------------
INSERT INTO `IFD_EXPASSERT` VALUES ('1', '1', '1', 'self.assertEqual(1, 2);self.assertNotEqual(3, 4);', '0', '', '', '', '2016-12-14 16:56:01', '', '', '', '2016-12-14 16:56:01');
INSERT INTO `IFD_EXPASSERT` VALUES ('2', '1', '2', 'self.assertEqual(1, 2);self.assertNotEqual(3, 4);', '0', '', '', '', '2016-12-14 16:56:01', '', '', '', '2016-12-14 16:56:01');
INSERT INTO `IFD_EXPASSERT` VALUES ('5', '1', '2', 'efrferferfer', '0', '', '', '', '2010-01-01 00:00:00', '', '', '', '2010-01-01 00:00:00');

-- ----------------------------
-- Table structure for IFD_EXPINPUT
-- ----------------------------
DROP TABLE IF EXISTS `IFD_EXPINPUT`;
CREATE TABLE `IFD_EXPINPUT` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `EXAMPLEDEF_ID` int(13) DEFAULT NULL,
  `PARAMNM` int(15) DEFAULT NULL,
  `VALUE` text,
  `VERSION` int(10) DEFAULT NULL,
  `CREATED_BY_ID` varchar(50) DEFAULT NULL,
  `CREATED_BY_CODE` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY_ID` varchar(50) DEFAULT NULL,
  `MODIFIED_BY_CODE` varchar(100) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_EXPINPUT
-- ----------------------------
INSERT INTO `IFD_EXPINPUT` VALUES ('1', '1', '0', '111', '0', '111', '111', '111', '2010-01-01 00:00:00', '11', '', '', '2010-01-01 00:00:00');
INSERT INTO `IFD_EXPINPUT` VALUES ('2', '2', '0', '111', '0', '111', '111', '111', '2010-01-01 00:00:00', '11', '', '', '2010-01-01 00:00:00');

-- ----------------------------
-- Table structure for IFD_EXPOUTPUT
-- ----------------------------
DROP TABLE IF EXISTS `IFD_EXPOUTPUT`;
CREATE TABLE `IFD_EXPOUTPUT` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `EXAMPLEDEF_ID` int(13) DEFAULT NULL,
  `RETURNVALUE` text,
  `VERSION` int(10) DEFAULT NULL,
  `CREATED_BY_ID` varchar(50) DEFAULT NULL,
  `CREATED_BY_CODE` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY_ID` varchar(50) DEFAULT NULL,
  `MODIFIED_BY_CODE` varchar(100) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RVFLG` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_EXPOUTPUT
-- ----------------------------
INSERT INTO `IFD_EXPOUTPUT` VALUES ('1', '1', '111111', '0', '', '', '', '2016-12-20 16:48:42', '', '', '', '2016-12-20 16:48:42', '1');
INSERT INTO `IFD_EXPOUTPUT` VALUES ('2', '2', '111111', '0', '', '', '', '2016-12-20 16:48:42', '', '', '', '2016-12-20 16:48:42', '1');

-- ----------------------------
-- Table structure for IFD_INFPARAM
-- ----------------------------
DROP TABLE IF EXISTS `IFD_INFPARAM`;
CREATE TABLE `IFD_INFPARAM` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `CLSNM` varchar(200) DEFAULT NULL,
  `INFNM` varchar(100) DEFAULT NULL,
  `PARAMNM` varchar(100) DEFAULT NULL,
  `PARAMDRPT` varchar(200) DEFAULT NULL,
  `PARAMTYP` varchar(50) DEFAULT NULL,
  `LEN` smallint(2) DEFAULT NULL,
  `PRECISION` smallint(1) DEFAULT NULL,
  `DTONM` varchar(200) DEFAULT NULL,
  `SEQ` varchar(1) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_INFPARAM
-- ----------------------------

-- ----------------------------
-- Table structure for IFD_INTERFACEDEF
-- ----------------------------
DROP TABLE IF EXISTS `IFD_INTERFACEDEF`;
CREATE TABLE `IFD_INTERFACEDEF` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `CLSNM` varchar(200) DEFAULT NULL,
  `INFNM` varchar(100) DEFAULT NULL,
  `INFDRPT` varchar(200) DEFAULT NULL,
  `INFURL` varchar(200) DEFAULT NULL,
  `INFMETHOD` varchar(20) DEFAULT NULL,
  `INFTYP` varchar(20) DEFAULT NULL,
  `RETURNDTONM` varchar(200) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  `INFCLS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IFD_INTERFACEDEF
-- ----------------------------
INSERT INTO `IFD_INTERFACEDEF` VALUES ('1', '1', 'interface001', 'interface1', '4', '/wisdomBsWeb/bs/BsSysUser/userListGetData', '1', 'get', '1', '1', '0', 'base');
INSERT INTO `IFD_INTERFACEDEF` VALUES ('2', '2', 'interface002', 'interface2', '2', '/wisdomBsWeb/bs/BsSysUser/userListGetData', '1', 'post', '1', '2', '0', 'shop');
INSERT INTO `IFD_INTERFACEDEF` VALUES ('3', '3', 'interface003', 'interface3', '3', '/wisdomBsWeb/bs/BsSysUser/userListGetData', '3', 'get', '3', '3', '0', 'pms');

-- ----------------------------
-- Table structure for IND_DTOFIELD
-- ----------------------------
DROP TABLE IF EXISTS `IND_DTOFIELD`;
CREATE TABLE `IND_DTOFIELD` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `DTONM` varchar(200) DEFAULT NULL,
  `FIELDNM` varchar(100) DEFAULT NULL,
  `FIELDDRPT` varchar(200) DEFAULT NULL,
  `FIELDTYP` varchar(50) DEFAULT NULL,
  `LEN` smallint(2) DEFAULT NULL,
  `PRECISION` smallint(1) DEFAULT NULL,
  `REFDTONM` varchar(200) DEFAULT NULL,
  `SEQ` varchar(1) DEFAULT NULL,
  `MENO` varchar(500) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of IND_DTOFIELD
-- ----------------------------

-- ----------------------------
-- Table structure for mytable
-- ----------------------------
DROP TABLE IF EXISTS `mytable`;
CREATE TABLE `mytable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitcd` varchar(255) CHARACTER SET gbk NOT NULL,
  `crtdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `memo` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`id`,`unitcd`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8
/*!50500 PARTITION BY LIST  COLUMNS(unitcd)
(PARTITION p0 VALUES IN ('unit1') ENGINE = InnoDB,
 PARTITION p1 VALUES IN ('unit2') ENGINE = InnoDB,
 PARTITION p2 VALUES IN ('unit3') ENGINE = InnoDB,
 PARTITION p3 VALUES IN ('unit4') ENGINE = InnoDB,
 PARTITION p4 VALUES IN ('unit5') ENGINE = InnoDB) */;

-- ----------------------------
-- Records of mytable
-- ----------------------------
INSERT INTO `mytable` VALUES ('1', 'unit1', '2011-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('5', 'unit1', '2017-01-03 14:57:14', 'memo1');
INSERT INTO `mytable` VALUES ('6', 'unit1', '2012-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('7', 'unit1', '2013-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('8', 'unit1', '2014-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('9', 'unit1', '2015-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('10', 'unit1', '2016-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('2', 'unit2', '2012-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('3', 'unit3', '2013-01-01 00:00:00', 'memo1');
INSERT INTO `mytable` VALUES ('4', 'unit4', '2014-01-01 00:00:00', 'memo1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'Mas Banyar', 'banyar@yahoo.com', '23235645yghgf');
INSERT INTO `t_user` VALUES ('2', 'Mas Mapmup', 'mapmup@gmail.com', 'dncskdcndscsdcdsc');
INSERT INTO `t_user` VALUES ('4', 'Boronong', 'borononn@yahoo.com', '032bcsjdncsdjc3223');
INSERT INTO `t_user` VALUES ('5', 'Nadya Ek', 'nadya@yahoo.com', 'bonbon032932');
INSERT INTO `t_user` VALUES ('6', '12we32e23', '222@122.ddd', '123456');

-- ----------------------------
-- Table structure for TEST_SYS_USER
-- ----------------------------
DROP TABLE IF EXISTS `TEST_SYS_USER`;
CREATE TABLE `TEST_SYS_USER` (
  `ID` varchar(64) NOT NULL,
  `STAFF_CODE` varchar(64) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CREATED_BY_ID` int(12) DEFAULT NULL COMMENT '创建人ID',
  `CREATED_BY` varchar(50) DEFAULT NULL COMMENT '创建人',
  `CREATED_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `MODIFIED_BY_ID` int(12) DEFAULT NULL COMMENT '最新修改人ID',
  `MODIFIED_BY` varchar(50) DEFAULT NULL COMMENT '最新修改人',
  `MODIFIED_DATE` datetime DEFAULT NULL COMMENT '最近修改日期',
  `VERSION` int(6) DEFAULT NULL COMMENT '版本号',
  `AGE` int(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TEST_SYS_USER
-- ----------------------------
