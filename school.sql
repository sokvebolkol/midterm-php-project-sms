/*
 Navicat Premium Data Transfer

 Source Server         : MyLocal
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 05/08/2020 16:30:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `ANAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `APASS` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`AID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '1234');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CNAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CSEC` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`CID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (8, 'A', 'Morning');
INSERT INTO `class` VALUES (9, 'B', 'Afternoon');
INSERT INTO `class` VALUES (11, 'D', 'Morning');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RNO` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DOB` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `GEN` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PHO` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MAIL` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ADDR` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `SCLASS` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SSEC` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SIMG` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'S001', 'sokvebol', 'kol', '5-11-2001', 'Male', '', 'sokvebol.kol@gmail.com', '#371 Phnom Penh', 'A', 'Morning', 'student/cristiano-ronaldo-warm.jpeg');
INSERT INTO `student` VALUES (4, 'S2', 'seth', 'pho', '15-03-2006', 'Male', '', 'seth@gmail.com', '#Odor meanchey province,Cambodia', 'A', 'Morning', 'student/photo_2020-01-24_09-37-55.jpg');
INSERT INTO `student` VALUES (5, 'S3', 'oudom', 'heang', '10-04-2007', 'Male', '0997476354', 'oudom@gmail.com', '#Kampong Cham Province,Cambodia', 'B', 'Afternoon', 'student/download.jfif');
INSERT INTO `student` VALUES (6, 'S4', 'ronaldo', 'cristein', '13-03-2007', 'Male', '', 'ronaldo@gmail.com', 'Purtuygal ', 'B', 'Afternoon', 'student/cristiano-ronaldo-warm.jpeg');
INSERT INTO `student` VALUES (7, 'S5', 'angela', 'noop', '7-03-2006', 'Female', '', 'angela@gmail.com', '#Mobile legend', 'D', 'Morning', 'student/download (1).jfif');
INSERT INTO `student` VALUES (8, 'S6', 'bruno', 'fernades', '3-02-2016', 'Male', '', 'bruno@gmail.com', '#putoygal', 'B', 'Afternoon', 'student/images.jfif');

-- ----------------------------
-- Table structure for sub
-- ----------------------------
DROP TABLE IF EXISTS `sub`;
CREATE TABLE `sub`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub
-- ----------------------------
INSERT INTO `sub` VALUES (2, 'English');
INSERT INTO `sub` VALUES (3, 'Maths');
INSERT INTO `sub` VALUES (5, 'Social Science');
INSERT INTO `sub` VALUES (7, 'php');
INSERT INTO `sub` VALUES (8, 'Database');
INSERT INTO `sub` VALUES (9, 'Mobile Development');
INSERT INTO `sub` VALUES (10, 'React native');

SET FOREIGN_KEY_CHECKS = 1;
