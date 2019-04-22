CREATE TABLE `ppp_user_wechat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `openid` VARCHAR(45) NULL COMMENT '用户唯一标识',
  `nickname` VARCHAR(45) NULL COMMENT '用户昵称',
  `sex` INT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `province` VARCHAR(45) NULL COMMENT '用户个人资料填写的省份',
  `city` VARCHAR(45) NULL COMMENT '用户个人资料填写的城市',
  `country` VARCHAR(45) NULL COMMENT '国家，如中国为CN',
  `unionid` VARCHAR(45) NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `headImgStr` MEDIUMBLOB NULL COMMENT '用户微信头像',
  `userId` VARCHAR(45) NULL COMMENT '与网站注册用户关联',
  `timeStamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));
