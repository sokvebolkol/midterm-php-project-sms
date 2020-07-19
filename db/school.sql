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

 Date: 19/07/2020 17:25:04
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
INSERT INTO `admin` VALUES (1, 'admin', '12345');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CNAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CSEC` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`CID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (8, 'A', 'Morning');
INSERT INTO `class` VALUES (9, 'B', 'Afternoon');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'S001', 'sokvebol kol', 'Modric', '11-03-2005', 'Male', '0997476354', 'sokvebol.kol@gmail.com', '371 Phnom Penh', 'VIII', 'B', 'student/');
INSERT INTO `student` VALUES (2, 'S001', 'sokvebol kol', 'Modric', '11-03-2005', 'Male', '0997476354', 'sokvebol.kol@gmail.com', '371 Phnom Penh', 'VIII', 'B', 'student/fewc8ez6r2e2agah717y.png');
INSERT INTO `student` VALUES (3, 'S2', 'testing', 'Modric', '15-05-2006', 'Male', '0997476354', 'sokvebol.kol@gmail.com', '371 Phnom Penh', 'VIII', 'C', 'student/DFD-of-e-learning.PNG');

-- ----------------------------
-- Table structure for sub
-- ----------------------------
DROP TABLE IF EXISTS `sub`;
CREATE TABLE `sub`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub
-- ----------------------------
INSERT INTO `sub` VALUES (2, 'English');
INSERT INTO `sub` VALUES (3, 'Maths');
INSERT INTO `sub` VALUES (5, 'Social Science');
INSERT INTO `sub` VALUES (7, 'php');
INSERT INTO `sub` VALUES (8, 'Database');
INSERT INTO `sub` VALUES (9, 'Mobile Development');

SET FOREIGN_KEY_CHECKS = 1;
