/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : pengpengpiao

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-12-17 13:00:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `Id` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_areas_REFERENCE_areas` (`Pid`),
  CONSTRAINT `FK_areas_REFERENCE_areas` FOREIGN KEY (`Pid`) REFERENCES `areas` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_admin
-- ----------------------------
DROP TABLE IF EXISTS `ppp_admin`;
CREATE TABLE `ppp_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(45) DEFAULT NULL,
  `passwd` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `nickName` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_bill
-- ----------------------------
DROP TABLE IF EXISTS `ppp_bill`;
CREATE TABLE `ppp_bill` (
  `billId` int(11) NOT NULL AUTO_INCREMENT,
  `billNumber` varchar(45) DEFAULT NULL,
  `billType` varchar(45) DEFAULT NULL,
  `acceptor` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `maturity` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `releaserId` varchar(45) DEFAULT NULL,
  `billPicsId` int(11) DEFAULT NULL,
  `transferable` tinyint(4) DEFAULT NULL,
  `billReferer` varchar(45) DEFAULT NULL,
  `failReason` varchar(100) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`billId`),
  UNIQUE KEY `billNumber_UNIQUE` (`billNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2075425365 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_bill_pics
-- ----------------------------
DROP TABLE IF EXISTS `ppp_bill_pics`;
CREATE TABLE `ppp_bill_pics` (
  `picId` int(11) NOT NULL AUTO_INCREMENT,
  `billId` int(11) NOT NULL,
  `billNumber` varchar(45) NOT NULL,
  `pic1` mediumblob,
  `pic2` mediumblob,
  `updateDate` date DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`picId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ppp_company
-- ----------------------------
DROP TABLE IF EXISTS `ppp_company`;
CREATE TABLE `ppp_company` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '公司名称',
  `contactsName` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人名字',
  `contactsId` varchar(45) DEFAULT NULL COMMENT '当前登录用户，联系人id',
  `contactsPhone` varchar(45) DEFAULT NULL,
  `contactsEmail` varchar(45) DEFAULT NULL,
  `contactsQQ` varchar(45) DEFAULT NULL,
  `bankAccountName` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行账户名称',
  `bankAccount` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行账号',
  `bankName` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行名称',
  `picId` varchar(45) DEFAULT NULL,
  `signUpAddr` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '开户地址',
  `updateDate` date DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '公司类型，普通用户，包装户，未审核',
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bankCode` varchar(45) DEFAULT NULL COMMENT '开户行行号',
  `contactIDCardNo` varchar(45) DEFAULT NULL COMMENT '联系人身份证证件号码',
  PRIMARY KEY (`companyId`) USING BTREE,
  UNIQUE KEY `contactsId_UNIQUE` (`contactsId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1231352015 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ppp_company_contact
-- ----------------------------
DROP TABLE IF EXISTS `ppp_company_contact`;
CREATE TABLE `ppp_company_contact` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `contactsId` int(11) DEFAULT NULL,
  `contactsPhone` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_company_pics
-- ----------------------------
DROP TABLE IF EXISTS `ppp_company_pics`;
CREATE TABLE `ppp_company_pics` (
  `picId` int(11) NOT NULL AUTO_INCREMENT,
  `pic1Content` mediumblob COMMENT '多证合一营业执照',
  `updateDate` date DEFAULT NULL,
  `contactsId` varchar(45) DEFAULT NULL COMMENT '联系人id',
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pic2Content` mediumblob COMMENT '组织机构代码证件照片',
  `pic1IDCard` mediumblob COMMENT '法人身份证正面照',
  `pic2IDCard` mediumblob COMMENT '法人身份证反面照',
  PRIMARY KEY (`picId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公司营业执照图片表';

-- ----------------------------
-- Table structure for ppp_customer_phone
-- ----------------------------
DROP TABLE IF EXISTS `ppp_customer_phone`;
CREATE TABLE `ppp_customer_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(45) DEFAULT NULL COMMENT '判断预约客户的来源（分为资源池渠道和传统渠道）',
  `customerName` varchar(45) DEFAULT NULL COMMENT '预留电话客户姓名',
  `customerPhone` varchar(45) DEFAULT NULL COMMENT '客户预留电话号码',
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ppp_login_ticket
-- ----------------------------
DROP TABLE IF EXISTS `ppp_login_ticket`;
CREATE TABLE `ppp_login_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ticket` varchar(45) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_msg
-- ----------------------------
DROP TABLE IF EXISTS `ppp_msg`;
CREATE TABLE `ppp_msg` (
  `msgId` int(11) NOT NULL AUTO_INCREMENT,
  `msgType` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '消息类型，分为系统消息和交易消息',
  `senderId` varchar(45) DEFAULT NULL,
  `receiverId` varchar(45) DEFAULT NULL,
  `msgContent` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `flag` tinyint(4) DEFAULT '0' COMMENT '默认值为0，表示消息未读',
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ppp_payment_voucher
-- ----------------------------
DROP TABLE IF EXISTS `ppp_payment_voucher`;
CREATE TABLE `ppp_payment_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(45) DEFAULT NULL COMMENT '订单号',
  `pic1` mediumblob COMMENT '打款凭证1',
  `pic2` mediumblob COMMENT '打款凭证2',
  `timeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ppp_quick_bill
-- ----------------------------
DROP TABLE IF EXISTS `ppp_quick_bill`;
CREATE TABLE `ppp_quick_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '极速发票表ID',
  `billType` varchar(45) DEFAULT NULL COMMENT '票据类型',
  `pic1` mediumblob COMMENT '票据正面图片',
  `pic2` mediumblob,
  `contactPhone` varchar(45) DEFAULT NULL COMMENT '联系人电话',
  `timeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ppp_quote
-- ----------------------------
DROP TABLE IF EXISTS `ppp_quote`;
CREATE TABLE `ppp_quote` (
  `quoteId` int(11) NOT NULL AUTO_INCREMENT,
  `billId` int(11) NOT NULL,
  `billNumber` varchar(45) DEFAULT NULL,
  `quoterId` varchar(45) DEFAULT NULL,
  `quoteAmount` int(11) DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `xPerLakh` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `quoteDate` date DEFAULT NULL,
  `quoteReferer` varchar(45) DEFAULT NULL,
  `real_money` varchar(45) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`quoteId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_resource_market
-- ----------------------------
DROP TABLE IF EXISTS `ppp_resource_market`;
CREATE TABLE `ppp_resource_market` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `buyerId` varchar(45) DEFAULT NULL,
  `amountRange` varchar(45) DEFAULT NULL,
  `timeLimit` varchar(45) DEFAULT NULL,
  `type1` varchar(45) DEFAULT NULL COMMENT '国有+国股 利率',
  `type2` varchar(45) DEFAULT NULL COMMENT '大商 利率',
  `type3` varchar(45) DEFAULT NULL COMMENT '授信城商  利率',
  `type4` varchar(45) DEFAULT NULL COMMENT '村镇银行  利率',
  `xPerLakh1` varchar(45) DEFAULT NULL COMMENT '国有+国股  每十万加',
  `xPerLakh2` varchar(45) DEFAULT NULL COMMENT '大商  每十万加',
  `xPerLakh3` varchar(45) DEFAULT NULL COMMENT '授信城商  每十万加',
  `xPerLakh4` varchar(45) DEFAULT NULL COMMENT '村镇银行  每十万加',
  `note1` varchar(300) DEFAULT NULL COMMENT '国有+国股  备注',
  `note2` varchar(300) DEFAULT NULL COMMENT '大商  备注',
  `note3` varchar(300) DEFAULT NULL COMMENT '授信城商  备注',
  `note4` varchar(300) DEFAULT NULL COMMENT '村镇银行  备注',
  `billType` varchar(45) DEFAULT NULL COMMENT '电银，纸银，电商，纸商',
  `priority` varchar(45) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL COMMENT '备注 全部',
  `timeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_transaction
-- ----------------------------
DROP TABLE IF EXISTS `ppp_transaction`;
CREATE TABLE `ppp_transaction` (
  `transacId` int(11) NOT NULL AUTO_INCREMENT,
  `billId` int(11) NOT NULL,
  `transacType` varchar(45) NOT NULL COMMENT '该字段表示orderId，订单编号',
  `billNumber` varchar(45) DEFAULT NULL COMMENT '票号',
  `buyerId` varchar(45) DEFAULT NULL COMMENT '买家id',
  `sellerId` varchar(45) DEFAULT NULL COMMENT '卖家id',
  `amount` double DEFAULT NULL COMMENT '交易金额',
  `transacStatus` varchar(45) DEFAULT NULL COMMENT '交易状态',
  `transacDate` date DEFAULT NULL COMMENT '交易时间',
  `intentionStatus` varchar(45) DEFAULT NULL COMMENT '买房双方交易意向状态',
  `flag` varchar(45) DEFAULT NULL COMMENT '是否上传打款凭证，true是已上传，false是没有上传',
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`transacId`),
  UNIQUE KEY `transacType_UNIQUE` (`transacType`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ppp_transaction_pics
-- ----------------------------
DROP TABLE IF EXISTS `ppp_transaction_pics`;
CREATE TABLE `ppp_transaction_pics` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `orderId` varchar(45) NOT NULL COMMENT '订单号',
  `pic1` mediumblob COMMENT '背书凭证1',
  `pic2` mediumblob COMMENT '背书凭证2',
  `timeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pic_id`),
  UNIQUE KEY `orderId_UNIQUE` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ppp_tx_payment
-- ----------------------------
DROP TABLE IF EXISTS `ppp_tx_payment`;
CREATE TABLE `ppp_tx_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_way` varchar(10) NOT NULL COMMENT '三方支付：yop:易宝',
  `external_id` varchar(45) DEFAULT NULL COMMENT '三方支付的订单id（如易宝的uniqueOrderNo）',
  `transac_id` varchar(45) DEFAULT NULL,
  `bill_id` int(11) NOT NULL,
  `bill_number` varchar(45) DEFAULT NULL COMMENT '冗余字段，billNumber',
  `seller_id` varchar(45) DEFAULT NULL COMMENT '冗余字段，即transaction中的seller',
  `buyer_id` varchar(45) DEFAULT NULL COMMENT '冗余字段，即transaction中的buyer',
  `amount` decimal(12,2) DEFAULT NULL COMMENT '冗余字段，即transaction中的amount',
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '请求时间',
  `expire` int(11) DEFAULT NULL COMMENT '订单有效期，单位秒',
  `memo` varchar(50) DEFAULT NULL COMMENT '自定义对账备注',
  `fee_type` int(11) DEFAULT NULL COMMENT '收费方式：（将来如需定制收费方案在添加收费方案表）\r\n1: amount中抽1%作为平台收益（profit），另外每笔10元支付给第三方平台（fee）',
  `profit` decimal(12,2) DEFAULT NULL COMMENT '公司收益部分，卖方实得=amount-profit-fee',
  `fee` decimal(12,2) DEFAULT NULL COMMENT '第三方支付平台手续费，卖方实得=amount-profit-fee',
  `status` varchar(10) DEFAULT NULL COMMENT '订单状态:暂时参考易宝状态\r\n													PROCESSING 处理中(非终态)\r\n													SUCCESS 订单成功(终态)\r\n													CLOSED订单关闭(终态)\r\n													TIME_OUT 订单超时(终态)\r\n													REJECT订单拒绝(终态)\r\n													REPEALED 订单撤销(分账订单退款后查询)\r\n													REVOKED 订单取消(网银订单)\r\n													REVERSAL 冲正',
  `platform_type` varchar(20) DEFAULT NULL COMMENT '暂时参照易宝，其他支付产品有不一致再另行添加\r\nWECHAT 微信\r\nALIPAY 支付宝\r\nNET 网银\r\nNCPAY 快捷\r\nCFL 分期(马上金融)',
  `serial_num` int(11) DEFAULT NULL COMMENT '银行/支付宝/微信等流水号',
  `extra` varchar(300) DEFAULT NULL COMMENT '额外信息，json字符串形式',
  `error_msg` varchar(300) DEFAULT NULL COMMENT '调用中的错误提示,三方调用出错时存储返回码等',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `terminal_type` varchar(10) DEFAULT NULL COMMENT '终端类型：(对于易宝的user_type和融宝的terminal_type)\r\nIMEI,MAC,UUID',
  `terminal_info` varchar(50) DEFAULT NULL COMMENT '手机IMEI地址、MAC地址、UUID',
  `terminal_ip` varchar(50) DEFAULT NULL COMMENT '进行支付用户的ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ppp_tx_payment_transac_id_external_id_uindex` (`transac_id`,`external_id`),
  KEY `ppp_tx_payment_bill_id` (`bill_number`),
  KEY `ppp_tx_payment_buyer_id` (`buyer_id`),
  KEY `ppp_tx_payment_date` (`request_date`),
  KEY `ppp_tx_payment_seller_id` (`seller_id`),
  KEY `ppp_tx_payment_status` (`status`),
  KEY `ppp_tx_payment_tx_id` (`transac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ppp_user
-- ----------------------------
DROP TABLE IF EXISTS `ppp_user`;
CREATE TABLE `ppp_user` (
  `user_id` varchar(45) NOT NULL,
  `user_passwd` varchar(45) NOT NULL,
  `user_phone` varchar(45) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_nickname` varchar(45) DEFAULT NULL,
  `user_address` varchar(45) DEFAULT NULL,
  `user_age` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `login_name` varchar(45) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_phone_UNIQUE` (`user_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
