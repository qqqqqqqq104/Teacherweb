/*
 Navicat MySQL Data Transfer

 Source Server         : mySQL
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : teacherweb

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 17/11/2019 21:02:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for experience
-- ----------------------------
DROP TABLE IF EXISTS `experience`;
CREATE TABLE `experience` (
  `eno` int(6) NOT NULL AUTO_INCREMENT,
  `etitle` varchar(40) NOT NULL,
  `esubject` varchar(10) NOT NULL,
  PRIMARY KEY (`eno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of experience
-- ----------------------------
BEGIN;
INSERT INTO `experience` VALUES (1, '综合教育过关经验1', '综合教育');
INSERT INTO `experience` VALUES (2, '教资面试过关经验1', '面试');
COMMIT;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `mno` int(6) NOT NULL AUTO_INCREMENT,
  `mtitle` varchar(40) NOT NULL,
  `msubject` varchar(10) NOT NULL,
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
BEGIN;
INSERT INTO `material` VALUES (1, '综合教育考试资料1', '综合教育');
INSERT INTO `material` VALUES (2, '综合教育考试资料2', '综合教育');
COMMIT;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rno` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `eno` int(6) DEFAULT NULL,
  `mno` int(6) DEFAULT NULL,
  `rtime` date NOT NULL,
  `download` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`rno`),
  KEY `username` (`username`),
  KEY `mno` (`mno`),
  KEY `eno` (`eno`),
  CONSTRAINT `eno` FOREIGN KEY (`eno`) REFERENCES `experience` (`eno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mno` FOREIGN KEY (`mno`) REFERENCES `material` (`mno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
BEGIN;
INSERT INTO `record` VALUES (1, 'lisi', 1, NULL, '2019-11-17', '已下载');
INSERT INTO `record` VALUES (2, 'zhangsan', NULL, 1, '2019-11-07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('lisi', '234567');
INSERT INTO `user` VALUES ('zhangsan', '123456');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
