ALTER TABLE `pengpengpiao`.`ppp_quote` 
ADD COLUMN `sub_perlakh` VARCHAR(45) NULL COMMENT '每十万扣除金额' AFTER `xPerLakh`;

ALTER TABLE `pengpengpiao`.`ppp_resource_market` 
ADD COLUMN `sub_perlakh1` VARCHAR(45) NULL COMMENT '国有+国股 每十万扣除金额' AFTER `updateTimeStamp`,
ADD COLUMN `sub_perlakh2` VARCHAR(45) NULL COMMENT '大商 每十万扣除金额' AFTER `sub_perlakh1`,
ADD COLUMN `sub_perlakh3` VARCHAR(45) NULL COMMENT '授信城商每十万扣除金额' AFTER `sub_perlakh2`,
ADD COLUMN `sub_perlakh4` VARCHAR(45) NULL COMMENT '村镇银行每十万扣除金额' AFTER `sub_perlakh3`;
