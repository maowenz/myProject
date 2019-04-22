ALTER TABLE `ppp_transaction` 
ADD COLUMN `payType` INT NULL COMMENT '选择的交易方式 （1为担保交易 0为线下交易）' AFTER `quoteId`;