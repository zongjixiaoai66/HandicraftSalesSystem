/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t303`;
CREATE DATABASE IF NOT EXISTS `t303` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t303`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '收货人1', '17703786901', '地址1', 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(3, 3, '收货人3', '17703786903', '地址3', 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(4, 1, '收货人4', '17703786904', '地址4', 2, '2022-04-12 07:28:31', '2022-04-12 07:57:56', '2022-04-12 07:28:31'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `goods_id` int DEFAULT NULL COMMENT '手工艺品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/shouggonyipinxiaoshou/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/shouggonyipinxiaoshou/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/shouggonyipinxiaoshou/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-04-12 07:28:17'),
	(2, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-04-12 07:28:17'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-12 07:28:17'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-12 07:28:17'),
	(5, 'goods_types', '手工艺品类型', 1, '手工艺品类型1', NULL, NULL, '2022-04-12 07:28:17'),
	(6, 'goods_types', '手工艺品类型', 2, '手工艺品类型2', NULL, NULL, '2022-04-12 07:28:17'),
	(7, 'goods_types', '手工艺品类型', 3, '手工艺品类型3', NULL, NULL, '2022-04-12 07:28:17'),
	(8, 'goods_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-04-12 07:28:17'),
	(9, 'goods_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-04-12 07:28:17'),
	(10, 'goods_order_types', '订单类型', 3, '已发货', NULL, NULL, '2022-04-12 07:28:17'),
	(11, 'goods_order_types', '订单类型', 4, '已收货', NULL, NULL, '2022-04-12 07:28:17'),
	(12, 'goods_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-04-12 07:28:17'),
	(13, 'goods_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-04-12 07:28:17'),
	(14, 'shangjia_xingji_types', '商家信用类型', 1, '一级', NULL, NULL, '2022-04-12 07:28:17'),
	(15, 'shangjia_xingji_types', '商家信用类型', 2, '二级', NULL, NULL, '2022-04-12 07:28:17'),
	(16, 'shangjia_xingji_types', '商家信用类型', 3, '三级', NULL, NULL, '2022-04-12 07:28:17'),
	(17, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-12 07:28:17'),
	(18, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-12 07:28:17'),
	(19, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-12 07:28:17'),
	(20, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-12 07:28:17'),
	(21, 'news_types', '公告类型', 3, '活动信息', NULL, NULL, '2022-04-12 07:28:17'),
	(22, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-12 07:28:17'),
	(23, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-12 07:28:17');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(2, '帖子标题2', 2, NULL, '发布内容2', NULL, 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(3, '帖子标题3', 3, NULL, '发布内容3', NULL, 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(4, '帖子标题4', 1, NULL, '发布内容4', NULL, 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(5, '帖子标题5', 2, NULL, '发布内容5', NULL, 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(7, NULL, NULL, 1, '管理评论11111', 5, 2, '2022-04-12 07:59:25', NULL, '2022-04-12 07:59:25'),
	(8, NULL, 1, NULL, '评论11111', 5, 2, '2022-04-12 08:01:12', NULL, '2022-04-12 08:01:12');

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '手工艺品名称 Search111',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '手工艺品照片',
  `goods_types` int DEFAULT NULL COMMENT '手工艺品类型 Search111',
  `goods_kucun_number` int DEFAULT NULL COMMENT '手工艺品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '手工艺品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `goods_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '手工艺品简介 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上架时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='手工艺品';

DELETE FROM `goods`;
INSERT INTO `goods` (`id`, `shangjia_id`, `goods_name`, `goods_photo`, `goods_types`, `goods_kucun_number`, `goods_old_money`, `goods_new_money`, `goods_clicknum`, `shangxia_types`, `goods_delete`, `goods_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '手工艺品名称1', 'http://localhost:8080/shouggonyipinxiaoshou/upload/goods1.jpg', 1, 99, 768.38, 478.78, 23, 1, 1, '手工艺品简介1', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(2, 2, '手工艺品名称2', 'http://localhost:8080/shouggonyipinxiaoshou/upload/goods2.jpg', 2, 102, 835.76, 436.16, 440, 1, 1, '手工艺品简介2', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(3, 2, '手工艺品名称3', 'http://localhost:8080/shouggonyipinxiaoshou/upload/goods3.jpg', 2, 103, 865.65, 157.05, 470, 1, 1, '手工艺品简介3', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(4, 3, '手工艺品名称4', 'http://localhost:8080/shouggonyipinxiaoshou/upload/goods4.jpg', 2, 104, 623.24, 448.57, 273, 1, 1, '手工艺品简介4', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(5, 1, '手工艺品名称5', 'http://localhost:8080/shouggonyipinxiaoshou/upload/goods5.jpg', 1, 100, 823.54, 391.37, 359, 1, 1, '手工艺品简介5', '2022-04-12 07:28:31', '2022-04-12 07:28:31');

DROP TABLE IF EXISTS `goods_commentback`;
CREATE TABLE IF NOT EXISTS `goods_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int DEFAULT NULL COMMENT '手工艺品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='手工艺品评价';

DELETE FROM `goods_commentback`;
INSERT INTO `goods_commentback` (`id`, `goods_id`, `yonghu_id`, `goods_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2022-04-12 07:28:31', '回复信息1', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(2, 2, 1, '评价内容2', '2022-04-12 07:28:31', '回复信息2', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(3, 3, 2, '评价内容3', '2022-04-12 07:28:31', '回复信息3', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(4, 4, 1, '评价内容4', '2022-04-12 07:28:31', '回复信息4', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(5, 5, 2, '评价内容5', '2022-04-12 07:28:31', '回复信息5', '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(6, 5, 1, '用户购买完成后可以评论 管理可以回复', '2022-04-12 08:01:40', ' 管理可以回复', '2022-04-12 08:02:01', '2022-04-12 08:01:40');

DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE IF NOT EXISTS `goods_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `goods_id` int DEFAULT NULL COMMENT '手工艺品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `goods_order_types` int DEFAULT NULL COMMENT '订单类型',
  `goods_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `goods_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `goods_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='手工艺品订单';

DELETE FROM `goods_order`;
INSERT INTO `goods_order` (`id`, `goods_order_uuid_number`, `address_id`, `goods_id`, `yonghu_id`, `buy_number`, `goods_order_true_price`, `goods_order_types`, `goods_order_courier_name`, `goods_order_courier_number`, `goods_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1649750331733', 4, 5, 1, 1, 391.37, 5, '顺丰', 'SF:11231216546546545', 1, '2022-04-12 07:58:52', '2022-04-12 07:58:52'),
	(2, '1649750331733', 4, 1, 1, 1, 478.78, 1, NULL, NULL, 1, '2022-04-12 07:58:52', '2022-04-12 07:58:52'),
	(3, '1649750331733', 4, 4, 1, 3, 1345.71, 2, NULL, NULL, 1, '2022-04-12 07:58:52', '2022-04-12 07:58:52'),
	(4, '1722319211167', 4, 1, 1, 1, 478.78, 1, NULL, NULL, 1, '2024-07-30 06:00:11', '2024-07-30 06:00:11');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/shouggonyipinxiaoshou/upload/news1.jpg', '2022-04-12 07:28:31', '公告详情1', '2022-04-12 07:28:31'),
	(2, '公告标题2', 1, 'http://localhost:8080/shouggonyipinxiaoshou/upload/news2.jpg', '2022-04-12 07:28:31', '公告详情2', '2022-04-12 07:28:31'),
	(3, '公告标题3', 1, 'http://localhost:8080/shouggonyipinxiaoshou/upload/news3.jpg', '2022-04-12 07:28:31', '公告详情3', '2022-04-12 07:28:31'),
	(4, '公告标题4', 2, 'http://localhost:8080/shouggonyipinxiaoshou/upload/news4.jpg', '2022-04-12 07:28:31', '公告详情4', '2022-04-12 07:28:31'),
	(5, '公告标题5', 1, 'http://localhost:8080/shouggonyipinxiaoshou/upload/news5.jpg', '2022-04-12 07:28:31', '公告详情5', '2022-04-12 07:28:31');

DROP TABLE IF EXISTS `qiugou`;
CREATE TABLE IF NOT EXISTS `qiugou` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiugou_name` varchar(200) DEFAULT NULL COMMENT '手工艺品名称 Search111',
  `goods_types` int DEFAULT NULL COMMENT '手工艺品类型 Search111',
  `qiugou_new_money` decimal(10,2) DEFAULT NULL COMMENT '求购价格',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='手工艺品求购';

DELETE FROM `qiugou`;
INSERT INTO `qiugou` (`id`, `qiugou_name`, `goods_types`, `qiugou_new_money`, `yonghu_id`, `insert_time`, `create_time`) VALUES
	(1, '手工艺品名称1', 1, 274.33, 3, '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(2, '手工艺品名称2', 3, 205.18, 3, '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(3, '手工艺品名称3', 3, 108.38, 3, '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(4, '手工艺品名称4', 2, 244.95, 2, '2022-04-12 07:28:31', '2022-04-12 07:28:31'),
	(5, '手工艺品名称5', 1, 332.00, 1, '2022-04-12 07:28:31', '2022-04-12 07:28:31');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `shangjia_xingji_types`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '商家1', '123456', '商家名称1', '17703786901', '1@qq.com', 'http://localhost:8080/shouggonyipinxiaoshou/upload/shangjia1.jpg', 3, 377.05, '商家简介1', 1, '2022-04-12 07:28:31'),
	(2, '商家2', '123456', '商家名称2', '17703786902', '2@qq.com', 'http://localhost:8080/shouggonyipinxiaoshou/upload/shangjia2.jpg', 2, 785.39, '商家简介2', 1, '2022-04-12 07:28:31'),
	(3, '商家3', '123456', '商家名称3', '17703786903', '3@qq.com', 'http://localhost:8080/shouggonyipinxiaoshou/upload/shangjia3.jpg', 3, 41.93, '商家简介3', 1, '2022-04-12 07:28:31');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '5rv0udevmie3uzlcigzs1v5ci5hspbyn', '2022-04-12 07:50:56', '2024-07-30 06:57:51'),
	(2, 1, 'a1', 'yonghu', '用户', 'qmjz3lcuzyks44xat36esvgnpl5ccuxq', '2022-04-12 07:55:44', '2024-07-30 06:59:22'),
	(3, 1, 'a1', 'shangjia', '商家', 'ssvozyk3utc04ldrhe09kid0gxifj6le', '2022-04-12 08:00:05', '2024-07-30 06:58:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/shouggonyipinxiaoshou/upload/yonghu1.jpg', 1, '1@qq.com', 871.99, '2022-04-12 07:28:31'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/shouggonyipinxiaoshou/upload/yonghu2.jpg', 1, '2@qq.com', 814.02, '2022-04-12 07:28:31'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/shouggonyipinxiaoshou/upload/yonghu3.jpg', 2, '3@qq.com', 179.57, '2022-04-12 07:28:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
