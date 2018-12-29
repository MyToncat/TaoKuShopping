/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : store_v2

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-03-03 10:24:33
*/




SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;--商品分类表
CREATE TABLE `category` (
  `cid` varchar(32) NOT NULL,--分类的主键
  `cname` varchar(20) DEFAULT NULL,--分类的名称
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '手机数码');
INSERT INTO `category` VALUES ('2', '电脑办公');
INSERT INTO `category` VALUES ('3', '家具家居');
INSERT INTO `category` VALUES ('4', '鞋靴箱包');
INSERT INTO `category` VALUES ('5', '图书音像');
INSERT INTO `category` VALUES ('6', '母婴孕婴');
INSERT INTO `category` VALUES ('7', '汽车用品');
INSERT INTO `category` VALUES ('8', '运动户外');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;--订单的明细表
CREATE TABLE `orderitem` (
  `itemid` varchar(32) NOT NULL, --明细编号
  `count` int(11) DEFAULT NULL, --商品数量
  `subtotal` double DEFAULT NULL, --小计
  `pid` varchar(32) DEFAULT NULL, --商品编号
  `oid` varchar(32) DEFAULT NULL, --订单编号
  PRIMARY KEY (`itemid`),
  KEY `fk_0001` (`pid`),
  KEY `fk_0002` (`oid`),
  CONSTRAINT `fk_0001` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `fk_0002` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('10b27f00f3e84c61b3e1ab054c6b0cf9', '1', '2298', '11', '622f3c01919447d1b9e28793fe8c104f');
INSERT INTO `orderitem` VALUES ('11a65bacf2024715b803ac6597656037', '1', '3299', '37', '904c5b50542e42ac864b7fa2c5a2b153');
INSERT INTO `orderitem` VALUES ('1e3fc5cac0c64ca4a6da440a60233161', '1', '2699', '2', 'bd758bcdf344472eb2caa62bf841843a');
INSERT INTO `orderitem` VALUES ('20582c57cdb64aa9b46023379456968b', '1', '2299', '9', '45fe905db68e4d4f9681da6901c872f5');
INSERT INTO `orderitem` VALUES ('24af0ad243504beabf05d5bd738294a6', '2', '6598', '37', 'c46003a928f44cd5ac687ccb95bd9e0f');
INSERT INTO `orderitem` VALUES ('3a2a2dd0b44c448694df7c070b74ca82', '1', '2699', '2', 'e1547776efec4cee8fab04435aa42dbf');
INSERT INTO `orderitem` VALUES ('3d9b855667934a95b1bc7ae0ce122d3a', '1', '4087', '16', '422a450e6ccc43b6aa8ca1cadfa0eb7a');
INSERT INTO `orderitem` VALUES ('3ee53131c26546f69cef3694f5a055f6', '1', '3333', '4b91853c07f74e65a27305d6c4aacd57', '768e6440865d4825bcb3f06e1f094e88');
INSERT INTO `orderitem` VALUES ('4bcee1ff876a431b96bdcff3f696b394', '1', '2699', '2', '288da449cfb548d0888a39de476af2e1');
INSERT INTO `orderitem` VALUES ('4eafea3655d24b48b376f3531f6cc3ba', '1', '4899', '47', '8ac5c9202c1447958e3e4d06d996fc48');
INSERT INTO `orderitem` VALUES ('59971dee0adb4868b606bf6ba76d2440', '1', '1699', '23', '904c5b50542e42ac864b7fa2c5a2b153');
INSERT INTO `orderitem` VALUES ('60dc0631862a48f286fcc4441591d7b7', '1', '3299', '37', 'd302a7a35aab453f817791d2b82628fb');
INSERT INTO `orderitem` VALUES ('693f21b78bed42adabcfc9b7c1572d05', '1', '2299', '50', '69b4eae4a63644059e051e77d04f9868');
INSERT INTO `orderitem` VALUES ('69b1548517094db4a33bf48a43b2b743', '2', '6598', '37', '768e6440865d4825bcb3f06e1f094e88');
INSERT INTO `orderitem` VALUES ('69c1a92675994c0cafbf151adcbf1f8e', '1', '4087', '16', '68cd1ac5854a47b8af82047669cd9752');
INSERT INTO `orderitem` VALUES ('768fba80eeda4e069299f17b40cc615b', '2', '6666', '4b91853c07f74e65a27305d6c4aacd57', '3325af6da37545de82f5172df9311f42');
INSERT INTO `orderitem` VALUES ('76c6d0e2df91488fa8ef4af4f9e37f6d', '1', '0', null, 'c46003a928f44cd5ac687ccb95bd9e0f');
INSERT INTO `orderitem` VALUES ('882fa9716dc14d12bdce892b619d30f4', '1', '1699', '23', '171a3207d45a496397078282f1f7d114');
INSERT INTO `orderitem` VALUES ('8b0d5d8575264686a6f8b9e3436eb250', '1', '4899', '47', 'd302a7a35aab453f817791d2b82628fb');
INSERT INTO `orderitem` VALUES ('8d72bf202c804111b19bdd191945852a', '1', '4087', '16', '3b0af948178d41b288d8e831e7b53579');
INSERT INTO `orderitem` VALUES ('92b44cf06b814d64ae63a74a5dde2a96', '1', '2299', '50', '957ab49054b34e1c9fe29c4317140a20');
INSERT INTO `orderitem` VALUES ('9961d2c2610a4bbeaf8a24665d07c9b1', '1', '0', null, '768e6440865d4825bcb3f06e1f094e88');
INSERT INTO `orderitem` VALUES ('a005c43f9fdf452da65afdb35b22afe0', '1', '3333', '4b91853c07f74e65a27305d6c4aacd57', 'e90f041efc5748aca567dfb4e6b15eb9');
INSERT INTO `orderitem` VALUES ('a360a8475d6844f1848265351236527c', '1', '2699', '2', '17a252feeed048888d3f703634da2f88');
INSERT INTO `orderitem` VALUES ('a4b7ddc43c45498c863d3e144fbd0499', '1', '2699', '2', '7b21ed29f8cf458cb0bc2e3ee80b0627');
INSERT INTO `orderitem` VALUES ('a6880ec3f12848418cd94c62b146a8d2', '1', '0', null, 'ec8f5bcfffeb478aa312539741600981');
INSERT INTO `orderitem` VALUES ('ac13f558c50348ecbe99477d5c4b249e', '2', '6598', '37', 'ec8f5bcfffeb478aa312539741600981');
INSERT INTO `orderitem` VALUES ('adb4bf584e2a428cb44aabd2379a4dcc', '1', '4899', '47', '3325af6da37545de82f5172df9311f42');
INSERT INTO `orderitem` VALUES ('ae83145861ea4cab9f26f6fd45cce939', '1', '1699', '23', '672abd68b79f49e9b3dbe90f4a230fb2');
INSERT INTO `orderitem` VALUES ('bb7fb427905d4463a5e88ac815fcdd72', '2', '6598', '37', 'e90f041efc5748aca567dfb4e6b15eb9');
INSERT INTO `orderitem` VALUES ('c045a994ba6f4b838840df5d96c617a9', '1', '2299', '50', 'd302a7a35aab453f817791d2b82628fb');
INSERT INTO `orderitem` VALUES ('c4b7b30661024817892697fa65fbf64f', '1', '1699', '23', '6f261578e63b4d09bf682c52771c2577');
INSERT INTO `orderitem` VALUES ('d2f4d9d041f548a8aa0af8302177a864', '1', '1699', '23', 'd52ce6ebce2546fe9b5e49f23da48092');
INSERT INTO `orderitem` VALUES ('d4f992fb57154e2e8a1613407663a7ad', '1', '2299', '50', '3e05b4e2066a4a908a018a10da7c400c');
INSERT INTO `orderitem` VALUES ('e9336183481f4bfb812c3856d79c55dd', '1', '0', null, 'e90f041efc5748aca567dfb4e6b15eb9');
INSERT INTO `orderitem` VALUES ('eb879162f19744989acd34e93b984f14', '1', '1398', '7', '831f77285598418da9286538b7cc5f68');
INSERT INTO `orderitem` VALUES ('edb33be12ab148899721c33524d412dc', '1', '4087', '16', 'aa9df92d793a4ff38d4bb360bcdc63b8');
INSERT INTO `orderitem` VALUES ('effcff87d00f45db80448b1221321a93', '1', '1398', '7', 'd302a7a35aab453f817791d2b82628fb');
INSERT INTO `orderitem` VALUES ('f0723036a9124ed8a6ff6be421d66d3d', '1', '1699', '23', '0f24cfb9c94c46ce970a9d35d3d02fa4');
INSERT INTO `orderitem` VALUES ('f44b92f2bd8e419f9173fa0b17d4dbdf', '1', '2699', '2', 'd7eabdbf754244b5914d33a6e36b6242');
INSERT INTO `orderitem` VALUES ('f57e5672272b4852b59f938f17190527', '1', '3333', '4b91853c07f74e65a27305d6c4aacd57', 'c46003a928f44cd5ac687ccb95bd9e0f');
INSERT INTO `orderitem` VALUES ('fb5f704e373c40558c1c4e76968c9342', '1', '1398', '7', '957ab49054b34e1c9fe29c4317140a20');
INSERT INTO `orderitem` VALUES ('ffcf5930a89c426e981f70dc19ad2226', '2', '0', null, 'b313b63bc52e4979870dd9db36f943a0');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;--订单表
CREATE TABLE `orders` (
  `oid` varchar(32) NOT NULL,--主键
  `ordertime` datetime DEFAULT NULL, --下单时间
  `total` double DEFAULT NULL,--总价
  `state` int(11) DEFAULT NULL, --状态
  `address` varchar(30) DEFAULT NULL, --地址
  `name` varchar(20) DEFAULT NULL,--用户名
  `telephone` varchar(20) DEFAULT NULL, --电话
  `uid` varchar(32) DEFAULT NULL, --用户id
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0f24cfb9c94c46ce970a9d35d3d02fa4', '2017-03-02 10:31:14', '1699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('171a3207d45a496397078282f1f7d114', '2017-02-27 15:26:42', '1699', '0', 'dd', 'ff', 'fdd', '001');
INSERT INTO `orders` VALUES ('17a252feeed048888d3f703634da2f88', '2017-03-01 11:34:32', '2699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('288da449cfb548d0888a39de476af2e1', '2017-03-01 11:25:31', '2699', '0', '', '', '', '001');
INSERT INTO `orders` VALUES ('3325af6da37545de82f5172df9311f42', '2017-03-01 15:43:22', '11565', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('3b0af948178d41b288d8e831e7b53579', '2017-03-01 11:30:57', '4087', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('3e05b4e2066a4a908a018a10da7c400c', '2017-02-27 16:02:05', '2299', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('422a450e6ccc43b6aa8ca1cadfa0eb7a', '2017-03-01 11:32:11', '4087', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('45fe905db68e4d4f9681da6901c872f5', '2017-03-01 13:17:53', '2299', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('622f3c01919447d1b9e28793fe8c104f', '2017-03-02 10:34:05', '2298', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('672abd68b79f49e9b3dbe90f4a230fb2', '2017-03-02 10:37:44', '1699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('68cd1ac5854a47b8af82047669cd9752', '2017-03-01 11:37:28', '4087', '0', '', '', '', '001');
INSERT INTO `orders` VALUES ('69b4eae4a63644059e051e77d04f9868', '2017-02-27 15:59:24', '2299', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('6f261578e63b4d09bf682c52771c2577', '2017-03-01 11:54:40', '1699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('768e6440865d4825bcb3f06e1f094e88', '2017-03-01 09:25:29', '9931', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('7b21ed29f8cf458cb0bc2e3ee80b0627', '2017-03-01 11:35:50', '2699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('831f77285598418da9286538b7cc5f68', '2017-02-27 14:55:00', '1398', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('8ac5c9202c1447958e3e4d06d996fc48', '2017-03-01 11:58:38', '4899', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('904c5b50542e42ac864b7fa2c5a2b153', '2017-03-01 11:43:36', '4998', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('957ab49054b34e1c9fe29c4317140a20', '2017-02-27 16:47:47', '3697', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('aa9df92d793a4ff38d4bb360bcdc63b8', '2017-03-02 13:25:45', '4087', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('b313b63bc52e4979870dd9db36f943a0', '2017-03-01 09:33:06', '0', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('bd758bcdf344472eb2caa62bf841843a', '2017-03-01 14:10:58', '2699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('c46003a928f44cd5ac687ccb95bd9e0f', '2017-03-01 09:26:30', '9931', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('d302a7a35aab453f817791d2b82628fb', '2017-02-27 16:50:55', '11895', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('d52ce6ebce2546fe9b5e49f23da48092', '2017-03-02 10:35:05', '1699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('d7eabdbf754244b5914d33a6e36b6242', '2017-03-01 11:26:22', '2699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('e1547776efec4cee8fab04435aa42dbf', '2017-03-01 12:03:50', '2699', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('e90f041efc5748aca567dfb4e6b15eb9', '2017-03-01 09:26:28', '9931', '0', null, null, null, '001');
INSERT INTO `orders` VALUES ('ec8f5bcfffeb478aa312539741600981', '2017-03-01 09:22:42', '6598', '0', '', '', '', '001');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (--商品表
  `pid` varchar(32) NOT NULL, --商品编号
  `pname` varchar(50) DEFAULT NULL, --商品名称
  `market_price` double DEFAULT NULL, --价格
  `shop_price` double DEFAULT NULL,--出售价格
  `pimage` varchar(200) DEFAULT NULL,--商品图片
  `pdate` datetime DEFAULT NULL,--上架时间
  `is_hot` int(11) DEFAULT NULL,--是否热门商品
  `pdesc` varchar(255) DEFAULT NULL,--商品秒述
  `pflag` int(11) DEFAULT NULL,--商品上架状态
  `cid` varchar(32) DEFAULT NULL,--分类编号
  PRIMARY KEY (`pid`),
  KEY `sfk_0001` (`cid`),
  CONSTRAINT `sfk_0001` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('09933144ce1b4a5a9e903de6c7dd7a96', '电炖锅', '112', '344', 'upload/4a59b4ce895e451a8969591bbfb66257_small03.jpg', '2017-02-28 22:47:20', '0', '顶顶顶顶', '1', '3');
INSERT INTO `product` VALUES ('1', '小米 4c 标准版', '1399', '1299', 'products/1/c_0001.jpg', '2015-11-02 00:00:00', '1', '小米 4c 标准版 全网通 白色 移动联通电信4G手机 双卡双待', '0', '3');
INSERT INTO `product` VALUES ('10', '华为 Ascend Mate7', '2699', '2599', 'products/1/c_0010.jpg', '2015-11-02 00:00:00', '1', '华为 Ascend Mate7 月光银 移动4G手机 双卡双待双通6英寸高清大屏，纤薄机身，智能超八核，按压式指纹识别！!选择下方“移动老用户4G飞享合约”，无需换号，还有话费每月返还！', '0', '1');
INSERT INTO `product` VALUES ('11', 'vivo X5Pro', '2399', '2298', 'products/1/c_0014.jpg', '2015-11-02 00:00:00', '1', '移动联通双4G手机 3G运存版 极光白【购机送蓝牙耳机+蓝牙自拍杆】新升级3G运行内存•双2.5D弧面玻璃•眼球识别技术', '0', '1');
INSERT INTO `product` VALUES ('12', '努比亚（nubia）My 布拉格', '1899', '1799', 'products/1/c_0013.jpg', '2015-11-02 00:00:00', '0', '努比亚（nubia）My 布拉格 银白 移动联通4G手机 双卡双待【嗨11，下单立减100】金属机身，快速充电！布拉格相机全新体验！', '0', '1');
INSERT INTO `product` VALUES ('13', '华为 麦芒4', '2599', '2499', 'products/1/c_0012.jpg', '2015-11-02 00:00:00', '1', '华为 麦芒4 晨曦金 全网通版4G手机 双卡双待金属机身 2.5D弧面屏 指纹解锁 光学防抖', '0', '1');
INSERT INTO `product` VALUES ('14', 'vivo X5M', '1899', '1799', 'products/1/c_0011.jpg', '2015-11-02 00:00:00', '0', 'vivo X5M 移动4G手机 双卡双待 香槟金【购机送蓝牙耳机+蓝牙自拍杆】5.0英寸大屏显示•八核双卡双待•Hi-Fi移动KTV', '0', '1');
INSERT INTO `product` VALUES ('15', 'Apple iPhone 6 (A1586)', '4399', '4288', 'products/1/c_0015.jpg', '2015-11-02 00:00:00', '1', 'Apple iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机长期省才是真的省！点击购机送费版，月月送话费，月月享优惠，畅享4G网络，就在联通4G！', '0', '1');
INSERT INTO `product` VALUES ('16', '华为 HUAWEI Mate S 臻享版', '4200', '4087', 'products/1/c_0016.jpg', '2015-11-03 00:00:00', '0', '华为 HUAWEI Mate S 臻享版 手机 极昼金 移动联通双4G(高配)满星评价即返30元话费啦；买就送电源+清水套+创意手机支架；优雅弧屏，mate7升级版', '0', '1');
INSERT INTO `product` VALUES ('17', '索尼(SONY) E6533 Z3+', '4099', '3999', 'products/1/c_0017.jpg', '2015-11-02 00:00:00', '0', '索尼(SONY) E6533 Z3+ 双卡双4G手机 防水防尘 涧湖绿索尼z3专业防水 2070万像素 移动联通双4G', '0', '1');
INSERT INTO `product` VALUES ('18', 'HTC One M9+', '3599', '3499', 'products/1/c_0018.jpg', '2015-11-02 00:00:00', '0', 'HTC One M9+（M9pw） 金银汇 移动联通双4G手机5.2英寸，8核CPU，指纹识别，UltraPixel超像素前置相机+2000万/200万后置双镜头相机！降价特卖，惊喜不断！', '0', '1');
INSERT INTO `product` VALUES ('19', 'HTC Desire 826d 32G 臻珠白', '1599', '1469', 'products/1/c_0020.jpg', '2015-11-02 00:00:00', '1', '后置1300万+UltraPixel超像素前置摄像头+【双】前置扬声器+5.5英寸【1080p】大屏！', '0', '1');
INSERT INTO `product` VALUES ('2', '中兴 AXON', '2899', '2699', 'products/1/c_0002.jpg', '2015-11-05 00:00:00', '1', '中兴 AXON 天机 mini 压力屏版 B2015 华尔金 移动联通电信4G 双卡双待', '0', '1');
INSERT INTO `product` VALUES ('20', '小米 红米2A 增强版 白色', '649', '549', 'products/1/c_0019.jpg', '2015-11-02 00:00:00', '0', '新增至2GB 内存+16GB容量！4G双卡双待，联芯 4 核 1.5GHz 处理器！', '0', '1');
INSERT INTO `product` VALUES ('21', '魅族 魅蓝note2 16GB 白色', '1099', '999', 'products/1/c_0021.jpg', '2015-11-02 00:00:00', '0', '现货速抢，抢完即止！5.5英寸1080P分辨率屏幕，64位八核1.3GHz处理器，1300万像素摄像头，双色温双闪光灯！', '0', '1');
INSERT INTO `product` VALUES ('22', '三星 Galaxy S5 (G9008W) 闪耀白', '2099', '1999', 'products/1/c_0022.jpg', '2015-11-02 00:00:00', '1', '5.1英寸全高清炫丽屏，2.5GHz四核处理器，1600万像素', '0', '1');
INSERT INTO `product` VALUES ('23', 'sonim XP7700 4G手机', '1799', '1699', 'products/1/c_0023.jpg', '2015-11-09 00:00:00', '1', '三防智能手机 移动/联通双4G 安全 黑黄色 双4G美国军工IP69 30天长待机 3米防水防摔 北斗', '0', '1');
INSERT INTO `product` VALUES ('24', '努比亚（nubia）Z9精英版 金色', '3988', '3888', 'products/1/c_0024.jpg', '2015-11-02 00:00:00', '1', '移动联通电信4G手机 双卡双待真正的无边框！金色尊贵版！4GB+64GB大内存！', '0', '1');
INSERT INTO `product` VALUES ('25', 'Apple iPhone 6 Plus (A1524) 16GB 金色', '5188', '4988', 'products/1/c_0025.jpg', '2015-11-02 00:00:00', '0', 'Apple iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机 硬货 硬实力', '0', '1');
INSERT INTO `product` VALUES ('26', 'Apple iPhone 6s (A1700) 64G 玫瑰金色', '6388', '6088', 'products/1/c_0026.jpg', '2015-11-02 00:00:00', '0', 'Apple iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机 硬货 硬实力', '0', '1');
INSERT INTO `product` VALUES ('27', '三星 Galaxy Note5（N9200）32G版', '5588', '5388', 'products/1/c_0027.jpg', '2015-11-02 00:00:00', '0', '旗舰机型！5.7英寸大屏，4+32G内存！不一样的SPen更优化的浮窗指令！赠无线充电板！', '0', '1');
INSERT INTO `product` VALUES ('28', '三星 Galaxy S6 Edge+（G9280）32G版 铂光金', '5999', '5888', 'products/1/c_0028.jpg', '2015-11-02 00:00:00', '0', '赠移动电源+自拍杆+三星OTG金属U盘+无线充电器+透明保护壳', '0', '1');
INSERT INTO `product` VALUES ('29', 'LG G4（H818）陶瓷白 国际版', '3018', '2978', 'products/1/c_0029.jpg', '2015-11-02 00:00:00', '0', '李敏镐代言，F1.8大光圈1600万后置摄像头，5.5英寸2K屏，3G+32G内存，LG年度旗舰机！', '0', '1');
INSERT INTO `product` VALUES ('2a95be8149f54a95a197230b0bd8d3aa', '汽车', '33333', '33335', 'upload/ca27d0ff9e5245c7b6ffca0a00ce4c26_wg09.jpg', '2017-02-28 22:50:56', '0', '一月又一月晕', '0', '7');
INSERT INTO `product` VALUES ('3', '华为荣耀6', '1599', '1499', 'products/1/c_0003.jpg', '2015-11-02 00:00:00', '0', '荣耀 6 (H60-L01) 3GB内存标准版 黑色 移动4G手机', '0', '1');
INSERT INTO `product` VALUES ('30', '微软(Microsoft) Lumia 640 LTE DS (RM-1113)', '1099', '999', 'products/1/c_0030.jpg', '2015-11-02 00:00:00', '0', '微软首款双网双卡双4G手机，5.0英寸高清大屏，双网双卡双4G！', '0', '1');
INSERT INTO `product` VALUES ('31', '宏碁（acer）ATC705-N50 台式电脑', '2399', '2299', 'products/1/c_0031.jpg', '2015-11-02 00:00:00', '0', '爆款直降，满千减百，品质宏碁，特惠来袭，何必苦等11.11，早买早便宜！', '0', '2');
INSERT INTO `product` VALUES ('32', 'Apple MacBook Air MJVE2CH/A 13.3英寸', '6788', '6688', 'products/1/c_0032.jpg', '2015-11-02 00:00:00', '0', '宽屏笔记本电脑 128GB 闪存', '0', '2');
INSERT INTO `product` VALUES ('33', '联想（ThinkPad） 轻薄系列E450C(20EH0001CD)', '4399', '4199', 'products/1/c_0033.jpg', '2015-11-02 00:00:00', '0', '联想（ThinkPad） 轻薄系列E450C(20EH0001CD)14英寸笔记本电脑(i5-4210U 4G 500G 2G独显 Win8.1)', '0', '2');
INSERT INTO `product` VALUES ('34', '联想（Lenovo）小新V3000经典版', '4599', '4499', 'products/1/c_0034.jpg', '2015-11-02 00:00:00', '0', '14英寸超薄笔记本电脑（i7-5500U 4G 500G+8G SSHD 2G独显 全高清屏）黑色满1000減100，狂减！火力全开，横扫3天！', '0', '2');
INSERT INTO `product` VALUES ('35', '华硕（ASUS）经典系列R557LI', '3799', '3699', 'products/1/c_0035.jpg', '2015-11-02 00:00:00', '0', '15.6英寸笔记本电脑（i5-5200U 4G 7200转500G 2G独显 D刻 蓝牙 Win8.1 黑色）', '0', '2');
INSERT INTO `product` VALUES ('36', '华硕（ASUS）X450J', '4599', '4399', 'products/1/c_0036.jpg', '2015-11-02 00:00:00', '0', '14英寸笔记本电脑 （i5-4200H 4G 1TB GT940M 2G独显 蓝牙4.0 D刻 Win8.1 黑色）', '0', '2');
INSERT INTO `product` VALUES ('37', '戴尔（DELL）灵越 飞匣3000系列', '3399', '3299', 'products/1/c_0037.jpg', '2015-11-03 00:00:00', '0', ' Ins14C-4528B 14英寸笔记本（i5-5200U 4G 500G GT820M 2G独显 Win8）黑', '0', '2');
INSERT INTO `product` VALUES ('38', '惠普(HP)WASD 暗影精灵', '5699', '5499', 'products/1/c_0038.jpg', '2015-11-02 00:00:00', '0', '15.6英寸游戏笔记本电脑(i5-6300HQ 4G 1TB+128G SSD GTX950M 4G独显 Win10)', '0', '2');
INSERT INTO `product` VALUES ('39', 'Apple 配备 Retina 显示屏的 MacBook', '11299', '10288', 'products/1/c_0039.jpg', '2015-11-02 00:00:00', '0', 'Pro MF840CH/A 13.3英寸宽屏笔记本电脑 256GB 闪存', '0', '2');
INSERT INTO `product` VALUES ('39a3c5bdde2540caaab7d0c9c73bad81', '图书', '33', '33', 'upload/f75ae86dbf9f4d55b9380b2446fe660b_timg (1).jpg', '2017-02-28 22:49:17', '1', '哈哈哈', '1', '5');
INSERT INTO `product` VALUES ('4', '联想 P1', '2199', '1999', 'products/1/c_0004.jpg', '2015-11-02 00:00:00', '0', '联想 P1 16G 伯爵金 移动联通4G手机充电5分钟，通话3小时！科技源于超越！品质源于沉淀！5000mAh大电池！高端商务佳配！', '0', '1');
INSERT INTO `product` VALUES ('40', '机械革命（MECHREVO）MR X6S-M', '6799', '6599', 'products/1/c_0040.jpg', '2015-11-02 00:00:00', '0', '15.6英寸游戏本(I7-4710MQ 8G 64GSSD+1T GTX960M 2G独显 IPS屏 WIN7)黑色', '0', '2');
INSERT INTO `product` VALUES ('41', '神舟（HASEE） 战神K660D-i7D2', '5699', '5499', 'products/1/c_0041.jpg', '2015-11-02 00:00:00', '0', '15.6英寸游戏本(i7-4710MQ 8G 1TB GTX960M 2G独显 1080P)黑色', '0', '2');
INSERT INTO `product` VALUES ('42', '微星（MSI）GE62 2QC-264XCN', '6199', '5999', 'products/1/c_0042.jpg', '2015-11-02 00:00:00', '0', '15.6英寸游戏笔记本电脑（i5-4210H 8G 1T GTX960MG DDR5 2G 背光键盘）黑色', '0', '2');
INSERT INTO `product` VALUES ('43', '雷神（ThundeRobot）G150S', '5699', '5499', 'products/1/c_0043.jpg', '2015-11-02 00:00:00', '0', '15.6英寸游戏本 ( i7-4710MQ 4G 500G GTX950M 2G独显 包无亮点全高清屏) 金', '0', '2');
INSERT INTO `product` VALUES ('44', '惠普（HP）轻薄系列 HP', '3199', '3099', 'products/1/c_0044.jpg', '2015-11-02 00:00:00', '0', '15-r239TX 15.6英寸笔记本电脑（i5-5200U 4G 500G GT820M 2G独显 win8.1）金属灰', '0', '2');
INSERT INTO `product` VALUES ('45', '未来人类（Terrans Force）T5', '10999', '9899', 'products/1/c_0045.jpg', '2015-11-02 00:00:00', '0', '15.6英寸游戏本（i7-5700HQ 16G 120G固态+1TB GTX970M 3G GDDR5独显）黑', '0', '2');
INSERT INTO `product` VALUES ('46', '戴尔（DELL）Vostro 3800-R6308 台式电脑', '3299', '3199', 'products/1/c_0046.jpg', '2015-11-02 00:00:00', '0', '（i3-4170 4G 500G DVD 三年上门服务 Win7）黑', '0', '2');
INSERT INTO `product` VALUES ('47', '联想（Lenovo）H3050 台式电脑', '5099', '4899', 'products/1/c_0047.jpg', '2015-11-11 00:00:00', '0', '（i5-4460 4G 500G GT720 1G独显 DVD 千兆网卡 Win10）23英寸', '0', '2');
INSERT INTO `product` VALUES ('48', 'Apple iPad mini 2 ME279CH/A', '2088', '1888', 'products/1/c_0048.jpg', '2015-11-02 00:00:00', '0', '（配备 Retina 显示屏 7.9英寸 16G WLAN 机型 银色）', '0', '2');
INSERT INTO `product` VALUES ('49', '小米（MI）7.9英寸平板', '1399', '1299', 'products/1/c_0049.jpg', '2015-11-02 00:00:00', '0', 'WIFI 64GB（NVIDIA Tegra K1 2.2GHz 2G 64G 2048*1536视网膜屏 800W）白色', '0', '2');
INSERT INTO `product` VALUES ('4b91853c07f74e65a27305d6c4aacd57', '电动车', '3333', '3333', 'wg08.jpg', '2017-02-28 22:51:41', '0', '哈哈哈哈或', '0', '8');
INSERT INTO `product` VALUES ('5', '摩托罗拉 moto x（x+1）', '1799', '1699', 'products/1/c_0005.jpg', '2015-11-01 00:00:00', '0', '摩托罗拉 moto x（x+1）(XT1085) 32GB 天然竹 全网通4G手机11月11天！MOTO X震撼特惠来袭！1699元！带你玩转黑科技！天然材质，原生流畅系统！', '0', '1');
INSERT INTO `product` VALUES ('50', 'Apple iPad Air 2 MGLW2CH/A', '2399', '2299', 'products/1/c_0050.jpg', '2015-11-12 00:00:00', '0', '（9.7英寸 16G WLAN 机型 银色）', '0', '2');
INSERT INTO `product` VALUES ('6', '魅族 MX5 16GB 银黑色', '1899', '1799', 'products/1/c_0006.jpg', '2015-11-02 00:00:00', '0', '魅族 MX5 16GB 银黑色 移动联通双4G手机 双卡双待送原厂钢化膜+保护壳+耳机！5.5英寸大屏幕，3G运行内存，2070万+500万像素摄像头！长期省才是真的省！', '0', '1');
INSERT INTO `product` VALUES ('6aa08d8128ad49aaa427e30364b0ec99', '干果', '445', '444', 'upload/e66964a4bb4b4c989dfa270ec97c37cb_wg06.jpg', '2017-02-28 22:50:19', '0', '哈哈哈快快快', '0', '6');
INSERT INTO `product` VALUES ('7', '三', '149', '1398', 'timg (5).jpg', '2015-11-14 00:00:00', '0', '三星 Galaxy On7（G6000）昂小七 金色 全网通4G手机 双卡双待新品火爆抢购中！京东尊享千元良机！5.5英寸高清大屏！1300+500W像素！评价赢30元话费券！', '0', '1');
INSERT INTO `product` VALUES ('8', 'NUU NU5', '1288', '1190', 'products/1/c_0008.jpg', '2015-11-02 00:00:00', '0', 'NUU NU5 16GB 移动联通双4G智能手机 双卡双待 晒单有礼 晨光金香港品牌 2.5D弧度前后钢化玻璃 随机附赠手机套+钢化贴膜 晒单送移动电源+蓝牙耳机', '0', '1');
INSERT INTO `product` VALUES ('9', '乐视（Letv）乐1pro（X800）', '2399', '2299', 'products/1/c_0009.jpg', '2015-11-02 00:00:00', '0', '乐视（Letv）乐1pro（X800）64GB 金色 移动联通4G手机 双卡双待乐视生态UI+5.5英寸2K屏+高通8核处理器+4GB运行内存+64GB存储+1300万摄像头！', '0', '1');
INSERT INTO `product` VALUES ('bca964e4ddad4445a0c7c993332f465a', 'mk包', '22222', '2222', 'upload/a840afde764b411cb126e0c0e3d182fa_wg07.jpg', '2017-02-28 22:47:58', '1', '灌灌灌灌', '0', '4');
INSERT INTO `product` VALUES ('d61e5bd674fc4c97b593c9bdcef54c2d', '翻翻1111', '111', '111', 'upload/ecdf7ba149cc479d9289f872745606e3_3.jpg', '2017-03-02 13:44:28', '0', '浮动', '0', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` ( --用户名
  `uid` varchar(32) NOT NULL,--用户的编号
  `username` varchar(20) DEFAULT NULL,--用户名
  `password` varchar(20) DEFAULT NULL,--密码
  `name` varchar(20) DEFAULT NULL,--真实姓名
  `photo` varchar(64) DEFAULT NULL,--头象
  `email` varchar(30) DEFAULT NULL,--电子邮箱
  `telephone` varchar(20) DEFAULT NULL,--电话号码
  `birthday` date DEFAULT NULL,--生日
  `sex` varchar(10) DEFAULT NULL,--性别
  `state` int(11) DEFAULT NULL,--状态
  `code` varchar(64) DEFAULT NULL,--身份证号
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('001', 'admin', '123', '管理员', null, 'service@store.com', '123456', null, '男', '1', '');
INSERT INTO `user` VALUES ('1', 'account', '123456', '张三', '', '1234@163.com', '12334214323', '2017-03-02', '女', '1', '');
INSERT INTO `user` VALUES ('2', 'account', '123456', '张三222', '', '1234@163.com', '12334214323', '2017-03-02', '女', '1', '');
INSERT INTO `user` VALUES ('3241924cf8044a01add66f7188d8853c', 'null', 'null', 'null', 'null', 'null', 'null', null, null, null, null);
INSERT INTO `user` VALUES ('ab86c28803074d74bb3b8208742cfdf8', 'qiuyouzone', '111', 'ff', 'upload/430f0c328c86422eb0ca9c18fd65502e_3.jpg', 'cm@qq13.com', '11111', null, null, null, null);
