/*
 Navicat Premium Data Transfer

 Source Server         : paper
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : young

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 20/10/2020 16:09:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` bigint(0) NOT NULL AUTO_INCREMENT,
  `aname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `cid` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sch_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校名',
  `course_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程的编号',
  `course_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名',
  `course_info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程信息',
  `course_selectnum` int(0) NOT NULL COMMENT '已选人数',
  `course_totalnum` int(0) NOT NULL COMMENT '限选人数',
  `course_remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `course_des` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程简介',
  `course_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 658 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'mysql底层引擎使用InnoDB，字符集utf-8 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '中国科技大学', 'AC15201', '电分析化学', '1~10周 长春应化所 :1(13:30~16:35)', 15, 180, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (2, '中国科技大学', 'AC15202', '电分析化学研究方法学', '1~18周 长春应化所 :3(17:35~20:30)', 47, 60, '-', ' ', 'img/course2.jpg');
INSERT INTO `course` VALUES (3, '中国科技大学', 'AC15203', '分析化学专题', '1~18周 长春应化所 :2(08:30~11:30)', 38, 100, '-', ' ', 'img/course3.jpg');
INSERT INTO `course` VALUES (4, '中国科技大学', 'AC15204', '谱学成像分析', '10~18周 长春应化所 :4(08:30~11:30)', 10, 80, '-', ' ', 'img/course4.jpg');
INSERT INTO `course` VALUES (5, '中国科技大学', 'AC15205', '现代实用仪器分析', '1~18周 长春应化所 :3(13:30~16:35)', 47, 80, '-', ' ', 'img/course5.jpg');
INSERT INTO `course` VALUES (6, '中国科技大学', 'AC15207', '高分子合成方法（专题）', '11~18周 长春应化所 :2(13:30~17:35)', 16, 130, '-', ' ', 'img/course6.jpg');
INSERT INTO `course` VALUES (7, '中国科技大学', 'AC15208', '高分子化学前沿', '1~18周 长春应化所 :2(08:30~11:30)', 47, 150, '-', ' ', 'img/course7.jpg');
INSERT INTO `course` VALUES (8, '中国科技大学', 'AC15209', '生物医用高分子专题', '11~18周 长春应化所 :4(08:30~11:30);', 27, 80, '-', ' ', 'img/course8.jpg');
INSERT INTO `course` VALUES (9, '中国科技大学', 'AC15210', '高分子外教短期课', '1~2周 长春应化所 :5(16:30~21:35)', 134, 150, '-', ' ', 'img/course9.jpg');
INSERT INTO `course` VALUES (10, '中国科技大学', 'AC15211', '聚合物方法学实验课', '1~18周 长春应化所 :6(9,10,11,12,13);', 91, 150, '-', ' ', 'img/course10.jpg');
INSERT INTO `course` VALUES (11, '中国科技大学', 'AC15212', '现代高分子物理', '11~18周 长春应化所 :1(13:30~17:35)', 23, 100, '-', ' ', 'img/course11.jpg');
INSERT INTO `course` VALUES (12, '中国科技大学', 'AC15213', '有机光电材料与器件', '1~18周 长春应化所 :5(08:30~11:30)', 18, 100, '-', ' ', 'img/course12.jpg');
INSERT INTO `course` VALUES (13, '中国科技大学', 'AC15214', '高等化学生物学专题', '11~18周 长春应化所 :5(13:30~16:30)', 37, 100, '-', ' ', 'img/course13.jpg');
INSERT INTO `course` VALUES (14, '中国科技大学', 'AC15215', '无机化合物结构与性能研究方法学', ';', 42, 100, '-', ' ', 'img/course14.jpg');
INSERT INTO `course` VALUES (15, '中国科技大学', 'AC15216', '稀土化学', '1~18周 长春应化所 :1(08:30~11:25)', 36, 80, '-', ' ', 'img/course15.jpg');
INSERT INTO `course` VALUES (16, '中国科技大学', 'AC15217', '稀土新材料进展', '9~18周 长春应化所 :4(13:30~16:35)', 8, 100, '-', ' ', 'img/course16.jpg');
INSERT INTO `course` VALUES (17, '中国科技大学', 'AC15218', '能源电化学', '11~18周 长春应化所 :3(08:30~11:30)', 36, 100, '-', ' ', 'img/course17.jpg');
INSERT INTO `course` VALUES (18, '中国科技大学', 'AC15219', '物化前沿', '11~18周 长春应化所 :5(08:30~11:30)', 22, 60, '-', ' ', 'img/course18.jpg');
INSERT INTO `course` VALUES (19, '中国科技大学', 'AC15220', '有机质谱', '1~10周 长春应化所 :4(08:30~11:30)', 9, 60, '-', ' ', 'img/course19.jpg');
INSERT INTO `course` VALUES (20, '中国科技大学', 'AC15221', '材料科学与技术发展动态', '1~10周 长春应化所 :3(08:30~11:30)', 31, 60, '-', ' ', 'img/course20.jpg');
INSERT INTO `course` VALUES (21, '中国科技大学', 'AC15222', '能源、环境催化发展动态', '1~18周 长春应化所 :6(08:30~11:30)', 12, 100, '-', ' ', 'img/course21.jpg');
INSERT INTO `course` VALUES (22, '中国科技大学', 'AC15223', '应用催化基础', '1~10周 长春应化所 :5(08:30~11:30);', 9, 60, '-', ' ', 'img/course22.jpg');
INSERT INTO `course` VALUES (23, '中国科技大学', 'AC15224', '高等有机反应与机理', '1~18周 长春应化所 :6(13:30~16:35)', 7, 60, '-', ' ', 'img/course23.jpg');
INSERT INTO `course` VALUES (24, '中国科技大学', 'AC15225', '专利撰写与规划', '3~12周 长春应化所 :4(17:30~21:00)', 120, 180, '-', ' ', 'img/course24.jpg');
INSERT INTO `course` VALUES (25, '中国科技大学', 'AE15207', '大气统计方法', '1~14周 1102 :4(3,4,5) 郑建秋', 43, 110, '-', ' ', 'img/course25.jpg');
INSERT INTO `course` VALUES (26, '中国科技大学', 'AE15215', '云和降水物理学', '1~14周 5405 :2(6,7,8) 马明\n1~14周 5405 :2(6,7,8) 刘奇', 47, 60, '-', ' ', 'img/course26.jpg');
INSERT INTO `course` VALUES (27, '中国科技大学', 'AE15219', '大气光谱遥感', '1~12周 5107 :5(6,7,8,9) 刘奇', 83, 90, '-', ' ', 'img/course27.jpg');
INSERT INTO `course` VALUES (28, '中国科技大学', 'AE16201', '气溶胶、云和降水卫星遥感', '1~15周 2309 :1(3,4) 傅云飞\n1~15周 2309 :3(3,4) 傅云飞', 48, 60, '-', ' ', 'img/course28.jpg');
INSERT INTO `course` VALUES (29, '中国科技大学', 'AT04001', '设计素描', '1~18周 2609 :4(8,9) 郭浩', 40, 40, '-', ' ', 'img/course29.jpg');
INSERT INTO `course` VALUES (30, '中国科技大学', 'AT04002', '综合绘画创作', '1~18周 2621 :4(11,12,13) 郭浩', 40, 40, '-', ' ', 'img/course30.jpg');
INSERT INTO `course` VALUES (31, '中国科技大学', 'AT04004', '音乐基础与经典作品赏析', '1~18周 1102 :3(6,7) 王韦华', 51, 60, '-', ' ', 'img/course31.jpg');
INSERT INTO `course` VALUES (32, '中国科技大学', 'AY15202', '相对论天体物理', '1~18周 2306 :1(3,4,5) 杨建明\n1~18周 2309 :3(6,7) 杨建明;', 9, 40, '-', ' ', 'img/course32.jpg');
INSERT INTO `course` VALUES (33, '中国科技大学', 'AY15213', '天文文献阅读', '1~18周 2307 :5(6,7) 方文娟\n1~18周 2307 :5(8,9) 方文娟', 18, 35, '-', ' ', 'img/course33.jpg');
INSERT INTO `course` VALUES (34, '中国科技大学', 'AY15218', '天文数据处理', '1~18周 2404 :1(6,7) 刘桂琳\n1~18周 2404 :1(8,9) 刘桂琳', 40, 40, '-', ' ', 'img/course34.jpg');
INSERT INTO `course` VALUES (35, '中国科技大学', 'AY15221', '粒子宇宙学', '1~18周 2304 :4(6,7) 蔡一夫\n1~18周 2304 :4(8,9) 蔡一夫', 16, 35, '-', ' ', 'img/course35.jpg');
INSERT INTO `course` VALUES (36, '中国科技大学', 'AY16201a', '活动星系核', '1~18周 天文台报告厅 :3(1,2) 王俊贤\n1~18周 天文台报告厅 :3(3,4) 王俊贤', 9, 30, '-', ' ', 'img/course36.jpg');
INSERT INTO `course` VALUES (37, '中国科技大学', 'AY16206', '宇宙大尺度结构', '1~18周 2605 :4(1,2) 王慧元\n1~18周 2605 :4(3,4) 王慧元', 13, 40, '-', ' ', 'img/course37.jpg');
INSERT INTO `course` VALUES (38, '中国科技大学', 'AY24201', '射电天文', '1~18周 2509 :4(3,4,5) 高煜\n1~18周 2509 :4(3,4,5) 王红池\n1~18周 2509 :4(3,4,5) 杨戟\n1~18周 2509 :4(3,4,5) 史生才\n1~18周 2509 :4(3,4,5) 徐烨\n1~18周 2509 :4(3,4,5) 陈学鹏', 22, 40, '-', ' ', 'img/course38.jpg');
INSERT INTO `course` VALUES (39, '中国科技大学', 'AY24203', '高能天体物理', '1~18周 2403 :2(6,7,8,9) 刘四明\n1~18周 2403 :2(6,7,8,9) 韦大明\n1~18周 2403 :2(6,7,8,9) 袁强', 14, 40, '-', ' ', 'img/course39.jpg');
INSERT INTO `course` VALUES (40, '中国科技大学', 'AY24208', '现代太阳物理II', '2~14周 2307 :4(6,7,8,9) 刘四明\n2~14周 2307 :4(6,7,8,9) 黄宇\n2~14周 2307 :4(6,7,8,9) 甘为群\n2~14周 2307 :4(6,7,8,9) 陈维\n2~14周 2307 :4(6,7,8,9) 苏杨\n2~14周 2307 :4(6,7,8,9) 宁宗军', 7, 40, '-', ' ', 'img/course40.jpg');
INSERT INTO `course` VALUES (41, '中国科技大学', 'AY25104', '等离子天体物理学前沿', '1~18周 2406 :5(6,7,8,9) 吴德金', 6, 40, '-', ' ', 'img/course41.jpg');
INSERT INTO `course` VALUES (42, '中国科技大学', 'AY25109', '常微分方程与N体问题定性理论', '1~18周 2406 :4(6,7,8,9) 傅燕宁', 11, 40, '-', ' ', 'img/course42.jpg');
INSERT INTO `course` VALUES (43, '中国科技大学', 'BI05102', '生物实验安全与防护', '3~9周 生物楼237多媒体实验室 :4(8,9,10) 赵伟', 44, 50, '-', ' ', 'img/course43.jpg');
INSERT INTO `course` VALUES (44, '中国科技大学', 'BI05102', '生物实验安全与防护', '3~9周 生物楼237多媒体实验室 :2(8,9,10) 赵伟', 36, 50, '-', ' ', 'img/course44.jpg');
INSERT INTO `course` VALUES (45, '中国科技大学', 'BI05106', '细胞生物学III', '2~16周 3B202 :2(6,7,8) 刘强\n2~16周 3B202 :2(6,7,8) 符传孩', 100, 100, '-', ' ', 'img/course45.jpg');
INSERT INTO `course` VALUES (46, '中国科技大学', 'BI05106', '细胞生物学III', '2~16周 3C203 :4(6,7,8) 刘强\n2~16周 3C203 :4(6,7,8) 符传孩', 72, 100, '-', ' ', 'img/course46.jpg');
INSERT INTO `course` VALUES (47, '中国科技大学', 'BI05106', '细胞生物学III', '2~16周 3A206 :1(3,4,5) 刘强\n2~16周 3A206 :1(3,4,5) 符传孩', 101, 100, '-', ' ', 'img/course47.jpg');
INSERT INTO `course` VALUES (48, '中国科技大学', 'BI15207', '神经生物学原理II', '2~16周 3A111 :1(11,12,13) 毕国强\n2~16周 3A111 :1(11,12,13) 张效初\n2~16周 3A111 :1(11,12,13) 杨昱鹏\n2~16周 3A111 :1(11,12,13) 温泉\n2~16周 3A111 :1(11,12,13) 张智\n2~16周 3A111 :1(11,12,13) 陈林', 64, 65, '-', ' ', 'img/course48.jpg');
INSERT INTO `course` VALUES (49, '中国科技大学', 'BI15702', '高级神经生物学实验', '1~16周  :5(6,7,8,9,10) 张效初\n1~16周  :5(6,7,8,9,10) 杨昱鹏\n1~16周  :5(6,7,8,9,10) 周逸峰\n1~16周  :5(6,7,8,9,10) 胡兵\n1~16周  :5(6,7,8,9,10) 周江宁', 50, 50, '-', ' ', 'img/course49.jpg');
INSERT INTO `course` VALUES (50, '中国科技大学', 'BI16202', '临床神经生物学', '1~16周 3A213 :5(3,4,5) 申勇\n1~16周 3A213 :5(3,4,5) 张智\n1~16周 3A213 :5(3,4,5) 刘强', 73, 80, '-', ' ', 'img/course50.jpg');
INSERT INTO `course` VALUES (51, '中国科技大学', 'BI25202', '植物分子生物学与实验', '1~16周 3A113 :6(1,2,3,4,5) 马世嵩\n1~16周 3A113 :6(1,2,3,4,5) 向成斌\n1~16周 3A113 :6(1,2,3,4,5) 丁勇\n1~16周 3A113 :6(1,2,3,4,5) 赵忠', 31, 40, '-', ' ', 'img/course51.jpg');
INSERT INTO `course` VALUES (52, '中国科技大学', 'BI35206', '免疫生物学III', '1~16周 3C204 :2(3,4,5) 周荣斌\n1~16周 3C204 :2(3,4,5) 魏海明\n1~16周 3C204 :2(3,4,5) 田志刚', 98, 100, '-', ' ', 'img/course52.jpg');
INSERT INTO `course` VALUES (53, '中国科技大学', 'BI36201a', '细胞生物学文献阅读与分析', '1~16周 3A107 :2(8,9) 梅一德\n1~16周 3A107 :2(8,9) 单革', 35, 40, '-', ' ', 'img/course53.jpg');
INSERT INTO `course` VALUES (54, '中国科技大学', 'BI44207e', '分子生物学II（英）', '1~16周 3A203 :4(3,4,5) 陈泉\n1~16周 3A203 :4(3,4,5) 龙冬\n1~16周 3A203 :4(3,4,5) 金腾川', 19, 50, '-', ' ', 'img/course54.jpg');
INSERT INTO `course` VALUES (55, '中国科技大学', 'BI45204', '生物化学与分子生物学实验原理（II）', '2~16周 3B102 :5(6,7,8) 许超\n2~16周 3B102 :5(6,7,8) 丁丽俐\n2~16周 3B102 :5(6,7,8) 涂晓明\n2~16周 3B102 :5(6,7,8) 梅一德', 155, 155, '-', ' ', 'img/course55.jpg');
INSERT INTO `course` VALUES (56, '中国科技大学', 'BI45208', '分子生物学 III', '1~16周 3C303 :4(6,7,8) 田长麟\n1~16周 3C303 :4(6,7,8) 白丽\n1~16周 3C303 :4(6,7,8) 熊英', 58, 90, '-', ' ', 'img/course56.jpg');
INSERT INTO `course` VALUES (57, '中国科技大学', 'BI45208', '分子生物学 III', '1~16周 3C301 :2(6,7,8) 田长麟\n1~16周 3C301 :2(6,7,8) 白丽\n1~16周 3C301 :2(6,7,8) 熊英', 70, 90, '-', ' ', 'img/course57.jpg');
INSERT INTO `course` VALUES (58, '中国科技大学', 'BI45702', '高级生物化学实验', '5~16周 生物楼363实验室 :7(6,7,8,9,10) 李旭', 20, 20, '-', ' ', 'img/course58.jpg');
INSERT INTO `course` VALUES (59, '中国科技大学', 'BI46201a', '生化与分子生物学文献阅读与分析', '1~16周 3A104 :3(11,12,13) 田长麟\n1~16周 3A104 :3(11,12,13) 臧建业', 25, 25, '-', ' ', 'img/course59.jpg');
INSERT INTO `course` VALUES (60, '中国科技大学', 'BI56202', '视觉神经科学', '1~16周 3A306 :4(3,4,5) 周逸峰', 41, 50, '-', ' ', 'img/course60.jpg');
INSERT INTO `course` VALUES (61, '中国科技大学', 'BI65204', '核磁共振实验技术', '1~16周 3A108 :5(3,4) 龚庆国', 20, 20, '-', ' ', 'img/course61.jpg');
INSERT INTO `course` VALUES (62, '中国科技大学', 'BI65701', '生物大分子晶体学实验', '5~16周 生物楼363实验室 :1(8,9,10) 朱中良', 15, 15, '-', ' ', 'img/course62.jpg');
INSERT INTO `course` VALUES (63, '中国科技大学', 'BI65701', '生物大分子晶体学实验', '5~16周 生物楼363实验室 :6(6,7,8) 朱中良', 15, 15, '-', ' ', 'img/course62.jpg');
INSERT INTO `course` VALUES (64, '中国科技大学', 'BI66204', '生物大分子晶体学原理', '5~16周 3C202 :4(1,2,3,4,5) 牛立文', 80, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (65, '中国科技大学', 'BI66205', '生物大分子波谱学原理', '1~16周 3C101 :1(6,7) 吴季辉\n1~16周 3C101 :1(6,7) 龚庆国\n1~16周 3C101 :1(6,7) 阮科\n1~16周 3C101 :1(6,7) 张志勇\n1~16周 3C101 :3(6,7) 吴季辉\n1~16周 3C101 :3(6,7) 龚庆国\n1~16周 3C101 :3(6,7) 阮科\n1~16周 3C101 :3(6,7) 张志勇', 14, 40, '-', ' ', 'img/course2.jpg');
INSERT INTO `course` VALUES (66, '中国科技大学', 'BI85101', '生态学实验原理与方法', '1~16周 3A407 :3(3,4,5) 刘方邻', 32, 50, '-', ' ', 'img/course3.jpg');
INSERT INTO `course` VALUES (67, '中国科技大学', 'BI95201', '生物技术药物', '1~16周 3B101 :2(11,12,13) 熊伟\n1~16周 3B101 :2(11,12,13) 王育才\n1~16周 3B101 :2(11,12,13) 仓春蕾', 81, 60, '-', ' ', 'img/course4.jpg');
INSERT INTO `course` VALUES (68, '中国科技大学', 'BI95201', '生物技术药物', '1~16周 3B101 :3(11,12,13) 熊伟\n1~16周 3B101 :3(11,12,13) 王育才\n1~16周 3B101 :3(11,12,13) 仓春蕾', 64, 60, '-', ' ', 'img/course5.jpg');
INSERT INTO `course` VALUES (69, '中国科技大学', 'BMY5204', '生物医学信息检测与系统设计', '1~18周 3A311 :4(6,7,8) 陈香\n1~18周 3A311 :4(6,7,8) 陈勋', 56, 80, '-', ' ', 'img/course6.jpg');
INSERT INTO `course` VALUES (70, '中国科技大学', 'CH15203', '相平衡及其在材料科学中的应用', '1~12周 2204 :1(6,7,8) 杨晴\n1~12周 2204 :3(1,2) 杨晴', 16, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (71, '中国科技大学', 'CH15204', '结构配位化学', '1~10周 2210 :2(6,7,8) 宋乐新\n1~10周 2210 :4(6,7) 宋乐新', 85, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (72, '中国科技大学', 'CH15210', '晶体合成与结构分析', '1~13周 2211 :4(3,4,5) 江海龙', 90, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (73, '中国科技大学', 'CH15211', '现代无机化学', '1~13周 5102 :1(3,4,5) 姚宏斌', 95, 101, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (74, '中国科技大学', 'CH25203a', '分子光谱分析新技术', '1~18周 1201 :2(3,4,5) 梁高林\n1~18周 1201 :2(3,4,5) 崔华\n1~18周 1201 :2(3,4,5) 葛袁', 130, 130, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (75, '中国科技大学', 'CH25204a', '电分析化学', '1~15周 5303 :1(1,2) 邓兆祥\n1~15周 5303 :1(1,2) 李涛\n1~15周 5303 :3(6,7) 邓兆祥\n1~15周 5303 :3(6,7) 李涛', 60, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (76, '中国科技大学', 'CH25210', '烟草化学', '1~13周 2211 :1(3,4,5) 杨俊', 120, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (77, '中国科技大学', 'CH25217a', '热分析方法及其应用', '1~16周 5203 :1(11,12) 丁延伟', 265, 265, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (78, '中国科技大学', 'CH25223', '核酸化学生物学', '1~13周 2210 :4(3,4,5) 李涛', 50, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (79, '中国科技大学', 'CH26206', '分析化学前沿', '1~13周 2210 :5(3,4,5) 梁高林\n1~13周 2210 :5(3,4,5) 邓兆祥\n1~13周 2210 :5(3,4,5) 崔华\n1~13周 2210 :5(3,4,5) 李涛\n1~13周 2210 :5(3,4,5) 黄光明', 110, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (80, '中国科技大学', 'CH34201', '有机结构分析', '1~16周 5204 :2(3,4,5) 许毓\n1~16周 5204 :2(3,4,5) 谷永红\n1~16周 5204 :4(1,2) 许毓\n1~16周 5204 :4(1,2) 谷永红', 31, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (81, '中国科技大学', 'CH35201', '高等有机化学', '1~16周 2210 :5(6,7,8,9,10) 康彦彪', 77, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (82, '中国科技大学', 'CH35205', '生物有机化学', '1~13周 2105 :5(6,7,8) 郑小琦', 46, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (83, '中国科技大学', 'CH35207', '材料有机化学', '1~13周 2211 :1(6,7,8) 雍国平', 83, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (84, '中国科技大学', 'CH35213', '均相催化有机合成', '1~15周 2204 :1(3,4) 黄汉民\n1~15周 2204 :1(3,4) 汪义丰\n1~15周 2204 :3(3,4) 黄汉民\n1~15周 2204 :3(3,4) 汪义丰', 32, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (85, '中国科技大学', 'CH36202', '有机合成专论', '1~16周  :5(11,12,13) 汪志勇\n1~16周  :5(11,12,13) 王中夏\n1~16周  :5(11,12,13) 肖斌\n1~16周  :5(11,12,13) 宋钦华\n1~16周  :5(11,12,13) 王细胜\n1~16周  :5(11,12,13) 王官武\n1~16周  :5(11,12,13) 康彦彪', 36, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (86, '中国科技大学', 'CH44401', '化学动力学I', '1~8周 2605 :1(3,4,5) 周晓国\n1~8周 2605 :3(1,2) 周晓国', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (87, '中国科技大学', 'CH44403', '化学动力学III', '9~16周 2204 :3(6,7) 叶树集\n9~16周 2204 :5(3,4,5) 叶树集', 41, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (88, '中国科技大学', 'CH44404', '化学动力学IV', '9~16周 2507 :1(3,4,5) 张群\n9~16周 2507 :3(1,2) 张群', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (89, '中国科技大学', 'CH44405', '分子光谱学I', '1~8周 2607 :2(6,7,8) 刘世林\n1~8周 2607 :4(3,4,5) 刘世林', 10, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (90, '中国科技大学', 'CH44406', '分子光谱学II', '9~16周 2606 :1(3,4,5) 李全新\n9~16周 2606 :3(1,2) 李全新', 6, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (91, '中国科技大学', 'CH44407', '分子光谱学III', '9~16周  :1(8,9,10) 赵东锋\n9~16周  :3(6,7) 赵东锋', 2, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (92, '中国科技大学', 'CH45221', '应用物理化学III', '9~16周 2204 :2(3,4) 路军岭\n9~16周 2204 :4(6,7) 路军岭', 28, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (93, '中国科技大学', 'CH45224', '理论与计算化学III', '1~10周 2305 :3(3,4) 侯中怀\n1~10周 2305 :3(3,4) 袁岚峰\n1~10周 2305 :5(6,7) 侯中怀\n1~10周 2305 :5(6,7) 袁岚峰', 42, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (94, '中国科技大学', 'CH45225', '气体吸附理论与实践', '1~13周 5207 :1(3,4,5) 刘波', 86, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (95, '中国科技大学', 'CH46211', '分子间的相互作用力', '1~14周 2106 :5(6,7,8) 叶晓东', 93, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (96, '中国科技大学', 'CH46212', '现代化学物理进展', '7~14周 5402 :1(6,7,8,9,10) 郑晓', 160, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (97, '中国科技大学', 'CH54201', '高分子链构象统计学', '1~13周 2303 :5(3,4,5) 梁好均', 28, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (98, '中国科技大学', 'CH55201', '功能高分子', '1~18周 长春应化所 :1(08:30~11:30)', 0, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (99, '中国科技大学', 'CH55202', '高分子凝聚态物理', '1~16周 5303 :2(3,4,5) 梁好均\n1~16周 5303 :2(3,4,5) 王志刚\n1~16周 5303 :2(3,4,5) 李良彬\n1~16周 5303 :4(6,7) 梁好均\n1~16周 5303 :4(6,7) 王志刚\n1~16周 5303 :4(6,7) 李良彬', 110, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (100, '中国科技大学', 'CH55216', '热塑弹性体概述', '1~13周 5205 :1(6,7,8) 汪谟贞', 43, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (101, '中国科技大学', 'CH55225', '生物材料', '1~16周 1201 :2(6,7,8) 洪春雁\n1~16周 1201 :2(6,7,8) 张国颖\n1~16周 1201 :5(6,7) 洪春雁\n1~16周 1201 :5(6,7) 张国颖', 42, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (102, '中国科技大学', 'CH55226', '光固化技术原理及应用', '1~16周 2103 :1(11,12) 缪慧', 61, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (103, '中国科技大学', 'CH56201', '聚合反应原理专论', '9~16周 2307 :1(3,4,5) 汪峰\n9~16周 2307 :3(6,7) 汪峰', 23, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (104, '中国科技大学', 'CH65205', '污染控制材料', '1~13周 1201 :3(3,4,5) 盛国平', 120, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (105, '中国科技大学', 'CH65208a', '香味化学基础', '1~14周 2210 :1(6,7,8) 李光水', 67, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (106, '中国科技大学', 'CNY5101', '随机过程理论', '1~17周 3C201 :1(6,7) 朱进\n1~17周 3C201 :4(8,9,10) 朱进', 149, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (107, '中国科技大学', 'CNY5104', '组合数学', '1~13周 3B102 :1(1,2) 姜晓枫\n1~13周 3B102 :4(3,4,5) 姜晓枫', 182, 185, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (108, '中国科技大学', 'CNY5202', '现代检测技术导论', '1~18周 3A311 :1(8,9,10) 梁华为', 99, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (109, '中国科技大学', 'CNY5204', '系统工程导论', '1~12周 3A211 :1(8,9,10) 陈宗海\n1~12周 3A211 :3(3,4,5) 陈宗海', 54, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (110, '中国科技大学', 'CNY5205', '模式识别', '3~14周 3B101 :2(3,4,5) 汪增福\n3~14周 3B101 :5(8,9,10) 汪增福', 137, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (111, '中国科技大学', 'CNY5207', '飞行器动力学与控制', '1~14周 3A206 :2(3,4,5) 梁青\n1~14周 3A206 :5(6,7) 梁青', 111, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (112, '中国科技大学', 'CNY5308', '计算机视觉', '1~14周 3B201 :3(6,7) 曹洋\n1~14周 3B201 :5(3,4,5) 曹洋', 199, 200, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (113, '中国科技大学', 'CNY5311', '离散数学', '1~12周 3A318 :1(8,9,10) 谭小彬\n1~12周 3A318 :5(8,9,10) 谭小彬', 62, 70, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (114, '中国科技大学', 'CNY5315', '嵌入式系统原理及应用', '2~16周 3A409 :1(3,4,5) 石春\n2~16周 3A409 :5(8,9) 石春', 62, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (115, '中国科技大学', 'CNY5318', '算法设计与分析', '2~15周 3B202 :3(6,7) 王子磊\n2~15周 3B202 :5(3,4,5) 王子磊', 160, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (116, '中国科技大学', 'CNY5319', '系统仿真建模与分析', '3~16周 3A402 :3(3,4,5) 盛捷\n3~16周 3A402 :5(6,7) 盛捷', 60, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (117, '中国科技大学', 'CNY5321', '预测控制', '2~15周 3A104 :5(3,4,5) 吴刚\n2~15周 3A104 :5(3,4,5) 秦琳琳', 22, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (118, '中国科技大学', 'CNY5330', '现代运动控制', '3~13周 3A102 :1(3,4,5) 尚伟伟\n3~13周 3A102 :4(1,2) 尚伟伟', 23, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (119, '中国科技大学', 'CS04303', '并行计算', '1~16周 3C101 :3(1,2) 徐云', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (120, '中国科技大学', 'CS05110', '高级计算机体系结构', '1~15周 3A206 :1(6,7,8) 吴俊敏', 58, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (121, '中国科技大学', 'CS05112', '高级计算机网络', '1~16周 3B202 :3(3,4) 田野\n1~16周 3B202 :5(1,2) 田野', 180, 180, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (122, '中国科技大学', 'CS05113', '高级操作系统', '1~15周 3B102 :2(6,7) 熊焰\n1~15周 3B102 :2(8,9) 熊焰', 135, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (123, '中国科技大学', 'CS05114', '高级软件工程', '1~16周 3B202 :2(1,2) 周颢\n1~16周 3B202 :4(3,4) 周颢', 121, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (124, '中国科技大学', 'CS05117', '高级人工智能', '1~16周 3C104 :2(3,4,5) 李金龙\n1~15(单)周 3C104 :4(1,2) 李金龙', 160, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (125, '中国科技大学', 'CS05118', '现代计算机控制理论与技术', '1~15周 3A107 :4(6,7,8,9) 郑浩然', 11, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (126, '中国科技大学', 'CS05120', '计算数论', '1~15周 3A306 :4(6,7) 韩文廷\n1~15周 3A306 :4(8,9) 韩文廷', 36, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (127, '中国科技大学', 'CS05122', '嵌入智能', '1~15周 3A202 :5(3,4,5) 程敬原', 19, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (128, '中国科技大学', 'CS05142', '自然计算与应用', '1~16周 3A306 :1(3,4,5) 罗文坚', 95, 95, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (129, '中国科技大学', 'CS05144', '自然语言理解', '1~16周 3A111 :2(11,12,13) 刘贵全', 100, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (130, '中国科技大学', 'CS05150', '信号与信息处理', '2~16周 3A112 :1(11,12,13) 陈欢欢', 95, 95, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (131, '中国科技大学', 'CS05177', '数据中的经济学和隐私', '1~16周 3A211 :4(11,12,13) 李向阳\n1~16周 3A211 :4(11,12,13) 张兰', 52, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (132, '中国科技大学', 'CS06101', '计算机数学', '1~15周 3A211 :6(6,7,8,9) 韩恺', 56, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (133, '中国科技大学', 'CS06201a', '网络计算与高效算法', '1~14周 3A317 :3(11,12,13) 李向阳\n1~14周 3A317 :3(11,12,13) 谈海生', 36, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (134, '中国科技大学', 'CS06217', '机器学习与数据挖掘前沿', '2~15周  :4(6,7,8) 陈恩红', 23, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (135, '中国科技大学', 'DS05004', '理论机器学习', '1~16周 2105 :2(11,12,13) 杨周旺\n1~16周 2105 :2(11,12,13) 张洪\n1~16周 2105 :4(11,12) 杨周旺\n1~16周 2105 :4(11,12) 张洪', 25, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (136, '中国科技大学', 'EM04204', '固定收益证券', '1~14周 2204 :4(3,4,5) 苟小菊', 55, 55, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (137, '中国科技大学', 'EM05202', '高等宏观经济学', '1~15周 2504 :2(1,2) 贺俊\n1~15周 2504 :2(3,4) 贺俊', 23, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (138, '中国科技大学', 'EM05205', '高等计量经济学', '1~16周 5206 :5(3,4,5) 叶五一', 45, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (139, '中国科技大学', 'EM05207', '连续时间金融理论', '2~16周 5402 :1(1,2,3,4) 程希骏', 18, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (140, '中国科技大学', 'EM05219', '金融衍生品定价', '1~7周 5406 :2(18:30~21:30) 吴遵\n1~7周 5406 :4(18:30~21:30) 吴遵', 24, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (141, '中国科技大学', 'EM05222', '公司控制权分析', '1~14周 2505 :1(7,8,9) 方世建', 25, 26, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (142, '中国科技大学', 'EM05223a', '风险度量与管理', '1~15周 5502 :4(7,8) 叶五一\n1~15周 5502 :4(9,10) 叶五一', 39, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (143, '中国科技大学', 'EM05301', '实变与泛函', '1~16周 2405 :1(3,4,5) 王敏\n1~16周 2405 :4(3,4,5) 王敏', 53, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (144, '中国科技大学', 'EM05304', '企业文化', '1~16周 5202 :2(6,7,8,9) 刘志迎', 22, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (145, '中国科技大学', 'EM05326', '技术创新管理', '1~16周 5304 :5(6,7,8) 洪进', 24, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (146, '中国科技大学', 'EM05328', '供应链管理', '1~16周 5503 :1(6,7,8,9) 凌六一', 29, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (147, '中国科技大学', 'EM05329', '制度经济学', '1~16周 5506 :2(3,4,5) 方世建', 66, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (148, '中国科技大学', 'EM05506', '人力资源管理', '1~16周 5304 :4(6,7,8) 朱宁', 28, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (149, '中国科技大学', 'EM06102', '管理研究方法论', '3~16周 2403 :2(3,4,5) 刘和福', 33, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (150, '中国科技大学', 'EM06104', '管理科学论文写作', '2~16周 2308 :3(3,4,5) 郭晓龙', 8, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (151, '中国科技大学', 'EM06303', '群决策', '2~16周 5106 :5(11,12,13) 杨锋\n2~16周 5106 :5(11,12,13) 昂胜', 50, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (152, '中国科技大学', 'EM06307e', '管理科学与商务实践前沿讲座', '2~16周 5106 :5(6,7,8,9) 外聘', 48, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (153, '中国科技大学', 'EN05202', '第四纪环境和第四纪年代学', '1~15周 2202 :3(1,2) 周鑫\n1~15周 2202 :3(3,4,5) 周鑫', 30, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (154, '中国科技大学', 'EN05203', '环境样品综合分析', '2~15周  :5(1,2,3,4) 康辉\n2~15周  :5(1,2,3,4) 韩於利', 10, 10, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (155, '中国科技大学', 'EN05214', '环境科学与工程模拟', '1~15周 2202 :2(6,7,8,9) 黄卫东', 1, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (156, '中国科技大学', 'EN05216', '环境工程研究进展', '1~8周 2204 :2(6,7,8) 俞汉青\n1~8周 2204 :2(6,7,8) 李文卫\n1~8周 2204 :4(1,2) 俞汉青\n1~8周 2204 :4(1,2) 李文卫', 15, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (157, '中国科技大学', 'EN05218', '古气候学', '1~15周 2305 :4(3,4,5) 刘晓东', 20, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (158, '中国科技大学', 'EN06202', '环境科学进展（2）', '1~15周 2105 :1(6,7,8,9) 刘诚', 100, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (159, '中国科技大学', 'ES15201', '物理电子学导论', '1~16周 2210 :1(3,4) 金革\n1~16周 2210 :3(6,7) 金革', 130, 130, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (160, '中国科技大学', 'ES15202', '高等核电子学', '1~16周 2211 :2(3,4,5) 梁昊\n1~16周 2211 :4(8,9) 梁昊', 63, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (161, '中国科技大学', 'ES15204', '近代信息处理', '1~16周 5203 :2(8,9) 沈仲弢\n1~16周 5203 :2(8,9) 赵雷\n1~16周 5203 :4(3,4,5) 沈仲弢\n1~16周 5203 :4(3,4,5) 赵雷', 115, 130, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (162, '中国科技大学', 'ES16201', '高速数字系统设计', '1~16周 5203 :3(3,4,5) 武杰\n1~16周 5203 :5(3,4) 武杰', 60, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (163, '中国科技大学', 'ES35202', '模拟集成电路原理与设计', '1~15周 1302 :2(3,4) 王茁\n1~15周 1302 :4(3,4) 王茁', 18, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (164, '中国科技大学', 'ESB4303', '嵌入式系统原理及应用', '1~18周 3A304 :3(6,7) 朱俊株\n1~18周 3A304 :5(6,7) 朱俊株', 22, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (165, '中国科技大学', 'ESB5204', '机器学习', '1~18周 3C103 :4(6,7,8) 何劲松', 199, 220, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (166, '中国科技大学', 'ESB5306', '神经网络及其应用', '1~15周 3B201 :1(6,7) 陈贤富\n1~15周 3B201 :3(1,2) 陈贤富', 220, 220, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (167, '中国科技大学', 'ESB5311', '集成电路物理设计', '1~18周 3A211 :2(3,4,5) 白雪飞', 90, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (168, '中国科技大学', 'ESB5317', '超大规模集成电路设计优化', '1~15周 3A109 :1(3,4,5) 陈松', 42, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (169, '中国科技大学', 'ESB6204', '先进电子器件的射频建模兼芯片验证', '1~14周  :1(11,12,13) 林福江', 0, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (170, '中国科技大学', 'ESD4304', '现代通信光电子学', '1~20周 3A206 :3(11,12,13) 朱冰', 19, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (171, '中国科技大学', 'ESD5203', '计算电磁学', '1~20周 3A310 :3(1,2) 周凌云\n1~18周 3A310 :5(3,4) 周凌云', 23, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (172, '中国科技大学', 'ESD5303', '现代微波测量', '1~16周 3A107 :3(3,4,5) 王卫东', 55, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (173, '中国科技大学', 'ESD5304', '信号完整性分析', '1~16周 3A212 :2(3,4,5) 孙利国', 48, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (174, '中国科技大学', 'ESD5306', '耦合模理论', '1~15周 3A205 :1(3,4,5) 杨利', 6, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (175, '中国科技大学', 'ESD5307', '现代天线技术', '1~14周 3A206 :4(3,4,5) 朱旗', 34, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (176, '中国科技大学', 'FL05202', '日语（下）', '1~18周 2406 :1(8,9) 范晓燕\n1~18周 2406 :2(8,9) 范晓燕', 18, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (177, '中国科技大学', 'FL05204', '德语（下）', '1~18周 2305 :1(6,7) 徐筱春\n1~18周 2305 :4(6,7) 徐筱春', 13, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (178, '中国科技大学', 'FL05206II', '日语会话(II)', '1~18周 2202 :3(11,12) 小森阳子', 20, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (179, '中国科技大学', 'FL05301', '研究生综合英语', '1周 2211 :5(8,9) 邢鸿飞', 185, 200, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (180, '中国科技大学', 'FL05301', '研究生综合英语', '　', 202, 220, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (181, '中国科技大学', 'FL05301', '研究生综合英语', '　', 201, 220, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (182, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :4(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (183, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :2(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (184, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :1(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (185, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :4(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (186, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :5(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (187, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :1(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (188, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :2(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (189, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :3(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (190, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :4(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (191, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :1(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (192, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :1(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (193, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :2(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (194, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :5(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (195, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :1(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (196, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :4(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (197, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :5(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (198, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :1(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (199, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :5(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (200, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :2(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (201, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :4(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (202, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :5(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (203, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2207 :3(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (204, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2207 :3(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (205, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :1(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (206, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :2(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (207, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :3(3,4)', 41, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (208, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :4(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (209, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :2(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (210, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :4(6,7)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (211, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :3(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (212, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :2(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (213, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :3(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (214, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :2(3,4)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (215, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :1(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (216, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2206 :4(1,2)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (217, '中国科技大学', 'FL05302', '日常交流英语', '1~18周 2205 :5(8,9)', 42, 42, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (218, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :2(3,4)', 37, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (219, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :1(1,2)', 38, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (220, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :3(6,7)', 36, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (221, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :4(8,9)', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (222, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :5(8,9)', 38, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (223, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :5(1,2)', 37, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (224, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :1(3,4)', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (225, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :4(1,2)', 36, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (226, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :4(3,4)', 39, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (227, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :2(1,2)', 39, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (228, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :2(6,7)', 36, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (229, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :2(8,9)', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (230, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :4(6,7)', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (231, '中国科技大学', 'FL05303', '学术交流英语', '1~18周 2207 :5(6,7)', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (232, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :5(3,4) 孙强华', 29, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (233, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :3(6,7) 夏学文', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (234, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :1(6,7) 邢鸿飞', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (235, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :1(3,4) 孙强华', 25, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (236, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :3(3,4) 孙蓝', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (237, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :2(6,7) 夏学文', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (238, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :2(3,4) 陈纪梁', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (239, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :3(1,2) 孙蓝', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (240, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :4(6,7) 王建忠', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (241, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :2(1,2) 陈纪梁', 24, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (242, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :4(3,4) 王晓蓉', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (243, '中国科技大学', 'FL06301', '科技论文写作', '1~18周  :1(1,2) 王建忠', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (244, '中国科技大学', 'G025100302', '中国社会主义市场经济理论与实践', '1~14周 5305 :3(11,12,13) 方世建', 43, 43, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (245, '中国科技大学', 'G025100308', '金融风险管理', '8~18周 2405 :3(3,4,5) 叶五一\n8~18周 2405 :5(11,12,13) 叶五一', 43, 43, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (246, '中国科技大学', 'G025100316', '随机分析', '8~18周 2209 :1(8,9,10) 陈昱\n8~18周 2209 :2(8,9,10) 陈昱', 23, 23, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (247, '中国科技大学', 'G025200337', '机器学习', '15~18周 5407 :1(1,2) 崔文泉\n15~18周 5407 :2(1,2,3,4) 崔文泉\n15~18周 5407 :4(1,2,3,4) 崔文泉', 37, 37, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (248, '中国科技大学', 'G025200352', '数据科学与金融计算', '1~13周 2603 :3(6,7) 王占锋\n1~13周 2603 :5(6,7,8) 王占锋', 37, 43, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (249, '中国科技大学', 'G0852001', '工程伦理', '6~10周  :2(6,7)\n6~10周  :4(6,7)', 44, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (250, '中国科技大学', 'G0852003', '工程硕士专业英语', '1~15周 3A206 :2(6,7,8,9) 秦家虎\n1~15周 3A206 :2(6,7,8,9) 张天柱\n1~15周 3A206 :6(1,2,3,4) 秦家虎\n2~15周 3A206 :6(1,2,3,4) 张天柱', 54, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (251, '中国科技大学', 'G0852003', '工程硕士专业英语', '1~14周 3A212 :1(8,9,10) 陈松\n1~14周 3A212 :1(8,9,10) 左成杰', 100, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (252, '中国科技大学', 'G0852003', '工程硕士专业英语', '2~16周 3A109 :1(11,12,13) 金显庆', 55, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (253, '中国科技大学', 'G0852003', '工程硕士专业英语', '2~15周 3A112 :2(8,9,10) Zachary J. Smith\n2~15周 3A112 :2(8,9,10) 储开芹', 39, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (254, '中国科技大学', 'G430107016', '专业英语', '10~18周  :2(3,4)\n10~18周  :4(3,4)', 33, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (255, '中国科技大学', 'G430112002', '高级计算机网络', '1~16周 3C201 :6(1,2,3,4)\n1~16周 3C201 :7(1,2,3,4)', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (256, '中国科技大学', 'G430113008', '软件项目管理及实例分析', '1~16周 3C201 :5(11,12,13)\n1~16周 3C201 :6(6,7,8,9)', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (257, '中国科技大学', 'G430113015', '高级软件工程', '1~16周 3C201 :6(11,12,13)\n1~16周 3C201 :7(6,7,8,9)', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (258, '中国科技大学', 'GE15201', '痕量元素地球化学', '1~15周 2104 :2(2,3,4,5) 肖益林', 38, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (259, '中国科技大学', 'GE15205', '地球化学热力学和动力学', '2~12周 2405 :1(6,7) 盛英明\n2~12周 2405 :1(6,7) 倪怀玮\n2~12周 2405 :3(6,7) 盛英明\n2~12周 2405 :3(6,7) 倪怀玮', 25, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (260, '中国科技大学', 'GE15210', '板块构造与区域地质', '1~15周 2404 :4(3,4,5) 杨永太', 25, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (261, '中国科技大学', 'GE15212', '岩石地球化学', '1~15周 2304 :1(3,4,5) 戴立群\n1~15周 2304 :1(3,4,5) 张少兵', 12, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (262, '中国科技大学', 'GE15213', '矿床地球化学', '1~14周 2303 :2(6,7,8) 杨晓勇\n1~14周 2303 :2(6,7,8) 曹荆亚', 7, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (263, '中国科技大学', 'GE15214', '成因矿物学', '1~13周 2204 :5(6,7,8) 高晓英', 21, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (264, '中国科技大学', 'GE15228', '放射性成因同位素分析', '2~16周  :4(6,7,8,9) 谢智', 8, 8, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (265, '中国科技大学', 'GE16205', '岩矿地球化学进展', '1~14周  :3(3,4,5) 郑永飞\n1~14周  :3(3,4,5) 倪怀玮', 16, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (266, '中国科技大学', 'GP14201', '计算地震学', '1~15周 教学行政楼1004室 :2(13) 孙道远', 23, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (267, '中国科技大学', 'GP14202', '地球物理学进展', '1~16周 5207 :5(1,2,3,4,5) 胡岩', 17, 70, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (268, '中国科技大学', 'GP15201', '地球内部物理学', '1~16周 5106 :1(6,7) 毛竹\n1~16周 5106 :3(3,4,5) 毛竹', 45, 70, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (269, '中国科技大学', 'GP15202', '地球动力学', '1~16周 2504 :1(3,4,5) 冷伟\n1~16周 2504 :3(6,7) 冷伟', 43, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (270, '中国科技大学', 'GP15213', '工程地震学', '1~16周  :4(6,7,8,9,10) 黄建华', 22, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (271, '中国科技大学', 'GP15222', '地震勘探进展', '1~15周 2106 :2(6,7,8,9,10) 李俊伦', 16, 70, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (272, '中国科技大学', 'GP24202', '磁流体力学的解析方法', '1~15周 2307 :1(6,7,8) 郑惠南\n1~15周 2307 :3(3,4,5) 郑惠南', 11, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (273, '中国科技大学', 'GP25206', '等离子体的粒子模拟方法', '1~15周 2506 :3(6,7) 陆全明\n1~15周 2506 :5(6,7,8) 陆全明', 34, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (274, '中国科技大学', 'GP26206', '高层大气环境', '1~15周 5305 :2(6,7,8,9) 栾晓莉\n1~15周 5305 :2(6,7,8,9) 雷久侯', 23, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (275, '中国科技大学', 'GX04001', '管理心理学', '1~18周 2204 :4(11,12) 张旭', 60, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (276, '中国科技大学', 'GX04003', '情绪与健康', '1~18周 3A318 :5(6,7) 徐晓飞', 44, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (277, '中国科技大学', 'GX04003', '情绪与健康', '1~18周 5106 :4(6,7) 徐晓飞', 57, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (278, '中国科技大学', 'GX04004', '心理拓展与团队训练', '1~18周 5107 :2(6,7) 宋怡', 40, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (279, '中国科技大学', 'GX05102', '智能仿人机器人技术', '　', 12, 15, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (280, '中国科技大学', 'GX05105', '射频测试与测量技术', '　', 12, 15, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (281, '中国科技大学', 'GX05108', '中国红茶', '2~8周  :1(15:00~17:30) 宋伟', 17, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (282, '中国科技大学', 'HS15205', '考古学通论', '1~18周 2603 :4(1,2) 张居中\n1~18周 2603 :4(3,4) 张居中', 24, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (283, '中国科技大学', 'HS15210', '文物光谱分析', '1~18周 2605 :5(1,2) 范安川\n1~18周 2605 :5(1,2) 陈彪\n1~18周 2605 :5(3,4) 范安川\n1~18周 2605 :5(3,4) 陈彪', 16, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (284, '中国科技大学', 'HS15215', '农业考古学', '1~18周 2604 :2(3,4,5) 黄文川', 26, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (285, '中国科技大学', 'HS15219', '古代食谱分析', '1~18周 2606 :1(8,9,10) 黄文川', 25, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (286, '中国科技大学', 'HS15228', '资源考古学导论', '1~18周 2209 :3(1,2) 金正耀\n1~18周 2209 :3(1,2) 范安川\n1~18周 2209 :3(3,4) 金正耀\n1~18周 2209 :3(3,4) 范安川', 20, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (287, '中国科技大学', 'HS15234', '文物修复艺术', '1~18周  :3(11,12) 方浩', 7, 15, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (288, '中国科技大学', 'HS95020', '宝玉石的科技鉴定', '　', 10, 10, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (289, '中国科技大学', 'HS95020', '宝玉石的科技鉴定', '　', 7, 10, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (290, '中国科技大学', 'IM05004', '自然辩证法与科学伦理', '1~5周 null :2(6,7)\n1~5周 null :4(6,7)', 104, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (291, '中国科技大学', 'IM05005', '研究生综合英语', '　', 3, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (292, '中国科技大学', 'IM05006', '日常交流英语', '1~18周  :1(11,12) 教务处学生查询\n1~18周  :2(11,12) 教务处学生查询\n1~18周  :3(11,12) 教务处学生查询\n1~18周  :4(11,12) 教务处学生查询\n1~18周  :5(11,12) 教务处学生查询', 40, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (293, '中国科技大学', 'IM05204', '材料的结构', '13~18周 null :1(3,4)\n13~18周 null :3(3,4)\n13~18周 null :5(3,4)', 110, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (294, '中国科技大学', 'IM05205', '材料中的扩散与相变', '12~18周 null :2(1,2)\n12~18周 null :4(1,2)', 107, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (295, '中国科技大学', 'IM05206', '材料的力学性质', '14~17周 null :1(1,2)\n14~17周 null :2(3,4)\n14~17周 null :3(1,2)\n14~17周 null :4(3,4)\n14~17周 null :5(1,2)', 61, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (296, '中国科技大学', 'IM05207', '合金热力学', '1~11周 null :2(1,2)\n1~11周 null :4(1,2)', 80, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (297, '中国科技大学', 'IM05208', '凝固理论及技术', '6~12周 null :1(3,4)\n6~12周 null :3(3,4)\n6~12周 null :5(3,4)', 66, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (298, '中国科技大学', 'IM05209', '材料科学中的多体量子论基础', '1~9周  :1(3,4)\n1~9周  :3(3,4)\n1~9周  :5(3,4)', 8, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (299, '中国科技大学', 'IM05210', '计算材料学', '11~18周  :1(6,7)\n11~18周  :3(6,7)\n11~18周  :5(6,7)', 26, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (300, '中国科技大学', 'IM05211', '腐蚀电化学原理', '12~18周 null :1(1,2)\n12~18周 null :3(1,2)\n12~18周 null :5(1,2)', 44, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (301, '中国科技大学', 'IM05213', '复合材料导论', '1~5周 null :1(3,4)\n1~5周 null :3(3,4)\n1~5周 null :5(3,4)', 48, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (302, '中国科技大学', 'IM05214', '高温氧化理论', '1~8周  :2(3,4)\n1~8周  :4(3,4)', 47, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (303, '中国科技大学', 'IM05215', '材料摩擦学与耐磨性', '1~10周 null :1(8,9)\n1~10周 null :3(8,9)\n1~10周 null :5(8,9)', 63, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (304, '中国科技大学', 'IM05217', '塑性加工力学', '6~10周  :1(6,7)\n6~10周  :3(6,7)\n6~10周  :5(6,7)', 22, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (305, '中国科技大学', 'IM05218', '高温合金与金属间化合物', '　', 57, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (306, '中国科技大学', 'IM05224', '数学物理方程', '1~18周 长春应化所 :2(13:30~17:35)', 89, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (307, '中国科技大学', 'IM05229', '现代焊接与连接工程学', '1~7周  :1(6,7)\n1~7周  :3(6,7)\n1~7周  :5(6,7)', 14, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (308, '中国科技大学', 'IM05231', '材料科学基础', '6~15周  :1(8,9)\n6~15周  :3(8,9)\n6~15周  :5(8,9)', 1, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (309, '中国科技大学', 'IM05703', '电子能谱分析(XPS)', '11~18周  :2(6,7)\n11~18周  :4(6,7)', 30, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (310, '中国科技大学', 'IM05901', '管理经济学', '11~17周  :4(6,7)\n11~17周  :4(8,9)', 4, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (311, '中国科技大学', 'IM05902', '知识产权法', '18周  :1(6,7)\n18周  :2(6,7)\n18周  :3(6,7)\n18周  :4(6,7)\n18周  :5(6,7)', 10, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (312, '中国科技大学', 'IM05904', '材料学科文献资源获取与检索', '11~13周  :1(8,9)\n11~13周  :2(8,9)\n11~13周  :3(8,9)\n11~13周  :5(8,9)', 27, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (313, '中国科技大学', 'IM05905', '材料科学进展讲座', '17~18周  :1(6,7)\n17~18周  :2(6,7)\n17~18周  :3(6,7)\n17~18周  :4(6,7)\n17~18周  :5(6,7)', 0, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (314, '中国科技大学', 'IM06006', '科技论文写作', '1~18周 null :1(3,4)', 12, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (315, '中国科技大学', 'IM06006', '科技论文写作', '1~18周 null :1(1,2)', 22, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (316, '中国科技大学', 'IM06208', '环境敏感断裂', '10~18周  :3(3,4)\n10~18周  :5(3,4)', 17, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (317, '中国科技大学', 'IM06218', '材料力学行为前沿问题探讨', '12~18周  :2(3,4)\n12~18周  :4(3,4)', 5, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (318, '中国科技大学', 'INY5101', '矩阵分析与应用', '1~16周 3C302 :1(1,2) 龚晨\n1~16周 3C302 :1(1,2) 林宪正\n1~16周 3C302 :4(3,4) 龚晨\n1~16周 3C302 :4(3,4) 林宪正', 121, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (319, '中国科技大学', 'INY5202', '通信网理论基础', '1~16周 3C102 :2(1,2) 李辉\n1~16周 3C102 :4(6,7) 李辉', 8, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (320, '中国科技大学', 'INY5203', '编码理论', '1~17周 3C303 :2(6,7) 周武旸\n1~17周 3C303 :2(8,9) 周武旸', 92, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (321, '中国科技大学', 'INY5205', '数字图像分析', '1~16周 3C301 :1(8,9,10) 李厚强\n1~16周 3C301 :1(8,9,10) 周文罡\n1~16周 3C301 :4(6,7) 李厚强\n1~16周 3C301 :4(6,7) 周文罡', 73, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (322, '中国科技大学', 'INY5205', '数字图像分析', '1~20周 3C304 :2(6,7) 谭立湘\n1~20周 3C304 :5(1,2) 谭立湘', 150, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (323, '中国科技大学', 'INY5207', '通信网的安全理论与技术', '1~15周 3C301 :5(6,7) 王培康\n1~15周 3C301 :5(8,9) 王培康', 118, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (324, '中国科技大学', 'INY5208', '现代密码学', '1~17周 3C104 :4(6,7) 胡红钢\n1~17周 3C104 :4(8,9) 胡红钢', 42, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (325, '中国科技大学', 'INY5306', '多速率数字信号处理', '1~15周 3A206 :3(3,4,5) 李辉', 4, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (326, '中国科技大学', 'INY5308', '信息检索与数据挖掘', '1~16周 3B202 :1(3,4,5) 俞能海\n1~16周 3B202 :1(3,4,5) 陈晓辉\n1~16周 3B202 :3(1,2) 俞能海\n1~16周 3B202 :3(1,2) 陈晓辉', 73, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (327, '中国科技大学', 'INY5313', '智能信息处理导论', '1~20周 3C201 :2(3,4,5) 尹东', 107, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (328, '中国科技大学', 'INY6303', '网络信息论', '1~12周 3A306 :2(3,4) 张文逸\n1~12周 3A306 :3(6,7) 张文逸\n1~12周 3A306 :5(1,2) 张文逸', 26, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (329, '中国科技大学', 'JC15212', '受众分析', '1~10周 2104 :7(6,7) 孔燕\n1~10周 2104 :7(8,9) 孔燕', 49, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (330, '中国科技大学', 'JC15229', '媒介经营与管理', '1~10周 2103 :7(1,2) 汤书昆\n1~10周 2103 :7(3,4) 汤书昆', 45, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (331, '中国科技大学', 'JC15230', '新闻传播学理论基础', '1~15周 2103 :7(6,7) 方刚\n1~15周 2103 :7(8,9) 方刚', 45, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (332, '中国科技大学', 'JC15232', '新媒体研究', '1~15周 2103 :6(1,2) 周荣庭\n1~15周 2103 :6(3,4) 周荣庭', 52, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (333, '中国科技大学', 'JC15233', '新闻传播政策、法规与伦理', '1~15周 2103 :6(6,7) 褚建勋\n1~15周 2103 :6(6,7) 徐奇智\n1~15周 2103 :6(6,7) 席正\n1~15周 2103 :6(8,9) 褚建勋\n1~15周 2103 :6(8,9) 徐奇智\n1~15周 2103 :6(8,9) 席正', 70, 75, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (334, '中国科技大学', 'JM10006', '民事诉讼法学', '1~18周 2509 :1(3,4,5) 王忠平', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (335, '中国科技大学', 'JM10007', '刑事诉讼法学', '1~18周 2509 :2(1,2,3) 秦洁', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (336, '中国科技大学', 'JM10010', '行政法与行政诉讼法学', '1~18周 2405 :4(6,7,8) 汤俪瑾', 37, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (337, '中国科技大学', 'JM10012', '国际法学', '1~18周 2309 :4(3,4,5) 刘颖华', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (338, '中国科技大学', 'JM10024', '经济法学', '1~18周 1301 :3(2,3,4,5) 杨辉', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (339, '中国科技大学', 'JM20029', '商标法理论与实务', '1~18周 2405 :5(3,4,5) 宋小燕', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (340, '中国科技大学', 'JM20034', '法务会计', '1~18周 5106 :3(19:00~21:30) 许绍定', 14, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (341, '中国科技大学', 'JM20039', '著作权理论与实务', '1~18周 2509 :1(6,7,8) 胡国宝', 37, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (342, '中国科技大学', 'JM20050', '专利法理论与实务', '1~18周 5407 :2(19:00~21:30) 宋澜', 39, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (343, '中国科技大学', 'JM20051', '商法学', '1~18周 2405 :5(6,7,8) 葛章志', 37, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (344, '中国科技大学', 'JM20053', '劳动与社会保障法学', '1~18周 5407 :2(6,7,8) 张姝', 37, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (345, '中国科技大学', 'LB05203a', '文献管理与信息分析', '1~16周 5302 :1(11,12,13) 罗昭锋', 200, 240, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (346, '中国科技大学', 'LW05111', '知识产权法', '2~17周 东区管理科研楼1108 :5(6,7,8,9,10) 宋伟', 7, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (347, '中国科技大学', 'LW05401', '知识产权', '3~11周 5104 :4(19:00~21:25) 宋澜', 73, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (348, '中国科技大学', 'LW05604', '法理学专题', '2~14周 2208 :4(2,3,4,5) 胡国宝\n15~16周 2208 :4(2,3,4,5) 张姝', 6, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (349, '中国科技大学', 'MA04243', '随机过程', '1~16周 5204 :2(11,12,13) 贺鑫\n1~16周 5204 :4(6,7) 贺鑫', 39, 92, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (350, '中国科技大学', 'MA04310', '调和分析', '1~16周 5306 :2(3,4,5) 郭经纬\n1~16周 5306 :5(3,4) 郭经纬', 20, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (351, '中国科技大学', 'MA04402', '李群李代数及其表示', '1~16周 5306 :1(8,9) 王琦\n1~16周 5306 :4(11,12,13) 王琦', 33, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (352, '中国科技大学', 'MA04403', '黎曼几何', '1~16周 5406 :2(3,4,5) 刘世平\n1~16周 5406 :4(8,9) 刘世平', 37, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (353, '中国科技大学', 'MA04404', '复几何', '1~16周  :2(6,7,8) 张川静\n1~16周 5306 :2(6,7,8) 张希\n1~16周  :4(1,2) 张川静\n1~16周 5306 :4(1,2) 张希', 19, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (354, '中国科技大学', 'MA04405', '黎曼曲面', '1~16周 5307 :3(6,7) 赵晨\n1~16周 5307 :5(8,9,10) 赵晨', 20, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (355, '中国科技大学', 'MA04406', '现代偏微分方程（微分方程II）', '　', 28, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (356, '中国科技大学', 'MA04407', '遍历理论初步', '1~16周 5307 :2(3,4,5) 邵松\n1~16周 5307 :4(6,7) 邵松', 23, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (357, '中国科技大学', 'MA05109', '代数数论', '1~16周 5103 :2(11,12,13) 陈轶骅\n1~16周 5103 :5(6,7) 陈轶骅', 33, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (358, '中国科技大学', 'MA05115', '高等数理统计', '1~14周 2606 :3(3,4,5) 张伟平\n1~14周 2606 :5(3,4,5) 张伟平', 53, 65, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (359, '中国科技大学', 'MA05130', '代数几何', '1~16周 5306 :1(6,7) 张磊\n1~16周 5306 :3(11,12,13) 张磊', 23, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (360, '中国科技大学', 'MA05139', '非线性方程数值方法', '1~16周 5307 :1(6,7) 徐宽\n1~16周 5307 :3(3,4,5) 徐宽', 11, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (361, '中国科技大学', 'MA05140', '极限理论', '1~16周 2603 :1(3,4,5) 胡治水\n1~16周 2606 :4(2,3,4,5) 胡治水', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (362, '中国科技大学', 'MA05163', '最优化算法', '1~16周 5103 :1(8,9) 杨周旺\n1~16周 5103 :3(11,12,13) 杨周旺', 71, 200, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (363, '中国科技大学', 'MA05171', '非线性发展方程', '1~16周 五205 :1(11,12,13) 赵立丰\n1~16周 五205 :4(6,7) 赵立丰', 5, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (364, '中国科技大学', 'MA05172', '非线性椭圆方程', '1~16周 5402 :3(11,12,13) 陈世炳\n1~16周 5402 :5(6,7) 陈世炳', 13, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (365, '中国科技大学', 'MA05176', '遍历理论', '1~16周 null :1(8,9,10) 黄文\n1~16周 null :1(8,9,10) 金磊\n1~16周 5201 :1(8,9,10) 黄文\n1~16周 5201 :1(8,9,10) 金磊\n1~16周 null :3(6,7) 黄文\n1~16周 null :3(6,7) 金磊\n1~16周 5201 :3(6,7) 黄文\n1~16周 5201 :3(6,7) 金磊', 18, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (366, '中国科技大学', 'MA05177', '多变量函数逼近论', '1~16周 5104 :2(6,7) 邓建松\n1~16周 5104 :5(8,9,10) 邓建松', 11, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (367, '中国科技大学', 'MA05422', '贝叶斯分析', '1~15周 5404 :2(1,2) 韦来生\n1~15周 5404 :3(6,7) 韦来生', 69, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (368, '中国科技大学', 'MA05427', '随机分析', '1~15周 5505 :2(6,7) 张曙光\n1~15周 5505 :2(6,7) 毕秀春\n1~15周 5505 :2(8,9) 张曙光\n1~15周 5505 :2(8,9) 毕秀春', 16, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (369, '中国科技大学', 'MA05446', '数字几何处理', '1~16周 5507 :2(11,12,13) 傅孝明\n1~16周 5507 :4(8,9) 傅孝明', 23, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (370, '中国科技大学', 'MA05454', '统计专题', '1~15周 5407 :1(8,9) 赵林城\n1~15周 5407 :4(8,9) 赵林城', 45, 55, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (371, '中国科技大学', 'MA06001', '代数学选讲', '1~16周 5506 :2(6,7) 陈小伍\n1~16周 5506 :7(11,12,13) 陈小伍', 6, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (372, '中国科技大学', 'MA06003', '分析学选讲', '1~16周 5306 :3(6,7) 任广斌\n1~16周 5306 :5(8,9,10) 任广斌', 6, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (373, '中国科技大学', 'MA06004', '微分几何选讲', '1~16周 2309 :2(9,10) 王兵\n1~16周 2307 :4(3,4,5) 王兵', 6, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (374, '中国科技大学', 'MA06006', '数学物理选讲', '1~16周 管理科研楼1308 :1(11,12,13) 左达峰\n1~16周 管理科研楼1418 :4(6,7) 左达峰', 11, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (375, '中国科技大学', 'MA06008', '科学计算选讲', '1~16周 5307 :2(8,9) 蒋琰\n1~16周 5307 :4(11,12,13) 蒋琰', 5, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (376, '中国科技大学', 'MA06010', '组合图论选讲', '1~16周 管理科研楼1208\n :2(14:00~16:30) 马杰\n1~16周 管理科研楼1208 :5(6,7) 马杰', 26, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (377, '中国科技大学', 'MA06432', '现代回归分析', '1~15周 2202 :1(3,4,5) 张伟平\n1~15周 2202 :1(3,4,5) 缪柏其\n1~15周 2202 :4(8,9,10) 张伟平\n1~15周 2202 :4(8,9,10) 缪柏其', 12, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (378, '中国科技大学', 'MA06487', '随机分析选讲', '1~16周 管理科研楼1308 :5(1,2) 薄立军\n1~16周 管理科研楼1308 :5(3,4,5) 薄立军', 57, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (379, '中国科技大学', 'MBA6006', '商业计划与创业实践', '2~5周 S205 :5(18:30~21:45) 丁斌\n2~5周 S205 :6(18:30~21:45) 丁斌', 60, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (380, '中国科技大学', 'MBA8007', '现代领导方法与艺术', '13~15周 S205 :6(1,2) 丁栋虹\n13~15周 null :6(3,4) 丁栋虹\n13~15周 null :6(6,7) 丁栋虹\n13~15周 null :6(8,9) 丁栋虹\n13~15周 S205 :7(1,2) 丁栋虹\n13~15周 null :7(3,4) 丁栋虹\n13~15周 null :7(6,7) 丁栋虹\n13~15周 null :7(8,9) 丁栋虹', 7, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (381, '中国科技大学', 'MBA8012', '消费者行为学', '2~5周 S205 :6(08:30~11:45) 黄茜\n2~5周 S205 :7(08:30~11:30) 黄茜\n2~5周 S205 :7(08:30~11:45) 黄茜', 36, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (382, '中国科技大学', 'MBA8012', '消费者行为学', '6~9周 S205 :6(08:30~11:45) 黄茜\n6~9周 S205 :6(4,5) 黄茜\n6~9周 S205 :7(08:30~11:45) 黄茜\n6~9周 S205 :7(4,5) 黄茜', 10, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (383, '中国科技大学', 'ME15201', '高等固体力学', '1~16周 3A112 :2(1,2) 何陵辉\n1~16周 3A110 :5(3,4,5) 何陵辉', 52, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (384, '中国科技大学', 'ME15203', '高等实验固体力学', '1~16周  :1(3,4) 缪泓\n1~16周  :1(3,4) 汪洋\n1~16周 3A210 :1(3,4) 宣守虎\n1~16周  :4(3,4,5) 缪泓\n1~16周  :4(3,4,5) 汪洋\n1~16周 3A210 :4(3,4,5) 宣守虎', 46, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (385, '中国科技大学', 'ME15216', '结构动力学', '1~16周 3A102 :1(6,7) 李子然\n1~16周 3A102 :3(1,2) 李子然', 22, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (386, '中国科技大学', 'ME16203', '固体力学专著阅读', '2~15周 3A104 :1(11,12) 胡小方', 11, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (387, '中国科技大学', 'ME25202', '计算流体力学', '1~16周 3A407 :1(3,4,5) 刘难生\n1~16周 3A407 :3(6,7) 刘难生', 52, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (388, '中国科技大学', 'ME25204', '高等渗流力学', '1~16周 3A318 :2(3,4) 徐献芝\n1~16周 3A318 :5(3,4,5) 徐献芝', 23, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (389, '中国科技大学', 'ME25215', '高超声速空气动力学', '1~15周 3A102 :2(8,9,10) 杨基明', 21, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (390, '中国科技大学', 'ME25218', '微流体力学', '1~14周 3A109 :1(8,9,10) 秦丰华', 22, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (391, '中国科技大学', 'ME25221a', '油藏数值模拟', '1~15周 3A408 :3(1,2) 卢德唐\n1~15周 3A408 :5(6,7) 卢德唐', 7, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (392, '中国科技大学', 'ME26202', '流体力学专著阅读', '2~15周  :4(8,9) 司廷', 34, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (393, '中国科技大学', 'ME35201', '高等计算工程力学', '1~16周 3A209 :2(6,7) 赵凯\n1~16周 3A209 :5(3,4,5) 赵凯', 14, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (394, '中国科技大学', 'ME35203', '高等实验工程力学', '1~16周 3A309 :1(3,4,5) 郑航\n1~16周 3A309 :1(3,4,5) 马宏昊\n1~16周 3A309 :4(1,2) 郑航\n1~16周 3A309 :4(1,2) 马宏昊', 15, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (395, '中国科技大学', 'ME35210', '材料动力学', '1~16周 3A207 :1(1,2) 徐松林\n1~16周 3A207 :4(6,7,8) 徐松林', 13, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (396, '中国科技大学', 'ME35213', '波动力学', '1~16周 3A406 :2(6,7) 黄生洪\n1~16周 3A406 :5(6,7,8) 黄生洪', 8, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (397, '中国科技大学', 'ME36202', '工程力学专著阅读', '2~16周 3A106 :3(11,12) 文鹤鸣', 11, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (398, '中国科技大学', 'ME45213', '炸药理论和爆炸技术', '1~15周 3A206 :2(1,2) 沈兆武\n1~15周 3A206 :5(1,2) 沈兆武', 5, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (399, '中国科技大学', 'MS15201', '材料物理', '1~16周 5303 :2(6,7) 季恒星\n1~16周 5303 :4(3,4,5) 季恒星', 180, 180, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (400, '中国科技大学', 'MS15204', '薄膜材料科学与技术', '1~15周 5201 :2(1,2) 傅正平\n1~15周 5201 :4(6,7) 傅正平', 113, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (401, '中国科技大学', 'MS15205', '晶体材料制备原理与技术', '1~15周 1202 :1(6,7) 刘伟丰\n1~15周 1202 :3(3,4) 刘伟丰', 69, 70, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (402, '中国科技大学', 'MS15207', '固体材料结构学', '1~15周 1302 :1(3,4) 高琛\n1~15周 1302 :1(3,4) 张文华\n1~15周 1302 :1(3,4) 周仕明\n1~15周 1302 :3(6,7) 高琛\n1~15周 1302 :3(6,7) 张文华\n1~15周 1302 :3(6,7) 周仕明', 43, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (403, '中国科技大学', 'MS15220', '固体物理', '1~10周 5107 :3(1,2) 朱彦武\n1~10周 5107 :5(3,4) 朱彦武', 21, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (404, '中国科技大学', 'MS25202', '材料中的速率过程', '1~15周 2321 :5(3,4) 陈初升', 90, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (405, '中国科技大学', 'MS25204', '陶瓷科学与工艺学', '1~15周 2309 :2(3,4) 刘敏\n1~15周 2309 :4(1,2) 刘敏', 29, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (406, '中国科技大学', 'MS25205', '固体化学', '1~15周 2306 :1(6,7) 余彦\n1~15周 2306 :1(6,7) 初宝进\n1~15周 2306 :3(3,4) 余彦\n1~15周 2306 :3(3,4) 初宝进', 36, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (407, '中国科技大学', 'MS25206', '材料力学与热学性能', '1~15周 1301 :2(1,2) 刘卫\n1~15周 1301 :4(6,7) 刘卫', 87, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (408, '中国科技大学', 'MS25209', '化学气相淀积化学与薄膜工艺', '1~13周 5203 :5(6,7,8) 孟广耀', 200, 200, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (409, '中国科技大学', 'NU15203', '电子储存环物理', '1~16周 3A104 :5(8,9,10) 罗箐', 18, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (410, '中国科技大学', 'NU15214', '加速器束流诊断与控制', '1~16周 3A104 :1(8,9,10) 孙葆根\n1~16周 3A104 :1(8,9,10) 刘功发', 13, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (411, '中国科技大学', 'NU16204', '直线加速器', '1~16周 3A209 :4(7,8,9) 裴元吉', 17, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (412, '中国科技大学', 'NU16206', '文献阅读与分析', '1~16周 3A203 :2(7,8,9) 宋礼', 29, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (413, '中国科技大学', 'NU26201', '同步辐射应用进展', '9~16周 3A109 :2(3,4,5) 韦世强\n9~16周 3A109 :2(3,4,5) 姚涛\n9~16周 3A109 :5(3,4) 韦世强\n9~16周 3A109 :5(3,4) 姚涛', 75, 75, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (414, '中国科技大学', 'NU35202', '反应堆热工水力学分析实例', '2~15周  :2(8,9,10) 陈红丽', 30, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (415, '中国科技大学', 'NU45701a', '核材料实验方法', '2~16周 3A105 :1(6,7) 彭蕾\n2~16周 3A105 :4(6,7) 彭蕾', 22, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (416, '中国科技大学', 'NU56204', '放疗计划与验证', '2~15周 3A213 :1(6,7,8) 吴爱东', 71, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (417, '中国科技大学', 'PA05102', '公共经济学', '2~16周 2308 :5(2,3,4,5) 臧武芳', 4, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (418, '中国科技大学', 'PA05103', '公共管理理论', '2~16周 5207 :4(7,8,9,10) 宋伟', 45, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (419, '中国科技大学', 'PA05505', '汉语听说与中国文化', '2~15周 5506 :3(2,3,4) 刘颖华', 21, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (420, '中国科技大学', 'PA05506', '公共管理研究理论', '2~15周 5305 :5(7,8,9) 彭小宝', 22, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (421, '中国科技大学', 'PA06102', '公共管理前沿理论', '2~18周 5406 :2(6,7,8,9,10) 宋伟', 40, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (422, '中国科技大学', 'PA06503', '管理统计与软件分析', '2~15周 2309 :1(6,7,8) 高亮', 19, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (423, '中国科技大学', 'PA06504', '创业与创新管理', '2~15周 2409 :4(2,3,4) 赵树良', 45, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (424, '中国科技大学', 'PA06505', '公共管理实证研究方法', '2~15周 5205 :1(2,3,4) 张学和', 19, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (425, '中国科技大学', 'PA06506', '中国的社会保障管理', '2~15周 5206 :2(2,3,4) 杨辉', 17, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (426, '中国科技大学', 'PA06507', '创新研究文献研读', '2~15周 5305 :5(3,4,5) 孙启贵', 19, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (427, '中国科技大学', 'PE04001', '羽毛球', '1~16周 西区气膜馆 :4(3,4) 司友志', 25, 26, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (428, '中国科技大学', 'PE04001', '羽毛球', '1~16周 东区机械厂 :4(8,9) 杨旭东', 24, 24, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (429, '中国科技大学', 'PE04001', '羽毛球', '1~16周 西区气膜馆 :2(8,9) 杨旭东', 26, 26, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (430, '中国科技大学', 'PE04002', '乒乓球', '1~16周 东区体育中心 :3(3,4) 赵曼赟', 18, 28, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (431, '中国科技大学', 'PE04002', '乒乓球', '1~16周 东区体育中心 :5(3,4) 胡洋', 21, 28, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (432, '中国科技大学', 'PE04003', '国际体育舞蹈（男）', '1~16周 东区体育中心406 :1(8,9) 朱信龙', 24, 28, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (433, '中国科技大学', 'PE04004', '国际体育舞蹈（女）', '1~16周 东区体育中心406 :1(8,9) 徐雄杰', 26, 28, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (434, '中国科技大学', 'PE04005', '网球', '1~16周 东区网球场 :4(3,4) 王洪武', 11, 26, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (435, '中国科技大学', 'PE04005', '网球', '1~16周 西区网球场 :4(3,4) 刘德海', 20, 26, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (436, '中国科技大学', 'PE04005', '网球', '1~16周 东区网球场 :2(8,9) 孙劲松', 26, 26, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (437, '中国科技大学', 'PH15203', '弦理论I', '2~16周 5305 :2(3,4,5) 卢建新\n2~16周 5305 :4(3,4,5) 卢建新', 20, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (438, '中国科技大学', 'PH15303', '量子场论(Ⅱ)', '1~16周 2210 :3(3,4,5) 肖志广\n1~16周 2210 :3(3,4,5) 高道能\n1~16周 2210 :5(1,2) 肖志广\n1~16周 2210 :5(1,2) 高道能', 34, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (439, '中国科技大学', 'PH16215', '弦理论与宇宙学专题III', '1~16周 5207 :1(8,9,10) 李明哲\n1~16周 5207 :3(6,7) 李明哲', 11, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (440, '中国科技大学', 'PH25201', '对撞物理', '1~16周 5506 :1(6,7,8) 彭海平\n1~16周 5506 :5(6,7) 彭海平', 26, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (441, '中国科技大学', 'PH25221', '医学影像技术', '2~16周 2103 :1(3,4) 朱磊\n2~16周 2103 :3(6,7) 朱磊', 40, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (442, '中国科技大学', 'PH26202', '超对称理论', '1~16周 1102 :2(3,4,5) 张仁友\n1~16周 1102 :4(6,7) 张仁友', 18, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (443, '中国科技大学', 'PH26204', '粒子物理实验前沿', '1~16周 2621 :1(3,4) 赵政国\n1~16周 2621 :1(3,4) 吴雨生\n1~16周 2621 :3(3,4,5) 赵政国\n1~16周 2621 :3(3,4,5) 吴雨生', 24, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (444, '中国科技大学', 'PH35217', '现代原子物理', '1~16周 5207 :2(6,7) 蒋蔚\n1~16周 5207 :2(6,7) 卢征天\n1~16周 5207 :5(8,9,10) 蒋蔚\n1~16周 5207 :5(8,9,10) 卢征天', 72, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (445, '中国科技大学', 'PH35219', '量子力学导引', '1~16周 2304 :2(8,9,10) 林毅恒', 29, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (446, '中国科技大学', 'PH45201', '等离子体电磁流体力学', '2~16周 5106 :2(3,4,5) 杨维纮\n2~16周 5106 :5(3,4,5) 杨维纮', 61, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (447, '中国科技大学', 'PH45210', '非线性等离子体物理导论', '1~16周 2306 :1(8,9) 秦宏\n1~16周 2306 :1(8,9) 李弘\n1~16周 2306 :4(8,9,10) 秦宏\n1~16周 2306 :4(8,9,10) 李弘', 37, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (448, '中国科技大学', 'PH45211', '等离子体动理学', '1~16周 2309 :2(6,7,8) 马锦秀\n1~16周 2309 :4(6,7) 马锦秀', 45, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (449, '中国科技大学', 'PH46209', '磁约束聚变物理原理', '3~18周 2505 :1(3,4,5) 庄革\n3~18周 2505 :1(3,4,5) 谢锦林\n3~18周 2505 :3(3,4,5) 庄革\n3~18周 2505 :3(3,4,5) 谢锦林', 35, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (450, '中国科技大学', 'PH46217', '前沿等离子体物理与技术', '1~16周 2403 :1(6,7) 孙玄\n1~16周 2403 :4(3,4,5) 孙玄', 14, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (451, '中国科技大学', 'PH54402', '群论及其应用', '2~16周 5205 :3(1,2) 段昌奎\n2~16周 5205 :5(3,4) 段昌奎', 53, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (452, '中国科技大学', 'PH55201', '高等固体物理', '1~16周 5403 :1(6,7,8) 杨金龙\n1~16周 5403 :1(6,7,8) 李震宇\n1~16周 5403 :3(6,7) 杨金龙\n1~16周 5403 :3(6,7) 李震宇', 142, 175, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (453, '中国科技大学', 'PH55208', '固体物理实验方法 (II)', '1~16周 5504 :3(3,4,5) 王冠中\n1~16周 5504 :5(6,7) 王冠中', 151, 160, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (454, '中国科技大学', 'PH55215', '固体中的光跃迁', '1~16周 5507 :2(8,9) 楼立人\n1~16周 5507 :5(8,9) 楼立人', 30, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (455, '中国科技大学', 'PH55221', '物质成份的光谱分析', '1~16周 5202 :2(11,12) 余华明\n1~16周 5202 :2(11,12) 孙梅', 156, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (456, '中国科技大学', 'PH55231(A)', '研究生扫描电镜实验培训', '　', 0, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (457, '中国科技大学', 'PH55232', '研究生透射电镜实验培训', '　', 0, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (458, '中国科技大学', 'PH65211', '现代医疗仪器', '1~17周 3C203 :5(6,7) 陶进绪\n1~17周 3C203 :5(8,9) 陶进绪', 5, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (459, '中国科技大学', 'PH75201', '量子电子学', '1~16周 1202 :2(1,2) 鲁拥华\n1~16周 1202 :5(6,7,8) 鲁拥华', 51, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (460, '中国科技大学', 'PH75202', '量子光学', '1~16周 5401 :1(6,7) 孙方稳\n1~16周 5401 :3(3,4,5) 孙方稳', 148, 170, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (461, '中国科技大学', 'PH75203', '非线性光学', '1~16周 1201 :1(1,2) 任希锋\n1~16周 1201 :1(1,2) 柳必恒\n1~16周 1201 :4(3,4,5) 任希锋\n1~16周 1201 :4(3,4,5) 柳必恒', 154, 180, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (462, '中国科技大学', 'PH75205', '高等激光技术', '1~16周 5404 :1(3,4,5) 王声波\n1~16周 5404 :3(1,2) 王声波', 166, 190, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (463, '中国科技大学', 'PH75211', '统计光学', '1~15周 5102 :1(8,9) 齐开国\n1~15周 5102 :4(6,7) 齐开国', 43, 90, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (464, '中国科技大学', 'PH75212', '计算物理', '1~16周 5103 :2(8,9,10) 龚明\n1~16周 5103 :5(1,2) 龚明', 42, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (465, '中国科技大学', 'PH75216', '冷原子物理', '1~16周 5406 :3(6,7) 易为\n1~16周 5406 :5(3,4,5) 易为', 31, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (466, '中国科技大学', 'PH75220', '半导体光学', '1~16周 1301 :2(6,7) 魏渭\n1~16周 1301 :4(8,9,10) 魏渭', 109, 125, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (467, '中国科技大学', 'PI05102', '微机电系统设计与制造', '1~16周 3A305 :3(3,4) 赵钢\n1~16周 3A305 :3(3,4) 褚家如\n1~16周 3A305 :5(1,2) 赵钢\n1~16周 3A305 :5(1,2) 褚家如', 60, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (468, '中国科技大学', 'PI05103', '数据采集与信号分析', '1~16周 3A206 :1(1,2) 李为民\n1~16周 3A206 :3(1,2) 李为民', 38, 75, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (469, '中国科技大学', 'PI05303', '微光学', '1~16周 3A113 :4(3,4,5) 王克逸', 83, 120, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (470, '中国科技大学', 'PI05305', '现代传感技术', '1~16周 3B201 :1(3,4,5) 杨圣', 90, 150, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (471, '中国科技大学', 'PI05306', '纳米技术基础', '1~16周 3A112 :2(6,7) 陈宇航\n1~16周 3A112 :4(6,7) 陈宇航', 25, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (472, '中国科技大学', 'PI05313', '激光原理及应用', '1~16周 3A102 :3(6,7) 李静', 82, 82, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (473, '中国科技大学', 'PI06201', '现代仪器科学理论与技术进展', '1~16周 3A106 :5(8,9,10) 冯志华\n1~16周 3A106 :5(8,9,10) 王克逸', 25, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (474, '中国科技大学', 'PL15202', '中国美学原著选读', '1~18周 2604 :1(1,2,3,4) 张丛林', 13, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (475, '中国科技大学', 'PL15217', '逻辑学', '1~18周 2302 :1(7,8,9) 张旭', 14, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (476, '中国科技大学', 'PL15218', '文化哲学', '1~18周 2608 :3(2,3,4) 方贤绪', 11, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (477, '中国科技大学', 'PL15226', '新媒体美学', '1~12周 2306 :2(8,9,10) 张燕翔', 14, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (478, '中国科技大学', 'PL16201', '文化哲学前沿问题专题研究', '1~16周 2208 :5(1,2) 汤书昆\n1~16周 2208 :5(1,2) 周荣庭\n1~16周 2208 :5(3,4) 汤书昆\n1~16周 2208 :5(3,4) 周荣庭', 14, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (479, '中国科技大学', 'PL25201', '科学的历史与文化研究', '1~18周 2202 :2(2,3,4,5) 史玉民', 10, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (480, '中国科技大学', 'PL25205', '科学社会学', '1~18周 2302 :5(2,3,4,5) 汪凯', 7, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (481, '中国科技大学', 'PL25206', '科技方法论与创造学', '1~18周 2504 :4(2,3,4,5) 刘仲林', 6, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (482, '中国科技大学', 'PL25210a', '技术哲学与工程哲学', '1~18周 2302 :1(2,3,4,5) 王高峰', 6, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (483, '中国科技大学', 'PL25218a', '科技伦理学', '1~18周 2407 :1(6,7,8,9) 孔燕', 10, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (484, '中国科技大学', 'PL25219', '现代交叉科学研究', '1~18周 2202 :5(6,7,8) 叶斌', 7, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (485, '中国科技大学', 'PL26202', '专业文献研读', '1~18周  :4(7,8,9,10) 史玉民', 20, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (486, '中国科技大学', 'PM05102', '机械振动理论', '1~16周 3A113 :2(1,2) 毛磊\n1~16周 3A113 :4(1,2) 毛磊', 36, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (487, '中国科技大学', 'PM05302', '机械系统建模与动态分析', '1~16周 3A102 :2(3,4,5) 张世武', 38, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (488, '中国科技大学', 'PM05304', '优化设计', '1~16周 3C204 :1(6,7,8) 刘志刚', 46, 100, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (489, '中国科技大学', 'PM05308', '机械故障诊断学', '1~16周 3C204 :5(2,3,4) 干方建', 5, 140, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (490, '中国科技大学', 'PM05310', '实用工程软件', '1~16周 3A112 :5(6,7,8) 邵鹏飞', 44, 70, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (491, '中国科技大学', 'PS15203', '马克思主义哲学研究', '1~18周 2502 :5(2,3,4,5) 叶政', 7, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (492, '中国科技大学', 'PS5208', '马克思主义法哲学', '1~18周 2202 :4(2,3,4,5) 汤俪瑾', 7, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (493, '中国科技大学', 'PS5209', '马克思主义经济哲学', '1~18周 2302 :2(6,7,8,9) 张顺铃', 15, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (494, '中国科技大学', 'SE05101', '工程硕士政治', '　', 93, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (495, '中国科技大学', 'SE05112', '组合数学', '　', 91, 110, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (496, '中国科技大学', 'SE05203', '高级数据库技术', '　', 69, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (497, '中国科技大学', 'SE15201', '火灾学(2)', '1~16周 3A402 :1(1,2,3,4) 宋卫国\n1~16周 3A402 :1(1,2,3,4) 陈海翔', 32, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (498, '中国科技大学', 'SE15204a', '火灾化学', '1~16周 3A318 :3(11,12,13) 宋磊', 82, 82, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (499, '中国科技大学', 'SE15206a', '火灾风险评估及性能化设计', '1~16周 3A102 :1(11,12,13) 李元洲', 80, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (500, '中国科技大学', 'SE15222', '危险化学品安全概论', '1~16周 3A102 :3(3,4,5) 宗若雯', 70, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (501, '中国科技大学', 'SE15223', '灭火技术原理及应用', '1~16周 3A407 :1(6,7,8,9) 倪小敏\n1~16周 3A407 :1(6,7,8,9) 王喜世', 36, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (502, '中国科技大学', 'SE15227a', '流动及燃烧的模型与工程应用软件', '1~16周 3A317 :4(6,7,8,9) 汪箭\n1~16周 3A317 :4(6,7,8,9) 周德闯', 24, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (503, '中国科技大学', 'SE15229', '安全工程材料制备与应用基础', '1~16周 3A412 :4(2,3,4,5) 宋磊\n1~16周 3A412 :4(2,3,4,5) 邢伟义\n1~16周 3A412 :4(2,3,4,5) 王鑫', 15, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (504, '中国科技大学', 'SE15230', '能源火灾安全理论及方法学', '1~16周 3A409 :2(2,3,4,5) 孙金华\n1~16周 3A409 :2(2,3,4,5) 王青松\n1~16周 3A409 :2(2,3,4,5) 段强领', 22, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (505, '中国科技大学', 'SE15231', '安全文化学', '1~16周 3A102 :4(11,12,13) 谢启源', 37, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (506, '中国科技大学', 'SE16201', '公共安全学', '1~16周 3A109 :2(8,9,10) 张和平\n1~16周 3A109 :2(8,9,10) 程旭东', 40, 50, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (507, '中国科技大学', 'SE16202', '湍流反应流数值模拟若干新方法', '1~16周 3A109 :5(6,7,8,9) 蒋勇\n1~16周 3A109 :5(6,7,8,9) 雷佼', 40, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (508, '中国科技大学', 'SH05102', '科学思想史', '1~18周 2607 :2(1,2) 胡化凯\n1~18周 2607 :2(3,4) 胡化凯', 13, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (509, '中国科技大学', 'SH05105', '西方科技史', '1~18周 2302 :3(1,2) 石云里\n1~18周 2302 :3(3,4) 石云里', 15, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (510, '中国科技大学', 'SH05110', '中国数学史', '1~18周 2202 :5(1,2) 柯资能\n1~18周 2202 :5(3,4) 柯资能', 5, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (511, '中国科技大学', 'SH05120', '科技政策史', '1~15周 2507 :4(1,2) 付邦红\n1~15周 2507 :4(3,4) 付邦红', 5, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (512, '中国科技大学', 'SH05128', '口述历史理论与实践', '1~18周 2402 :1(1,2) 熊卫民\n1~18周 2402 :1(3,4) 熊卫民', 6, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (513, '中国科技大学', 'SH05131', '历史方法论', '　', 5, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (514, '中国科技大学', 'SH05132', '美国科技史', '　', 7, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (515, '中国科技大学', 'SH06011', '西方科技史前沿', '1~10周 2407 :4(6,7) 石云里\n1~10周 2407 :4(8,9) 石云里', 6, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (516, '中国科技大学', 'SH06201', '有机质文物保护前沿', '1~10周  :2(6,7) 龚德才\n1~10周  :2(8,9) 龚德才', 3, 20, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (517, '中国科技大学', 'SH15234', '古代纺织品保护技术', '1~15周  :1(1,2) 龚德才\n1~15周  :1(3,4) 龚德才', 10, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (518, '中国科技大学', 'T055100105', '中外翻译简史', '2~18周 1102 :6(08:30~11:45) 范小红', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (519, '中国科技大学', 'T055100106', '翻译批评与欣赏', '2~18周 1102 :7(6,7,8,9) 任爱军', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (520, '中国科技大学', 'T055100107', '计算机辅助翻译', '2~18周 1102 :7(08:30~11:45) 李萌涛', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (521, '中国科技大学', 'T055100108', '高级文学翻译', '2~18周 1301 :6(6,7,8,9) 何朝阳', 0, 0, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (522, '中国科技大学', 'TS15202', '实验理论和测量仪器', '1~16周 3A312 :2(3,4) 刘明侯\n1~16周 3A312 :4(3,4,5) 刘明侯', 61, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (523, '中国科技大学', 'TS15204', '量热技术和热物性测定', '1~16周 3A318 :3(3,4,5) 张海峰', 73, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (524, '中国科技大学', 'TS15207', '热传导原理', '1~18周 3A212 :5(6,7,8) 胡汉平', 70, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (525, '中国科技大学', 'TS15209', '相变贮能：理论和应用', '1~16周 3A205 :2(8,9,10) 焦冬生', 55, 55, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (526, '中国科技大学', 'TS16201', '湍流燃烧', '1~18周 3A207 :1(6,7,8) 叶桃红', 26, 40, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (527, '中国科技大学', 'TS16212', '热科学经典阅读', '　', 30, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (528, '中国科技大学', 'TS24201', '低温等离子体物理及应用', '1~16周  :1(3,4,5) 夏维东\n1~16周 3A110 :1(3,4,5) 李辉', 39, 60, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (529, '中国科技大学', 'TS25201', '高等传热学', '1~16周 3A211 :3(1,2) 程晓舫\n1~16周 3A211 :5(3,4,5) 程晓舫', 77, 80, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (530, '中国科技大学', 'WB05101', '中国概况', '2~18周 2202 :3(6,7)\n2~18周 2202 :7(11,12,13)', 32, 33, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (531, '中国科技大学', 'WB05103', '中级汉语', '2~18周 2608 :2(11,12)\n2~18周 2608 :4(11,12)', 21, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (532, '中国科技大学', 'WB05103', '中级汉语', '2~18周 2308 :2(11,12)\n2~18周 2308 :4(11,12)', 21, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (533, '中国科技大学', 'WB05103', '中级汉语', '2~18周 2408 :1(11,12)\n2~18周 2408 :3(11,12)', 21, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (534, '中国科技大学', 'WB05103', '中级汉语', '2~18周 2308 :1(11,12)\n2~18周 2308 :3(11,12)', 22, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (535, '中国科技大学', 'WB05103', '中级汉语', '2~18周 2208 :2(11,12)\n2~18周 2208 :4(11,12)', 20, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (536, '中国科技大学', 'WB05103', '中级汉语', '2~18周 2208 :1(11,12)\n2~18周 2208 :3(11,12)', 22, 25, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (537, '中国科技大学', 'WB05104', '高级汉语', '2~18周 2408 :2(11,12)\n2~18周 2408 :5(11,12)', 23, 30, '-', ' ', 'img/course1.jpg');
INSERT INTO `course` VALUES (538, '东南大学', 'B000104', '数学模型                ', '第3-16周; 星期三-上午2,上午3,上午4,上午5九龙湖纪忠楼YF101陈平', 107, 150, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (539, '东南大学', 'B000107', '日语（二外）              ', '第3-16周; 星期一-上午1,上午2,上午3 星期三-上午1,上午2,上午3九龙湖纪忠楼Y204郑小翔', 6, 50, '-', '', 'img/course2.jpg');
INSERT INTO `course` VALUES (540, '东南大学', 'B000109', '德语（二外）              ', '第3-16周; 星期一-上午1,上午2,上午3 星期三-上午1,上午2,上午3九龙湖纪忠楼Y207刘艺', 0, 50, '-', '', 'img/course3.jpg');
INSERT INTO `course` VALUES (541, '东南大学', 'B000113', '中国概况                ', '第3-14周; 星期一-下午1,下午2,下午3,下午4待定胡继成', 3, 100, '-', '', 'img/course4.jpg');
INSERT INTO `course` VALUES (542, '东南大学', 'B000113', '中国概况                ', '第3-14周; 星期四-上午1,上午2,上午3,上午4九龙湖纪忠楼YF201胡继成', 21, 140, '-', '', 'img/course5.jpg');
INSERT INTO `course` VALUES (543, '东南大学', 'B000114', '高等数值分析（英文授课）        ', '第3-14周; 星期三-下午1,下午2,下午3,下午4中山院210曹婉容', 0, 70, '-', '', 'img/course6.jpg');
INSERT INTO `course` VALUES (544, '东南大学', 'B000201', '中国马克思主义与当代          ', '第3-14周; 星期一-下午1,下午2,下午3礼东101刘敏', 1, 130, '-', '', 'img/course7.jpg');
INSERT INTO `course` VALUES (545, '东南大学', 'B000201', '中国马克思主义与当代          ', '第3-14周; 星期三-下午1,下午2,下午3礼东101刘敏', 2, 130, '-', '', 'img/course8.jpg');
INSERT INTO `course` VALUES (546, '东南大学', 'B000201', '中国马克思主义与当代          ', '第3-14周; 星期一-下午1,下午2,下午3九龙湖纪忠楼YF102王兵', 10, 130, '-', '', 'img/course9.jpg');
INSERT INTO `course` VALUES (547, '东南大学', 'B000201', '中国马克思主义与当代          ', '第3-14周; 星期三-下午1,下午2,下午3九龙湖纪忠楼YF102刘魁', 3, 130, '-', '', 'img/course10.jpg');
INSERT INTO `course` VALUES (548, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期五-上午1,上午2九龙湖纪忠楼Y310外籍教师C', 1, 40, '-', '', 'img/course11.jpg');
INSERT INTO `course` VALUES (549, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期五-上午3,上午4九龙湖纪忠楼Y310外籍教师C', 3, 40, '-', '', 'img/course12.jpg');
INSERT INTO `course` VALUES (550, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午3,上午4九龙湖纪忠楼Y311盛雪梅', 3, 40, '-', '', 'img/course13.jpg');
INSERT INTO `course` VALUES (551, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午1,上午2九龙湖纪忠楼Y311盛雪梅', 1, 40, '-', '', 'img/course14.jpg');
INSERT INTO `course` VALUES (552, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午1,上午2九龙湖纪忠楼Y406外籍教师B', 0, 40, '-', '', 'img/course15.jpg');
INSERT INTO `course` VALUES (553, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午3,上午4九龙湖纪忠楼Y406外籍教师B', 1, 40, '-', '', 'img/course16.jpg');
INSERT INTO `course` VALUES (554, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期五-上午3,上午4九龙湖纪忠楼Y407陈峥嵘', 1, 40, '-', '', 'img/course17.jpg');
INSERT INTO `course` VALUES (555, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期五-上午1,上午2九龙湖纪忠楼Y407陈峥嵘', 0, 40, '-', '', 'img/course18.jpg');
INSERT INTO `course` VALUES (556, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午1,上午2中山院306外籍教师A', 1, 40, '-', '', 'img/course19.jpg');
INSERT INTO `course` VALUES (557, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期二-上午1,上午2中山院306外籍教师A', 0, 40, '-', '', 'img/course20.jpg');
INSERT INTO `course` VALUES (558, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-下午1,下午2中山院306外籍教师A', 1, 40, '-', '', 'img/course21.jpg');
INSERT INTO `course` VALUES (559, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期二-上午3,上午4中山院306外籍教师A', 0, 40, '-', '', 'img/course22.jpg');
INSERT INTO `course` VALUES (560, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期二-下午1,下午2中山院306外籍教师A', 2, 40, '-', '', 'img/course23.jpg');
INSERT INTO `course` VALUES (561, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午3,上午4中山院306外籍教师A', 6, 40, '-', '', 'img/course24.jpg');
INSERT INTO `course` VALUES (562, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午3,上午4中山院310李鲁', 0, 40, '-', '', 'img/course25.jpg');
INSERT INTO `course` VALUES (563, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期二-下午1,下午2中山院310李鲁', 1, 40, '-', '', 'img/course26.jpg');
INSERT INTO `course` VALUES (564, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-下午1,下午2中山院310李鲁', 2, 40, '-', '', 'img/course27.jpg');
INSERT INTO `course` VALUES (565, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期四-上午1,上午2中山院310李鲁', 0, 40, '-', '', 'img/course28.jpg');
INSERT INTO `course` VALUES (566, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期二-上午3,上午4中山院310李鲁', 6, 40, '-', '', 'img/course29.jpg');
INSERT INTO `course` VALUES (567, '东南大学', 'B000203', '博士英语                ', '第3-16周; 星期二-上午1,上午2中山院310李鲁', 1, 40, '-', '', 'img/course30.jpg');
INSERT INTO `course` VALUES (568, '东南大学', 'S000115', '随机过程                ', '第1-12周; 星期四-下午1,下午2,下午3礼东101乔会杰', 1, 120, '-', '', 'img/course31.jpg');
INSERT INTO `course` VALUES (569, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院311蔡旭东', 45, 50, '-', '', 'img/course32.jpg');
INSERT INTO `course` VALUES (570, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院311蔡旭东', 42, 50, '-', '', 'img/course33.jpg');
INSERT INTO `course` VALUES (571, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院210蒋欣欣', 44, 50, '-', '', 'img/course34.jpg');
INSERT INTO `course` VALUES (572, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院211邢国垣', 42, 50, '-', '', 'img/course35.jpg');
INSERT INTO `course` VALUES (573, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院211邢国垣', 42, 50, '-', '', 'img/course36.jpg');
INSERT INTO `course` VALUES (574, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院214卢凤娟', 42, 50, '-', '', 'img/course37.jpg');
INSERT INTO `course` VALUES (575, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院214卢凤娟', 44, 50, '-', '', 'img/course38.jpg');
INSERT INTO `course` VALUES (576, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院301刘彬', 44, 50, '-', '', 'img/course39.jpg');
INSERT INTO `course` VALUES (577, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院301刘彬', 45, 50, '-', '', 'img/course40.jpg');
INSERT INTO `course` VALUES (578, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院302翁建秋', 44, 50, '-', '', 'img/course41.jpg');
INSERT INTO `course` VALUES (579, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院302翁建秋', 41, 50, '-', '', 'img/course42.jpg');
INSERT INTO `course` VALUES (580, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院105吴婷', 43, 50, '-', '', 'img/course43.jpg');
INSERT INTO `course` VALUES (581, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院105吴婷', 43, 50, '-', '', 'img/course44.jpg');
INSERT INTO `course` VALUES (582, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院106李黎', 42, 50, '-', '', 'img/course45.jpg');
INSERT INTO `course` VALUES (583, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院106李黎', 42, 50, '-', '', 'img/course46.jpg');
INSERT INTO `course` VALUES (584, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院111孙瑾', 42, 50, '-', '', 'img/course47.jpg');
INSERT INTO `course` VALUES (585, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院111孙瑾', 42, 50, '-', '', 'img/course48.jpg');
INSERT INTO `course` VALUES (586, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院112孙书兰', 42, 50, '-', '', 'img/course49.jpg');
INSERT INTO `course` VALUES (587, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院112孙书兰', 41, 50, '-', '', 'img/course50.jpg');
INSERT INTO `course` VALUES (588, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院201柳建玲', 42, 50, '-', '', 'img/course51.jpg');
INSERT INTO `course` VALUES (589, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院201柳建玲', 41, 50, '-', '', 'img/course52.jpg');
INSERT INTO `course` VALUES (590, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院202张力', 41, 50, '-', '', 'img/course53.jpg');
INSERT INTO `course` VALUES (591, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院202张力', 43, 50, '-', '', 'img/course54.jpg');
INSERT INTO `course` VALUES (592, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院205吕琴', 41, 50, '-', '', 'img/course55.jpg');
INSERT INTO `course` VALUES (593, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院205吕琴', 43, 50, '-', '', 'img/course56.jpg');
INSERT INTO `course` VALUES (594, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院206金晶', 43, 50, '-', '', 'img/course57.jpg');
INSERT INTO `course` VALUES (595, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院206金晶', 50, 50, '-', '', 'img/course58.jpg');
INSERT INTO `course` VALUES (596, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院207凌建辉', 43, 50, '-', '', 'img/course59.jpg');
INSERT INTO `course` VALUES (597, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午3,上午4中山院207凌建辉', 44, 50, '-', '', 'img/course60.jpg');
INSERT INTO `course` VALUES (598, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期二-上午1,上午2中山院210蒋欣欣', 41, 50, '-', '', 'img/course61.jpg');
INSERT INTO `course` VALUES (599, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y201孙书兰', 40, 50, '-', '', 'img/course62.jpg');
INSERT INTO `course` VALUES (600, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-下午1,下午2九龙湖纪忠楼Y201孙书兰', 45, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (601, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y201孙书兰', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (602, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y201孙书兰', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (603, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y201孙书兰', 41, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (604, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-下午1,下午2九龙湖纪忠楼Y202凌建辉', 42, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (605, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y202凌建辉', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (606, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y202凌建辉', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (607, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y203 蒋欣欣', 41, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (608, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y203 蒋欣欣', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (609, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y203 蒋欣欣', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (610, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y203 蒋欣欣', 48, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (611, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y205卢凤娟', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (612, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y205卢凤娟', 40, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (613, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y205卢凤娟', 38, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (614, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y205卢凤娟', 44, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (615, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y206邢国垣', 44, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (616, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y206邢国垣', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (617, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y206邢国垣', 38, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (618, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y206邢国垣', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (619, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-下午1,下午2九龙湖纪忠楼Y206邢国垣', 40, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (620, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y207吴婷', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (621, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y207吴婷', 40, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (622, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y207吴婷', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (623, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y207吴婷', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (624, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y210俞韫烨', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (625, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y210俞韫烨', 45, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (626, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y211蔡旭东', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (627, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y211蔡旭东', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (628, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y211蔡旭东', 36, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (629, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y211蔡旭东', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (630, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y303金晶', 45, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (631, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y303金晶', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (632, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y304刘健刚', 48, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (633, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y304刘健刚', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (634, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-下午1,下午2九龙湖纪忠楼Y304陈峥嵘', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (635, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y304刘健刚', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (636, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y304刘健刚', 41, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (637, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y306李黎', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (638, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y306李黎', 40, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (639, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y306李黎', 45, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (640, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y306李黎', 48, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (641, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午1,上午2九龙湖纪忠楼Y308孙瑾', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (642, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y308孙瑾', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (643, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y308孙瑾', 43, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (644, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期四-上午3,上午4九龙湖纪忠楼Y308孙瑾', 46, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (645, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午1,上午2九龙湖纪忠楼Y309盛雪梅', 47, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (646, '东南大学', 'S000151', '学位英语                ', '第1-16周; 星期五-上午3,上午4九龙湖纪忠楼Y309盛雪梅', 45, 50, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (647, '东南大学', 'S000152', '学位日语                ', '第1-16周; 星期五-上午1,上午2,上午3,上午4九龙湖纪忠楼Y401韩晓', 15, 45, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (648, '东南大学', 'S000154', '学位法语                ', '第1-16周; 星期五-上午1,上午2,上午3,上午4九龙湖纪忠楼Y403李宁玥', 10, 45, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (649, '东南大学', 'S000156', '汉语                  ', '第1-16周; 星期四-下午1,下午2,下午3,下午4九龙湖纪忠楼YF201许峰', 34, 140, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (650, '东南大学', 'S000156', '汉语                  ', '第1-16周; 星期四-下午1,下午2,下午3,下午4东南院103程斌', 39, 140, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (651, '东南大学', 'S000306', '工程伦理                ', ' 待定张学义', 217, 300, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (652, '东南大学', 'S000306', '工程伦理                ', ' 待定何浩平', 229, 300, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (653, '东南大学', 'S000306', '工程伦理                ', ' 待定刘敏', 257, 300, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (654, '东南大学', 'S000306', '工程伦理                ', ' 待定夏保华', 226, 300, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (655, '东南大学', 'S000306', '工程伦理                ', ' 待定黄婷', 220, 300, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (656, '东南大学', 'S000306', '工程伦理                ', ' 待定黄婷', 238, 300, '-', '', 'img/course1.jpg');
INSERT INTO `course` VALUES (657, '东南大学', 'S000306', '工程伦理                ', ' 待定刘敏', 237, 300, '-', '', 'img/course1.jpg');

-- ----------------------------
-- Table structure for course_selected
-- ----------------------------
DROP TABLE IF EXISTS `course_selected`;
CREATE TABLE `course_selected`  (
  `cid` bigint(0) NOT NULL,
  `uid` bigint(0) NOT NULL,
  `course_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mark` int(0) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content_date` date NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `ischoose` int(0) NULL DEFAULT NULL,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `course_selected_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_selected_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_selected
-- ----------------------------
INSERT INTO `course_selected` VALUES (1, 1, 'A2341', 3, 'zhemenkebuxing', '2019-03-03', 2, 2);

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation`  (
  `eid` bigint(0) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `average_mark` double NULL DEFAULT NULL,
  `total` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES (1, 'S000306', 5, 10);

-- ----------------------------
-- Table structure for hot_course
-- ----------------------------
DROP TABLE IF EXISTS `hot_course`;
CREATE TABLE `hot_course`  (
  `cid` bigint(0) NOT NULL,
  `course_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sch_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_selectnum` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_course
-- ----------------------------
INSERT INTO `hot_course` VALUES (1, '热分析方法及其应用', 'img/refenxi.jpg', '中国科技大学', 265);
INSERT INTO `hot_course` VALUES (2, '工程伦理                ', 'img/gongchenglunli.jpg', '东南大学', 257);
INSERT INTO `hot_course` VALUES (3, '神经网络及其应用', 'img/shenj.jpg', '中国科技大学', 220);
INSERT INTO `hot_course` VALUES (4, '研究生综合英语', 'img/yingyu.jpg', '中国科技大学', 217);
INSERT INTO `hot_course` VALUES (5, '文献管理与信息分析', 'img/guanli.jpeg', '中国科技大学', 202);
INSERT INTO `hot_course` VALUES (6, '化学气相淀积化学与薄膜工艺', 'img/huaxue.jpg', '中国科技大学', 201);
INSERT INTO `hot_course` VALUES (7, '计算机视觉', 'img/shijue.jpg', '中国科技大学', 200);
INSERT INTO `hot_course` VALUES (8, '机器学习', 'img/learning.jpg', '中国科技大学', 200);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `sid` bigint(0) NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sch_des` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sch_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  UNIQUE INDEX `UNIQUE`(`sch_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '东南大学', '东南大学（Southeast University），简称“东大”，位于江苏省会南京，是中华人民共和国教育部直属、中央直管副部级建制的全国重点大学，建筑老八校及原四大工学院之一，国家首批双一流（A类）、211工程、985工程重点建设高校，入选2011计划、111计划、卓越工程师教育培养计划、卓越医生教育培养计划、国家级大学生创新创业训练计划、国家大学生创新性实验计划、国家建设高水平大学公派研究生项目、全国深化创新创业教育改革示范高校、中国政府奖学金来华留学生接收院校、教育部来华留学示范基地，卓越大学联盟、中俄工科大学联盟、中欧工程教育平台”、长三角高校合作联盟主要成员，国家国防科技工业局与教育部共建。', 'img/dnxiaohui.png');
INSERT INTO `school` VALUES (2, '中国科技大学', '中国科学技术大学（University of Science and Technology of China），简称中国科大，位于安徽省合肥市，由中国科学院直属，中央直管副部级建制，位列A类世界一流大学建设高校、211工程、985工程，首批20所学位自主审核高校之一，入选珠峰计划、111计划、2011计划、中国科学院知识创新工程、卓越工程师教育培养计划、全国深化创新创业教育改革示范高校、国家建设高水平大学公派研究生项目、中国政府奖学金来华留学生接收院校，九校联盟、中国大学校长联谊会、东亚研究型大学协会、环太平洋大学联盟成员，是一所以前沿科学和高新技术为主、兼有特色管理和人文学科的综合性全国重点大学。', 'img/zkdxiaohui.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` bigint(0) NOT NULL AUTO_INCREMENT,
  `uname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_number` bigint(0) NULL DEFAULT NULL,
  `stu_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(0) NULL DEFAULT 0,
  `uimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `Unique`(`uname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2as', '1232', '爱疯了', 12345, 'shjkd', '1541223151', '454@qq.com', 2, '54564');
INSERT INTO `user` VALUES (3, '我是谁', '123456', NULL, NULL, NULL, '12323421443', NULL, 0, NULL);
INSERT INTO `user` VALUES (5, 'xtc', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, '111', NULL, 0, NULL);
INSERT INTO `user` VALUES (6, 'lzy', 'ebdb71dbabe81ea2116ac2c9757bbe7c', NULL, NULL, NULL, '15151936127', NULL, 0, NULL);
INSERT INTO `user` VALUES (7, '123123213', 'dd343982da231edbb63df14f7123487b', NULL, NULL, NULL, '213213', NULL, 0, NULL);
INSERT INTO `user` VALUES (11, 'xutianci', 'b635a0cd1a42ab9209b8bbd168ae27bb', NULL, NULL, NULL, '15151936127', NULL, 0, NULL);
INSERT INTO `user` VALUES (12, '123', 'ebdb71dbabe81ea2116ac2c9757bbe7c', NULL, NULL, NULL, '15151936127', NULL, 0, NULL);
INSERT INTO `user` VALUES (14, '123456', 'fcea920f7412b5da7be0cf42b8c93759', NULL, NULL, NULL, '123243124', NULL, 0, NULL);
INSERT INTO `user` VALUES (16, 'harson1', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, '17834487743', NULL, 0, NULL);
INSERT INTO `user` VALUES (17, '111', '698d51a19d8a121ce581499d7b701668', NULL, NULL, NULL, '13851991921', NULL, 0, 'https://images.nowcoder.com/head/319m.png');
INSERT INTO `user` VALUES (18, '111111', '96e79218965eb72c92a549dd5a330112', NULL, NULL, NULL, '13851991001', NULL, 0, 'https://images.nowcoder.com/head/138m.png');

SET FOREIGN_KEY_CHECKS = 1;
