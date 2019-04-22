ALTER TABLE `ppp_bill` 
ADD COLUMN `acceptorType` VARCHAR(45) NULL COMMENT '承兑人类型' AFTER `acceptor`;