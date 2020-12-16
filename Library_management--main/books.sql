/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 16/12/2020 17:12:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `lend_num` int NULL DEFAULT NULL,
  `max_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '123', '12355678', '123', '12348', '1234558', 2, 30, 5);
INSERT INTO `admin` VALUES (6, 'yxb', '伊小布', '123456', '123456', '123456', 1, 30, 5);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autho` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `num` int NOT NULL,
  `press` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE,
  UNIQUE INDEX `ISBN`(`card`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (4, '红楼梦x', '2', '曹雪芹', 5, '人民文学出版社', '名著');
INSERT INTO `book` VALUES (2, '活着', '3', '余华', 5, '作家出版社', '名著');
INSERT INTO `book` VALUES (3, '坏小孩 : 推理之王', '6', '紫金陈', 4, '湖南文艺出版社', '小说');
INSERT INTO `book` VALUES (5, '解忧杂货店', '4', '东野圭吾', 9, '南海出版公司', '小说');
INSERT INTO `book` VALUES (9, '挪威的森林', '10', '巫哲', 7, '北京联合出版公司', '小说');
INSERT INTO `book` VALUES (7, 'python编程语言', '1', 'HHH', 4, '清华出版社', '学习');
INSERT INTO `book` VALUES (8, '1984', '89', '乔治奥威尔', 1, '北京十月文艺出版社', '小说');
INSERT INTO `book` VALUES (10, '基督山伯爵', '15', '大仲马', 6, '上海译文出版社', '小说');
INSERT INTO `book` VALUES (11, '城南旧事 ', '16', '林海音', 7, '中国青年出版社', '小说');
INSERT INTO `book` VALUES (12, '傲慢与偏见', '11', '奥斯丁', 14, '人民文学出版社', '言情');
INSERT INTO `book` VALUES (13, '射雕英雄传', '12', '金庸', 8, ' 生活·读书·新知三联书店', '武侠');
INSERT INTO `book` VALUES (14, '西游记（全二册）', '13', '吴承恩', 17, '人民文学出版社', '名著');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `tid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (1, '名著');
INSERT INTO `booktype` VALUES (2, '小说');
INSERT INTO `booktype` VALUES (4, '学习');
INSERT INTO `booktype` VALUES (5, '科普');
INSERT INTO `booktype` VALUES (6, '言情');
INSERT INTO `booktype` VALUES (8, '漫画');
INSERT INTO `booktype` VALUES (9, '武侠');
INSERT INTO `booktype` VALUES (10, '历史');
INSERT INTO `booktype` VALUES (11, '玄幻小说');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int NOT NULL AUTO_INCREMENT,
  `aid` int NULL DEFAULT NULL,
  `bid` int NULL DEFAULT NULL,
  `card` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begintime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (33, 6, 2, '3', '活着', 'yxb', '伊小布', '2020-12-15', '2020-12-15', 0);
INSERT INTO `history` VALUES (32, 6, 2, '3', '活着', 'yxb', '伊小布', '2020-12-15', '2020-12-15', 0);
INSERT INTO `history` VALUES (31, 6, 4, '2', '红楼梦', 'yxb', '伊小布', '2020-12-15', '2020-12-15', 0);

SET FOREIGN_KEY_CHECKS = 1;
