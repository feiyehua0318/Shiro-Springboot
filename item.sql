/*
 Navicat Premium Data Transfer

 Source Server         : spring_allDesign
 Source Server Type    : MySQL
 Source Server Version : 50536
 Source Host           : localhost:3306
 Source Schema         : item

 Target Server Type    : MySQL
 Target Server Version : 50536
 File Encoding         : 65001

 Date: 22/10/2021 19:11:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'zs', '123123', NULL, NULL);
INSERT INTO `account` VALUES (2, 'ls', '123123', 'manage', NULL);
INSERT INTO `account` VALUES (3, 'ww', '123123', 'manage', 'administrator');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考试id',
  `exam_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试名',
  `place_id` int(11) NULL DEFAULT NULL,
  `time_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (1, '语文', 1, 1, 1);

-- ----------------------------
-- Table structure for examinee
-- ----------------------------
DROP TABLE IF EXISTS `examinee`;
CREATE TABLE `examinee`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键考生id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生密码',
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生手机号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生地址',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生真实姓名',
  `id_card` bigint(255) NULL DEFAULT NULL COMMENT '考生身份证号',
  `is_realname` int(255) NULL DEFAULT NULL COMMENT '0、1、2判断，0代表未通过，1代表审核中，2代表通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of examinee
-- ----------------------------
INSERT INTO `examinee` VALUES (1, 'zs', '123123', '17867698161', '河北邯郸', '张三', 311423199903279167, 0);
INSERT INTO `examinee` VALUES (3, 'asd', '123', '17777766666', '浙江宁波', '方李开', 1231231231231, NULL);
INSERT INTO `examinee` VALUES (4, 'asd', '123', '17777766666', '浙江宁波', '方李开', 1231231231231, NULL);
INSERT INTO `examinee` VALUES (5, 'ls', '123', '17777766666', '浙江宁波', '方李开', 1231231231231, NULL);

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考点id',
  `place_num` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考点号',
  `place_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考点名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES (1, '1001', '浙江宁波');
INSERT INTO `place` VALUES (2, '1002', '浙江温州');

-- ----------------------------
-- Table structure for session_tbl
-- ----------------------------
DROP TABLE IF EXISTS `session_tbl`;
CREATE TABLE `session_tbl`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '场次id',
  `session_time` datetime NULL DEFAULT NULL COMMENT '场次时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of session_tbl
-- ----------------------------
INSERT INTO `session_tbl` VALUES (1, '2021-10-20 18:58:02');
INSERT INTO `session_tbl` VALUES (2, '2021-10-22 18:58:06');

SET FOREIGN_KEY_CHECKS = 1;
