/*
 Navicat Premium Data Transfer

 Source Server         : world
 Source Server Type    : MySQL
 Source Server Version : 50067
 Source Host           : localhost:3306
 Source Schema         : bishe_dev

 Target Server Type    : MySQL
 Target Server Version : 50067
 File Encoding         : 65001

 Date: 27/03/2021 21:13:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bishe_judgeprojects
-- ----------------------------
DROP TABLE IF EXISTS `bishe_judgeprojects`;
CREATE TABLE `bishe_judgeprojects`  (
  `index` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userId` int(10) NOT NULL,
  `projectId` int(10) NOT NULL,
  `deadline` date NOT NULL,
  `judgeStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '该用户是否已评审该项目',
  PRIMARY KEY USING BTREE (`index`)
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_judgeprojects
-- ----------------------------
INSERT INTO `bishe_judgeprojects` VALUES (1, 1711000001, 1, '2021-03-31', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (2, 1711000002, 2, '2021-03-31', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (3, 1711000003, 3, '2021-03-17', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (4, 1711000004, 1, '2021-03-31', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (5, 1711000005, 1, '2021-03-31', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (6, 1711000006, 1, '2021-03-31', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (7, 1, 3, '2021-03-31', 'true');
INSERT INTO `bishe_judgeprojects` VALUES (8, 1, 4, '2021-03-17', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (9, 1, 5, '2021-03-31', 'true');
INSERT INTO `bishe_judgeprojects` VALUES (10, 1, 1, '2021-03-31', 'true');
INSERT INTO `bishe_judgeprojects` VALUES (11, 1, 2, '2021-03-31', 'true');
INSERT INTO `bishe_judgeprojects` VALUES (12, 11, 6, '2021-03-27', 'false');
INSERT INTO `bishe_judgeprojects` VALUES (13, 12, 6, '2021-03-27', 'false');

-- ----------------------------
-- Table structure for bishe_news
-- ----------------------------
DROP TABLE IF EXISTS `bishe_news`;
CREATE TABLE `bishe_news`  (
  `newsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `userId` int(10) NOT NULL COMMENT '发布者ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻标题',
  `brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '新闻简介',
  `time` date NOT NULL COMMENT '新闻发布时间',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻正文',
  `schoolsFor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分配的学院',
  PRIMARY KEY USING BTREE (`newsId`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_news
-- ----------------------------
INSERT INTO `bishe_news` VALUES (1, 1, '克服唯分数、唯升学的评价导向', '近日，教育部、中央组织部、中央编办、国家发展改革委、财政部、人力资源社会保障部等六部门联合印发《义务教育质量评价指南》，切实扭转不科学的教育评价导向，全面深化义务教育教学改革，促进义务教育内涵发展和质量提升，推进教育治理体系和治理能力现代化。', '2021-03-19', '近日，教育部、中央组织部、中央编办、国家发展改革委、财政部、人力资源社会保障部等六部门联合印发《义务教育质量评价指南》，切实扭转不科学的教育评价导向，全面深化义务教育教学改革，促进义务教育内涵发展和质量提升，推进教育治理体系和治理能力现代化。\r\n\r\n　　以学生发展质量评价为关键\r\n\r\n　　《评价指南》从县域、学校、学生3个层面提出了具体指标，以学生发展为基础，彼此协调、相互衔接，从不同维度对义务教育质量进行评价，构成系统的评价体系。\r\n\r\n　　“《评价指南》的一个核心就是把学生发展质量评价作为整个义务教育质量评价的关键环节，把促进学生全面发展、健康成长作为一条红线贯彻始终。”教育部基础教育司司长吕玉刚介绍，其中，学生发展质量评价主要包括学生品德发展、学业发展、身心发展、审美素养、劳动与社会实践等5个方面重点内容，旨在促进学生德智体美劳全面发展，培养适应终身发展和社会发展需要的正确价值观、必备品格和关键能力。\r\n\r\n　　教育质量最终要体现在培养对象的发展质量上。“在过去的教育管理和实践中，我们对课程、教材等环节关注得比较多，但对教育工作的结果、学生发展的质量关注不够多，对投入产出效益的关注不够多。”北京师范大学校长董奇表示，这次《评价指南》把学生实际发展状况作为检验教育效果的核心指标，这就要求3个层面的指标，都围绕立德树人这个根本任务，让学生有获得感。\r\n\r\n　　不给学校下达升学指标\r\n\r\n　　此次发布的《评价指南》是由六部门共同印发，反映出评价的指标内容、组织实施和结果应用，都不只是教育系统内部的事，而是涉及地方党委政府多个部门。\r\n\r\n　　县级义务教育评价所列的一些考察点，都对相关部门提出了明确要求。比如“选配政治素质过硬、热爱教育事业、尊重教育规律、有较强组织协调能力的干部担任县级教育部门书记、局长”“合理规划城乡学校布局，保障义务教育学位供给”“依照标准足额核定教职工编制”等。\r\n\r\n　　“当前义务教育阶段存在唯分数、唯升学倾向，既有教育系统内部不遵守教育规律、不落实教学常规的因素，也与少数地方党委政府的片面教育政绩观、质量观有关，还有社会上唯学历唯文凭用人导向的影响。”浙江省教育厅副厅长陈峰表示。对此，《评价指南》细化了考查要点，如针对唯分数、唯升学倾向，提出“不给学校下达升学指标，不单纯以升学率评价学校、校长和教师”；针对教师负担重问题，提出“严格控制面向学校的各类审批、检查验收、创建评比等活动，规范各类‘进校园’活动，减轻校长、教师非教育教学任务负担”。\r\n\r\n　　强调对教育过程质量的追求\r\n\r\n　　“义务教育质量评价实施工作要注重优化评价方式方法，不断提高评价工作的科学性、针对性、有效性。”吕玉刚介绍，《评价指南》特别注重结果评价与增值评价相结合，即在关注学生发展、学校办学、县域义务教育发展合格程度的同时，关注其发展水平和工作水平的进步程度，科学评判地方党委政府、学校和教师的努力程度；注重综合评价与特色评价相结合，关注县域、学校全面育人整体成效和学生德智体美劳全面发展情况的同时，注重差异性和多样性，关注每一所学校和每一名学生，促进学校特色发展和学生个性发展。\r\n\r\n　　“质量评价不等同于结果评价，应通过强化过程质量来确保结果质量。”上海市教委副主任贾炜谈道，长期以来，社会上对教育功利的评价弱化了对教育过程质量的追求，刷题、应试、抢跑等问题层出不穷，短时间内难以明显改观。此次《评价指南》的指标设计从考察教育教学管理过程出发，规制了各类行为，让政府、学校、教师有抓手，有可检验的标准，引导社会各界，让教育回归本原。', '0,1,2,3,99');
INSERT INTO `bishe_news` VALUES (2, 1, '28条河流组网造绿', '杭州下城区打造“水文相生”的河网水系', '2021-03-19', '早春时节，杭州市下城区北部的东新河段水流清澈，河畔杨柳抽芽，茶花、樱花争相开放，荧光跑道和太湖石铺就的游步道相映成趣。这是下城区“武林新城河网水系”提升改造的一处“样板段”。“水系连通之后，曾经的断头河流动起来了，水比以前清多了，河道两岸也漂亮多了。”附近东新园小区居民李迎说。\r\n\r\n　　武林新城曾是一片城中村，河道基础设施缺乏，整体水环境较差。虽然水系丰富，但总长约51.3公里的河道中，28条河流没有连接成网，河道两岸的绿道也时被民居和菜地侵占。随着新城建设驶入“快车道”，人们对人居环境的要求日益提高。2018年起，下城区全面启动武林新城河网水系建设，打通断头河、提升绿道景观。“今年我们将重点完善水系功能，挖掘文化特色，打造全域河道水系和绿地系统，营造蓝绿交融的空间景观。”下城区主要负责人说。\r\n\r\n　　河道成网后，形式多样的河岸带、完善的服务设施形成连片慢行系统，让居民走出家门就可以运动、赏景。在刚刚完成改造的西湖漾河段，新增了1.7万平方米的绿化面积，融入乔木、多彩花灌木、特选树种和水生植物，实现了三季有花、四季有景。沿途1.3万余名居民多了一个后花园。“我们在沿河绿带布置了公共艺术、景观小品，贯通绿道系统，在河道沿岸设置亲水平台，增加了市民休闲娱乐空间。”下城区住建局相关负责人说。\r\n\r\n　　在提升改造中，文化和历史元素也被融入景观，构建起城市文化主轴：六塘汶漾河段结合当地柳文化，设立“柳字墙”和柳诗屏风；亚运场馆附近的上塘河绿道、运河绿道，总长12.1公里，正结合“全民健身迎亚运”打造文化长廊……越来越多的河道建设与沿途文物古建、古树名木、风土人情等人文景观结合起来，让新城更具韵味。\r\n\r\n　　据悉，到2025年，武林新城河网水系整治将基本完成，形成“三纵六横”的骨干排涝格局，实现配水区域水循环畅通、沿河人居环境和谐共生。', '0,1,2,3,99');
INSERT INTO `bishe_news` VALUES (3, 1, '“东海利剑”打击成品油走私', '查证走私成品油近100万吨，案值约50亿元', '2021-03-19', '3月16日凌晨，“东海利剑”打击成品油走私集中行动在浙江、江苏、福建、山东等8个省市同步进行，一举打掉成品油走私犯罪团伙14个，查证走私成品油累计近100万吨，案值约50亿元，为近年来东南沿海打击成品油走私涉及地域最广、参战单位最多、打击战果最丰的收网行动之一。\r\n\r\n　　本次行动由海关总署、公安部和中国海警局统一指挥，浙江省、中国海警局东海分局、宁波市有关部门和浙江省公安厅统筹协调，宁波海关联合中国海警局直属第二局、宁波市公安局以及杭州、南京、厦门、青岛等地海关缉私部门，在台州、舟山等地公安机关的协助下开展。\r\n\r\n　　本次行动以打击多艘走私“母船”为目标，通过海警、海关缉私、地方公安等多部门合成作战，海陆联动，实现了对走私“母船”、近海“中巴”（中型船只）、“小巴”（小型船只）、陆路走私团伙等“购、运、储、销”环节的全链条打击。\r\n\r\n　　海上行动中，中国海警局直属第二局出动警力500余名、舰艇4艘，分路出击，在舟山、威海海域查获走私船舶4艘，其中“母船”3艘、“中巴”1艘，抓获犯罪嫌疑人64名，现场查扣成品油1000余吨。目前相关案件正在进一步侦办中。', '0,1,2,3,99');
INSERT INTO `bishe_news` VALUES (4, 1, '中国皮划艇协会中国赛艇协会总部基地项目落户浙江宁波', '人民网北京3月18日电 （记者郑轶）中国皮划艇协会、中国赛艇协会总部基地和中国皮划艇、中国赛艇国家训练中心18日正式落户浙江宁波。当日下午，这两个体育协会落户签约仪式在宁波市奉化区举行。', '2021-03-19', '人民网北京3月18日电 （记者郑轶）中国皮划艇协会、中国赛艇协会总部基地和中国皮划艇、中国赛艇国家训练中心18日正式落户浙江宁波。当日下午，这两个体育协会落户签约仪式在宁波市奉化区举行。\r\n\r\n　　据了解，宁波市拥有丰富的水系资源，近年来已形成以水上运动学校为主的竞技体育和以滨海水域为主体的休闲体育发展格局。此次总部基地项目选址宁波市滨海旅游休闲区，致力于建设国家级水上运动基地，重点打造皮划艇、赛艇、帆船、桨板等水上运动项目以及海上马拉松、铁人三项、国际越野行走等一系列自主运动品牌。', '0,1,2,3,99');
INSERT INTO `bishe_news` VALUES (5, 1, '浙江法院创新破产程序盘活市场资源', NULL, '2021-03-19', '日前，浙江省高院发布《2020年浙江法院破产审判工作报告》。报告显示：2020年，全省法院共受理破产申请审查案件4083件，经审查后正式立案受理破产案件3428件，呈不断增长趋势，破产案件结案量较前一年增加66%。\r\n\r\n　　“破产案件受理和结案总量攀升的背后，是全省法院创新破产程序，让一批不适应市场竞争的企业通过破产清算程序实现有序退出，让另一批仍具有市场价值的企业走破产重整等程序有效盘活资源。”省高院相关负责人说，对“僵尸企业”依法有效清理，既维护债权人利益，又通过市场主体优胜劣汰进一步完善市场经济体系。\r\n\r\n　　去年一年，全省法院审结破产案件中申报债权共约1774亿元，核销金融债权近930亿元，处置房屋面积800余万平方米，处置土地近7万亩，安置职工1.7万余人。\r\n\r\n　　除企业破产外，浙江法院按照市场化、法治化、常态化、专业化、简易化、信息化的总体部署，打开个人债务集中清理的突破口。全省法院全年共受理个人债务集中清理案件291件，办结190件。\r\n\r\n', '0,1,2,3,99');
INSERT INTO `bishe_news` VALUES (6, 1, '1', '1', '2021-03-24', '1', '0,1');
INSERT INTO `bishe_news` VALUES (7, 1, '班会 | 以“网”作线，共抗疫情', '1', '2021-03-24', '11', '1,2');
INSERT INTO `bishe_news` VALUES (8, 1, '1', '1', '2021-03-25', '1111', '1,2');
INSERT INTO `bishe_news` VALUES (9, 1, '班会 | 以“网”作线，共抗疫情', '', '2021-03-25', '1', '1');

-- ----------------------------
-- Table structure for bishe_projects
-- ----------------------------
DROP TABLE IF EXISTS `bishe_projects`;
CREATE TABLE `bishe_projects`  (
  `projectId` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL COMMENT '申报的教师',
  `schoolReviewerId` int(10) NOT NULL COMMENT '学院审核人',
  `uniReviewerId` int(10) NOT NULL COMMENT '学校审核人',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` date DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `targetId` int(10) NOT NULL COMMENT '项目所属计划',
  `passVote` int(10) DEFAULT 0 COMMENT '支持评审数',
  `notpassVote` int(10) DEFAULT 0 COMMENT '不支持评审数',
  `isSchoolPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学院审核是否通过true/false',
  `isUniPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学校审核是否通过true/false',
  `isJudgePass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评审是否通过true/false',
  `uploadTime` date DEFAULT NULL COMMENT '提交时间',
  `schoolPassTime` date DEFAULT NULL COMMENT '学院审核通过时间',
  `uniPassTime` date DEFAULT NULL COMMENT '学校审核通过时间',
  `judgePassTime` date DEFAULT NULL COMMENT '评审通过时间',
  `finalTime` date DEFAULT NULL COMMENT '立项时间',
  PRIMARY KEY USING BTREE (`projectId`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_projects
-- ----------------------------
INSERT INTO `bishe_projects` VALUES (1, 1711000001, 1, 2, '克服唯分数、唯升学的评价导向', '近日，教育部、中央组织部、中央编办、国家发展改革委、财政部、人力资源社会保障部等六部门联合印发《义务教育质量评价指南》，切实扭转不科学的教育评价导向，全面深化义务教育教学改革，促进义务教育内涵发展和质量提升，推进教育治理体系和治理能力现代化。', '近日，教育部、中央组织部、中央编办、国家发展改革委、财政部、人力资源社会保障部等六部门联合印发《义务教育质量评价指南》，切实扭转不科学的教育评价导向，全面深化义务教育教学改革，促进义务教育内涵发展和质量提升，推进教育治理体系和治理能力现代化。\r\n\r\n　　以学生发展质量评价为关键\r\n\r\n　　《评价指南》从县域、学校、学生3个层面提出了具体指标，以学生发展为基础，彼此协调、相互衔接，从不同维度对义务教育质量进行评价，构成系统的评价体系。\r\n\r\n　　“《评价指南》的一个核心就是把学生发展质量评价作为整个义务教育质量评价的关键环节，把促进学生全面发展、健康成长作为一条红线贯彻始终。”教育部基础教育司司长吕玉刚介绍，其中，学生发展质量评价主要包括学生品德发展、学业发展、身心发展、审美素养、劳动与社会实践等5个方面重点内容，旨在促进学生德智体美劳全面发展，培养适应终身发展和社会发展需要的正确价值观、必备品格和关键能力。\r\n\r\n　　教育质量最终要体现在培养对象的发展质量上。“在过去的教育管理和实践中，我们对课程、教材等环节关注得比较多，但对教育工作的结果、学生发展的质量关注不够多，对投入产出效益的关注不够多。”北京师范大学校长董奇表示，这次《评价指南》把学生实际发展状况作为检验教育效果的核心指标，这就要求3个层面的指标，都围绕立德树人这个根本任务，让学生有获得感。\r\n\r\n　　不给学校下达升学指标\r\n\r\n　　此次发布的《评价指南》是由六部门共同印发，反映出评价的指标内容、组织实施和结果应用，都不只是教育系统内部的事，而是涉及地方党委政府多个部门。\r\n\r\n　　县级义务教育评价所列的一些考察点，都对相关部门提出了明确要求。比如“选配政治素质过硬、热爱教育事业、尊重教育规律、有较强组织协调能力的干部担任县级教育部门书记、局长”“合理规划城乡学校布局，保障义务教育学位供给”“依照标准足额核定教职工编制”等。\r\n\r\n　　“当前义务教育阶段存在唯分数、唯升学倾向，既有教育系统内部不遵守教育规律、不落实教学常规的因素，也与少数地方党委政府的片面教育政绩观、质量观有关，还有社会上唯学历唯文凭用人导向的影响。”浙江省教育厅副厅长陈峰表示。对此，《评价指南》细化了考查要点，如针对唯分数、唯升学倾向，提出“不给学校下达升学指标，不单纯以升学率评价学校、校长和教师”；针对教师负担重问题，提出“严格控制面向学校的各类审批、检查验收、创建评比等活动，规范各类‘进校园’活动，减轻校长、教师非教育教学任务负担”。\r\n\r\n　　强调对教育过程质量的追求\r\n\r\n　　“义务教育质量评价实施工作要注重优化评价方式方法，不断提高评价工作的科学性、针对性、有效性。”吕玉刚介绍，《评价指南》特别注重结果评价与增值评价相结合，即在关注学生发展、学校办学、县域义务教育发展合格程度的同时，关注其发展水平和工作水平的进步程度，科学评判地方党委政府、学校和教师的努力程度；注重综合评价与特色评价相结合，关注县域、学校全面育人整体成效和学生德智体美劳全面发展情况的同时，注重差异性和多样性，关注每一所学校和每一名学生，促进学校特色发展和学生个性发展。\r\n\r\n　　“质量评价不等同于结果评价，应通过强化过程质量来确保结果质量。”上海市教委副主任贾炜谈道，长期以来，社会上对教育功利的评价弱化了对教育过程质量的追求，刷题、应试、抢跑等问题层出不穷，短时间内难以明显改观。此次《评价指南》的指标设计从考察教育教学管理过程出发，规制了各类行为，让政府、学校、教师有抓手，有可检验的标准，引导社会各界，让教育回归本原。', '2021-03-17', 1, 1, 0, 0, NULL, NULL, NULL, '2021-03-21', NULL, NULL, NULL, NULL);
INSERT INTO `bishe_projects` VALUES (2, 1711000001, 1, 2, '28条河流组网造绿', '杭州下城区打造“水文相生”的河网水系', '早春时节，杭州市下城区北部的东新河段水流清澈，河畔杨柳抽芽，茶花、樱花争相开放，荧光跑道和太湖石铺就的游步道相映成趣。这是下城区“武林新城河网水系”提升改造的一处“样板段”。“水系连通之后，曾经的断头河流动起来了，水比以前清多了，河道两岸也漂亮多了。”附近东新园小区居民李迎说。\r\n\r\n　　武林新城曾是一片城中村，河道基础设施缺乏，整体水环境较差。虽然水系丰富，但总长约51.3公里的河道中，28条河流没有连接成网，河道两岸的绿道也时被民居和菜地侵占。随着新城建设驶入“快车道”，人们对人居环境的要求日益提高。2018年起，下城区全面启动武林新城河网水系建设，打通断头河、提升绿道景观。“今年我们将重点完善水系功能，挖掘文化特色，打造全域河道水系和绿地系统，营造蓝绿交融的空间景观。”下城区主要负责人说。\r\n\r\n　　河道成网后，形式多样的河岸带、完善的服务设施形成连片慢行系统，让居民走出家门就可以运动、赏景。在刚刚完成改造的西湖漾河段，新增了1.7万平方米的绿化面积，融入乔木、多彩花灌木、特选树种和水生植物，实现了三季有花、四季有景。沿途1.3万余名居民多了一个后花园。“我们在沿河绿带布置了公共艺术、景观小品，贯通绿道系统，在河道沿岸设置亲水平台，增加了市民休闲娱乐空间。”下城区住建局相关负责人说。\r\n\r\n　　在提升改造中，文化和历史元素也被融入景观，构建起城市文化主轴：六塘汶漾河段结合当地柳文化，设立“柳字墙”和柳诗屏风；亚运场馆附近的上塘河绿道、运河绿道，总长12.1公里，正结合“全民健身迎亚运”打造文化长廊……越来越多的河道建设与沿途文物古建、古树名木、风土人情等人文景观结合起来，让新城更具韵味。\r\n\r\n　　据悉，到2025年，武林新城河网水系整治将基本完成，形成“三纵六横”的骨干排涝格局，实现配水区域水循环畅通、沿河人居环境和谐共生。', '2021-03-19', 1, 2, 0, 0, NULL, NULL, NULL, '2021-03-21', NULL, NULL, NULL, NULL);
INSERT INTO `bishe_projects` VALUES (3, 1, 1, 2, '“东海利剑”打击成品油走私', '查证走私成品油近100万吨，案值约50亿元', '3月16日凌晨，“东海利剑”打击成品油走私集中行动在浙江、江苏、福建、山东等8个省市同步进行，一举打掉成品油走私犯罪团伙14个，查证走私成品油累计近100万吨，案值约50亿元，为近年来东南沿海打击成品油走私涉及地域最广、参战单位最多、打击战果最丰的收网行动之一。\r\n\r\n　　本次行动由海关总署、公安部和中国海警局统一指挥，浙江省、中国海警局东海分局、宁波市有关部门和浙江省公安厅统筹协调，宁波海关联合中国海警局直属第二局、宁波市公安局以及杭州、南京、厦门、青岛等地海关缉私部门，在台州、舟山等地公安机关的协助下开展。\r\n\r\n　　本次行动以打击多艘走私“母船”为目标，通过海警、海关缉私、地方公安等多部门合成作战，海陆联动，实现了对走私“母船”、近海“中巴”（中型船只）、“小巴”（小型船只）、陆路走私团伙等“购、运、储、销”环节的全链条打击。\r\n\r\n　　海上行动中，中国海警局直属第二局出动警力500余名、舰艇4艘，分路出击，在舟山、威海海域查获走私船舶4艘，其中“母船”3艘、“中巴”1艘，抓获犯罪嫌疑人64名，现场查扣成品油1000余吨。目前相关案件正在进一步侦办中。', '2021-03-19', 2, 3, 5, 0, NULL, NULL, NULL, '2021-03-21', '2021-03-21', NULL, NULL, NULL);
INSERT INTO `bishe_projects` VALUES (4, 1, 1, 2, '“东海利剑”打击成品油走私', '查证走私成品油近100万吨，案值约50亿元', '3月16日凌晨，“东海利剑”打击成品油走私集中行动在浙江、江苏、福建、山东等8个省市同步进行，一举打掉成品油走私犯罪团伙14个，查证走私成品油累计近100万吨，案值约50亿元，为近年来东南沿海打击成品油走私涉及地域最广、参战单位最多、打击战果最丰的收网行动之一。\r\n\r\n　　本次行动由海关总署、公安部和中国海警局统一指挥，浙江省、中国海警局东海分局、宁波市有关部门和浙江省公安厅统筹协调，宁波海关联合中国海警局直属第二局、宁波市公安局以及杭州、南京、厦门、青岛等地海关缉私部门，在台州、舟山等地公安机关的协助下开展。\r\n\r\n　　本次行动以打击多艘走私“母船”为目标，通过海警、海关缉私、地方公安等多部门合成作战，海陆联动，实现了对走私“母船”、近海“中巴”（中型船只）、“小巴”（小型船只）、陆路走私团伙等“购、运、储、销”环节的全链条打击。\r\n\r\n　　海上行动中，中国海警局直属第二局出动警力500余名、舰艇4艘，分路出击，在舟山、威海海域查获走私船舶4艘，其中“母船”3艘、“中巴”1艘，抓获犯罪嫌疑人64名，现场查扣成品油1000余吨。目前相关案件正在进一步侦办中。', '2021-03-19', 3, 3, 0, 0, NULL, NULL, NULL, '2021-03-21', '2021-03-21', '2021-03-21', NULL, NULL);
INSERT INTO `bishe_projects` VALUES (5, 1, 1, 2, '“东海利剑”打击成品油走私', '查证走私成品油近100万吨，案值约50亿元', '3月16日凌晨，“东海利剑”打击成品油走私集中行动在浙江、江苏、福建、山东等8个省市同步进行，一举打掉成品油走私犯罪团伙14个，查证走私成品油累计近100万吨，案值约50亿元，为近年来东南沿海打击成品油走私涉及地域最广、参战单位最多、打击战果最丰的收网行动之一。\r\n\r\n　　本次行动由海关总署、公安部和中国海警局统一指挥，浙江省、中国海警局东海分局、宁波市有关部门和浙江省公安厅统筹协调，宁波海关联合中国海警局直属第二局、宁波市公安局以及杭州、南京、厦门、青岛等地海关缉私部门，在台州、舟山等地公安机关的协助下开展。\r\n\r\n　　本次行动以打击多艘走私“母船”为目标，通过海警、海关缉私、地方公安等多部门合成作战，海陆联动，实现了对走私“母船”、近海“中巴”（中型船只）、“小巴”（小型船只）、陆路走私团伙等“购、运、储、销”环节的全链条打击。\r\n\r\n　　海上行动中，中国海警局直属第二局出动警力500余名、舰艇4艘，分路出击，在舟山、威海海域查获走私船舶4艘，其中“母船”3艘、“中巴”1艘，抓获犯罪嫌疑人64名，现场查扣成品油1000余吨。目前相关案件正在进一步侦办中。', '2021-03-19', 5, 3, 0, 0, NULL, NULL, NULL, '2021-03-21', '2021-03-21', '2021-03-21', '2021-03-21', '2021-03-21');
INSERT INTO `bishe_projects` VALUES (6, 1, 1, 1, '1', '1', '1', '2021-03-25', 1, 1, 0, 0, 'true', 'true', NULL, NULL, '2021-03-27', '2021-03-27', NULL, NULL);

-- ----------------------------
-- Table structure for bishe_schools
-- ----------------------------
DROP TABLE IF EXISTS `bishe_schools`;
CREATE TABLE `bishe_schools`  (
  `schoolId` int(10) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`schoolId`, `schoolName`)
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_schools
-- ----------------------------
INSERT INTO `bishe_schools` VALUES (0, '校级');
INSERT INTO `bishe_schools` VALUES (1, '环境科学与工程学院');
INSERT INTO `bishe_schools` VALUES (2, '旅游与城乡规划学院');
INSERT INTO `bishe_schools` VALUES (3, '财务与会计学院');
INSERT INTO `bishe_schools` VALUES (4, '统计与数学学院');
INSERT INTO `bishe_schools` VALUES (5, '经济学院');
INSERT INTO `bishe_schools` VALUES (6, '金融学院');
INSERT INTO `bishe_schools` VALUES (7, '食品与生物工程学院');
INSERT INTO `bishe_schools` VALUES (8, '环境科学与工程学院');
INSERT INTO `bishe_schools` VALUES (9, '信息与电子工程学院');
INSERT INTO `bishe_schools` VALUES (10, '计算机与信息工程学院');
INSERT INTO `bishe_schools` VALUES (11, '管理工程与电子商务学院');
INSERT INTO `bishe_schools` VALUES (12, '法学院（知识产权学院）');
INSERT INTO `bishe_schools` VALUES (13, '人文与传播学院');
INSERT INTO `bishe_schools` VALUES (14, '公共管理学院');
INSERT INTO `bishe_schools` VALUES (15, '外国语学院');
INSERT INTO `bishe_schools` VALUES (16, '东方语言与哲学学院');
INSERT INTO `bishe_schools` VALUES (17, '艺术设计学院');
INSERT INTO `bishe_schools` VALUES (18, '马克思主义学院');
INSERT INTO `bishe_schools` VALUES (19, '泰隆金融学院');
INSERT INTO `bishe_schools` VALUES (20, '国际商学院');
INSERT INTO `bishe_schools` VALUES (21, '章乃器学院');
INSERT INTO `bishe_schools` VALUES (22, 'MBA学院');
INSERT INTO `bishe_schools` VALUES (23, '国际教育学院');
INSERT INTO `bishe_schools` VALUES (24, '继续教育学院');
INSERT INTO `bishe_schools` VALUES (25, '人民武装学院');
INSERT INTO `bishe_schools` VALUES (26, '杭州商学院');
INSERT INTO `bishe_schools` VALUES (99, '测试学院');

-- ----------------------------
-- Table structure for bishe_targets
-- ----------------------------
DROP TABLE IF EXISTS `bishe_targets`;
CREATE TABLE `bishe_targets`  (
  `targetId` int(10) NOT NULL,
  `targetTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deadline` datetime NOT NULL COMMENT '该计划申报截止时间',
  PRIMARY KEY USING BTREE (`targetId`, `targetTitle`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_targets
-- ----------------------------
INSERT INTO `bishe_targets` VALUES (1, '第一个计划', '2021-03-17 00:00:00');
INSERT INTO `bishe_targets` VALUES (2, '第二个计划', '2021-03-30 00:00:00');
INSERT INTO `bishe_targets` VALUES (3, '第三个计划', '2021-04-01 00:00:00');
INSERT INTO `bishe_targets` VALUES (4, '第四个计划', '2021-04-30 00:00:00');

-- ----------------------------
-- Table structure for bishe_userprojects
-- ----------------------------
DROP TABLE IF EXISTS `bishe_userprojects`;
CREATE TABLE `bishe_userprojects`  (
  `userId` int(10) NOT NULL,
  `projectId` int(10) NOT NULL,
  `index` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  PRIMARY KEY USING BTREE (`index`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_userprojects
-- ----------------------------
INSERT INTO `bishe_userprojects` VALUES (1711000001, 1, 1);
INSERT INTO `bishe_userprojects` VALUES (1711000001, 2, 2);
INSERT INTO `bishe_userprojects` VALUES (1, 3, 3);

-- ----------------------------
-- Table structure for bishe_users
-- ----------------------------
DROP TABLE IF EXISTS `bishe_users`;
CREATE TABLE `bishe_users`  (
  `userId` int(10) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '11111111',
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户身份（teacher、manager、judge）',
  `schoolId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属学院ID',
  PRIMARY KEY USING BTREE (`userId`, `identity`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bishe_users
-- ----------------------------
INSERT INTO `bishe_users` VALUES (1, '张三', '11111111', 'test', '99');
INSERT INTO `bishe_users` VALUES (2, '李四', '11111111', 'test', '99');
INSERT INTO `bishe_users` VALUES (11, '11', '11111111', 'teacher', '99');
INSERT INTO `bishe_users` VALUES (12, '12', '11111111', 'teacher', '99');
INSERT INTO `bishe_users` VALUES (13, '13', '11111111', 'teacher', '99');
INSERT INTO `bishe_users` VALUES (14, '14', '11111111', 'teacher', '99');
INSERT INTO `bishe_users` VALUES (15, '15', '11111111', 'teacher', '99');
INSERT INTO `bishe_users` VALUES (1711000001, '王五', '11111111', 'teacher', '9');
INSERT INTO `bishe_users` VALUES (1711000002, '赵六', '11111111', 'teacher', '10');
INSERT INTO `bishe_users` VALUES (1711000003, '钱七', '11111111', 'uniManager', '0');
INSERT INTO `bishe_users` VALUES (1711000004, '孙八', '11111111', 'uniManager', '0');
INSERT INTO `bishe_users` VALUES (1711000005, '小明', '11111111', 'teacher', '7');
INSERT INTO `bishe_users` VALUES (1711000006, '小张', '11111111', 'teacher', '15');
INSERT INTO `bishe_users` VALUES (1711000007, '小鹏', '11111111', 'schoolManager', '8');
INSERT INTO `bishe_users` VALUES (1711000008, '小菜', '11111111', 'schoolManager', '9');

SET FOREIGN_KEY_CHECKS = 1;
