/*
Navicat MySQL Data Transfer

Source Server         : localhost_3323
Source Server Version : 50162
Source Host           : localhost:3323
Source Database       : db_tusg

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2017-04-27 06:12:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(55) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `t_book`
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(55) DEFAULT NULL,
  `book_zuozhe` varchar(50) DEFAULT NULL,
  `book_chubanshe` varchar(50) DEFAULT NULL,
  `book_chubanriqi` varchar(50) DEFAULT NULL,
  `book_isbm` varchar(50) DEFAULT NULL,
  `book_price` varchar(50) DEFAULT NULL,
  `catelog_id` int(11) DEFAULT NULL,
  `leibie_id` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('1', 'java编程思想', '张孝祥', '邮电出版社', '2010-12-07', '2345612', '22', '2', '2', 'no');
INSERT INTO `t_book` VALUES ('8', '数据库原理法', '张孝祥', '邮电出版社', '2010-12-07', '4545454', '44', '2', '2', 'no');
INSERT INTO `t_book` VALUES ('9', '精通win7系统', '张孝祥', '邮电出版社', '2010-12-08', '7865533', '55', '2', '2', 'no');
INSERT INTO `t_book` VALUES ('10', '诸葛亮大兵法', '诸葛亮', '青海出版社', '2010-11-30', '2323239', '30', '3', '2', 'no');
INSERT INTO `t_book` VALUES ('14', '医药大全新版', '张孝祥', '邮电出版社', '2011-10-13', '4568214', '55', '7', '3', 'no');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(55) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('2', '计算机编程', 'no');
INSERT INTO `t_catelog` VALUES ('3', '天文地理类', 'no');
INSERT INTO `t_catelog` VALUES ('4', '数学物理类', 'no');
INSERT INTO `t_catelog` VALUES ('7', '医药文学类', 'no');
INSERT INTO `t_catelog` VALUES ('8', '测试类别书', 'no');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) DEFAULT NULL,
  `gonggao_content` varchar(5000) DEFAULT NULL,
  `gonggao_data` varchar(77) DEFAULT NULL,
  `fujian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '222222222222222222', '222222222222222222', '2017-04-26 16:06', '/img/zanwu.jpg');
INSERT INTO `t_gonggao` VALUES ('2', '测试测试啊', '测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊测试测试啊', '2017-04-26 16:07', '/img/zanwu.jpg');

-- ----------------------------
-- Table structure for `t_jieyue`
-- ----------------------------
DROP TABLE IF EXISTS `t_jieyue`;
CREATE TABLE `t_jieyue` (
  `id` int(11) NOT NULL,
  `userJiehao` varchar(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `jieyueShijian` varchar(55) DEFAULT NULL,
  `yinghuanShijian` varchar(50) DEFAULT NULL,
  `shifouhuan` varchar(255) DEFAULT NULL,
  `guihuanShijian` varchar(50) DEFAULT NULL,
  `fajin` varchar(11) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jieyue
-- ----------------------------
INSERT INTO `t_jieyue` VALUES ('1', '0001', '1', '2017-04-27', '2017-05-07', '是', '2017-04-27', '', '无');
INSERT INTO `t_jieyue` VALUES ('2', '0001', '9', '2017-04-27', '2017-05-07', '是', '2017-04-27', '', '无');
INSERT INTO `t_jieyue` VALUES ('3', '0001', '1', '2017-04-27', '2017-05-07', '是', '2017-04-27', '', '无');

-- ----------------------------
-- Table structure for `t_leibie`
-- ----------------------------
DROP TABLE IF EXISTS `t_leibie`;
CREATE TABLE `t_leibie` (
  `id` int(11) NOT NULL DEFAULT '0',
  `mingcheng` varchar(255) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leibie
-- ----------------------------
INSERT INTO `t_leibie` VALUES ('2', '01书架', 'no');
INSERT INTO `t_leibie` VALUES ('3', '02书架', 'no');
INSERT INTO `t_leibie` VALUES ('4', '03书架', 'no');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_sex` varchar(50) DEFAULT NULL,
  `user_age` int(11) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_jiehao` varchar(50) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', '刘三', '男', '20', '青岛路', '13555555555', 'liusan@163.com', '0001', '000000', 'no');
INSERT INTO `t_user` VALUES ('3', '李强', '男', '20', '北京路', '13366666666', 'liqian@163.com', '0002', '000000', 'no');
