CREATE TABLE `ppp_advertising` (
  `adId` INT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `adName` VARCHAR(45) NULL COMMENT '广告名称',
  `startTime` DATE NULL COMMENT '广告开始时间',
  `endTime` DATE NULL COMMENT '广告结束时间',
  `enabledId` INT NULL COMMENT '广告结束启用下条广告的ID',
  `adStatus` INT NULL COMMENT '广告状态（0禁用，1启用）',
  `adIntroduction` VARCHAR(200) NULL COMMENT '广告简介',
  `adPId` INT NULL COMMENT '广告位置ID',
  `timeStamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adId`));