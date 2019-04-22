ALTER TABLE `ppp_user` 
ADD COLUMN `rate` FLOAT NULL DEFAULT 1.5 COMMENT '通过邀请码注册用户在交易完成后计算佣金的比率' AFTER `invitationCode`;
