/*
 Navicat MySQL Data Transfer

 Source Server         : hadoop102
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : hadoop102:3306
 Source Schema         : gmall_report

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 16/08/2021 10:59:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ads_order_by_province
-- ----------------------------
DROP TABLE IF EXISTS `ads_order_by_province`;
CREATE TABLE `ads_order_by_province`  (
  `dt` date NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '统计日期',
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '省份名称',
  `area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地区编码',
  `iso_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '国际标准地区编码',
  `order_count` bigint(20) NULL DEFAULT NULL COMMENT '订单数',
  `order_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '订单金额',
  PRIMARY KEY (`dt`, `province_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ads_order_by_province
-- ----------------------------
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '1', '北京', '110000', 'CN-11', 13, 402232.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '10', '福建', '350000', 'CN-35', 7, 315645.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '11', '江西', '360000', 'CN-36', 4, 114391.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '12', '山东', '370000', 'CN-37', 5, 291400.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '13', '重庆', '500000', 'CN-50', 6, 153022.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '14', '台湾', '710000', 'CN-71', 6, 184981.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '15', '黑龙江', '230000', 'CN-23', 2, 80049.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '16', '吉林', '220000', 'CN-22', 8, 144899.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '17', '辽宁', '210000', 'CN-21', 2, 20976.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '18', '陕西', '610000', 'CN-61', 3, 100557.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '19', '甘肃', '620000', 'CN-62', 9, 422565.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '2', '天津', '120000', 'CN-12', 11, 283788.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '20', '青海', '630000', 'CN-63', 12, 289611.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '21', '宁夏', '640000', 'CN-64', 5, 184526.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '22', '新疆', '650000', 'CN-65', 9, 262549.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '23', '河南', '410000', 'CN-41', 5, 197189.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '24', '湖北', '420000', 'CN-42', 4, 25823.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '25', '湖南', '430000', 'CN-43', 7, 187572.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '26', '广东', '440000', 'CN-44', 9, 357141.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '27', '广西', '450000', 'CN-45', 4, 130352.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '28', '海南', '460000', 'CN-46', 6, 104162.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '29', '香港', '810000', 'CN-91', 6, 203598.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '3', '山西', '140000', 'CN-14', 2, 65986.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '30', '澳门', '820000', 'CN-92', 7, 268936.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '31', '四川', '510000', 'CN-51', 1, 18893.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '32', '贵州', '520000', 'CN-52', 6, 236319.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '33', '云南', '530000', 'CN-53', 8, 381042.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '34', '西藏', '540000', 'CN-54', 5, 187908.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '4', '内蒙古', '150000', 'CN-15', 6, 178156.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '5', '河北', '130000', 'CN-13', 5, 267768.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '6', '上海', '310000', 'CN-31', 9, 333872.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '7', '江苏', '320000', 'CN-32', 5, 165192.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '8', '浙江', '330000', 'CN-33', 8, 232229.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-14', '9', '安徽', '340000', 'CN-34', 6, 158620.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '1', '北京', '110000', 'CN-11', 13, 402232.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '10', '福建', '350000', 'CN-35', 7, 315645.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '11', '江西', '360000', 'CN-36', 4, 114391.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '12', '山东', '370000', 'CN-37', 5, 291400.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '13', '重庆', '500000', 'CN-50', 6, 153022.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '14', '台湾', '710000', 'CN-71', 6, 184981.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '15', '黑龙江', '230000', 'CN-23', 2, 80049.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '16', '吉林', '220000', 'CN-22', 8, 144899.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '17', '辽宁', '210000', 'CN-21', 2, 20976.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '18', '陕西', '610000', 'CN-61', 3, 100557.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '19', '甘肃', '620000', 'CN-62', 9, 422565.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '2', '天津', '120000', 'CN-12', 11, 283788.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '20', '青海', '630000', 'CN-63', 12, 289611.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '21', '宁夏', '640000', 'CN-64', 5, 184526.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '22', '新疆', '650000', 'CN-65', 9, 262549.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '23', '河南', '410000', 'CN-41', 5, 197189.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '24', '湖北', '420000', 'CN-42', 4, 25823.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '25', '湖南', '430000', 'CN-43', 7, 187572.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '26', '广东', '440000', 'CN-44', 9, 357141.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '27', '广西', '450000', 'CN-45', 4, 130352.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '28', '海南', '460000', 'CN-46', 6, 104162.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '29', '香港', '810000', 'CN-91', 6, 203598.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '3', '山西', '140000', 'CN-14', 2, 65986.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '30', '澳门', '820000', 'CN-92', 7, 268936.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '31', '四川', '510000', 'CN-51', 1, 18893.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '32', '贵州', '520000', 'CN-52', 6, 236319.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '33', '云南', '530000', 'CN-53', 8, 381042.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '34', '西藏', '540000', 'CN-54', 5, 187908.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '4', '内蒙古', '150000', 'CN-15', 6, 178156.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '5', '河北', '130000', 'CN-13', 5, 267768.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '6', '上海', '310000', 'CN-31', 9, 333872.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '7', '江苏', '320000', 'CN-32', 5, 165192.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '8', '浙江', '330000', 'CN-33', 8, 232229.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-15', '9', '安徽', '340000', 'CN-34', 6, 158620.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '1', '北京', '110000', 'CN-11', 13, 402232.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '10', '福建', '350000', 'CN-35', 7, 315645.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '11', '江西', '360000', 'CN-36', 4, 114391.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '12', '山东', '370000', 'CN-37', 5, 291400.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '13', '重庆', '500000', 'CN-50', 6, 153022.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '14', '台湾', '710000', 'CN-71', 6, 184981.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '15', '黑龙江', '230000', 'CN-23', 2, 80049.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '16', '吉林', '220000', 'CN-22', 8, 144899.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '17', '辽宁', '210000', 'CN-21', 2, 20976.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '18', '陕西', '610000', 'CN-61', 3, 100557.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '19', '甘肃', '620000', 'CN-62', 9, 422565.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '2', '天津', '120000', 'CN-12', 11, 283788.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '20', '青海', '630000', 'CN-63', 12, 289611.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '21', '宁夏', '640000', 'CN-64', 5, 184526.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '22', '新疆', '650000', 'CN-65', 9, 262549.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '23', '河南', '410000', 'CN-41', 5, 197189.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '24', '湖北', '420000', 'CN-42', 4, 25823.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '25', '湖南', '430000', 'CN-43', 7, 187572.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '26', '广东', '440000', 'CN-44', 9, 357141.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '27', '广西', '450000', 'CN-45', 4, 130352.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '28', '海南', '460000', 'CN-46', 6, 104162.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '29', '香港', '810000', 'CN-91', 6, 203598.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '3', '山西', '140000', 'CN-14', 2, 65986.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '30', '澳门', '820000', 'CN-92', 7, 268936.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '31', '四川', '510000', 'CN-51', 1, 18893.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '32', '贵州', '520000', 'CN-52', 6, 236319.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '33', '云南', '530000', 'CN-53', 8, 381042.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '34', '西藏', '540000', 'CN-54', 5, 187908.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '4', '内蒙古', '150000', 'CN-15', 6, 178156.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '5', '河北', '130000', 'CN-13', 5, 267768.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '6', '上海', '310000', 'CN-31', 9, 333872.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '7', '江苏', '320000', 'CN-32', 5, 165192.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '8', '浙江', '330000', 'CN-33', 8, 232229.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-16', '9', '安徽', '340000', 'CN-34', 6, 158620.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '1', '北京', '110000', 'CN-11', 13, 402232.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '10', '福建', '350000', 'CN-35', 7, 315645.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '11', '江西', '360000', 'CN-36', 4, 114391.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '12', '山东', '370000', 'CN-37', 5, 291400.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '13', '重庆', '500000', 'CN-50', 6, 153022.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '14', '台湾', '710000', 'CN-71', 6, 184981.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '15', '黑龙江', '230000', 'CN-23', 2, 80049.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '16', '吉林', '220000', 'CN-22', 8, 144899.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '17', '辽宁', '210000', 'CN-21', 2, 20976.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '18', '陕西', '610000', 'CN-61', 3, 100557.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '19', '甘肃', '620000', 'CN-62', 9, 422565.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '2', '天津', '120000', 'CN-12', 11, 283788.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '20', '青海', '630000', 'CN-63', 12, 289611.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '21', '宁夏', '640000', 'CN-64', 5, 184526.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '22', '新疆', '650000', 'CN-65', 9, 262549.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '23', '河南', '410000', 'CN-41', 5, 197189.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '24', '湖北', '420000', 'CN-42', 4, 25823.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '25', '湖南', '430000', 'CN-43', 7, 187572.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '26', '广东', '440000', 'CN-44', 9, 357141.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '27', '广西', '450000', 'CN-45', 4, 130352.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '28', '海南', '460000', 'CN-46', 6, 104162.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '29', '香港', '810000', 'CN-91', 6, 203598.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '3', '山西', '140000', 'CN-14', 2, 65986.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '30', '澳门', '820000', 'CN-92', 7, 268936.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '31', '四川', '510000', 'CN-51', 1, 18893.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '32', '贵州', '520000', 'CN-52', 6, 236319.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '33', '云南', '530000', 'CN-53', 8, 381042.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '34', '西藏', '540000', 'CN-54', 5, 187908.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '4', '内蒙古', '150000', 'CN-15', 6, 178156.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '5', '河北', '130000', 'CN-13', 5, 267768.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '6', '上海', '310000', 'CN-31', 9, 333872.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '7', '江苏', '320000', 'CN-32', 5, 165192.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '8', '浙江', '330000', 'CN-33', 8, 232229.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-17', '9', '安徽', '340000', 'CN-34', 6, 158620.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '1', '北京', '110000', 'CN-11', 13, 402232.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '10', '福建', '350000', 'CN-35', 7, 315645.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '11', '江西', '360000', 'CN-36', 4, 114391.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '12', '山东', '370000', 'CN-37', 5, 291400.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '13', '重庆', '500000', 'CN-50', 6, 153022.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '14', '台湾', '710000', 'CN-71', 6, 184981.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '15', '黑龙江', '230000', 'CN-23', 2, 80049.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '16', '吉林', '220000', 'CN-22', 8, 144899.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '17', '辽宁', '210000', 'CN-21', 2, 20976.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '18', '陕西', '610000', 'CN-61', 3, 100557.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '19', '甘肃', '620000', 'CN-62', 9, 422565.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '2', '天津', '120000', 'CN-12', 11, 283788.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '20', '青海', '630000', 'CN-63', 12, 289611.65);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '21', '宁夏', '640000', 'CN-64', 5, 184526.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '22', '新疆', '650000', 'CN-65', 9, 262549.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '23', '河南', '410000', 'CN-41', 5, 197189.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '24', '湖北', '420000', 'CN-42', 4, 25823.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '25', '湖南', '430000', 'CN-43', 7, 187572.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '26', '广东', '440000', 'CN-44', 9, 357141.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '27', '广西', '450000', 'CN-45', 4, 130352.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '28', '海南', '460000', 'CN-46', 6, 104162.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '29', '香港', '810000', 'CN-91', 6, 203598.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '3', '山西', '140000', 'CN-14', 2, 65986.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '30', '澳门', '820000', 'CN-92', 7, 268936.30);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '31', '四川', '510000', 'CN-51', 1, 18893.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '32', '贵州', '520000', 'CN-52', 6, 236319.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '33', '云南', '530000', 'CN-53', 8, 381042.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '34', '西藏', '540000', 'CN-54', 5, 187908.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '4', '内蒙古', '150000', 'CN-15', 6, 178156.35);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '5', '河北', '130000', 'CN-13', 5, 267768.05);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '6', '上海', '310000', 'CN-31', 9, 333872.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '7', '江苏', '320000', 'CN-32', 5, 165192.70);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '8', '浙江', '330000', 'CN-33', 8, 232229.00);
INSERT INTO `ads_order_by_province` VALUES ('2020-06-18', '9', '安徽', '340000', 'CN-34', 6, 158620.05);

-- ----------------------------
-- Table structure for ads_order_spu_stats
-- ----------------------------
DROP TABLE IF EXISTS `ads_order_spu_stats`;
CREATE TABLE `ads_order_spu_stats`  (
  `dt` date NOT NULL COMMENT '统计日期',
  `spu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品ID',
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `tm_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '品牌ID',
  `tm_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `category3_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '三级品类ID',
  `category3_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '三级品类名称',
  `category2_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '二级品类ID',
  `category2_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '二级品类名称',
  `category1_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '一级品类ID',
  `category1_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '一级品类名称',
  `order_count` bigint(20) NULL DEFAULT NULL COMMENT '订单数',
  `order_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '订单金额',
  PRIMARY KEY (`dt`, `spu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ads_order_spu_stats
-- ----------------------------
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '1', '小米10', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 75, 999840.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '10', 'CAREMiLLE珂曼奶油小方口红 雾面滋润保湿持久丝缎唇膏', '9', 'CAREMiLLE', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 194, 27410.64);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '11', '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT ', '11', '香奈儿', '473', '香水', '54', '香水彩妆', '8', '个护化妆', 51, 37520.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '12', '华为智慧屏 4K全面屏智能电视机', '3', '华为', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 54, 505065.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '2', 'Redmi 10X', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 113, 299439.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '3', 'Apple iPhone 12', '2', '苹果', '61', '手机', '13', '手机通讯', '2', '手机', 137, 2428867.29);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '4', 'HUAWEI P40', '3', '华为', '61', '手机', '13', '手机通讯', '2', '手机', 97, 858353.71);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '5', 'TCL巨幕私人影院电视 4K超高清 AI智慧屏  液晶平板电视机', '4', 'TCL', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 72, 1478239.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '6', '小米电视 内置小爱 智能网络液晶平板教育电视', '5', '小米', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 50, 326894.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '7', '十月稻田 长粒香大米 东北大米 东北香米 5kg', '6', '长粒香', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 52, 4816.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '8', '金沙河面条 原味银丝挂面 龙须面 方便速食拉面 清汤面 900g', '7', '金沙河', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 40, 1118.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-14', '9', '索芙特i-Softto 口红不掉色唇膏保湿滋润 璀璨金钻哑光唇膏 ', '8', '索芙特', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 180, 50819.76);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '1', '小米10', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 75, 999840.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '10', 'CAREMiLLE珂曼奶油小方口红 雾面滋润保湿持久丝缎唇膏', '9', 'CAREMiLLE', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 194, 27410.64);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '11', '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT ', '11', '香奈儿', '473', '香水', '54', '香水彩妆', '8', '个护化妆', 51, 37520.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '12', '华为智慧屏 4K全面屏智能电视机', '3', '华为', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 54, 505065.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '2', 'Redmi 10X', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 113, 299439.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '3', 'Apple iPhone 12', '2', '苹果', '61', '手机', '13', '手机通讯', '2', '手机', 137, 2428867.29);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '4', 'HUAWEI P40', '3', '华为', '61', '手机', '13', '手机通讯', '2', '手机', 97, 858353.71);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '5', 'TCL巨幕私人影院电视 4K超高清 AI智慧屏  液晶平板电视机', '4', 'TCL', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 72, 1478239.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '6', '小米电视 内置小爱 智能网络液晶平板教育电视', '5', '小米', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 50, 326894.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '7', '十月稻田 长粒香大米 东北大米 东北香米 5kg', '6', '长粒香', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 52, 4816.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '8', '金沙河面条 原味银丝挂面 龙须面 方便速食拉面 清汤面 900g', '7', '金沙河', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 40, 1118.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-15', '9', '索芙特i-Softto 口红不掉色唇膏保湿滋润 璀璨金钻哑光唇膏 ', '8', '索芙特', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 180, 50819.76);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '1', '小米10', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 75, 999840.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '10', 'CAREMiLLE珂曼奶油小方口红 雾面滋润保湿持久丝缎唇膏', '9', 'CAREMiLLE', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 194, 27410.64);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '11', '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT ', '11', '香奈儿', '473', '香水', '54', '香水彩妆', '8', '个护化妆', 51, 37520.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '12', '华为智慧屏 4K全面屏智能电视机', '3', '华为', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 54, 505065.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '2', 'Redmi 10X', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 113, 299439.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '3', 'Apple iPhone 12', '2', '苹果', '61', '手机', '13', '手机通讯', '2', '手机', 137, 2428867.29);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '4', 'HUAWEI P40', '3', '华为', '61', '手机', '13', '手机通讯', '2', '手机', 97, 858353.71);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '5', 'TCL巨幕私人影院电视 4K超高清 AI智慧屏  液晶平板电视机', '4', 'TCL', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 72, 1478239.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '6', '小米电视 内置小爱 智能网络液晶平板教育电视', '5', '小米', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 50, 326894.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '7', '十月稻田 长粒香大米 东北大米 东北香米 5kg', '6', '长粒香', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 52, 4816.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '8', '金沙河面条 原味银丝挂面 龙须面 方便速食拉面 清汤面 900g', '7', '金沙河', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 40, 1118.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-16', '9', '索芙特i-Softto 口红不掉色唇膏保湿滋润 璀璨金钻哑光唇膏 ', '8', '索芙特', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 180, 50819.76);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '1', '小米10', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 75, 999840.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '10', 'CAREMiLLE珂曼奶油小方口红 雾面滋润保湿持久丝缎唇膏', '9', 'CAREMiLLE', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 194, 27410.64);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '11', '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT ', '11', '香奈儿', '473', '香水', '54', '香水彩妆', '8', '个护化妆', 51, 37520.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '12', '华为智慧屏 4K全面屏智能电视机', '3', '华为', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 54, 505065.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '2', 'Redmi 10X', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 113, 299439.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '3', 'Apple iPhone 12', '2', '苹果', '61', '手机', '13', '手机通讯', '2', '手机', 137, 2428867.29);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '4', 'HUAWEI P40', '3', '华为', '61', '手机', '13', '手机通讯', '2', '手机', 97, 858353.71);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '5', 'TCL巨幕私人影院电视 4K超高清 AI智慧屏  液晶平板电视机', '4', 'TCL', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 72, 1478239.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '6', '小米电视 内置小爱 智能网络液晶平板教育电视', '5', '小米', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 50, 326894.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '7', '十月稻田 长粒香大米 东北大米 东北香米 5kg', '6', '长粒香', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 52, 4816.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '8', '金沙河面条 原味银丝挂面 龙须面 方便速食拉面 清汤面 900g', '7', '金沙河', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 40, 1118.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-17', '9', '索芙特i-Softto 口红不掉色唇膏保湿滋润 璀璨金钻哑光唇膏 ', '8', '索芙特', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 180, 50819.76);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '1', '小米10', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 75, 999840.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '10', 'CAREMiLLE珂曼奶油小方口红 雾面滋润保湿持久丝缎唇膏', '9', 'CAREMiLLE', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 194, 27410.64);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '11', '香奈儿（Chanel）女士香水5号香水 粉邂逅柔情淡香水EDT ', '11', '香奈儿', '473', '香水', '54', '香水彩妆', '8', '个护化妆', 51, 37520.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '12', '华为智慧屏 4K全面屏智能电视机', '3', '华为', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 54, 505065.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '2', 'Redmi 10X', '1', '三星', '61', '手机', '13', '手机通讯', '2', '手机', 113, 299439.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '3', 'Apple iPhone 12', '2', '苹果', '61', '手机', '13', '手机通讯', '2', '手机', 137, 2428867.29);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '4', 'HUAWEI P40', '3', '华为', '61', '手机', '13', '手机通讯', '2', '手机', 97, 858353.71);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '5', 'TCL巨幕私人影院电视 4K超高清 AI智慧屏  液晶平板电视机', '4', 'TCL', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 72, 1478239.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '6', '小米电视 内置小爱 智能网络液晶平板教育电视', '5', '小米', '86', '平板电视', '16', '大 家 电', '3', '家用电器', 50, 326894.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '7', '十月稻田 长粒香大米 东北大米 东北香米 5kg', '6', '长粒香', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 52, 4816.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '8', '金沙河面条 原味银丝挂面 龙须面 方便速食拉面 清汤面 900g', '7', '金沙河', '803', '米面杂粮', '82', '粮油调味', '14', '食品饮料、保健食品', 40, 1118.00);
INSERT INTO `ads_order_spu_stats` VALUES ('2020-06-18', '9', '索芙特i-Softto 口红不掉色唇膏保湿滋润 璀璨金钻哑光唇膏 ', '8', '索芙特', '477', '唇部', '54', '香水彩妆', '8', '个护化妆', 180, 50819.76);

-- ----------------------------
-- Table structure for ads_order_total
-- ----------------------------
DROP TABLE IF EXISTS `ads_order_total`;
CREATE TABLE `ads_order_total`  (
  `dt` date NOT NULL COMMENT '统计日期',
  `order_count` bigint(255) NULL DEFAULT NULL COMMENT '订单数',
  `order_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '订单金额',
  `order_user_count` bigint(255) NULL DEFAULT NULL COMMENT '下单人数',
  PRIMARY KEY (`dt`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ads_order_total
-- ----------------------------
INSERT INTO `ads_order_total` VALUES ('2020-06-14', 211, 6951956.90, 211);
INSERT INTO `ads_order_total` VALUES ('2020-06-15', 263, 5265165.23, 259);
INSERT INTO `ads_order_total` VALUES ('2020-06-16', 226, 7521463.46, 220);
INSERT INTO `ads_order_total` VALUES ('2020-06-17', 237, 5625751.35, 223);
INSERT INTO `ads_order_total` VALUES ('2020-06-18', 280, 8651362.82, 275);

-- ----------------------------
-- Table structure for ads_user_total
-- ----------------------------
DROP TABLE IF EXISTS `ads_user_total`;
CREATE TABLE `ads_user_total`  (
  `dt` date NOT NULL COMMENT '统计日期',
  `new_user_count` bigint(20) NULL DEFAULT NULL COMMENT '新注册用户数',
  `new_order_user_count` bigint(20) NULL DEFAULT NULL COMMENT '新增下单用户数',
  `order_user_count` bigint(20) NULL DEFAULT NULL COMMENT '下单用户数',
  `no_order_user_count` bigint(20) NULL DEFAULT NULL COMMENT '未下单用户数(具体指活跃用户中未下单用户)',
  PRIMARY KEY (`dt`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ads_user_total
-- ----------------------------
INSERT INTO `ads_user_total` VALUES ('2020-06-14', 100, 73, 211, 343);
INSERT INTO `ads_user_total` VALUES ('2020-06-15', 123, 65, 190, 231);
INSERT INTO `ads_user_total` VALUES ('2020-06-16', 125, 55, 234, 421);
INSERT INTO `ads_user_total` VALUES ('2020-06-17', 92, 84, 124, 425);
INSERT INTO `ads_user_total` VALUES ('2020-06-18', 153, 120, 343, 357);

SET FOREIGN_KEY_CHECKS = 1;
