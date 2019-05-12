/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : byqj_demo

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 24/04/2019 16:49:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl`;
CREATE TABLE `sys_acl`  (
  `id` bigint(32) UNSIGNED NOT NULL COMMENT '权限id',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限码',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `acl_module_id` bigint(32) NOT NULL DEFAULT 0 COMMENT '权限所在的权限模块id',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求的url, 可以填正则表达式 ',
  `function_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '功能号',
  `type` int(11) NOT NULL DEFAULT 3 COMMENT '类型，0:系统 1:项目',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态，1：正常，0：冻结',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT '权限在当前模块下的顺序，由小到大',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_acl
-- ----------------------------
INSERT INTO `sys_acl` VALUES (1, 'A1', '新增', 4, '/project/projectType', 'AddProjectType', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (2, 'A2', '修改', 4, '/project/projectType', 'ModifyProjectType', 0, 1, 2, '');
INSERT INTO `sys_acl` VALUES (3, 'A3', '删除', 4, '/project/projectType', 'DeleteProjectType', 0, 1, 3, '');
INSERT INTO `sys_acl` VALUES (4, 'A4', '查看', 4, '/project/projectType', 'Search', 0, 1, 4, '');
INSERT INTO `sys_acl` VALUES (5, 'B1', '新增', 5, '/project/projectTemplate', 'AddProjectTemplate', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (6, 'B2', '修改', 5, '/project/projectTemplate', 'ModifyProjectTemplate', 0, 1, 2, '');
INSERT INTO `sys_acl` VALUES (7, 'B3', '删除', 5, '/project/projectTemplate', 'DeleteProjectTemplate', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (8, 'B4', '查看', 5, '/project/projectTemplate', 'SearchProjectTemplate', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (9, 'C1', '新增', 6, '/project/projectManagement', 'AddProject', 0, 1, 1, '参与人对当前项目没有新增');
INSERT INTO `sys_acl` VALUES (10, 'C2', '修改', 6, '/project/projectManagement', 'ModifyProject', 0, 1, 2, '');
INSERT INTO `sys_acl` VALUES (11, 'C3', '删除', 6, '/project/projectManagement', 'DeleteProject', 0, 1, 3, '');
INSERT INTO `sys_acl` VALUES (12, 'C4', '查看', 6, '/project/projectManagement', 'Search', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (17, 'D1', '新增', 8, '/system/role', 'AddRole', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (18, 'D2', '修改', 8, '/system/role', 'ModifyRole', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (19, 'D3', '删除', 8, '/system/role', 'DeleteRole', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (20, 'D4', '查看', 8, '/system/role', 'GetRoleList', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (22, 'E1', '修改', 9, '/system/schoolInfo', 'ModifySchoolInfo', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (24, 'E2', '查看', 9, '/system/schoolInfo', 'GetSchoolInfo', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (25, 'F1', '新增部门', 10, '/system/organization', 'AddDept', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (26, 'F2', '修改部门', 10, '/system/organization', 'ModifyDept', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (27, 'F3', '删除部门', 10, '/system/organization', 'DeleteDept', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (28, 'F4', '查看部门', 10, '/system/organization', 'GetDeptTree', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (29, 'G1', '新增用户', 10, '/user', 'AddPersonnel', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (30, 'G2', '修改用户', 10, '/user', 'ModifyPersonnel', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (31, 'G3', '删除用户', 10, '/user', 'DeletePersonnel', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (32, 'G4', '查看用户', 10, '/user', 'SearchPersonnelByCondition', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (33, 'G5', '用户状态', 10, '/user', 'ModifyUserStatus', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (34, 'G6', '重置密码', 10, '/user', 'ResetPassword', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (35, 'G7', '查看', 11, '/log', 'searchSysLog', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (36, 'H1', '文件查看', 7, '/project/fileManagement', 'SearchProjectFile', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (38, 'I1', '查看', 13, '/worktop/myMessage', 'GetMessageList', 0, 1, 0, '');
INSERT INTO `sys_acl` VALUES (39, 'J1', '查看', 14, '/worktop/myProject', 'Search', 0, 1, 1, '');
INSERT INTO `sys_acl` VALUES (40, 'J2', '修改', 14, '/worktop/myProject', 'ModifyProject', 0, 1, 2, '');
INSERT INTO `sys_acl` VALUES (41, 'J3', '删除', 14, '/worktop/myProject', 'DeleteProject', 0, 1, 3, '');
INSERT INTO `sys_acl` VALUES (42, 'K1', '查看', 0, '/project/projectManagement', 'GetProjectInfo', 1, 1, 0, '');
INSERT INTO `sys_acl` VALUES (43, 'K2', '评论', 0, '/project/messageManagement', 'AddComment', 1, 1, 0, '');
INSERT INTO `sys_acl` VALUES (45, 'K3', '上传', 0, '/project/fileManagement', 'NodeFileUpload', 1, 1, 0, '');
INSERT INTO `sys_acl` VALUES (47, 'K4', '导出', 0, '/project/projectManagement', 'GetNodeFileInfo', 1, 1, 0, '');
INSERT INTO `sys_acl` VALUES (48, 'L1', '添加节点', 0, '/project/nodeManagement', 'AddProjectNode', 2, 1, 0, '');
INSERT INTO `sys_acl` VALUES (50, 'L2', '删除节点', 0, '/project/nodeManagement', 'DeleteProjectNode', 2, 1, 0, '');
INSERT INTO `sys_acl` VALUES (51, 'L3', '修改节点', 0, '/project/nodeManagement', 'ModifyProjectNode', 2, 1, 0, '');
INSERT INTO `sys_acl` VALUES (52, 'L4', '修改节点树', 0, '/project/projectManagement', 'ModifyTree', 2, 1, 0, '');
INSERT INTO `sys_acl` VALUES (53, 'T1', '测试', 0, '/test', 'GetTest', 3, 1, 0, '');

-- ----------------------------
-- Table structure for sys_acl_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl_module`;
CREATE TABLE `sys_acl_module`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '权限模块id',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限模块code',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限模块名称',
  `parent_id` bigint(32) NOT NULL DEFAULT 0 COMMENT '上级权限模块id',
  `level` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限模块层级',
  `type` int(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0后台1前台',
  `seq` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '权限模块在当前层级下的顺序，由小到大',
  `status` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态，1：正常，0：冻结',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限模块表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_acl_module
-- ----------------------------
INSERT INTO `sys_acl_module` VALUES (1, '', '我的工作台', 0, '0', 0, 1, 1, 'product');
INSERT INTO `sys_acl_module` VALUES (2, '', '项目', 0, '0', 0, 2, 1, '');
INSERT INTO `sys_acl_module` VALUES (3, '', '系统', 0, '0', 0, 3, 1, '');
INSERT INTO `sys_acl_module` VALUES (4, '', '项目类型', 2, '0.2', 0, 1, 1, '');
INSERT INTO `sys_acl_module` VALUES (5, '', '项目模板', 2, '0.2', 0, 2, 1, '');
INSERT INTO `sys_acl_module` VALUES (6, '', '项目管理', 2, '0.2', 0, 3, 1, '');
INSERT INTO `sys_acl_module` VALUES (7, '', '文档管理', 2, '0.2', 0, 5, 1, '');
INSERT INTO `sys_acl_module` VALUES (8, '', '职务', 3, '0.3', 0, 1, 1, '');
INSERT INTO `sys_acl_module` VALUES (9, '', '学校', 3, '0.3', 0, 2, 1, '');
INSERT INTO `sys_acl_module` VALUES (10, '', '组织机构', 3, '0.3', 0, 3, 1, '');
INSERT INTO `sys_acl_module` VALUES (11, '', '系统日志', 3, '0.3', 0, 4, 1, '');
INSERT INTO `sys_acl_module` VALUES (13, '', '我的消息', 1, '0.1', 0, 1, 1, '');
INSERT INTO `sys_acl_module` VALUES (14, '', '我的项目', 1, '0.1', 0, 2, 1, '');

-- ----------------------------
-- Table structure for sys_admin_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_detail`;
CREATE TABLE `sys_admin_detail`  (
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报名号',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '0女  1男',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '职务',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `login_type` tinyint(4) NULL DEFAULT NULL COMMENT '0 ',
  `dept_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员为1，用户为2',
  `id_card` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `unique`(`email`, `phone`, `id_card`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员详细信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_admin_detail
-- ----------------------------
INSERT INTO `sys_admin_detail` VALUES ('5cb586662c5a267582c3ff8b', '林伟测试', '礼物内', NULL, '13075888888', NULL, '学生', '2019-04-16 15:38:14', '2019-04-16 15:50:20', NULL, 2, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb587ec2c5a267582c3ff8e', '4444', '林伟2', NULL, '18500000000', NULL, '校长', '2019-04-16 15:44:44', '2019-04-16 15:51:01', NULL, 2, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb588d4c141f82d56be4f3c', '林伟3', '林伟3', NULL, '18055555555', NULL, '学生', '2019-04-16 15:49:54', '2019-04-16 15:51:03', NULL, 2, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb6e7cc2c5a263d24bc9630', '123', '123123123', NULL, '18359787097', NULL, '123123', '2019-04-17 16:46:05', '2019-04-17 16:46:04', NULL, 2, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb6e84a2c5a263d24bc9631', 'jjj', 'zxc', NULL, '18359787098', NULL, 'asd', '2019-04-17 16:48:11', '2019-04-17 16:48:10', NULL, 6, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb6e98b2c5a263d24bc9633', 'lwl', 'lwl', NULL, '18359787099', NULL, '123123', '2019-04-17 16:53:31', '2019-04-17 16:53:31', NULL, 1, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb6ea9871fed81ff8428efa', 'lwn', 'lwn', NULL, '18359898098', NULL, 'houtai', '2019-04-17 16:58:29', '2019-04-17 16:58:29', NULL, 1, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb7111071fed834eccd14fb', '葛宇沙', '0417 测试', NULL, '15980587718', NULL, '保洁', '2019-04-17 19:42:08', '2019-04-17 19:42:08', NULL, 1, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb838da2c5a267179fd10d8', 'kjr', 'zmj', NULL, '18359787080', NULL, '123', '2019-04-18 16:44:11', '2019-04-18 16:44:11', NULL, 1, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb83fe62c5a260a2a571ca1', 'krr', 'zmj', NULL, '15970808099', NULL, '123', '2019-04-18 17:14:15', '2019-04-18 17:14:15', NULL, 16, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb840c12c5a260a2a571ca2', 'hohoho', 'xxx', NULL, '15980909089', NULL, '123', '2019-04-18 17:17:53', '2019-04-18 17:17:53', NULL, 20, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb91e272c5a260a2a571ca3', '呼啦啦啦', '嘻嘻嘻', NULL, '15970989098', NULL, 'queen', '2019-04-19 09:02:31', '2019-04-19 09:02:31', NULL, 16, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cb91e522c5a260a2a571ca4', '啦啦啦', '呀呀呀', NULL, '18398989098', NULL, '123', '2019-04-19 09:03:15', '2019-04-19 09:03:14', NULL, 20, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cbac97e2c5a265117382752', 'zmj', 'zmj', NULL, '15880705077', NULL, '职务1', '2019-04-20 15:25:51', '2019-04-20 15:26:07', NULL, 26, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cbac9c12c5a265117382753', '呜啦啦', '黑暗之神', NULL, '15880705078', NULL, '小魔仙', '2019-04-20 15:26:57', '2019-04-20 15:26:57', NULL, 26, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cbaca0d2c5a265117382754', '老师', 'teacher', NULL, '15870980989', NULL, 'teacher', '2019-04-20 15:28:14', '2019-04-20 15:28:13', NULL, 27, NULL);
INSERT INTO `sys_admin_detail` VALUES ('5cbaca392c5a265117382755', 'mouse', 'tiger', NULL, '18359789076', NULL, '胡哈哈', '2019-04-20 15:28:58', '2019-04-20 15:28:58', NULL, 27, NULL);
INSERT INTO `sys_admin_detail` VALUES ('admin', 'admin', NULL, NULL, NULL, NULL, '', '2019-03-08 21:34:44', '2019-04-03 14:39:59', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` bigint(32) NOT NULL DEFAULT 0 COMMENT '上级部门id',
  `level` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '部门层级',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT '部门在当前层级下的顺序，由小到大',
  `type` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '部门来源0系统1外来',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES (1, '一级部门', 2, '0.2', 1, 0, '', '2017-10-11 07:21:40', '2019-04-20 15:25:03');
INSERT INTO `sys_department` VALUES (2, '数学与信息学院', 0, '0', 1, 0, '', '2019-04-10 11:17:41', '2019-04-20 15:44:47');
INSERT INTO `sys_department` VALUES (4, '教务处', 0, '0', 1, 0, '', '2019-04-10 11:18:50', '2019-04-18 17:50:28');
INSERT INTO `sys_department` VALUES (6, '办公室1', 26, '0.26', 1, 0, '', '2019-04-10 11:20:24', '2019-04-19 14:01:51');
INSERT INTO `sys_department` VALUES (11, '1-1部门', 13, '0.1.11.13', 0, 1, '', '2019-04-17 14:14:14', '2019-04-18 14:52:49');
INSERT INTO `sys_department` VALUES (13, '1-1.1部门', 11, '0.1.11', 0, 1, '', '2019-04-17 14:14:46', '2019-04-17 14:14:45');
INSERT INTO `sys_department` VALUES (16, '1-2部门', 1, '0.1', 0, 0, '', '2019-04-17 16:53:11', '2019-04-19 09:00:40');
INSERT INTO `sys_department` VALUES (18, '1-2.22', 21, '0.1.16.18.21', 3, 0, '', '2019-04-17 16:53:43', '2019-04-18 15:45:49');
INSERT INTO `sys_department` VALUES (20, '111111111', 1, '0.1', 0, 0, '', '2019-04-18 09:34:38', '2019-04-19 09:00:45');
INSERT INTO `sys_department` VALUES (21, '222', 18, '0.1.16.18', 0, 0, '', '2019-04-18 09:40:45', '2019-04-18 14:56:34');
INSERT INTO `sys_department` VALUES (22, 'lalala', 6, '0.2.6', 3, 0, '', '2019-04-18 11:02:03', '2019-04-19 09:01:03');
INSERT INTO `sys_department` VALUES (25, 'abc', 22, '0.26.6.22', 3, 0, '', '2019-04-19 09:01:29', '2019-04-19 09:01:40');
INSERT INTO `sys_department` VALUES (26, '1wewe', 2, '0.2', 1, 0, '', '2019-04-19 09:41:06', '2019-04-20 15:46:31');
INSERT INTO `sys_department` VALUES (27, 'emm', 26, '0.2.26', 1, 0, '', '2019-04-19 14:01:30', '2019-04-20 15:29:07');
INSERT INTO `sys_department` VALUES (28, '123', 26, '0.26', 1, 1, '1', '2019-04-19 14:05:36', '2019-04-19 14:05:35');
INSERT INTO `sys_department` VALUES (29, '123123', 28, '0.26.28', 1, 1, '123', '2019-04-19 14:05:44', '2019-04-19 14:05:43');
INSERT INTO `sys_department` VALUES (31, '1-3部门', 1, '0.1', 3, 1, '', '2019-04-19 17:54:12', '2019-04-19 17:54:12');
INSERT INTO `sys_department` VALUES (32, '1-4部门', 1, '0.1', 4, 1, '', '2019-04-19 17:55:09', '2019-04-19 17:55:09');
INSERT INTO `sys_department` VALUES (33, '1-2.1部门', 16, '0.1.16', 1, 1, '', '2019-04-20 00:09:51', '2019-04-20 14:39:42');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '自增的id',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录ip',
  `operation_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作内容',
  `operation_date_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  `operation_result` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作结果',
  `reason` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'admin', '127.0.0.1', '添加用户 lth', '2019-03-10 23:03:09', '成功', 'q');
INSERT INTO `sys_log` VALUES (2, 'i', '', '', '2019-03-05 04:26:56', '', '');
INSERT INTO `sys_log` VALUES (3, 'ii', '', '', '2019-03-05 04:26:59', '', '');
INSERT INTO `sys_log` VALUES (4, 'ilhj', '', '', '2019-03-05 04:27:04', '', '');
INSERT INTO `sys_log` VALUES (5, 'hh', '', '', '2019-03-05 04:27:07', '', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('2', 'ceshi', '', '2019-03-06 03:55:11', '2019-03-07 11:35:54', 'lll');
INSERT INTO `sys_role` VALUES ('5cb58afec141f82d56be4f3d', '林伟角色', '123131', '2019-04-16 15:57:51', '2019-04-19 13:54:03', 'admin');
INSERT INTO `sys_role` VALUES ('5cb684432c5a267582c3ff8f', 'kjr123', 'kjr is cleaver123', '2019-04-17 09:41:24', '2019-04-19 13:56:15', 'admin');
INSERT INTO `sys_role` VALUES ('5cb837e92c5a267179fd10d7', '121212', '121233', '2019-04-18 16:40:10', '2019-04-19 13:56:27', 'admin');

-- ----------------------------
-- Table structure for sys_role_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_acl`;
CREATE TABLE `sys_role_acl`  (
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acl_code` varchar(9600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限code字符串,使用英文逗号隔开',
  PRIMARY KEY (`role_code`) USING BTREE,
  INDEX `fk_group_authorities_group`(`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_acl
-- ----------------------------
INSERT INTO `sys_role_acl` VALUES ('5cb58afec141f82d56be4f3d', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_role_acl` VALUES ('5cb684432c5a267582c3ff8f', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_role_acl` VALUES ('5cb837e92c5a267179fd10d7', 'I1,J1,J2,J3');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_group_members_group`(`role_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 'admin', '2');
INSERT INTO `sys_role_user` VALUES (100, '5cb6e7cc2c5a263d24bc9630', '2');
INSERT INTO `sys_role_user` VALUES (101, '5cb6e7cc2c5a263d24bc9630', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (104, '5cb6ea9871fed81ff8428efa', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (105, '5cb7111071fed834eccd14fb', '5ca589d471fed83d38e56f59');
INSERT INTO `sys_role_user` VALUES (106, '5cb838da2c5a267179fd10d8', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (109, '5cb840c12c5a260a2a571ca2', '2');
INSERT INTO `sys_role_user` VALUES (110, '5cb840c12c5a260a2a571ca2', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (114, '5cb91e522c5a260a2a571ca4', '5cb837e92c5a267179fd10d7');
INSERT INTO `sys_role_user` VALUES (115, '5cb91e522c5a260a2a571ca4', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (116, '5cb91e522c5a260a2a571ca4', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (117, '5cb6e84a2c5a263d24bc9631', '2');
INSERT INTO `sys_role_user` VALUES (118, '5cb6e84a2c5a263d24bc9631', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (120, '5cb83fe62c5a260a2a571ca1', '2');
INSERT INTO `sys_role_user` VALUES (121, '5cb91e272c5a260a2a571ca3', '2');
INSERT INTO `sys_role_user` VALUES (122, '5cb91e272c5a260a2a571ca3', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (123, '5cb91e272c5a260a2a571ca3', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (124, '5cb6e98b2c5a263d24bc9633', '2');
INSERT INTO `sys_role_user` VALUES (125, '5cb6e98b2c5a263d24bc9633', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (128, '5cbac97e2c5a265117382752', '2');
INSERT INTO `sys_role_user` VALUES (129, '5cbac97e2c5a265117382752', '5cb58afec141f82d56be4f3d');
INSERT INTO `sys_role_user` VALUES (130, '5cbac97e2c5a265117382752', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (133, '5cbac9c12c5a265117382753', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (134, '5cbac9c12c5a265117382753', '5cb837e92c5a267179fd10d7');
INSERT INTO `sys_role_user` VALUES (135, '5cbaca0d2c5a265117382754', '5cb837e92c5a267179fd10d7');
INSERT INTO `sys_role_user` VALUES (136, '5cbaca392c5a265117382755', '5cb684432c5a267582c3ff8f');
INSERT INTO `sys_role_user` VALUES (137, '5cbaca392c5a265117382755', '5cb58afec141f82d56be4f3d');

-- ----------------------------
-- Table structure for sys_super_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_super_user`;
CREATE TABLE `sys_super_user`  (
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '超级用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_super_user
-- ----------------------------
INSERT INTO `sys_super_user` VALUES ('admin');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `is_locked` int(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '有效性',
  `verification_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '验证码，可用在注册、忘记密码、验证码登录等场合',
  `verification_code_generate_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '验证码生成时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('5cb586662c5a267582c3ff8b', '$2a$10$bq5tfShk4mn3JIVCBBOBAO9DJyxGzV8DRUKFyBtqTHky3VNkayT2W', 0, '', '2019-04-20 15:29:57');
INSERT INTO `sys_user` VALUES ('5cb587ec2c5a267582c3ff8e', '$2a$10$pPktZzhUUHyElrVuJkaV5O4i5sX.icrSH11uCri/zslDrugUvrbka', 0, '', '2019-04-20 15:29:59');
INSERT INTO `sys_user` VALUES ('5cb588d4c141f82d56be4f3c', '$2a$10$joTeCCSVWqLsIFSFsHYqI..rezvF5O5dX6.7SnWwR4VRQCr/iXfY.', 0, '', '2019-04-20 15:29:54');
INSERT INTO `sys_user` VALUES ('5cb6e7cc2c5a263d24bc9630', '$2a$10$Lg5lkgeT3aTax8zEMkW8Q.0EjAxKuNeErazyPKUCx2ztiSoYAbsqS', 0, '', '2019-04-20 15:30:01');
INSERT INTO `sys_user` VALUES ('5cb6e84a2c5a263d24bc9631', '$2a$10$2YCiQRkkR6esXYQC05XryumGFKgdQsMGulogyHZD.6vPLdWVc.qTW', 0, '', '2019-04-19 14:03:03');
INSERT INTO `sys_user` VALUES ('5cb6e98b2c5a263d24bc9633', '$2a$10$2lrujcGsK6F9NVg07al5me1wWGuC5dK/2sRSiAuH1b1WSIl8jAnQu', 1, '', '2019-04-18 17:26:23');
INSERT INTO `sys_user` VALUES ('5cb6ea9871fed81ff8428efa', '$2a$10$MnF5vQ/MLteHzFsM0fUm/O1xvau2VKlFgIMkSY.dL1RL.oY.mQIQK', 0, '', '2019-04-20 15:29:52');
INSERT INTO `sys_user` VALUES ('5cb7111071fed834eccd14fb', '$2a$10$rVuxwZvFc0TYIzQcnYZKO.DWzn/X/zCY7fnP14pwUKv4bnsiHGQG2', 1, '', '2019-04-17 19:42:08');
INSERT INTO `sys_user` VALUES ('5cb838da2c5a267179fd10d8', '$2a$10$AFZnZjYicUsUPLd6tWnLeutFtDbQhZ1LyZwfO2RdHzx8C.5eTKmDK', 0, '', '2019-04-20 15:30:05');
INSERT INTO `sys_user` VALUES ('5cb83fe62c5a260a2a571ca1', '$2a$10$JlKSHIp6bYgwLKoOH9mMVetWAO90a9JfwWlftC4gnLfxcxXLSyjLu', 1, '', '2019-04-18 17:14:15');
INSERT INTO `sys_user` VALUES ('5cb840c12c5a260a2a571ca2', '$2a$10$mPid6PtSWS3an7WHL.0Ox.Hu1p40WUzVOlHw/yfFBM44r3EqszGYe', 1, '', '2019-04-19 14:23:31');
INSERT INTO `sys_user` VALUES ('5cb91e272c5a260a2a571ca3', '$2a$10$NaV9TsIhs1w0SQgkQxkKSec3Ihmh4RzcqpBBYIXNb8FrZeGclJvcS', 1, '', '2019-04-19 09:02:31');
INSERT INTO `sys_user` VALUES ('5cb91e522c5a260a2a571ca4', '$2a$10$0mGh9tITbW8wr25..jwWEeyflo7gbYyPCXu4AKw.aAmJcII/e/SMe', 0, '', '2019-04-19 09:03:37');
INSERT INTO `sys_user` VALUES ('5cbac97e2c5a265117382752', '$2a$10$Y9embo/Vdt3UPrnyst0C9u4RA9T7pjnf26GEtWodU4e5FBvyKtUCC', 0, '', '2019-04-20 15:27:08');
INSERT INTO `sys_user` VALUES ('5cbac9c12c5a265117382753', '$2a$10$DQqQxqGwPWWevna8eekgCungttYpwv.N.qSpyZrHHYB4XeDUHZup2', 0, '', '2019-04-20 15:30:08');
INSERT INTO `sys_user` VALUES ('5cbaca0d2c5a265117382754', '$2a$10$MHWH1F9XFfv5Fayk/36zduzsrvSY7v0cWZR8nqFyMON/ct.NKQpu2', 0, '', '2019-04-20 15:30:14');
INSERT INTO `sys_user` VALUES ('5cbaca392c5a265117382755', '$2a$10$nd1DexD/d8GnpbqhXQ8K2OirR1W/nsCx5KhMXnZeWXhvg9MnoP9wq', 0, '', '2019-04-20 15:30:16');
INSERT INTO `sys_user` VALUES ('admin', '$2a$10$jX/Wj7dWyOUp6FD9wTPs7.KimLep8DQGcGtyhEiPTSQd5kTuh03y6', 1, '', '2019-02-25 15:42:09');

-- ----------------------------
-- Table structure for sys_user_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_acl`;
CREATE TABLE `sys_user_acl`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `acl_code` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限code字符串使用英文逗号分隔',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1119503205001502722 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_acl
-- ----------------------------
INSERT INTO `sys_user_acl` VALUES (1118057623569539074, '5cb587ec2c5a267582c3ff8e', 'A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1');
INSERT INTO `sys_user_acl` VALUES (1118058921622290434, '5cb588d4c141f82d56be4f3c', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1118435447811850241, '5cb6e7cc2c5a263d24bc9630', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1118438583544336385, '5cb6ea9871fed81ff8428efa', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1');
INSERT INTO `sys_user_acl` VALUES (1118479756195557377, '5cb7111071fed834eccd14fb', 'D1,D2');
INSERT INTO `sys_user_acl` VALUES (1118797359011573762, '5cb838da2c5a267179fd10d8', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1118805841198682113, '5cb840c12c5a260a2a571ca2', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119043747532214274, '5cb91e522c5a260a2a571ca4', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1');
INSERT INTO `sys_user_acl` VALUES (1119119273202540546, '5cb6e84a2c5a263d24bc9631', 'A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119119351069794306, '5cb586662c5a267582c3ff8b', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1');
INSERT INTO `sys_user_acl` VALUES (1119169729043865601, '5cb83fe62c5a260a2a571ca1', 'I1,J1,J2,J3,A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119169763764314113, '5cb91e272c5a260a2a571ca3', 'A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119170012566233090, '5cb6e98b2c5a263d24bc9633', 'I1,J1,J2,J3,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119502490493427714, '5cbac97e2c5a265117382752', 'A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1,D1,D2,D3,D4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119502732542517249, '5cbac9c12c5a265117382753', 'I1,J1,J2,J3,A1,A2,A3,A4,E1,E2,F1,F2,F3,F4,G1,G2,G3,G4,G5,G6,G7');
INSERT INTO `sys_user_acl` VALUES (1119503019793620994, '5cbaca0d2c5a265117382754', 'I1,J1,J2,J3');
INSERT INTO `sys_user_acl` VALUES (1119503205001502721, '5cbaca392c5a265117382755', 'A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,H1');

-- ----------------------------
-- Table structure for sys_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_detail`;
CREATE TABLE `sys_user_detail`  (
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报名号',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '0女  1男',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `login_type` tinyint(4) NULL DEFAULT NULL COMMENT '0 ',
  `dept_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员为1，用户为2',
  `id_card` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `unique`(`email`, `phone`, `id_card`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户详细信息表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
