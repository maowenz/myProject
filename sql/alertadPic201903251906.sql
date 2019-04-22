ALTER TABLE `ppp_advertising_pic` 
CHANGE COLUMN `pic` `pic` VARCHAR(250) NULL DEFAULT NULL COMMENT '广告图片' ;
ALTER TABLE `ppp_advertising_pic` 
CHANGE COLUMN `picName` `picName` VARCHAR(100) NULL DEFAULT NULL COMMENT '图片名称' ;