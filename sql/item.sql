/*
Navicat MySQL Data Transfer

Source Server         : 主机
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2023-07-09 10:06:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) DEFAULT NULL,
  `book_img` varchar(255) DEFAULT NULL,
  `book_author` varchar(255) DEFAULT NULL,
  `book_info` varchar(3000) DEFAULT NULL,
  `book_download` varchar(1000) DEFAULT NULL,
  `book_FileSize` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8533 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '狂人日记', 'https://img.zcool.cn/community/0198c45cbcc0dca801214168264eae.jpg@2o.jpg', 'luxun', '新中国的一代血泪史', 'http://file.allitebooks.com/20200323/PowerPoint 2019 For Dummies.pdf', null);
INSERT INTO `item` VALUES ('2', '平凡的世界', 'https://img.zcool.cn/community/012a9f570918396ac7257948c038a2.jpg@1280w_1l_2o_100sh.jpg', '路遥', '《平凡的世界》是中国作家路遥创作的一部全景式地表现中国当代城乡社会生活的百万字长篇小说。全书共三部。1986年12月首次出版。', 'http://file.allitebooks.com/20200321/Practical Highcharts with Angular.pdf', ' 5.9 MB');
INSERT INTO `item` VALUES ('3', '活着', 'https://img.zcool.cn/community/01ce685b8d1079a80120245c2a7fdd.jpg@3000w_1l_2o_100sh.jpg', '余华', '讲述了在大时代背景下，随着内战、三反五反，大跃进，文化大革命等社会变革，徐福贵的人生和家庭不断经受着苦难，到了最后所有亲人都先后离他而去，仅剩下年老的他和一头老牛相依为命。', 'http://file.allitebooks.com/20200320/iPad For Seniors For Dummies, 12th Edition.epub', ' 35.7 MB');
INSERT INTO `item` VALUES ('4', '解忧杂货店', 'https://p1.ssl.qhimg.com/t012b64b4e47e918504.jpg', '东野圭吾', '该书讲述了在僻静街道旁的一家杂货店，只要写下烦恼投进店前门卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答：因男友身患绝症，年轻女孩月兔在爱情与梦想间徘徊；松冈克郎为了音乐梦想离家漂泊，却在现实中寸步难行；少年浩介面临家庭巨变，挣扎在亲情与未来的迷茫中……他们将困惑写成信投进杂货店，奇妙的事情随即不断发生。', 'http://file.allitebooks.com/20200319/Impractical Python Projects.pdf', ' 10.2 MB');
INSERT INTO `item` VALUES ('5', '三体', 'https://img.zcool.cn/community/01fca15bffd6b0a80121ab5d6723c4.jpg@1280w_1l_2o_100sh.jpg', '三体', '作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖', 'http://file.allitebooks.com/20200318/Cognitive Virtual Assistants Using Google Dialogflow.pdf', ' 6.4 MB');
INSERT INTO `item` VALUES ('6', '月亮与六便士', 'http://image12.bookschina.com/2019/20190612/1/8013800.jpg', '威廉·萨默赛特', '作品以法国印象派画家保罗·高更的生平为素材，描述了一个原本平凡的伦敦证券经纪人思特里克兰德，突然着了艺术的魔，抛妻弃子，绝弃了旁人看来优裕美满的生活，奔赴南太平洋的塔希提岛，用圆笔谱写出自己光辉灿烂的生命，把生命的价值全部注入绚烂的画布的故事。', 'http://file.allitebooks.com/20200318/MySQL 8 Query Performance Tuning.pdf', ' 17.7 MB');
INSERT INTO `item` VALUES ('7', '白夜行', 'https://p1.ssl.qhimg.com/t0113682573f70fd843.jpg', '东野圭吾', '故事围绕着一对有着不同寻常情愫的小学生展开。1973年，大阪的一栋废弃建筑内发现了一具男尸，此后19年，嫌疑人之女雪穗与被害者之子桐原亮司走上截然不同的人生道路，一个跻身上流社会，一个却在底层游走，而他们身边的人，却接二连三地离奇死去，警察经过19年的艰苦追踪，终于使真相大白。', 'http://file.allitebooks.com/20200317/PostgreSQL Configuration.pdf', ' 2.3 MB');
INSERT INTO `item` VALUES ('8', '流浪地球', 'https://img.zcool.cn/community/0166725c677b3aa801213f2647da6d.jpg', '刘慈欣', '该书讲述了庞大的地球逃脱计划，逃离太阳系，前往新家园。太阳即将毁灭，过去无数岁月中做为人类精神支柱存在太阳变了死亡和恐怖的象征。庞大的地球逃脱计划开始实施。然而人类所能制造的普通尺寸人造环境无法承受漫长的逃脱之旅。所以人类只得在地球的一侧安装上巨大的地球发动机，将整个巨大地球环境圈化为的移民方舟，以此逃离太阳系，前往新家园···', 'http://file.allitebooks.com/20200316/Teach Yourself VISUALLY iPhone 11, 11Pro, and 11 Pro Max, 5th Edition.epub', ' 148 MB');
