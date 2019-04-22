ALTER TABLE `pengpengpiao`.`ppp_bill_pics` 
ADD COLUMN `pic1Old` MEDIUMBLOB NULL COMMENT '存放原图（票据正面图片）' AFTER `pic2`,
ADD COLUMN `pic2Old` MEDIUMBLOB NULL COMMENT '存放原图（票据反面图片）' AFTER `pic1Old`;
