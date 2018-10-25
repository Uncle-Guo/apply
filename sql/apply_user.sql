SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `apply_user`
-- ----------------------------
DROP TABLE IF EXISTS `apply_user`;
CREATE TABLE `apply_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT '' COMMENT '用户名',
	`number` int(6) DEFAULT '0' COMMENT '员工号',
	`password` varchar(30) DEFAULT '' COMMENT '密码',
  `workshop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0系统，1客舱，2复合，3机加，4发动机，5其他',
  `permissions` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '权限；0查看，1申领，2发料，3管理员',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `apply_user`
-- ----------------------------
BEGIN;
INSERT INTO `apply_user` VALUES ('1', 'vip_user', '666666', '666666', '0', '3', '123123', '123213'), ('2', 'user', '000000', '000000', '1', '0', '123123', '123213');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;