/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2020-07-31 21:30:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `shop_type` varchar(11) DEFAULT NULL COMMENT '商品类型',
  `shop_name` varchar(11) DEFAULT NULL COMMENT '商品名称',
  `shop_img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `shop_price` varchar(11) DEFAULT NULL COMMENT '商品价格',
  `shop_xl` varchar(11) DEFAULT NULL COMMENT '商品销量',
  `shop_sy` varchar(11) DEFAULT NULL COMMENT '商品剩余数量',
  `shop_sum` int(11) DEFAULT '0' COMMENT '所选商品',
  `ylzd1` varchar(11) DEFAULT NULL,
  `ylzd2` varchar(11) DEFAULT NULL,
  `ylzd3` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '进店必买', '大米饭', 'http://39.107.13.112:8080/unnamed/upload/20200731184635c6.jpg', '2.00', null, null, '0', null, null, null);
INSERT INTO `shop` VALUES ('2', '进店必买', '铁板牛肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184703c12.jpg', '25.00', '99', '166', '0', null, null, null);
INSERT INTO `shop` VALUES ('3', '进店必买', '糖醋肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184708c13.jpg', '16.00', '89', '128', '0', null, null, null);
INSERT INTO `shop` VALUES ('4', '热销', '铁板牛肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184703c12.jpg', '25.00', '99', '166', '0', null, null, null);
INSERT INTO `shop` VALUES ('5', '热销', '糖醋肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184708c13.jpg', '16.00', '89', '128', '0', null, null, null);
INSERT INTO `shop` VALUES ('6', '热销', '小炒鸡', 'http://39.107.13.112:8080/unnamed/upload/20200731184615c3.jpg', '23.00', '66', '89', '0', null, null, null);
INSERT INTO `shop` VALUES ('7', '热销', '辣子鸡丁', 'http://39.107.13.112:8080/unnamed/upload/20200731184655c11.jpg', '18.00', '72', '66', '0', null, null, null);
INSERT INTO `shop` VALUES ('8', '新品尝鲜', '猪血排骨汤', 'http://39.107.13.112:8080/unnamed/upload/20200731184626c5.jpg', '22.00', '23', '56', '0', null, null, null);
INSERT INTO `shop` VALUES ('9', '新品尝鲜', '宝塔肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184650c10.jpg', '18.99', '11', '26', '0', null, null, null);
INSERT INTO `shop` VALUES ('10', '新品尝鲜', '糖醋肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184708c13.jpg', '16.00', '89', '128', '0', null, null, null);
INSERT INTO `shop` VALUES ('11', '经典小炒', '香干回锅肉', 'http://39.107.13.112:8080/unnamed/upload/20200731184639c7.jpg', '18.00', '24', '32', '0', null, null, null);
INSERT INTO `shop` VALUES ('12', '经典小炒', '小炒鸡', 'http://39.107.13.112:8080/unnamed/upload/20200731184615c3.jpg', '23.00', '66', '89', '0', null, null, null);
INSERT INTO `shop` VALUES ('13', '经典小炒', '小炒小河鱼', 'http://39.107.13.112:8080/unnamed/upload/20200731184610c2.jpg', '17.00', '18', '24', '0', null, null, null);
INSERT INTO `shop` VALUES ('14', '经典小炒', '红烧鲫鱼', 'http://39.107.13.112:8080/unnamed/upload/20200731184713c14.jpg', '23.00', '16', '34', '0', null, null, null);
INSERT INTO `shop` VALUES ('15', '绿色蔬菜', '娃娃菜', 'http://39.107.13.112:8080/unnamed/upload/20200731193913c16.jpg', '12.00', '12', '24', '0', null, null, null);
INSERT INTO `shop` VALUES ('16', '绿色蔬菜', '上海青', 'http://39.107.13.112:8080/unnamed/upload/20200731193918c17.jpg', '14.00', '9', '26', '0', null, null, null);
INSERT INTO `shop` VALUES ('17', '绿色蔬菜', '清炒莴苣', 'http://39.107.13.112:8080/unnamed/upload/20200731193921c18.jpg', '16.00', '18', '32', '0', null, null, null);
INSERT INTO `shop` VALUES ('18', '绿色蔬菜', '茄子豆角', 'http://39.107.13.112:8080/unnamed/upload/20200731183537c1.jpg', '16.00', '18', '34', '0', null, null, null);
INSERT INTO `shop` VALUES ('19', '炒饭', '青菜炒饭', 'http://39.107.13.112:8080/unnamed/upload/20200731184644c8.jpg', '8', '23', '34', '0', null, null, null);

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '进店必买');
INSERT INTO `type` VALUES ('2', '热销');
INSERT INTO `type` VALUES ('3', '新品尝鲜');
INSERT INTO `type` VALUES ('4', '经典小炒');
INSERT INTO `type` VALUES ('5', '绿色蔬菜');
INSERT INTO `type` VALUES ('6', '炒饭');
