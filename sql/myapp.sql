/*
 Navicat Premium Data Transfer

 Source Server         : one
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : myapp

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 14/09/2021 23:05:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pic_list
-- ----------------------------
DROP TABLE IF EXISTS `pic_list`;
CREATE TABLE `pic_list`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `img_src` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `img_link` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片链接',
  `img_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'previous' COMMENT '图片类型',
  `img_prefer` float NULL DEFAULT 0 COMMENT '图片喜好度',
  `img_cate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '霹雳布袋戏' COMMENT '布袋戏名称',
  `img_figure` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '人物名',
  `img_count` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'one' COMMENT '人物数量',
  `img_create_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pic_list
-- ----------------------------
INSERT INTO `pic_list` VALUES (1, 'https://imglf5.lf127.net/img/eed1dee879fce12a/MXhKTXR0eERVR2xwMjMxTTlMQmcrYW9IYWw0UWRSUE5VSGptRG0rcUpHMD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 95, '霹雳布袋戏', '地冥', 'one', '2021-05-01');
INSERT INTO `pic_list` VALUES (2, 'https://imglf4.lf127.net/img/d21852788de60ff2/MXhKTXR0eERVR2xwMjMxTTlMQmcrWmdoa2thSWpqdGlSYVFiejdkMEYyTT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 97, '霹雳布袋戏', '奈落之夜宵', 'one', '2021-05-18');
INSERT INTO `pic_list` VALUES (3, 'https://imglf5.lf127.net/img/fb2dcf5ebb2fe085/MXhKTXR0eERVR2xwMjMxTTlMQmcrUXIyN1dJRm9Cb1o2TGtsUUE4MFpCST0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 99, '霹雳布袋戏', '箫中剑', 'one', '2021-07-06');
INSERT INTO `pic_list` VALUES (4, 'https://imglf5.lf127.net/img/c6a9ad442ea11966/MXhKTXR0eERVR2xwMjMxTTlMQmcrWGFHVytzY0c1VG92TGVCL0ZYQTdoWT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 98, '霹雳布袋戏', '黑色十九', 'one', '2021-07-16');
INSERT INTO `pic_list` VALUES (5, 'https://imglf5.lf127.net/img/f585b577948abc16/MXhKTXR0eERVR2xwMjMxTTlMQmcrVkNIKzFMaTI1M1JkdnVtK2NTVm5YOD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 97, '金光布袋戏', '北冥皇渊', 'one', '2021-08-24');
INSERT INTO `pic_list` VALUES (6, 'https://imglf6.lf127.net/img/198c32b904ac3281/MXhKTXR0eERVR2xwMjMxTTlMQmcrZmVFUExuaithckxtT3pTVnNBMktBWT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 97, '霹雳布袋戏', '箫中剑', 'one', '2021-04-21');
INSERT INTO `pic_list` VALUES (7, 'https://imglf6.lf127.net/img/863e3a38c942400b/MXhKTXR0eERVR2xwMjMxTTlMQmcrUW9xTFRMdFVvV2RrdURCQ0VsblM4ND0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 96.9, '霹雳布袋戏', '素还真', 'one', '2021-08-08');
INSERT INTO `pic_list` VALUES (8, 'https://imglf5.lf127.net/img/8753ee2da117ec69/MXhKTXR0eERVR2xwMjMxTTlMQmcrWW83M090MWVZdFhycy93bWlBaUJ1az0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 93, '霹雳布袋戏', '阿真，净无幻', 'two', '2021-05-14');
INSERT INTO `pic_list` VALUES (9, 'https://imglf3.lf127.net/img/4416106a0d7f038b/MXhKTXR0eERVR2xwMjMxTTlMQmcrWVhYeXU1UFlYY3ZzS3FaQjd2dndhcz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 94, '霹雳布袋戏', '吞佛童子', 'one', '2021-05-02');
INSERT INTO `pic_list` VALUES (10, 'https://imglf5.lf127.net/img/71502d461079fe97/MXhKTXR0eERVR2xwMjMxTTlMQmcrVlB0QzhFZERGMG90N3R3eVdsU0dRQT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 90, '霹雳布袋戏', '羽人非獍', 'one', '2021-05-02');
INSERT INTO `pic_list` VALUES (11, 'https://imglf3.lf127.net/img/79e06de43379f419/MXhKTXR0eERVR2xwMjMxTTlMQmcrYUlnNEh1dEhaTnk1M251cW9jSzNyZz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 91, '霹雳布袋戏', '六弦之首苍', 'one', '2021-05-02');
INSERT INTO `pic_list` VALUES (12, 'https://imglf6.lf127.net/img/1a85b665a76fe9ac/MXhKTXR0eERVR2xwMjMxTTlMQmcrWFdlbE1QcGZrQU9uSkFFTW9aYmpFMD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 89, '霹雳布袋戏', '袭灭天来', 'one', '2021-04-22');
INSERT INTO `pic_list` VALUES (13, 'https://imglf6.lf127.net/img/c98f9ff67dcc1ec0/MXhKTXR0eERVR2xwMjMxTTlMQmcrZEREckpHMWN2TUlLZ0hJUDlmL0xDbz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 89.2, '霹雳布袋戏', '袭灭天来', 'one', '2021-05-01');
INSERT INTO `pic_list` VALUES (14, 'https://imglf4.lf127.net/img/cc009114acf89372/MXhKTXR0eERVR2xwMjMxTTlMQmcrYVdTU3RYTlhwU3dmSlAyWllEUk1oYz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 89.8, '霹雳布袋戏', '北辰元凰', 'one', '2021-04-22');
INSERT INTO `pic_list` VALUES (15, 'https://imglf4.lf127.net/img/050070cbb7d259a7/MXhKTXR0eERVR2xwMjMxTTlMQmcrY2hleXhxMitOejczLzNrOGhUUFRoST0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 95, '金光布袋戏', '上官鸿信', 'one', '2021-08-23');
INSERT INTO `pic_list` VALUES (16, 'https://imglf5.lf127.net/img/b37e4f9368dcd07f/MXhKTXR0eERVR2xwMjMxTTlMQmcrV3JSS2hDQW55bmpJblZ0SVJyQ1RiVT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 98, '霹雳布袋戏', '炎熇兵燹', 'one', '2021-03-21');
INSERT INTO `pic_list` VALUES (17, 'https://imglf4.lf127.net/img/35434448ca45532b/MXhKTXR0eERVR2xwMjMxTTlMQmcrWUpWbE9hYzJBSXhKSXdhcVdsbzVSaz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'now', 97, '金光布袋戏', '北冥皇渊，八纮稣浥', 'one', '2021-04-20');
INSERT INTO `pic_list` VALUES (18, 'https://imglf4.lf127.net/img/40dd0364fdcf410f/MXhKTXR0eERVR2xwMjMxTTlMQmcrZjEzanZUNUhQWkNoNU5QQWxBV2I5ND0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 86, '霹雳布袋戏', '奈落之夜宵', 'one', '2020-07-10');
INSERT INTO `pic_list` VALUES (19, 'https://imglf3.lf127.net/img/00016479147b1290/MXhKTXR0eERVR2xwMjMxTTlMQmcrYy9hWG1xOU15UnhDOTVNSlFxNWYvND0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 85, '霹雳布袋戏', '赦生童子，滕邪郎', 'two', '2021-02-12');
INSERT INTO `pic_list` VALUES (20, 'https://imglf3.lf127.net/img/e8ef8b7ed5c50821/MXhKTXR0eERVR2xwMjMxTTlMQmcrUWl4YmpUcEExa2w4Zng4QXVKeGRXST0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 83, '霹雳布袋戏', '一步莲华', 'one', '2021-02-22');
INSERT INTO `pic_list` VALUES (21, 'https://imglf4.lf127.net/img/47fac5df4fe27f6e/MXhKTXR0eERVR2xwMjMxTTlMQmcrZHF3a0pqMUZ3TjllRElZSW9XZGRiND0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 86, '霹雳布袋戏', '袭灭天来', 'one', '2021-02-22');
INSERT INTO `pic_list` VALUES (22, 'https://imglf4.lf127.net/img/a6fc74e5f6861093/MXhKTXR0eERVR2xwMjMxTTlMQmcrZEk4Sk8rbkovVXd0S0NYZHFtdzh2cz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 84, '霹雳布袋戏', '玄同', 'one', '2021-02-15');
INSERT INTO `pic_list` VALUES (23, 'https://imglf5.lf127.net/img/c7d78baa9e804b03/MXhKTXR0eERVR2xwMjMxTTlMQmcrUWZYNnUxS0RtY0pYUHErSDFaTDB5TT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 87, '霹雳布袋戏', '一页书', 'one', '2021-02-11');
INSERT INTO `pic_list` VALUES (24, 'https://imglf3.lf127.net/img/689fa780a6c52ac8/MXhKTXR0eERVR2xwMjMxTTlMQmcrV1FLU0dlaVdJMjdFS3ppdU5QeWtLRT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 89, '霹雳布袋戏', '箫中剑', 'one', '2021-02-08');
INSERT INTO `pic_list` VALUES (25, 'https://imglf6.lf127.net/img/d51e625f493b65f5/MXhKTXR0eERVR2xwMjMxTTlMQmcrUUVqS0JFc05pZ0xrRnh4bnczU3BuST0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 82, '霹雳布袋戏', '奈落之夜宵', 'one', '2021-02-09');
INSERT INTO `pic_list` VALUES (26, 'https://imglf6.lf127.net/img/7264eb20b731deb4/MXhKTXR0eERVR2xwMjMxTTlMQmcrZmNjRzBZVXVHemlYd0l6dUlEL3BpYz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 84, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2021-02-09');
INSERT INTO `pic_list` VALUES (27, 'https://imglf4.lf127.net/img/616f45aa9bd774d3/MXhKTXR0eERVR2xwMjMxTTlMQmcrYVFnNGpSWlIwdHk1VHIyQXFCUXRoWT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 81, '霹雳布袋戏', '剑雪无名', 'one', '2021-01-21');
INSERT INTO `pic_list` VALUES (28, 'https://imglf6.lf127.net/img/f777b363f8e97ec4/MXhKTXR0eERVR2xwMjMxTTlMQmcrYXdIK3phejVaTzJ4WUdLUkNtNEl5RT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 83, '霹雳布袋戏', '吞佛童子', 'one', '2020-12-20');
INSERT INTO `pic_list` VALUES (29, 'https://imglf5.lf127.net/img/f6c6be677057a849/MXhKTXR0eERVR2xwMjMxTTlMQmcrUW53cFE3QkEyRWMyejI0WUR4bFpTcz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 80, '霹雳布袋戏', '他化阐提', 'one', '2020-12-07');
INSERT INTO `pic_list` VALUES (30, 'https://imglf4.lf127.net/img/e405ddcd0a7ef8e1/MXhKTXR0eERVR2xwMjMxTTlMQmcrV2dQWW85ZjJ3ekZMMXR1THFCOHZ1TT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 75, '霹雳布袋戏', '箫中剑', 'one', '2020-12-07');
INSERT INTO `pic_list` VALUES (31, 'https://imglf4.lf127.net/img/0fe779ea36fbad89/MXhKTXR0eERVR2xwMjMxTTlMQmcrYWM1M3lQdDhQQlZnYmZHRnFBeW9wND0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 83, '霹雳布袋戏', '奈落之夜宵，佛剑分说', 'two', '2020-12-06');
INSERT INTO `pic_list` VALUES (32, 'https://imglf5.lf127.net/img/da8e03009791e886/MXhKTXR0eERVR2xwMjMxTTlMQmcrUkIvblFQdjZXSndoblBYNmtCbU9Mcz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 84, '霹雳布袋戏', '佛剑分说', 'one', '2020-11-05');
INSERT INTO `pic_list` VALUES (33, 'https://imglf5.lf127.net/img/4da1350f53823bbd/MXhKTXR0eERVR2xwMjMxTTlMQmcrU1RXUmk1dVQ4MEwrTmRyM3RGOWc5MD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 88, '霹雳布袋戏', '北辰元凰，北辰胤', 'two', '2020-10-24');
INSERT INTO `pic_list` VALUES (34, 'https://imglf6.lf127.net/img/db77ff9602e7d36c/MXhKTXR0eERVR2xwMjMxTTlMQmcrZkpObE9vQURQaDA4cWV5MWw2VEhMST0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 80, '霹雳布袋戏', '寂寞侯', 'one', '2020-10-31');
INSERT INTO `pic_list` VALUES (35, 'https://imglf3.lf127.net/img/a167285bb725fe7c/MXhKTXR0eERVR2xwMjMxTTlMQmcrZTBiMVRObUw1cWlFemJKWFFucjdNYz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 81, '金光布袋戏', '锦烟霞', 'one', '2021-02-09');
INSERT INTO `pic_list` VALUES (36, 'https://imglf3.lf127.net/img/91b9dd424fbbaeaa/MXhKTXR0eERVR2xwMjMxTTlMQmcrV0Rad2dnNFVLMzNmdlBmbGl2NzlOdz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 87, '金光布袋戏', '空空，幻姬重子', 'two', '2021-02-08');
INSERT INTO `pic_list` VALUES (37, 'https://imglf3.lf127.net/img/4f7deccb4e85b0f1/MXhKTXR0eERVR2xwMjMxTTlMQmcrUVRmMzFoMXFUV0Q0OCtXWDlhQi9LTT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 85, '金光布袋戏', '丹阳侯，天雨如晴', 'two', '2021-01-09');
INSERT INTO `pic_list` VALUES (38, 'https://imglf6.lf127.net/img/7a1a91d2315d6b43/MXhKTXR0eERVR2xwMjMxTTlMQmcrZXNoUVd1U0FrK0NiNzlnemxnQ0NTTT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 86, '金光布袋戏', '慕容胜雪', 'one', '2020-12-26');
INSERT INTO `pic_list` VALUES (39, 'https://imglf5.lf127.net/img/3e70347ce275b7ae/MXhKTXR0eERVR2xwMjMxTTlMQmcrZm1MTktETkxrRjZBT21XRTU3Ym1YZz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 79, '金光布袋戏', '上官鸿信', 'one', '2020-11-26');
INSERT INTO `pic_list` VALUES (40, 'https://imglf6.lf127.net/img/faf967f2a1d0a8a9/MXhKTXR0eERVR2xwMjMxTTlMQmcrWU5zZkdtY1hPRmd2cm5tUENKd1Y5dz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 80, '金光布袋戏', '空空', 'one', '2020-11-21');
INSERT INTO `pic_list` VALUES (41, 'https://imglf4.lf127.net/img/dc3f2131faf6d10a/MXhKTXR0eERVR2xwMjMxTTlMQmcrWnA0bC8yNm8vck82L3BUWXd2cytYWT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 88, '金光布袋戏', '竞日孤鸣', 'one', '2020-11-21');
INSERT INTO `pic_list` VALUES (42, 'https://imglf6.lf127.net/img/aa0095997bc99901/MXhKTXR0eERVR2xwMjMxTTlMQmcrV09hS2JZOVJYKzhXaCtpSXdOWFhlOD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 83, '金光布袋戏', '胜弦主', 'one', '2020-11-14');
INSERT INTO `pic_list` VALUES (43, 'https://imglf5.lf127.net/img/b80638571bc27995/MXhKTXR0eERVR2xwMjMxTTlMQmcrV016NU5hUlFWZlE0UVoyZFJWTFJ4Yz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'recent', 82, '金光布袋戏', '空空，网中人', 'two', '2020-08-27');
INSERT INTO `pic_list` VALUES (44, 'https://imglf5.lf127.net/img/67645180938958a3/MXhKTXR0eERVR2xwMjMxTTlMQmcrZnRBdDFJVzAzZERxdUhvZEVTa1dPWT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 78, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2020-10-24');
INSERT INTO `pic_list` VALUES (45, 'https://imglf3.lf127.net/img/fc1076abe01a90ea/MXhKTXR0eERVR2xwMjMxTTlMQmcrVm5wOUNQOThkeVA2Q1lEZ0lXdkY2Zz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 76, '霹雳布袋戏', '炎熇兵燹', 'one', '2020-10-20');
INSERT INTO `pic_list` VALUES (46, 'https://imglf5.lf127.net/img/c713cfd9112b20e1/MXhKTXR0eERVR2xwMjMxTTlMQmcrVzJESDlwT2hXU0ZPSDlEZU5nYmQ0bz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 77, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2020-10-06');
INSERT INTO `pic_list` VALUES (47, 'https://imglf4.lf127.net/img/4aff2deb1c5f5c9e/MXhKTXR0eERVR2xwMjMxTTlMQmcrVS9DRUFuRmJvTGlia1BHMVpTVVViTT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 80, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2020-10-01');
INSERT INTO `pic_list` VALUES (48, 'https://imglf5.lf127.net/img/7cf5a6b8a5390d38/MXhKTXR0eERVR2xwMjMxTTlMQmcrUWE0YWc3Q3hsK29jc3lGWExCdnNOVT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 80, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2021-01-21');
INSERT INTO `pic_list` VALUES (49, 'https://imglf3.lf127.net/img/ff46f3b56d32b36f/MXhKTXR0eERVR2xwMjMxTTlMQmcrVWVNaVloelZOKzMzQVlqOW8zckJJOD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 79, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2020-10-02');
INSERT INTO `pic_list` VALUES (50, 'https://imglf6.lf127.net/img/0ac460addd4fa1b0/MXhKTXR0eERVR2xwMjMxTTlMQmcrYSswc2VhM3c4UE96aHplTXZDaUljMD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 76, '霹雳布袋戏', '剑雪无名', 'one', '2020-10-02');
INSERT INTO `pic_list` VALUES (51, 'https://imglf3.lf127.net/img/b69ab05874abdd0c/MXhKTXR0eERVR2xwMjMxTTlMQmcrYjUxWjRHQUVuajZyRC9kdHpZSmYxMD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 76, '霹雳布袋戏', '一剑封禅', 'one', '2020-10-02');
INSERT INTO `pic_list` VALUES (52, 'https://imglf5.lf127.net/img/5cd689419fcac06b/MXhKTXR0eERVR2xwMjMxTTlMQmcrYWxoV2doWnVzV2s5MzZGSm82TWVJaz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 78, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2020-10-02');
INSERT INTO `pic_list` VALUES (53, 'https://imglf6.lf127.net/img/fc94749787f07887/MXhKTXR0eERVR2xwMjMxTTlMQmcrZEhWQkd4SUdVb2gveWo0Y0djMkR5RT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 79, '霹雳布袋戏', '一剑封禅，剑雪无名', 'two', '2020-06-16');
INSERT INTO `pic_list` VALUES (54, 'https://imglf5.lf127.net/img/de95d87a3cc18369/MXhKTXR0eERVR2xwMjMxTTlMQmcrUmo0ZmxRNlhGRzV4cmRpT2FnalErRT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 77, '金光布袋戏', '网中人，空空', 'two', '2020-08-29');
INSERT INTO `pic_list` VALUES (55, 'https://imglf6.lf127.net/img/b4f39237cf1a8adf/MXhKTXR0eERVR2xwMjMxTTlMQmcrWXlUZmNsemNET3JqYnhoUkZkU2tVaz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 74, '金光布袋戏', '无情葬月，荻花题叶', 'two', '2020-08-27');
INSERT INTO `pic_list` VALUES (56, 'https://imglf4.lf127.net/img/38a302d19bd1bfd2/MXhKTXR0eERVR2xwMjMxTTlMQmcrVGdieGNCRUgvSTZ5cjJYb3FycnpSMD0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 78, '金光布袋戏', '北冥皇渊，八纮稣浥', 'two', '2020-08-27');
INSERT INTO `pic_list` VALUES (57, 'https://imglf6.lf127.net/img/52cbdcb2925b8fe7/MXhKTXR0eERVR2xwMjMxTTlMQmcrUW9aUmo1Z2Zwdmx6dHJheEFQdFdXdz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 79, '金光布袋戏', '慕容胜雪', 'one', '2020-04-16');
INSERT INTO `pic_list` VALUES (58, 'https://imglf5.lf127.net/img/825d176fe9cdb99e/MXhKTXR0eERVR2xwMjMxTTlMQmcrVW9CbU4rK1cyNEpuOU50RSt0Ri9ZZz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 78.8, '金光布袋戏', '长琴无焰', 'one', '2020-04-01');
INSERT INTO `pic_list` VALUES (59, 'https://imglf3.lf127.net/img/b01532e7eaf67cbd/MXhKTXR0eERVR2xwMjMxTTlMQmcrU3VXd2NoeHZFaUUvYnBSSUZiSGJuZz0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg', 'https://www.lofter.com/', 'previous', 79.7, '金光布袋戏', '上官鸿信', 'one', '2020-03-29');
INSERT INTO `pic_list` VALUES (60, 'https://imglf6.lf127.net/img/747ec03671e276ab/MXhKTXR0eERVR2xwdkVsaHhzclF2bldPSE91ODdEUnhwdFJ0ZXczZThJOD0.jpg?imageView&thumbnail=1000x0&type=jpg', 'https://www.lofter.com/', 'now', 98, '金光布袋戏', '挹天愈，藐烽云', 'two', '2021-09-07');

SET FOREIGN_KEY_CHECKS = 1;
