ALTER TABLE `ppp_user` 
ADD COLUMN `invitationCode` VARCHAR(45) NULL COMMENT '邀请码' AFTER `login_name`;

ALTER TABLE `ppp_bill` 
ADD COLUMN `invitationCode` VARCHAR(45) NULL COMMENT '邀请码' AFTER `note`;
