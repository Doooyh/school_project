/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : localhost:3306
 Source Schema         : ssm_carstore

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 29/08/2021 20:44:40
*/

drop database if exists ssm_carstore;
create database ssm_carstore charset utf8;
use ssm_carstore;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('A20200313232934152', 'tom', 'admin', '汤姆', '13666666666', '2022-05-01', '用户');
INSERT INTO `admin` VALUES ('A20210829194857460', 'mike', '123', '麦克', '13999999999', '2022-05-01', '用户');
INSERT INTO `admin` VALUES ('admin001', 'admin', 'admin', '管理员', '13888888888', '2022-05-01', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES ('A20210829194124978', '小鹏汽车Q2汽车销售收入近36亿', 'upfiles/20210829194122.jpeg', '近日，造车新势力小鹏汽车公布了2021年第二季度财报。    财报显示，小鹏汽车2021年第二季度的总收入为37.61亿元人民币（5.825亿美元），较2020年同期的5.908亿元人民币增长536.7%，较2021年第一季度的29.51亿元人民币增长27.5%。  其中，小鹏汽车2021年第二季度的汽车销售收入为35.84亿元人民币（5.55亿美元），比2020年同期的5.411亿元人民币增长了562.4%，比2021年第一季度的28.1亿元人民币增长了27.5%。而对于同比增长的原因，公司表示，主要是由于车辆交付量增加。', '2022-05-01', '2');
INSERT INTO `article` VALUES ('A20210829194200332', '汽车销售企业排查待售车辆安全隐患', 'upfiles/20210829194151.jpeg', '为强化汽车销售企业对销售车辆的安全管理，8月18日上午，大英县公安局交警大队副大队长余磊带领车管所工作人员走访辖区内的汽车销售企业，对待售车辆开展安全隐患排查工作，切实预防重特大交通事故发生。', '2022-05-01', '0');
INSERT INTO `article` VALUES ('A20210829194231657', '韩国汽车销售员脸蛋好甜，让人真想找她试车', 'upfiles/20210829194228.jpeg', '从事销售的工作，首先就要有一颗热忱服务客人的心～～今天就要跟大家分享一位笑容灿烂，给人感觉超亲切的汽车销售员。', '2022-05-01', '0');
INSERT INTO `article` VALUES ('A20210829194302909', '市场监管局开展汽车销售领域格式合同检查工作', 'upfiles/20210829194259.jpeg', '为进一步强化合同格式条款监管，规范我市汽车销售行业经营行为，8月18日，市市场监管局对城区汽车销售领域合同格式条款进行了专项检查。', '2022-05-01', '0');
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartid` varchar(255) NOT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
BEGIN;
INSERT INTO `cate` VALUES ('C20200313234500776', '中型车', 'ZXC');
INSERT INTO `cate` VALUES ('C20200313234516177', '紧凑型SUV', 'SUV');
INSERT INTO `cate` VALUES ('C20200313234531151', '紧凑型车', 'JCXC');
INSERT INTO `cate` VALUES ('C20200313234538289', '小型车', 'XXC');
INSERT INTO `cate` VALUES ('C20200313234545287', '小型SUV', 'SUV');
COMMIT;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `detailsid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
BEGIN;
INSERT INTO `details` VALUES ('202003150017471421.2975168313467', 'PD20200315001747', 'G20200314232037645', '120000', '1');
INSERT INTO `details` VALUES ('202108291922271309.8358979767513', 'PD20210829192227', 'G20200314233259831', '140000', '1');
INSERT INTO `details` VALUES ('202108291922276503.379330936278', 'PD20210829192227', 'G20200314230351580', '150000', '1');
INSERT INTO `details` VALUES ('202108291955351910.1585249863942', 'PD20210829195535', 'G20200314232037645', '120000', '1');
INSERT INTO `details` VALUES ('202108291955356549.623704030054', 'PD20210829195535', 'G20200314233512749', '110000', '1');
INSERT INTO `details` VALUES ('202108291955359891.802643451721', 'PD20210829195535', 'G20200314230351580', '150000', '1');
INSERT INTO `details` VALUES ('202108291956034446.021391209654', 'PD20210829195603', 'G20200314232116239', '130000', '1');
INSERT INTO `details` VALUES ('202108291956038229.364024319386', 'PD20210829195603', 'G20210829193704791', '190000', '1');
INSERT INTO `details` VALUES ('202108291956249956.799090319148', 'PD20210829195624', 'G20210829193444827', '250000', '1');
INSERT INTO `details` VALUES ('202108291959233177.736551510581', 'PD20210829195923', 'G20200314233259831', '140000', '1');
INSERT INTO `details` VALUES ('202108291959239774.56972795794', 'PD20210829195923', 'G20210829193852175', '290000', '1');
COMMIT;

-- ----------------------------
-- Table structure for fav
-- ----------------------------
DROP TABLE IF EXISTS `fav`;
CREATE TABLE `fav` (
  `favid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fav
-- ----------------------------
BEGIN;
INSERT INTO `fav` VALUES ('F20200315000918642', 'U20200315000857609', 'G20200314232116239', '2022-05-01');
INSERT INTO `fav` VALUES ('F20200315001137623', 'U20200315000857609', 'G20200314232037645', '2022-05-01');
INSERT INTO `fav` VALUES ('F20210829192146203', 'U20200315000857609', 'G20200314231957352', '2022-05-01');
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` varchar(255) NOT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `seating` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `supplierid` varchar(255) DEFAULT NULL,
  `racksid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `goodsname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES ('G20200314230351580', 'C20200313234545287', '北京汽车', '绅宝X55', '4145*1672*1712', '5', 'upfiles/20210327082956.jpeg', '白色', 'S20200313234338339', 'R20200313234418168', '150000', '18', '2', '12', '否', '否', '2022-05-01', '北京汽车-绅宝X55');
INSERT INTO `goods` VALUES ('G20200314231957352', 'C20200313234545287', '北汽银翔', '北汽幻速S3', '4145*1672*1712', '5', 'upfiles/20210327082914.jpeg', '白色', 'S20200313234338339', 'R20200313234412420', '120000', '20', '0', '4', '否', '是', '2022-05-01', '北汽银翔-北汽幻速S3');
INSERT INTO `goods` VALUES ('G20200314232037645', 'C20200313234545287', '比亚迪', '元', '4145*1672*1712', '5', 'upfiles/20210327083028.jpeg', '红色', 'S20200313234328900', 'R20200313234412420', '120000', '18', '2', '9', '是', '否', '2022-05-01', '比亚迪-元');
INSERT INTO `goods` VALUES ('G20200314232116239', 'C20200313234545287', '一汽奔腾', '奔腾X40', '4145*1672*1712', '5', 'upfiles/20210327082825.jpeg', '蓝色', 'S20200313234315607', 'R20200313234400663', '130000', '19', '1', '3', '否', '是', '2022-05-01', '一汽奔腾-奔腾X40');
INSERT INTO `goods` VALUES ('G20200314232204343', 'C20200313234516177', '宝沃汽车', '宝沃BX5', '4145*1672*1712', '5', 'upfiles/20210327083126.jpeg', '灰色', 'S20200313234338339', 'R20200313234418168', '130000', '20', '0', '2', '是', '是', '2022-05-01', '宝沃汽车-宝沃BX5');
INSERT INTO `goods` VALUES ('G20200314232522853', 'C20200313234516177', '北汽银翔', '北汽幻速S3', '4145*1672*1712', '5', 'upfiles/20210327082900.jpeg', '白色', 'S20200313234328900', 'R20200313234400663', '110000', '20', '0', '0', '否', '否', '2022-05-01', '北汽银翔-北汽幻速S3');
INSERT INTO `goods` VALUES ('G20200314232559785', 'C20200313234516177', '一汽奔腾', '奔腾T77', '4145*1672*1712', '5', 'upfiles/20210327082813.jpeg', '蓝色', 'S20200313234315607', 'R20200313234400663', '125000', '20', '0', '0', '是', '否', '2022-05-01', '一汽奔腾-奔腾T77');
INSERT INTO `goods` VALUES ('G20200314233003454', 'C20200313234531151', '大众(进口)', '甲壳虫', '4145*1672*1712', '5', 'upfiles/20210327082730.jpeg', '黄色', 'S20200313234328900', 'R20200313234412420', '240000', '20', '0', '2', '是', '否', '2022-05-01', '大众(进口)-甲壳虫');
INSERT INTO `goods` VALUES ('G20200314233134571', 'C20200313234531151', '东风本田', '哥瑞', '4145*1672*1712', '5', 'upfiles/20210327082603.jpeg', '白色', 'S20200313234328900', 'R20200313234352177', '150000', '20', '0', '0', '是', '是', '2022-05-01', '东风本田-哥瑞');
INSERT INTO `goods` VALUES ('G20200314233226179', 'C20200313234531151', '东风本田', '思域', '4145*1672*1712', '5', 'upfiles/20210327082539.jpeg', '黄色', 'S20200313234338339', 'R20200313234400663', '160000', '20', '0', '0', '否', '是', '2022-05-01', '东风本田-思域');
INSERT INTO `goods` VALUES ('G20200314233259831', 'C20200313234531151', '华晨宝马', '宝马1系', '4145*1672*1712', '5', 'upfiles/20210326182813.jpg', '蓝色', 'S20200313234338339', 'R20200313234412420', '140000', '18', '2', '2', '是', '是', '2022-05-01', '华晨宝马-宝马1系');
INSERT INTO `goods` VALUES ('G20200314233343504', 'C20200313234538289', '宝骏310', '宝骏310', '4145*1672*1712', '5', 'upfiles/20210327082439.jpeg', '红色', 'S20200313234328900', 'R20200313234418168', '160000', '20', '0', '0', '否', '否', '2022-05-01', '宝骏310');
INSERT INTO `goods` VALUES ('G20200314233416208', 'C20200313234538289', '标致206', '标致206', '4145*1672*1712', '5', 'upfiles/20210327082505.jpeg', '红色', 'S20200313234328900', 'R20200313234412420', '100000', '20', '0', '0', '是', '否', '2022-05-01', '标致206');
INSERT INTO `goods` VALUES ('G20200314233512749', 'C20200313234538289', '长安', 'CX20', '4145*1672*1712', '5', 'upfiles/20210327082342.jpeg', '白色', 'S20200313234338339', 'R20200313234400663', '110000', '19', '1', '1', '否', '是', '2022-05-01', '长安CX20');
INSERT INTO `goods` VALUES ('G20200314233549700', 'C20200313234538289', '长安汽车', '悦翔', '4145*1672*1712', '5', 'upfiles/20210327082150.jpeg', '红色', 'S20200313234315607', 'R20200313234412420', '135000', '20', '0', '0', '是', '否', '2022-05-01', '长安汽车-悦翔');
INSERT INTO `goods` VALUES ('G20200314233624832', 'C20200313234500776', '北京奔驰', '奔驰C级', '4145*1672*1712', '5', 'upfiles/20210326182757.jpg', '白色', 'S20200313234338339', 'R20200313234412420', '250000', '20', '0', '0', '是', '否', '2022-05-01', '北京奔驰-奔驰C级');
INSERT INTO `goods` VALUES ('G20200314233653161', 'C20200313234500776', '东风本田', '本田XR-V', '4145*1672*1712', '5', 'upfiles/20210327082646.jpeg', '白色', 'S20200313234338339', 'R20200313234412420', '240000', '20', '0', '0', '是', '否', '2022-05-01', '东风本田-本田XR-V');
INSERT INTO `goods` VALUES ('G20200314233758834', 'C20200313234500776', '东风标致', '标致508', '4145*1672*1712', '5', 'upfiles/20210327082630.jpeg', '红色', 'S20200313234315607', 'R20200313234418168', '200000', '20', '0', '0', '是', '是', '2022-05-01', '东风标致-标致508');
INSERT INTO `goods` VALUES ('G20200314233842211', 'C20200313234500776', '广汽本田', '雅阁', '4145*1672*1712', '5', 'upfiles/20210326182215.jpeg', '蓝色', 'S20200313234328900', 'R20200313234352177', '21000', '20', '0', '0', '是', '是', '2022-05-01', '广汽本田-雅阁');
INSERT INTO `goods` VALUES ('G20210829193444827', 'C20200313234538289', '奥迪', 'A1', '4328*1772*1610', '5', 'upfiles/20210829193425.jpeg', '红', 'S20200313234328900', 'R20200313234400663', '250000', '9', '1', '2', '是', '是', '2022-05-01', '奥迪A1');
INSERT INTO `goods` VALUES ('G20210829193704791', 'C20200313234545287', '东风本田', 'XR-V', '4328*1772*1610', '5', 'upfiles/20210829193641.jpeg', '白', 'S20200313234338339', 'R20200313234418168', '190000', '4', '1', '1', '是', '是', '2022-05-01', '东风本田XR-V');
INSERT INTO `goods` VALUES ('G20210829193852175', 'C20200313234531151', '宝马2系', '2021新款', '4328*1772*1610', '5', 'upfiles/20210829193833.jpeg', '蓝', 'S20200313234328900', 'R20200313234412420', '290000', '4', '1', '1', '是', '是', '2022-05-01', '宝马2系');
COMMIT;

-- ----------------------------
-- Table structure for instorage
-- ----------------------------
DROP TABLE IF EXISTS `instorage`;
CREATE TABLE `instorage` (
  `instorageid` varchar(255) NOT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `adminid` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`instorageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instorage
-- ----------------------------
BEGIN;
INSERT INTO `instorage` VALUES ('I20200314235415602', 'G20200314233842211', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235428660', 'G20200314233758834', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235430873', 'G20200314233653161', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235432949', 'G20200314233624832', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235435660', 'G20200314233549700', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235438587', 'G20200314233512749', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235440774', 'G20200314233416208', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235443512', 'G20200314233343504', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235448895', 'G20200314233259831', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235452531', 'G20200314233226179', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235456380', 'G20200314233134571', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235500976', 'G20200314233003454', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235505818', 'G20200314232559785', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235509893', 'G20200314232522853', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235513586', 'G20200314232204343', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235519413', 'G20200314232116239', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235522799', 'G20200314232037645', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235526912', 'G20200314231957352', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20200314235529298', 'G20200314230351580', '20', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20210829195118907', 'G20210829193444827', '10', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20210829195127680', 'G20210829193852175', '5', 'admin001', '2022-05-01');
INSERT INTO `instorage` VALUES ('I20210829195136158', 'G20210829193704791', '5', 'admin001', '2022-05-01');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES ('O20200315001747388', 'PD20200315001747', 'U20200315000857609', '120000.0', '已评价', '2022-05-01', '张三', '江苏', '13666666666');
INSERT INTO `orders` VALUES ('O20210829192227208', 'PD20210829192227', 'U20200315000857609', '290000.0', '已评价', '2022-05-01', '张三', '江苏', '13666666666');
INSERT INTO `orders` VALUES ('O20210829195535350', 'PD20210829195535', 'U20200313234255287', '380000.0', '已评价', '2022-05-01', '李四', '上海', '13333333333');
INSERT INTO `orders` VALUES ('O20210829195603533', 'PD20210829195603', 'U20200313234255287', '320000.0', '已评价', '2022-05-01', '李四', '上海', '13777777777');
INSERT INTO `orders` VALUES ('O20210829195624500', 'PD20210829195624', 'U20200313234255287', '250000.0', '未付款', '2022-05-01', '李四', '上海', '13666666666');
INSERT INTO `orders` VALUES ('O20210829195923217', 'PD20210829195923', 'U20200315000857609', '430000.0', '未付款', '2022-05-01', '张三', '北京', '13666666666');
COMMIT;

-- ----------------------------
-- Table structure for outstorage
-- ----------------------------
DROP TABLE IF EXISTS `outstorage`;
CREATE TABLE `outstorage` (
  `outstorageid` varchar(255) NOT NULL,
  `ordersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `adminid` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`outstorageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outstorage
-- ----------------------------
BEGIN;
INSERT INTO `outstorage` VALUES ('O20200315001803847', 'O20200315001747388', 'G20200314232037645', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829192254295', 'O20210829192227208', 'G20200314230351580', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829192254817', 'O20210829192227208', 'G20200314233259831', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829195633117', 'O20210829195603533', 'G20210829193704791', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829195633620', 'O20210829195603533', 'G20200314232116239', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829195634124', 'O20210829195535350', 'G20200314233512749', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829195634334', 'O20210829195535350', 'G20200314230351580', '1', 'admin001', '2022-05-01');
INSERT INTO `outstorage` VALUES ('O20210829195634354', 'O20210829195535350', 'G20200314232037645', '1', 'admin001', '2022-05-01');
COMMIT;

-- ----------------------------
-- Table structure for racks
-- ----------------------------
DROP TABLE IF EXISTS `racks`;
CREATE TABLE `racks` (
  `racksid` varchar(255) NOT NULL,
  `racksno` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`racksid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of racks
-- ----------------------------
BEGIN;
INSERT INTO `racks` VALUES ('R20200313234352177', 'A-001', 'A-001');
INSERT INTO `racks` VALUES ('R20200313234400663', 'A-002', 'A-002');
INSERT INTO `racks` VALUES ('R20200313234412420', 'B-001', 'B-001');
INSERT INTO `racks` VALUES ('R20200313234418168', 'B-002', 'B-002');
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplierid` varchar(255) NOT NULL,
  `supname` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` VALUES ('S20200313234315607', '大众', '大众');
INSERT INTO `supplier` VALUES ('S20200313234328900', '上汽', '上汽');
INSERT INTO `supplier` VALUES ('S20200313234338339', '广汽', '广汽');
COMMIT;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `ordersid` varchar(255) DEFAULT NULL,
  `goodsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
BEGIN;
INSERT INTO `topic` VALUES ('15d20f77-bad2-4f6d-9329-f9c4cff097b3', 'U20200313234255287', 'O20210829195535350', 'G20200314232037645', '5', '性价比高，推荐！', '2022-05-01');
INSERT INTO `topic` VALUES ('5ede1824-1987-4afc-a4fc-5e2898f681ac', 'U20200315000857609', 'O20200315001747388', 'G20200314232037645', '5', '很赞，支持！', '2022-05-01');
INSERT INTO `topic` VALUES ('8ce24cdb-8eb2-4397-ba76-2cee9c113878', 'U20200315000857609', 'O20210829192227208', 'G20200314233259831', '5', '性能优越，给力！', '2022-05-01');
INSERT INTO `topic` VALUES ('b0524fb3-e443-4f9c-9855-e44829bfa850', 'U20200315000857609', 'O20210829192227208', 'G20200314230351580', '5', '动力一般，外观还行。', '2022-05-01');
INSERT INTO `topic` VALUES ('bc58c2b1-b028-4259-91be-2b7bc221b801', 'U20200313234255287', 'O20210829195603533', 'G20200314232116239', '5', '还行吧，外观不好看。', '2022-05-01');
INSERT INTO `topic` VALUES ('d5383a62-9d21-49a8-abe8-474ef38bffce', 'U20200313234255287', 'O20210829195535350', 'G20200314233512749', '5', '质量一般，还行。', '2022-05-01');
INSERT INTO `topic` VALUES ('e274b6be-7a24-4ba7-91ef-76d3d816ba9f', 'U20200313234255287', 'O20210829195535350', 'G20200314230351580', '5', '性价比高，推荐！', '2022-05-01');
INSERT INTO `topic` VALUES ('f71943c7-19f9-4dcb-b8a3-282aa42cb1bc', 'U20200313234255287', 'O20210829195603533', 'G20210829193704791', '5', '质量不错，推荐', '2022-05-01');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('U20200313234255287', 'lisi', '123', '李四', '女', '1989-03-13', '13777777777', '北京', '2022-05-01');
INSERT INTO `users` VALUES ('U20200315000857609', 'zhangsan', '123', '张三', '男', '1998-03-17', '13888888888', '江苏南京', '2022-05-01');
INSERT INTO `users` VALUES ('U20210829194809322', 'wangwu', '123', '王五', '男', '1995-08-29', '13999999999', '江苏南京', '2022-05-01');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
