/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : pengpengpiao

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 07/12/2018 14:48:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ppp_payment_voucher
-- ----------------------------
DROP TABLE IF EXISTS `ppp_payment_voucher`;
CREATE TABLE `ppp_payment_voucher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pic1` mediumblob NULL COMMENT '打款凭证1',
  `pic2` mediumblob NULL COMMENT '打款凭证2',
  `timeStamp` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
