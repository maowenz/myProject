CREATE TABLE `pengpengpiao`.`ppp_admin_invitationcode` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `platFormName` VARCHAR(80) NULL COMMENT '合作平台名称',
  `contactsName` VARCHAR(45) NULL COMMENT '平台联系人（作为冗余字段，方便以后使用）',
  `contactsPhone` VARCHAR(45) NULL COMMENT '联系人电话（作为冗余字段，方便以后使用）',
  `invitationCode` VARCHAR(45) NULL COMMENT '邀请码',
  `timeStamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTimeStamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
