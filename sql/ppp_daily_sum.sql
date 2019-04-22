CREATE TABLE `ppp_daily_sum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_date` varchar(45) DEFAULT NULL COMMENT 'yyyyMMdd,日期',
  `all_amount` decimal(17,2) DEFAULT NULL COMMENT '每日总交易额（成功交易）',
  `all_num` int(11) DEFAULT NULL COMMENT '每日总交易次数（成功+失败)',
  `success_num` int(11) DEFAULT NULL COMMENT '每日交易成功总次数',
  `timeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fake_amount` decimal(17,2) DEFAULT NULL,
  `fake_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `c_date_UNIQUE` (`c_date`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COMMENT='每日交易额表';

