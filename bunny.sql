/*
Navicat MySQL Data Transfer

Source Server         : y
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : bunny

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-06-07 15:45:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE `t_attachment` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO `t_attachment` VALUES ('05cc7bd5-5185-4aab-9cc0-219ba5890aaa', '2017-06-01 17:15:40', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:15:40', '0', null, 'g1', '20170601/17/d38c8056f45f49e8b281c8e695d4a424.g1.png', 'png');
INSERT INTO `t_attachment` VALUES ('063805e1-357c-4e85-89d3-8070fe648dc6', '2017-06-02 14:28:43', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:28:43', '0', null, 'test', '20170602/14/d9fb2cc9eafb49b8bfbee9113aae773e.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('10acfaaf-c541-4d24-a7a7-2cc4081a06d1', '2017-06-06 16:04:58', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:04:58', '0', null, 'test', '20170606/16/610aecdb81a642c5a4e427b702a5dcb9.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('10eea55f-f259-48bf-91d8-b8198614d04f', '2017-06-07 14:40:14', 'SYS-ID', '1', 'SYS-ID', '2017-06-07 14:40:14', '0', null, 'logo', '20170607/14/b0c68742468148ef9f62068b768c3860.logo.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('113e8d35-3fcc-4e10-8823-b23316cf9494', '2017-06-06 16:01:06', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:01:06', '0', null, 'test', '20170606/16/da6bafd6f49f46bd8ea266b946c0939c.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('1d12c030-1fc3-4558-9478-13cc10f096a6', '2017-06-06 16:05:42', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:05:42', '0', null, 'test', '20170606/16/ed19a3ead1ed49f199f35ea5f7ae19f1.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('1d3e89e8-21ab-4e4d-8610-58bdacab41fb', '2017-06-02 14:05:34', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:05:34', '0', null, 'test', '20170602/14/98d52002d73f49eeb3d38b8dad503e8a.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('1e0c8184-aa68-4a50-acd2-737d7f8552be', '2017-06-02 14:44:45', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:44:45', '0', null, 'test', '20170602/14/afe1b50b286c43f7b0d8c0a14ebc2e20.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('1e195c26-a25b-4634-acba-c9b5d82df03d', '2017-06-02 15:38:44', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 15:38:44', '0', null, 'test', '20170602/15/8f639c241ea24386b5b6e24abb1980a1.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('1f474050-0d84-4303-aa2e-dede717ea7c2', '2017-06-02 13:50:54', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:50:54', '0', null, 'test', '20170602/13/1edd1c2269194033900a79dff6dfe232.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('21326915-dc4c-470b-8fff-b61d18fd42a3', '2017-06-06 14:27:28', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 14:27:28', '0', null, 'test', '20170606/14/17c9aa43144243fe99d990fb19952b8b.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('25950ff1-1887-43e9-8b3d-18492235a891', '2017-06-07 15:36:55', 'SYS-ID', '1', 'SYS-ID', '2017-06-07 15:36:55', '0', null, 'test', '20170607/15/ab5aeb15445a47a299632e65058c59dd.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('2b57e4db-0344-43f9-847d-9b3d38863b3c', '2017-06-02 14:04:27', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:04:27', '0', null, 'test', '20170602/14/dcd25e7c78ab4d2ca4b3409dfb529129.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('2cb7aa7a-a3a2-49da-8af6-7b46b10095a0', '2017-06-01 16:49:14', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 16:49:14', '0', null, 'A-B', '20170601/16/e015c95a33534f2dbb9dffcd36cba788.A-B.txt', 'txt');
INSERT INTO `t_attachment` VALUES ('2e2d409f-fe9e-43e1-b6f3-e022952cb900', '2017-06-01 17:10:59', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:10:59', '0', null, 'g1', '20170601/17/27ee7308bf884c1cadee10f96574cee4.g1', null);
INSERT INTO `t_attachment` VALUES ('30afec16-d048-4aed-9fc5-16ca3a7dbfaf', '2017-06-05 14:16:20', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 14:16:20', '0', null, 'test', '20170605/14/9712033062494d0e870738df6ce20f66.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('3311a7ef-5750-4c6e-b050-66328bd64fb1', '2017-06-06 16:01:15', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:01:15', '0', null, 'test', '20170606/16/e8478200be09409fb941d4c8a66cedb0.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('40315b10-5886-48eb-8f24-fae4b0f2484a', '2017-06-02 14:45:58', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:58', '0', null, 'test', '20170602/14/309bcfb8646048a08d08ce4ffff123b0.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('410a6509-e19b-4a5f-a4c6-8ff02cead457', '2017-06-02 14:45:20', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:20', '0', null, 'test', '20170602/14/07f1669a03274a3d8a3b6679177c816e.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('4383e7fe-b687-4910-9d75-46856bda6621', '2017-06-01 17:04:44', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:04:44', '0', null, 'A-B', '20170601/17/438efa79e84849a68d0d627ed312468d.A-B.txt', 'txt');
INSERT INTO `t_attachment` VALUES ('45933321-49eb-44e8-88c4-9279bb156fd0', '2017-06-05 10:02:57', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:02:57', '0', null, 'test', '20170605/10/b1c5f416b3cd4669ad810889caa7918f.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('47b28b46-7696-49fb-875a-5efb64779f06', '2017-06-02 14:49:03', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:49:03', '0', null, 'test', '20170602/14/8f18dff064334f6996ffaa00889ae85d.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('47eb81da-3222-4c65-81c9-56a41210f612', '2017-06-05 14:42:50', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 14:42:50', '0', null, 'test', '20170605/14/424c421f78904b1893b5e393fafbd3cc.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('485b0377-c7ac-4ffc-8cba-52f042675b97', '2017-06-02 14:37:10', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:37:10', '0', null, 'test', '20170602/14/2242c07f698e4a638d2dc4301705701c.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('4e2ff799-a901-4df2-84a6-b40c22972dbc', '2017-06-02 14:45:20', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:20', '0', null, 'test', '20170602/14/e85eee896c394194901dd9b1c305b0e4.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('51522655-8db7-40ee-9d2d-0133fe55b679', '2017-06-02 14:26:40', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:26:40', '0', null, 'aaa', '20170602/14/fe6726724ee24922a1cb504c42a836ad.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('5418e3cc-f4bb-4f85-86b1-9886ff32bc4c', '2017-06-02 14:13:41', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:13:41', '0', null, 'aaa', '20170602/14/da97890596744ec8a8ffd0f81a5e7c1d.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('573fb4f0-4b29-40ed-af82-73780f688c82', '2017-06-01 16:46:32', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 16:46:32', '0', null, 'A-B', '20170601/16/aa217f0dbbf64a6bbbe8e26571246894.A-B.txt', 'txt');
INSERT INTO `t_attachment` VALUES ('5ab47d79-c205-4164-b66b-16bcd4790b9b', '2017-06-01 17:15:33', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:15:33', '0', null, 'aaa', '20170601/17/d51a4d44b7924be19c4674c9cb4b7660.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('60764457-cce3-4517-b0f0-ef589ccce427', '2017-06-07 15:36:37', 'SYS-ID', '1', 'SYS-ID', '2017-06-07 15:36:37', '0', null, 'test', '20170607/15/c391c6f545c345d4905729e404e082b7.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('621bf37d-3b03-4a6d-af5d-a69e714ceefa', '2017-06-05 16:30:06', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 16:30:06', '0', null, 'test', '20170605/16/6c2ee5d187a449d1b4391aa625b08845.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6719ef46-a783-4128-ae28-fde1ee0864d8', '2017-06-05 10:01:54', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:01:54', '0', null, 'test', '20170605/10/b1713ca414774132b44abe8b09d5431d.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6c817e8e-a32e-4cf1-aa94-6114472fc999', '2017-06-06 14:25:23', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 14:25:23', '0', null, 'test', '20170606/14/93db89e1ad8a444491f6a32a7d3ba50d.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6df7b220-d9d4-450e-9882-c025173d5775', '2017-06-02 14:06:46', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:06:46', '0', null, 'test', '20170602/14/feeee8dc3d184a9fbe420b85d02b0311.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('71a5f110-0e82-4c6e-a51c-6bcd13f9054f', '2017-06-01 17:15:12', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:15:12', '0', null, 'test', '20170601/17/2f2a41ea3b7945c294c911eefc11d72f.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('737dd4ec-b949-424e-9cf5-3dab44fd236a', '2017-06-02 13:58:09', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:58:09', '0', null, 'aaa', '20170602/13/8592327249a74b81846ddbe6bfb6f126.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('7522660a-3488-4dc9-9f4a-1127404b9b18', '2017-06-02 13:57:06', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:57:06', '0', null, 'aaa', '20170602/13/c9c19a66a708419780fc32b7e1657536.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('773935be-242f-4bd6-92ff-1280cf280348', '2017-06-02 13:11:43', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:11:43', '0', null, 'A-B', '20170602/13/5e92dc8bd3af4bbc9c0a23053f0fe413.A-B.txt', 'txt');
INSERT INTO `t_attachment` VALUES ('7750d775-6494-4909-81b5-ac68f1b58224', '2017-06-02 17:00:15', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 17:00:15', '0', null, 'test', '20170602/17/d408f48c717444a18729f08b06818534.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('779ae8f9-88bc-409e-aa04-645e3eaa3e5c', '2017-06-02 14:45:20', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:20', '0', null, 'test', '20170602/14/e890ed36cf424cf086d6d4d7b741815a.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('7e84327b-a46f-41f4-9b26-35f992907d2a', '2017-06-01 17:10:50', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:10:50', '0', null, 'hgh', '20170601/17/44309ab62c0f47a382a63d78b24e5206.hgh.fg', 'fg');
INSERT INTO `t_attachment` VALUES ('7ece832c-b896-49c7-b4db-278cb2f14bc0', '2017-06-05 13:56:23', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 13:56:23', '0', null, 'test', '20170605/13/6b0ab6369ad14390ba76b54a54115137.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('7efcaaef-6aaf-4c19-a220-48a2e908b867', '2017-06-06 16:03:53', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:03:53', '0', null, 'test', '20170606/16/e32443f7e5144671bf369b9d9f6e7306.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('82fcd35e-c399-4aa6-ba67-afdd500f2d18', '2017-06-05 14:15:48', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 14:15:48', '0', null, 'test', '20170605/14/a5525e612b4f43d2bfaa6f4066f59dca.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('852b7a74-0980-440a-8616-1e905f09da50', '2017-06-01 17:09:44', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:09:44', '0', null, 'g', '20170601/17/75afe344ea5b4133a4a7905acc93d5c3.g.html', 'html');
INSERT INTO `t_attachment` VALUES ('85f097e7-dca0-4aa3-a54d-c0ac40b454c7', '2017-06-02 14:06:52', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:06:52', '0', null, 'test', '20170602/14/abf536a4c7534daab9960e6a26caa50e.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('88175aaa-5f26-46bb-b2cf-d64dd3147873', '2017-06-02 14:26:36', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:26:36', '0', null, 'test', '20170602/14/31eee309328c4ad8a49e95d4e06ebea3.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('89805aca-9b28-468a-800d-a5980a56ed34', '2017-06-02 15:38:35', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 15:38:35', '0', null, 'test', '20170602/15/89fda418db374f40b0b973eaca6e76e0.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('89b7ce42-b1d8-4a75-b44e-7edfb0654ec9', '2017-06-02 14:28:48', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:28:48', '0', null, 'test', '20170602/14/e1e2477460c84024a3f39190bc98c60a.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('8aba5932-e225-42ce-bd96-563763de27b8', '2017-06-01 16:54:46', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 16:54:46', '0', null, 'test', '20170601/16/89e9dc1e6600445aac593b1b73353ab4.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('8bfb44ab-53e2-4d44-85ff-e947fd5943dd', '2017-06-01 16:55:00', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 16:55:00', '0', null, 'test', '20170601/16/9a88d9345a254e749fb569ed86626023.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('8d5631e2-db42-4afe-8da8-0abf83043f1d', '2017-06-06 10:23:15', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:23:15', '0', null, 'test', '20170606/10/6e5dbe748f404c8489ce261d46b65127.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('9188a178-2370-408c-9cab-6a00a0212ead', '2017-06-02 14:13:13', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:13:13', '0', null, 'test', '20170602/14/542e36472d104672890014668165a497.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('93ed14a1-436b-4ce1-972b-91d3e3ec7bb5', '2017-06-02 17:25:40', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 17:25:40', '0', null, 'test', '20170602/17/144444f801744b4f80c6c0b76c200975.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('94b6cd45-977d-42cb-ba28-9119cbc21821', '2017-06-02 17:05:27', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 17:05:27', '0', null, 'test', '20170602/17/2a80519c076643c4aaacab0b82c7f186.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('95330844-0a36-4e78-bd1d-aa75c57ac698', '2017-06-02 14:03:46', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:03:46', '0', null, 'test', '20170602/14/3ef2e64028ad4a4b9932db0ca5f34026.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('95f10a04-b392-493d-bd90-60704e68144d', '2017-06-02 14:06:28', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:06:28', '0', null, 'test', '20170602/14/2d425d86792b4c8bbd1cd97de037c963.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('96253bcc-d0a0-4b6f-860d-999258bd8523', '2017-06-06 14:27:46', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 14:27:46', '0', null, 'test', '20170606/14/85abe3eb0ad2408ab03f515d404cf50a.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('999cb35a-c3c6-4a7f-87a8-9d8ef1bcac59', '2017-06-06 16:03:02', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:03:02', '0', null, 'test', '20170606/16/55f32c376d5743d4850fea75a53c03b5.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('9e330ae3-4971-41c0-bbc3-bfcd0e850107', '2017-06-07 15:36:52', 'SYS-ID', '1', 'SYS-ID', '2017-06-07 15:36:52', '0', null, 'test', '20170607/15/1c424405e667479e8b578b55cc39aaf3.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('a095a4ba-c35e-4222-9f64-5cbff9185da1', '2017-06-02 14:13:37', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:13:37', '0', null, 'a', '20170602/14/21554da8b8924489b1c4c9fcb8302b9d.a.txt', 'txt');
INSERT INTO `t_attachment` VALUES ('a1636bcb-d7dd-450e-b22e-05b8c9b1f2de', '2017-06-06 14:27:40', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 14:27:40', '0', null, 'test', '20170606/14/0ced2c5c32694071a1ab73da60bc4b47.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('a1f44a04-32dd-4c3a-b28f-38af0f173518', '2017-06-01 17:25:26', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:25:26', '0', null, 'a', '20170601/17/cf67abb2c7d74238ab9a383ad1ce964c.a.html', 'html');
INSERT INTO `t_attachment` VALUES ('a5d579e9-4b74-48be-94f6-c696fc31688f', '2017-06-05 16:29:58', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 16:29:58', '0', null, 'test', '20170605/16/17367bdca01541e3b2d57282ed5fc059.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('a83b6161-f9fe-456d-81e8-e53ed0aa6f4c', '2017-06-06 10:23:12', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:23:12', '0', null, 'test', '20170606/10/c6b6936e2ccf4f94bcb26de5fee36882.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('a9635349-21de-43e2-bc69-b74e6778353e', '2017-06-02 13:57:47', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:57:47', '0', null, 'aaa', '20170602/13/dff7ecb7695e4c459c43d3ffe63ec5ef.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('aff2f688-a49e-4684-adcb-ea3c042d0413', '2017-06-01 17:15:45', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:15:45', '0', null, 'aaa', '20170601/17/ce0c190952e041eb97f991efb75047a4.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('b0aee6ec-32e6-4f8f-b1d2-0c3242cc74e9', '2017-06-05 13:56:18', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 13:56:18', '0', null, 'test', '20170605/13/6a6e1b5276de4614b24304466b3d70b8.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('b6aab9cd-6a13-45aa-ba60-9b43d2bcf39f', '2017-06-01 16:55:03', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 16:55:03', '0', null, 'A-B', '20170601/16/180bd2e0d98a4d98a2a8d1d65111bbee.A-B.txt', 'txt');
INSERT INTO `t_attachment` VALUES ('b803e497-efed-4bce-91f1-5faf0916ad9b', '2017-06-05 10:02:50', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:02:50', '0', null, 'test', '20170605/10/c8fc2b5e8d9a4c7d87e9f31b6ccc50e7.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('b9e101e2-b225-4552-9f4a-3d5f393ca010', '2017-06-02 14:27:05', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:27:05', '0', null, 'test', '20170602/14/45e1333192c941c682c278e85c141aa2.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('bedf76c4-976a-4769-815b-e8cfe8139fce', '2017-06-02 14:45:19', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:19', '0', null, 'test', '20170602/14/61414d4b8db04b81bb60b0345b450574.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('bef2faaa-6df0-4e01-93c8-81442974473c', '2017-06-05 10:02:01', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:02:01', '0', null, 'test', '20170605/10/52c57c40c93e4168bdd3610f694c8c11.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('c025d95b-d59d-4839-861b-039cab4e2227', '2017-06-02 14:49:09', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:49:09', '0', null, 'test', '20170602/14/7609a82608e04acda63025acb1bf62ee.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('c43833ea-99ea-4470-a4f2-e09089502897', '2017-06-02 17:26:10', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 17:26:10', '0', null, 'test', '20170602/17/eb2f2030903d46f985af58ee3a090325.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('c8d223a6-04fb-4847-bacd-8d2528a63062', '2017-06-01 17:09:44', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:09:44', '0', null, 'test', '20170601/17/5b10d4c6a5734f07964e8c45ef4a69aa.test.html', 'html');
INSERT INTO `t_attachment` VALUES ('cd1e544d-b247-41a0-879b-301d13d33bba', '2017-06-02 13:33:35', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:33:35', '0', null, 'ajaxfileupload', '20170602/13/35fa4f3b614c4354a468dfa1f27393d2.ajaxfileupload.js', 'js');
INSERT INTO `t_attachment` VALUES ('cd41ed75-3a55-484a-9e72-3ed2c082534d', '2017-06-02 14:25:28', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:25:28', '0', null, 'test', '20170602/14/b2312b1468dd4b138c6926b8b0f049dc.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('cdc4e8c3-aabc-4b46-b871-7130eb147ed2', '2017-06-02 14:45:38', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:38', '0', null, 'test', '20170602/14/3f0da490047d4858a175ea727d66bedc.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('cdedd0c5-8ea2-4f4d-930f-4a4276509606', '2017-06-06 16:02:59', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:02:59', '0', null, 'test', '20170606/16/a14ee0b8fa6b40f7a3fee8d2f782ff2f.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('ce28209f-e9a5-419e-a6f6-50c3e9f08fef', '2017-06-02 14:26:46', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:26:46', '0', null, 'test', '20170602/14/73cb3bd695a2492d8c33bc8f4626c7c9.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('cee0497a-6ee3-44cb-a024-a3d3b1003883', '2017-06-02 14:45:45', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:45', '0', null, 'test', '20170602/14/33f28c568bd747c3b8e89a0e8c2d617a.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('cfcc8826-2644-4741-b221-1e6ea479a64e', '2017-06-05 14:16:16', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 14:16:16', '0', null, 'test', '20170605/14/29b51a5ab6b9474f816386dca44d40d0.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('d3d7f231-4535-45c0-8ad2-7b7d8679fbf0', '2017-06-02 17:05:22', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 17:05:22', '0', null, 'test', '20170602/17/5bf209e7e4394a248e3f260c3fa3b052.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('dd7ae989-5d0f-407b-a0ab-96153d4c1d15', '2017-06-05 16:51:19', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 16:51:19', '0', null, 'test', '20170605/16/b74d5fb7ce814af78e3406563004e9c4.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('e235cd85-38e6-43ba-8fb9-c721a2a2639b', '2017-06-02 15:38:27', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 15:38:27', '0', null, 'test', '20170602/15/b3018c4be22d4253ab045b05a226c38b.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('e2f42e77-cc65-4407-9079-c17cf701b43a', '2017-06-05 16:51:16', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 16:51:16', '0', null, 'test', '20170605/16/398bd3c76ba3481f97fdb3a1f471629d.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('e427f0f8-6622-48bd-a58a-9548e73fcca8', '2017-06-02 14:45:20', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:45:20', '0', null, 'test', '20170602/14/273bf9fb322846169ed53a972dc13260.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('eb1b29c7-d3f2-4402-b40e-59eb9ca7745c', '2017-06-01 17:15:20', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:15:20', '0', null, 'test', '20170601/17/c54e8263ef444bdf9f7582758bc2d38e.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('ebca4003-dceb-49d0-8fe3-cb7a247feeca', '2017-06-02 13:21:48', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:21:48', '0', null, 'ajaxfileupload', '20170602/13/4ef4832240d1409d97111bcda38c223d.ajaxfileupload.js', 'js');
INSERT INTO `t_attachment` VALUES ('eea381ec-df52-4f87-ab95-837c1f38ea14', '2017-06-06 16:00:44', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 16:00:44', '0', null, 'test', '20170606/16/f12571cd4ef24b85a160b5fb505c15e4.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('ef32c721-269c-4185-be6c-812433f25731', '2017-06-05 10:27:51', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:27:51', '0', null, 'test', '20170605/10/fe4b108f74064af89ab643be3dafc48f.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('efee04bd-17a3-4094-8163-c4c70bbc2d29', '2017-06-01 17:15:28', 'SYS-ID', '1', 'SYS-ID', '2017-06-01 17:15:28', '0', null, 'test', '20170601/17/77bd55e5c7044b3ea907ae8d959743c0.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('f01dba65-ed08-46e3-a300-1f9cbfb0a08b', '2017-06-02 13:39:57', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 13:39:57', '0', null, 'test', '20170602/13/42df9fb0bcc54c89ae8485d913a0595a.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('f60e599a-9c6e-44ae-864e-0e0808a82dab', '2017-06-02 14:25:35', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:25:35', '0', null, 'aaa', '20170602/14/07228d934cd14ccdb19f799eefc220af.aaa.html', 'html');
INSERT INTO `t_attachment` VALUES ('f8dd39da-eb81-40b9-a51a-b523b979f99e', '2017-06-05 09:54:05', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 09:54:05', '0', null, 'test', '20170605/9/a86dc51d194b4d3e94004d4f52c34ff7.test.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('fef5e868-7f9d-495e-9029-ae369aec4c20', '2017-06-02 14:27:13', 'SYS-ID', '1', 'SYS-ID', '2017-06-02 14:27:13', '0', null, 'test', '20170602/14/c3f8a984202c4fb2b56bdc8af1d6749e.test.jpg', 'jpg');

-- ----------------------------
-- Table structure for t_case
-- ----------------------------
DROP TABLE IF EXISTS `t_case`;
CREATE TABLE `t_case` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `auth_code` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `essence` varchar(255) DEFAULT NULL,
  `_order` bigint(20) DEFAULT NULL,
  `read_code` varchar(255) DEFAULT NULL,
  `release_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `_top` varchar(255) DEFAULT NULL,
  `up_down` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `image_ids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case
-- ----------------------------
INSERT INTO `t_case` VALUES ('039b991e-037f-4f6a-aec0-b32c07867ee4', '2017-06-05 13:56:29', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'werwer', 'Y', '5656', 'UR', '2017-06-05 13:56:29', 'wer', 'Y', 'Y', '501733b0-e537-4f9e-8197-16130b5dab7d', '7ece832c-b896-49c7-b4db-278cb2f14bc0,b0aee6ec-32e6-4f8f-b1d2-0c3242cc74e9');
INSERT INTO `t_case` VALUES ('088d8672-057a-4cbc-8a25-2921b59c4428', '2017-06-01 14:13:31', 'SYS-ID', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-02 16:25:11', '1', 'P', '大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦', 'Y', '0', 'UR', '2017-06-01 14:13:31', null, null, 'Y', 'SYS-ID', null);
INSERT INTO `t_case` VALUES ('10d8657b-ec68-40fa-b847-65b49544c748', '2017-06-06 14:28:02', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:28:02', '0', 'P', '大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦', 'Y', '66', 'UR', '2017-06-06 14:28:02', '99999999', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '96253bcc-d0a0-4b6f-860d-999258bd8523,a1636bcb-d7dd-450e-b22e-05b8c9b1f2de');
INSERT INTO `t_case` VALUES ('44ea75e6-3b41-4de4-9d08-e222e2e5d7f3', '2017-05-31 15:28:44', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'c大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦', 'Y', '3', 'UR', '2017-05-31 15:28:44', 'c', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('611b285e-1ea8-4594-94e5-e53df1e2def3', '2017-06-02 11:18:15', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'asdf大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦', 'Y', '3', 'UR', '2017-06-02 11:18:15', 'fg', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('6b9c89a8-832b-4eae-9565-601fe7ef1acb', '2017-06-02 15:38:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'sdfasdaf大大大大大大大大大大大大撒旦', 'Y', '32423', 'UR', '2017-06-02 15:38:59', 'dfgdfg', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('7fee4561-2439-47dc-8138-0d9c2b9ddb49', '2017-06-02 17:05:31', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', '起每年择优支持省杰出青年人才50名、优起每年择优支持省杰出青年人才50名、优', 'Y', '5656', 'UR', '2017-06-02 17:05:31', 'sdfsdf', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '94b6cd45-977d-42cb-ba28-9119cbc21821,d3d7f231-4535-45c0-8ad2-7b7d8679fbf0');
INSERT INTO `t_case` VALUES ('980a8aa8-d31e-416f-b682-ae6527e5b795', '2017-06-06 10:23:25', 'SYS-ID', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:39:25', '1', 'P', '大大大大大大大大大大大大撒旦起每年择优支持省杰出青年人才50名、优', 'Y', '0', 'UR', '2017-06-06 10:23:25', '点点滴滴', 'N', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('a20e1321-b530-4596-9158-1e9346f01586', '2017-06-06 16:03:06', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:37:37', '9', 'P', 'tty555tyutyu', 'Y', '8', 'UR', null, 'jtyutyu', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', ',1d12c030-1fc3-4558-9478-13cc10f096a6');
INSERT INTO `t_case` VALUES ('a3ee5619-a1f4-453b-9fe5-01250e53b641', '2017-06-07 15:36:58', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:36:58', '1', 'P', 'bbb', 'Y', '10', 'UR', null, 'bbb', 'Y', 'Y', 'SYS-ID', ',25950ff1-1887-43e9-8b3d-18492235a891');
INSERT INTO `t_case` VALUES ('b2dff13c-ecb9-4fcc-a83f-b56163df23bd', '2017-06-06 10:24:15', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:24:15', '16', 'P', '   Ø将制定《江苏省高新技术企业培育奖励资金管理办法》，明确入库培育企业的标准条件。\n   Ø从2017年起委托项目管理专业机构承担省各类科技计划项目评审等具体任务。\n   Ø打造线上与线下互联互通的全省技术产权交易市场。 \n   Ø省级各类科技计划优先支持高新区创新发展。\n   Ø支持地方普遍建立孵化器和众创空间天使投资引导基金，完善\"孵化+天使\"的服务新模式。\n   Ø自2016年起3年内新立项支持重大科技成果转化项目360项，安排专项资金30亿元。\n   Ø自2016年起每年启动实施10个左右重大科技示范项目，组织开展大气、水和土壤污染防治、重大疾病临床诊疗以及社会治理等100项社会发         展重大关键技术攻关和成果应用示范。\n   Ø自2017年起每年择优支持省杰出青年人才50名、优秀青年人才100名和青年科技人才1000名。', 'Y', '10001', 'UR', null, '【政策导读】关于加快推进产业科技创新中心和创新型省份建设的若干措施', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '113e8d35-3fcc-4e10-8823-b23316cf9494,3311a7ef-5750-4c6e-b050-66328bd64fb1');
INSERT INTO `t_case` VALUES ('b78a86a3-4bf2-4a9d-b270-7e80e3c1c0d8', '2017-05-31 15:24:08', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:24:17', '1', 'P', 'sdfsd', 'Y', '2', 'UR', '2017-05-31 15:24:08', 'a', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('be3d4b44-de31-4b57-a4f7-f540b1953083', '2017-06-05 16:51:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'b', 'Y', '6', 'UR', '2017-06-05 16:51:23', 'bbb', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', 'dd7ae989-5d0f-407b-a0ab-96153d4c1d15,e2f42e77-cc65-4407-9079-c17cf701b43a');
INSERT INTO `t_case` VALUES ('ca23df53-5768-45d8-b6d1-0e857bf9e84e', '2017-05-31 15:11:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:22:21', '1', 'P', 'a', 'Y', '1', 'UR', '2017-05-31 15:11:46', 'a', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('cea2e5d0-7d99-4e7b-beca-bb0e59b88c10', '2017-05-31 15:15:06', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:24:17', '1', 'P', 'b', 'Y', '2', 'UR', '2017-05-31 15:15:06', 'b', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('d147fbd5-bcf8-4a5a-a4da-badd15a0b318', '2017-06-06 14:27:28', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:27:28', '0', 'P', '0000000000000大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦大大大大大大大大大大大大撒旦', 'Y', '98', 'UR', '2017-06-06 14:27:03', '00000000000000', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', ',6c817e8e-a32e-4cf1-aa94-6114472fc999');
INSERT INTO `t_case` VALUES ('e24d3131-7f4d-467d-b39e-e0767df3f4fc', '2017-05-31 15:12:36', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:22:31', '1', 'P', 'b', 'Y', '2', 'UR', '2017-05-31 15:12:32', 'b', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('e8bf706a-bc59-4ad8-8117-9988188032ea', '2017-05-31 15:28:28', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'b', 'Y', '3', 'UR', '2017-05-31 15:28:28', 'b', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('ef9427ab-6995-42d2-8c06-857b4c719743', '2017-05-31 15:24:34', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'a', 'Y', '2', 'UR', '2017-05-31 15:24:34', 'a', 'Y', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', null);
INSERT INTO `t_case` VALUES ('f45f0ac1-7b94-459e-bfeb-bd8d61337a94', '2017-06-05 14:16:57', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:20:56', '1', 'P', 'nnn', 'Y', '8', 'UR', '2017-06-05 14:16:57', 'nnn', 'N', 'Y', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '30afec16-d048-4aed-9fc5-16ca3a7dbfaf,cfcc8826-2644-4741-b221-1e6ea479a64e');

-- ----------------------------
-- Table structure for t_case_category
-- ----------------------------
DROP TABLE IF EXISTS `t_case_category`;
CREATE TABLE `t_case_category` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `_order` bigint(20) DEFAULT NULL,
  `defaut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case_category
-- ----------------------------
INSERT INTO `t_case_category` VALUES ('1a20f030-3a07-4db6-8f6f-c696915116ec', '2017-05-31 13:58:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:58:23', '0', '科技金融', 'Y', '科技金融', '3', 'Y');
INSERT INTO `t_case_category` VALUES ('1df65619-835f-43cc-9ab8-1b2c3adf457f', '2017-05-31 13:58:37', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:58:37', '0', '检验检测', 'Y', '检验检测', '4', 'Y');
INSERT INTO `t_case_category` VALUES ('48140cf5-e2ce-4509-9b5f-008d43d3484c', '2017-05-31 13:57:51', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:22:44', '3', '热门案例', 'Y', '热门案例', '1', 'Y');
INSERT INTO `t_case_category` VALUES ('52eeb907-37d1-483d-8bca-8284b0641490', '2017-05-31 13:58:55', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:58:55', '0', '知识产权', 'Y', '知识产权', '5', 'Y');
INSERT INTO `t_case_category` VALUES ('6dc7b565-6111-47ea-a257-feae09743be2', '2017-05-31 13:59:07', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:03:06', '6', '科技人才', 'Y', '科技人才', '6', 'Y');
INSERT INTO `t_case_category` VALUES ('a2795ad6-272d-4f4c-a1c9-626f8c8549d8', '2017-06-01 12:41:13', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:21:10', '1', 'ee', 'Y', 'p', '1', 'Y');
INSERT INTO `t_case_category` VALUES ('b1fce668-df87-4c44-a123-140d31209621', '2017-05-31 13:58:07', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:05:59', '2', '技术转移', 'Y', '技术转移', '2', 'Y');
INSERT INTO `t_case_category` VALUES ('b6e33874-89c3-47c5-b83a-b05f919a35f0', '2017-06-01 12:39:56', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 10:21:10', '1', '3', 'Y', 'b', '4', 'N');
INSERT INTO `t_case_category` VALUES ('c1637507-a751-4e3c-9512-ad6835a53500', '2017-05-31 14:03:36', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:03:39', '1', '2', 'Y', ' 4', '3', 'N');
INSERT INTO `t_case_category` VALUES ('c6e6f005-0f69-4f9e-b679-ea91c17fa35e', '2017-06-01 11:20:53', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 12:38:14', '2', 'a', 'Y', 'v', '6', 'N');
INSERT INTO `t_case_category` VALUES ('e2a80376-9ed8-411a-a587-099d307a9aec', '2017-06-01 11:08:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 12:38:10', '4', 's', 'Y', 'f', '44', 'N');
INSERT INTO `t_case_category` VALUES ('f480ed5e-5488-4264-a889-08f7db908173', '2017-06-01 11:17:15', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 12:38:22', '3', '2323', 'Y', 'sdfsdf', '2', 'N');
INSERT INTO `t_case_category` VALUES ('faea5321-7008-46b8-8377-d313a36f6857', '2017-06-01 12:33:11', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 12:38:07', '1', 'fdf', 'Y', 'bbb', '55', 'Y');

-- ----------------------------
-- Table structure for t_case_category_ref
-- ----------------------------
DROP TABLE IF EXISTS `t_case_category_ref`;
CREATE TABLE `t_case_category_ref` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `case_category_id` varchar(255) DEFAULT NULL,
  `case_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case_category_ref
-- ----------------------------
INSERT INTO `t_case_category_ref` VALUES ('19571dbb-7d35-4ebd-854d-0992c242ec9f', '2017-06-06 14:28:02', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:28:02', '0', '1a20f030-3a07-4db6-8f6f-c696915116ec', '10d8657b-ec68-40fa-b847-65b49544c748');
INSERT INTO `t_case_category_ref` VALUES ('3658a46b-c50a-4440-bc46-da162ea1a1cb', '2017-06-06 16:05:43', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 16:05:43', '0', '1a20f030-3a07-4db6-8f6f-c696915116ec', 'a20e1321-b530-4596-9158-1e9346f01586');
INSERT INTO `t_case_category_ref` VALUES ('4117bb66-1408-4ce7-ad83-f17da5a49623', '2017-06-06 14:27:28', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:27:28', '0', 'b1fce668-df87-4c44-a123-140d31209621', 'd147fbd5-bcf8-4a5a-a4da-badd15a0b318');
INSERT INTO `t_case_category_ref` VALUES ('44cfad94-563c-40d0-a29c-eae0995127dc', '2017-06-06 16:05:43', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 16:05:43', '0', 'b1fce668-df87-4c44-a123-140d31209621', 'a20e1321-b530-4596-9158-1e9346f01586');
INSERT INTO `t_case_category_ref` VALUES ('48fa64b8-dd9b-429e-a6ca-a25e5dfba2eb', '2017-06-06 10:23:25', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:23:25', '0', '52eeb907-37d1-483d-8bca-8284b0641490', '980a8aa8-d31e-416f-b682-ae6527e5b795');
INSERT INTO `t_case_category_ref` VALUES ('4fc8335a-77bd-42ed-bfff-f344eb953ded', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', '52eeb907-37d1-483d-8bca-8284b0641490', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd');
INSERT INTO `t_case_category_ref` VALUES ('56787cde-9666-4c96-b822-804d896c5ec6', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', '1a20f030-3a07-4db6-8f6f-c696915116ec', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd');
INSERT INTO `t_case_category_ref` VALUES ('5b83580a-de8d-4036-8b14-8188e34cdf07', '2017-06-07 15:37:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:37:22', '0', '1a20f030-3a07-4db6-8f6f-c696915116ec', 'a3ee5619-a1f4-453b-9fe5-01250e53b641');
INSERT INTO `t_case_category_ref` VALUES ('5c0104b2-7f72-4e9c-89ca-9f9f1ee8617c', '2017-06-06 10:23:25', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:23:25', '0', 'undefined48140cf5-e2ce-4509-9b5f-008d43d3484c', '980a8aa8-d31e-416f-b682-ae6527e5b795');
INSERT INTO `t_case_category_ref` VALUES ('60f65311-e3a7-4e6a-aa06-b0c7cbb7acd4', '2017-06-06 14:27:28', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:27:28', '0', '1a20f030-3a07-4db6-8f6f-c696915116ec', 'd147fbd5-bcf8-4a5a-a4da-badd15a0b318');
INSERT INTO `t_case_category_ref` VALUES ('63eddd05-7291-4df1-94d8-dfa14ac307fb', '2017-06-07 15:37:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:37:22', '0', 'b1fce668-df87-4c44-a123-140d31209621', 'a3ee5619-a1f4-453b-9fe5-01250e53b641');
INSERT INTO `t_case_category_ref` VALUES ('a2bda763-19d7-4ccd-bd0a-fdc7265ef42d', '2017-06-06 14:28:02', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:28:02', '0', '1df65619-835f-43cc-9ab8-1b2c3adf457f', '10d8657b-ec68-40fa-b847-65b49544c748');
INSERT INTO `t_case_category_ref` VALUES ('c4ca84a7-4fb0-45b1-97af-63ea323394d2', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', 'b1fce668-df87-4c44-a123-140d31209621', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd');
INSERT INTO `t_case_category_ref` VALUES ('e4864f4e-68a4-4500-a724-4a2946cdd814', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', '1df65619-835f-43cc-9ab8-1b2c3adf457f', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd');

-- ----------------------------
-- Table structure for t_case_label_ref
-- ----------------------------
DROP TABLE IF EXISTS `t_case_label_ref`;
CREATE TABLE `t_case_label_ref` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `case_id` varchar(255) DEFAULT NULL,
  `case_label_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case_label_ref
-- ----------------------------
INSERT INTO `t_case_label_ref` VALUES ('068550dd-2a20-411f-8feb-7fadef0e1dfc', '2017-06-05 13:56:30', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 13:56:30', '0', '039b991e-037f-4f6a-aec0-b32c07867ee4', '977bf1e9-09ea-429a-8590-160567d432ce');
INSERT INTO `t_case_label_ref` VALUES ('0d62f136-e653-4c88-9246-997d4902274b', '2017-06-05 13:56:30', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 13:56:30', '0', '039b991e-037f-4f6a-aec0-b32c07867ee4', 'a1b101d6-941d-494b-9f7b-f4ef82d6cae6');
INSERT INTO `t_case_label_ref` VALUES ('22848fbb-5634-4270-a997-61bf0f9de291', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd', '88b2a130-93f9-4212-a908-b0104772c557');
INSERT INTO `t_case_label_ref` VALUES ('2ea5ff35-adfd-4e8d-85c3-dcdaab964b15', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd', '22cc8909-ec87-4e00-a3a5-36d979036c95');
INSERT INTO `t_case_label_ref` VALUES ('30e76c28-2d3f-49df-ac26-d833596888ce', '2017-06-07 15:37:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:37:22', '0', 'a3ee5619-a1f4-453b-9fe5-01250e53b641', '4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('40ede5dd-03d0-4fc5-812e-64fc9803ebb4', '2017-06-06 14:27:29', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:27:29', '0', 'd147fbd5-bcf8-4a5a-a4da-badd15a0b318', '4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('506fbab5-2ced-45b4-87c2-25839b71c3b8', '2017-06-06 16:05:43', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 16:05:43', '0', 'a20e1321-b530-4596-9158-1e9346f01586', '4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('6a5fc12f-18d7-4eef-898a-79f5dceb4ca5', '2017-06-06 10:23:25', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:23:25', '0', '980a8aa8-d31e-416f-b682-ae6527e5b795', 'undefined4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('6dd33565-2c13-407e-8265-3746e5bcc459', '2017-06-06 14:28:02', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:28:02', '0', '10d8657b-ec68-40fa-b847-65b49544c748', '51d6e8fb-0100-43df-95ee-74d5cf465cdd');
INSERT INTO `t_case_label_ref` VALUES ('a3a5b3ee-e1f8-45c2-b569-da57fb93fca2', '2017-06-06 16:05:43', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 16:05:43', '0', 'a20e1321-b530-4596-9158-1e9346f01586', '22cc8909-ec87-4e00-a3a5-36d979036c95');
INSERT INTO `t_case_label_ref` VALUES ('a4fe4408-45ce-4e46-b5bb-cf41785a754d', '2017-06-05 16:51:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 16:51:23', '0', 'be3d4b44-de31-4b57-a4f7-f540b1953083', '4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('c5aaac19-2868-46c5-be60-ea391615314e', '2017-06-07 15:37:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:37:22', '0', 'a3ee5619-a1f4-453b-9fe5-01250e53b641', '51d6e8fb-0100-43df-95ee-74d5cf465cdd');
INSERT INTO `t_case_label_ref` VALUES ('ca591065-d8fe-4b23-bc95-bd175f3233ca', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd', '5411dcf0-1cd2-4a5e-8231-f9408fa6dafd');
INSERT INTO `t_case_label_ref` VALUES ('cde449f2-55ee-45d8-947a-7076a32f33a4', '2017-06-06 14:27:29', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:27:29', '0', 'd147fbd5-bcf8-4a5a-a4da-badd15a0b318', '22cc8909-ec87-4e00-a3a5-36d979036c95');
INSERT INTO `t_case_label_ref` VALUES ('e5486307-077f-48e4-82fa-a4125d9c52b2', '2017-06-07 15:06:18', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:06:18', '0', 'b2dff13c-ecb9-4fcc-a83f-b56163df23bd', '4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('e9b4c9d1-1358-4db4-8a78-532466141fb3', '2017-06-06 14:28:02', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 14:28:02', '0', '10d8657b-ec68-40fa-b847-65b49544c748', '4e57fe4d-1f38-4f15-9165-b735a26e7b1f');
INSERT INTO `t_case_label_ref` VALUES ('fe64635a-0e7c-4f5a-9649-4c3eec8ad196', '2017-06-05 16:51:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 16:51:23', '0', 'be3d4b44-de31-4b57-a4f7-f540b1953083', '51d6e8fb-0100-43df-95ee-74d5cf465cdd');

-- ----------------------------
-- Table structure for t_label
-- ----------------------------
DROP TABLE IF EXISTS `t_label`;
CREATE TABLE `t_label` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_enable` varchar(255) DEFAULT NULL,
  `_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_label
-- ----------------------------
INSERT INTO `t_label` VALUES ('22cc8909-ec87-4e00-a3a5-36d979036c95', '2017-05-31 14:29:11', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:29:22', '1', '2', '2', '1', '标签9');
INSERT INTO `t_label` VALUES ('4e57fe4d-1f38-4f15-9165-b735a26e7b1f', '2017-05-31 14:26:33', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:27:17', '2', '4', '4', '1', '标签8');
INSERT INTO `t_label` VALUES ('51d6e8fb-0100-43df-95ee-74d5cf465cdd', '2017-06-01 14:20:39', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 14:20:46', '1', '1', '1', '1', '标签7');
INSERT INTO `t_label` VALUES ('5411dcf0-1cd2-4a5e-8231-f9408fa6dafd', '2017-05-31 14:26:21', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:27:11', '1', '2', '2', '1', '标签6');
INSERT INTO `t_label` VALUES ('88b2a130-93f9-4212-a908-b0104772c557', '2017-06-01 14:46:47', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 14:46:47', '0', '1', '1', '1', '标签5');
INSERT INTO `t_label` VALUES ('977bf1e9-09ea-429a-8590-160567d432ce', '2017-05-31 14:26:15', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:27:17', '1', '1', '1', '1', '标签4');
INSERT INTO `t_label` VALUES ('a1b101d6-941d-494b-9f7b-f4ef82d6cae6', '2017-05-31 14:26:27', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:27:17', '1', '3', '3', '1', '标签3');
INSERT INTO `t_label` VALUES ('afd086eb-581a-4dc3-96d9-dc3e3ec98901', '2017-05-31 14:29:03', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:30:25', '2', '1', '3', '1', '标签2');
INSERT INTO `t_label` VALUES ('daaf6643-b890-4e75-a0ce-c993914c2d35', '2017-05-31 14:29:17', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:30:25', '1', '3', '3', '1', '标签1');

-- ----------------------------
-- Table structure for t_sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dictionary`;
CREATE TABLE `t_sys_dictionary` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_dictionary
-- ----------------------------
INSERT INTO `t_sys_dictionary` VALUES ('232f04a5-27c0-4cf0-af7b-591437657e19', '2017-05-31 14:25:43', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:25:43', '0', 'LABEL_USEABLE', '标签是否启用');
INSERT INTO `t_sys_dictionary` VALUES ('242ed477-bbdc-43bb-8433-5ed773f4d2d2', '2017-05-31 15:28:49', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:28:49', '0', 'TEC_USEABLE', '技术领域是否启用');
INSERT INTO `t_sys_dictionary` VALUES ('5c4b639d-4259-4963-9a39-0ca46c7c7fa0', '2017-06-05 12:54:07', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 12:54:07', '0', 'USER_DISABLED', '用户状态');
INSERT INTO `t_sys_dictionary` VALUES ('5f456bb1-e0d4-46d5-aa69-ba7aef061718', '2017-05-31 15:01:01', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:01:01', '0', 'SEN_USEABLE', '敏感词是否启用');
INSERT INTO `t_sys_dictionary` VALUES ('66cb2e14-a5c5-43b7-b1f6-41a1d7bdaa44', '2017-05-31 13:52:14', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:52:14', '0', 'CASE_CATEGORY_ENABLE', '案例分类是否启用');
INSERT INTO `t_sys_dictionary` VALUES ('691be291-698e-4185-aa96-ad1c2fb77cea', '2017-06-01 10:22:06', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 10:22:06', '0', 'CASE_CATEGORY_DEFAULT', '案例分类是否默认');
INSERT INTO `t_sys_dictionary` VALUES ('7749fce4-589c-4997-a7cc-7100ffbf64ec', '2017-05-31 13:49:25', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:51:01', '2', 'CASE_UP_DOWM', '案例上架/下架');
INSERT INTO `t_sys_dictionary` VALUES ('7c8a22ba-50eb-4c61-9cf6-84e7370f4c5d', '2017-05-31 13:50:02', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:50:52', '1', 'CASE_AUTH', '案例审核状态');
INSERT INTO `t_sys_dictionary` VALUES ('8b98bd40-8fab-4756-9b5b-121f9e6e928e', '2017-05-31 13:51:27', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:51:27', '0', 'CASE_READ', '案例是否已读');
INSERT INTO `t_sys_dictionary` VALUES ('9e9e44e5-61eb-45e3-ae89-729621e2e9e0', '2017-05-31 13:48:26', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:50:46', '1', 'CASE_ESSENCE', '案例精华？');
INSERT INTO `t_sys_dictionary` VALUES ('a9e99feb-1751-4656-8af6-0ec05c248bc8', '2017-05-31 13:46:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:46:40', '0', 'CASE_TOP', '案例是否置顶');

-- ----------------------------
-- Table structure for t_sys_dictionary_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dictionary_data`;
CREATE TABLE `t_sys_dictionary_data` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_dictionary_data
-- ----------------------------
INSERT INTO `t_sys_dictionary_data` VALUES ('0463848a-af66-495f-9492-eb9583c79c4b', '2017-06-01 10:22:21', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 10:22:21', '0', 'CASE_CATEGORY_DEFAULT', '默认', '1', 'Y');
INSERT INTO `t_sys_dictionary_data` VALUES ('0ab32088-48e0-48e9-b69e-7f2c1c3f6808', '2017-05-31 15:29:09', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:09', '0', 'TEC_USEABLE', '禁用', '2', '0');
INSERT INTO `t_sys_dictionary_data` VALUES ('0c23d4a8-6794-47db-b16c-31dedce9c845', '2017-05-31 13:48:39', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:48:39', '0', 'CASE_ESSENCE', '精华', '1', 'Y');
INSERT INTO `t_sys_dictionary_data` VALUES ('166c4b88-fb00-496c-abd7-5b4b570b54d8', '2017-05-31 13:47:55', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:47:55', '0', 'CASE_TOP', '置顶', '1', 'Y');
INSERT INTO `t_sys_dictionary_data` VALUES ('1697deca-2a7d-49da-8859-4d168f1d6dd8', '2017-05-31 15:01:13', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:01:13', '0', 'SEN_USEABLE', '启用', '1', '1');
INSERT INTO `t_sys_dictionary_data` VALUES ('1b8c3467-243a-4cc1-9ad9-250f48366dec', '2017-06-05 12:54:26', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 12:54:26', '0', 'USER_DISABLED', '启用', '1', '1');
INSERT INTO `t_sys_dictionary_data` VALUES ('304049d5-878a-40ac-8325-ee662f69e552', '2017-06-05 12:54:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 12:54:41', '0', 'USER_DISABLED', '禁用', '2', '0');
INSERT INTO `t_sys_dictionary_data` VALUES ('3042ce9b-f90c-4954-ba8f-2616c845afbe', '2017-05-31 13:48:55', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:48:55', '0', 'CASE_ESSENCE', '非精华', '2', 'N');
INSERT INTO `t_sys_dictionary_data` VALUES ('3dd9dd56-68a9-4f2c-b7ee-3a7537a70b2d', '2017-05-31 15:28:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:28:59', '0', 'TEC_USEABLE', '启用', '1', '1');
INSERT INTO `t_sys_dictionary_data` VALUES ('49783af2-80e2-41c7-8830-561cc49960c6', '2017-05-31 14:25:56', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:25:56', '0', 'LABEL_USEABLE', '启用', '1', '1');
INSERT INTO `t_sys_dictionary_data` VALUES ('5a91c1a6-6682-4fe0-a738-393fda7e7cf5', '2017-05-31 13:51:49', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:51:49', '0', 'CASE_READ', '未读', '2', 'UR');
INSERT INTO `t_sys_dictionary_data` VALUES ('7110653c-b0a8-404c-a1e8-49263dd99b4b', '2017-05-31 13:49:38', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:49:38', '0', 'CASE_UP_DOWM', '上架', '1', 'Y');
INSERT INTO `t_sys_dictionary_data` VALUES ('7b1412f1-8d72-474b-b14e-a6a4c4e61af9', '2017-05-31 13:50:31', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:50:31', '0', 'CASE_AUTH', '审核不通过', '2', 'R');
INSERT INTO `t_sys_dictionary_data` VALUES ('81cd126b-770e-4446-9a8c-aec0f10644d0', '2017-05-31 13:51:37', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:51:37', '0', 'CASE_READ', '已读', '1', 'R');
INSERT INTO `t_sys_dictionary_data` VALUES ('830d8bd3-55b8-4257-8add-28a47c8cb44f', '2017-06-01 10:22:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-01 10:22:32', '0', 'CASE_CATEGORY_DEFAULT', '非默认', '2', 'N');
INSERT INTO `t_sys_dictionary_data` VALUES ('8ff97623-e6e8-43bd-96eb-0f09cdb0ee62', '2017-05-31 13:50:19', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:50:19', '0', 'CASE_AUTH', '审核通过', '1', 'P');
INSERT INTO `t_sys_dictionary_data` VALUES ('af13feb1-e379-478c-a03c-8b2763d87563', '2017-05-31 15:01:21', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:01:21', '0', 'SEN_USEABLE', '禁用', '2', '0');
INSERT INTO `t_sys_dictionary_data` VALUES ('b839031a-8112-46eb-9ec6-175b17674d2f', '2017-05-31 14:26:03', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:26:03', '0', 'LABEL_USEABLE', '禁用', '2', '0');
INSERT INTO `t_sys_dictionary_data` VALUES ('be4c7fc7-9b8f-4a41-8ed3-ebcfa1ce33a9', '2017-05-31 13:52:24', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:52:24', '0', 'CASE_CATEGORY_ENABLE', '启用', '1', 'Y');
INSERT INTO `t_sys_dictionary_data` VALUES ('e8f9af69-fa72-4e02-824c-7d57b59e6634', '2017-05-31 13:48:06', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:48:06', '0', 'CASE_TOP', '非置顶', '2', 'N');
INSERT INTO `t_sys_dictionary_data` VALUES ('ecf14fc8-f62a-4811-9417-60589e365886', '2017-05-31 13:49:47', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:49:47', '0', 'CASE_UP_DOWM', '下架', '2', 'N');
INSERT INTO `t_sys_dictionary_data` VALUES ('edd171ca-5f77-4cf2-a4e7-aad8f26b6b52', '2017-05-31 13:52:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 13:52:32', '0', 'CASE_CATEGORY_ENABLE', '禁用', '2', 'N');

-- ----------------------------
-- Table structure for t_sys_element
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_element`;
CREATE TABLE `t_sys_element` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `func_id` varchar(255) DEFAULT NULL,
  `menu_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_element
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `cls` varchar(255) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_menu
-- ----------------------------
INSERT INTO `t_sys_menu` VALUES ('0ab1dd86-aebe-446d-bbbb-7a19b4d3ed5a', '2017-06-06 09:45:30', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:30', '0', '', 'main-bodyindex', '公告', 'b5a2f182-d34d-4fd1-aabe-fa56d7cbf558', '2', '/pages/content/content-list.html');
INSERT INTO `t_sys_menu` VALUES ('11cab484-1bda-48f8-b8b9-579f58d4ea1f', '2017-05-31 11:20:30', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:20:30', '0', '', 'main-bodyindex', '系统参数', 'eb9c830c-115b-47aa-beaf-406614774f77', '1', '/pages/sysparam/sysparam-list.html');
INSERT INTO `t_sys_menu` VALUES ('1af2148e-1a78-41f9-bbff-6165237d6283', '2017-05-31 14:22:45', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:58', '1', '', 'main-bodyindex', '标签管理', '-1', '2', '');
INSERT INTO `t_sys_menu` VALUES ('1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', '2017-05-31 11:20:58', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:20:58', '0', '', 'main-bodyindex', '角色', 'eb9c830c-115b-47aa-beaf-406614774f77', '3', '/pages/sys/role/sysrole-list.html');
INSERT INTO `t_sys_menu` VALUES ('21bbcd4c-5616-4f10-a3f0-7704a58d0db1', '2017-05-31 11:23:17', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:23:17', '0', '', 'main-bodyindex', '案例', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', '1', '/pages/casemag/casemag-list.html');
INSERT INTO `t_sys_menu` VALUES ('225733ba-b2db-4e9b-994a-5901dc8f4759', '2017-05-31 16:02:13', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:13', '0', '', 'main-bodyindex', '话题', '692b96a0-3943-4e5c-a9fb-8f31477706ff', '1', '/pages/thememag/thememag-list.html');
INSERT INTO `t_sys_menu` VALUES ('240b983f-7a39-4e57-975d-5b13366debc0', '2017-05-31 14:59:00', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:23', '1', 'null', 'main-bodyindex', '敏感词管理', '-1', '1', 'null');
INSERT INTO `t_sys_menu` VALUES ('4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', '2017-05-31 11:22:14', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:22:14', '0', '', 'main-bodyindex', '字典明细', 'eb9c830c-115b-47aa-beaf-406614774f77', '6', '/pages/dictionary/dictionaryData-list.html');
INSERT INTO `t_sys_menu` VALUES ('52414265-96d5-49dc-9d05-27fdb5286bda', '2017-05-31 11:21:53', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:21:53', '0', '', 'main-bodyindex', '字典类型', 'eb9c830c-115b-47aa-beaf-406614774f77', '5', '/pages/dictionary/dictionary-list.html');
INSERT INTO `t_sys_menu` VALUES ('692b96a0-3943-4e5c-a9fb-8f31477706ff', '2017-05-31 16:01:15', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:17', '1', 'null', 'main-bodyindex', '话题管理', '-1', '1', 'null');
INSERT INTO `t_sys_menu` VALUES ('7bce61fb-34e0-42dc-9470-75ca653ca74e', '2017-05-31 14:23:48', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:04:24', '1', '', 'main-bodyindex', '标签', '1af2148e-1a78-41f9-bbff-6165237d6283', '1', '/pages/labelmag/labelmag-list.html');
INSERT INTO `t_sys_menu` VALUES ('809bb104-2a5f-403f-aae1-9536b15a9057', '2017-05-31 15:27:43', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:15', '1', 'null', 'main-bodyindex', '技术领域管理', '-1', '1', 'null');
INSERT INTO `t_sys_menu` VALUES ('83f76d4d-c406-4ceb-b983-960e6236869f', '2017-05-31 11:21:15', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:21:15', '0', '', 'main-bodyindex', '菜单', 'eb9c830c-115b-47aa-beaf-406614774f77', '4', '/pages/menu/menu-list.html');
INSERT INTO `t_sys_menu` VALUES ('8b1c022b-d136-44f9-8a8a-23a2911a2ef5', '2017-05-31 11:20:44', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:20:44', '0', '', 'main-bodyindex', '用户', 'eb9c830c-115b-47aa-beaf-406614774f77', '2', '/pages/sys/user/sysuser-list.html');
INSERT INTO `t_sys_menu` VALUES ('97a67db9-39a2-45eb-a04b-16dbb9a5df64', '2017-05-31 11:23:39', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:25:38', '1', '', 'main-bodyindex', '案例分类', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', '2', '/pages\\casecategory\\casecategory-list.html');
INSERT INTO `t_sys_menu` VALUES ('b4c7f788-9cfd-4277-8913-c4e92ee1678f', '2017-05-31 15:28:16', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:28:16', '0', '', 'main-bodyindex', '技术领域', '809bb104-2a5f-403f-aae1-9536b15a9057', '1', '/pages/tecfieldmanagement/tecfieldmanagement-list.html');
INSERT INTO `t_sys_menu` VALUES ('b5a2f182-d34d-4fd1-aabe-fa56d7cbf558', '2017-06-05 10:59:20', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:09', '1', '', 'main-bodyindex', '消息', '-1', '6', '');
INSERT INTO `t_sys_menu` VALUES ('cdf43a53-b7c7-4cf4-88f9-952ebda8d792', '2017-06-05 11:00:14', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:14', '0', '', 'main-bodyindex', '短信', 'b5a2f182-d34d-4fd1-aabe-fa56d7cbf558', '1', '/pages/message/message-list.html');
INSERT INTO `t_sys_menu` VALUES ('df4ca75f-2a5f-4f03-92f8-c2a4609eeeb8', '2017-05-31 14:59:39', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:39', '0', '', 'main-bodyindex', '敏感词', '240b983f-7a39-4e57-975d-5b13366debc0', '1', '/pages/sensitive/sen-list.html');
INSERT INTO `t_sys_menu` VALUES ('e6bc1247-24f0-4a34-9c55-dc052449d5a4', '2017-05-31 11:22:53', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:23:09', '1', '', 'main-bodyindex', '案例管理', '-1', '2', '');
INSERT INTO `t_sys_menu` VALUES ('eb9c830c-115b-47aa-beaf-406614774f77', '2017-05-31 11:20:08', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:20:08', '0', '', 'main-bodyindex', '系统管理', '-1', '1', '');

-- ----------------------------
-- Table structure for t_sys_param
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_param`;
CREATE TABLE `t_sys_param` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_param
-- ----------------------------
INSERT INTO `t_sys_param` VALUES ('180a4ec0-5e93-4991-8ce9-5315484370c2', '2017-06-07 15:09:34', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:33:12', '1', 'A', 'A', 'A');
INSERT INTO `t_sys_param` VALUES ('99934f3c-03fb-43ce-a9cf-0d078151abc2', '2017-06-07 15:33:08', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:33:17', '1', 'B', 'B', 'B');

-- ----------------------------
-- Table structure for t_sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_resources`;
CREATE TABLE `t_sys_resources` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_resources
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('3285914c-7879-4a69-b7a1-e8ca1699eb01', '2017-06-07 15:33:49', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:33:49', '0', 'A', 'A');
INSERT INTO `t_sys_role` VALUES ('d627f8ff-6c67-496b-88c7-9ab9d3afea7c', '2017-05-31 11:24:17', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:24:17', '0', '系统超级管理员', '系统超级管理员');

-- ----------------------------
-- Table structure for t_sys_role_element
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_element`;
CREATE TABLE `t_sys_role_element` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `element_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_element
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_menu`;
CREATE TABLE `t_sys_role_menu` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `check_state` varchar(255) DEFAULT NULL,
  `menu_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_menu
-- ----------------------------
INSERT INTO `t_sys_role_menu` VALUES ('055f09a5-2868-4912-b49b-8a2f507aa42a', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'UNDETERMINED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('089d2301-666e-4e25-be14-78060b9ed1d8', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('097eeb6c-923e-404b-b6f4-893dbef428be', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('0a252f8c-294a-4877-afff-e21b5c4bf44c', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('0e322ddc-281f-4b16-8fb3-9c1a1a247676', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('116e92af-87e9-402f-a616-1347954a2759', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '225733ba-b2db-4e9b-994a-5901dc8f4759', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('144a69c8-5670-400a-955b-d425bcab1c5a', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', 'b4c7f788-9cfd-4277-8913-c4e92ee1678f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('174d2108-93e0-4cf2-a391-5fdb74d6c4cd', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('17805c4d-f879-42ac-8e9f-39ccc0eaf860', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '240b983f-7a39-4e57-975d-5b13366debc0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('1b9f7b5b-d521-4bee-bb08-deb4a4a61d75', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('1c48e80b-afca-44d3-b4bb-8d0d34e0e1f2', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('1c9f10ed-8f26-4ce2-9f83-2acf2863e2e3', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'UNDETERMINED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('1cdef60b-c164-49db-911f-04e87a902890', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('1fee24c6-a773-48a6-a24f-c9138ad436dd', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('21884f58-0a7e-4ab8-9822-a49fd6a22f7f', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'UNDETERMINED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('26530092-dc88-4f0f-8202-be3d36097814', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('281c525b-3826-4c73-94fd-fda0888d39b3', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', 'df4ca75f-2a5f-4f03-92f8-c2a4609eeeb8', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('2a987f4a-1222-4682-9183-36573bc331ef', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'UNDETERMINED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('311134c6-b6ed-4635-8275-46038ccf78fd', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('359d8aba-43dc-4b77-8739-f49fdffdb3f0', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('363529f5-12f5-4b86-bfc2-8407c9088698', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('3964f34b-1dc0-47b3-ab87-15d99a0b36b3', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('397ebb1e-0ebe-4112-b5ac-2c61cff192c4', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('3cf3ceab-7c05-4e2e-99d0-7134f57b644a', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('3d046f64-863e-477b-b36f-7545c4ecd9fe', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('3f76fbe5-d2ad-4b48-afc8-45102004b6a4', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '692b96a0-3943-4e5c-a9fb-8f31477706ff', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('3fd79e14-8d07-4ca2-b9e1-27e5396b6cbd', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4145bcad-2f68-498a-bdd1-d66c3202d13f', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '225733ba-b2db-4e9b-994a-5901dc8f4759', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4c16cb29-72fd-4f20-ae4c-38b9347296a0', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4c5a5056-61ac-4177-ac7a-45082ae49358', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4c75faf1-d050-41e5-9a44-01a620f29d28', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4d537e65-ba66-4cb4-8cfc-e8915e3a7030', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4e42b37e-001e-48ba-b008-8862c19e5db3', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '240b983f-7a39-4e57-975d-5b13366debc0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('4ffd7189-38dd-4bad-aafa-77981cc44b0e', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '240b983f-7a39-4e57-975d-5b13366debc0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('51da3025-d61f-451a-ad5e-5d433addcef1', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('52045708-a87b-4211-9959-951ebad0d8ec', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('52a9c54c-f3d5-4de9-9d98-5baf506cd8cb', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('556a2142-3658-44ed-b373-5983cb278482', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'UNDETERMINED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('5a404971-8e0d-45d5-8a4f-c5e58001fdf5', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('5abd8e15-0e20-4621-a087-e64721c4180e', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('5db5a81e-5276-4597-8062-e3c794484e31', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('5ed82e12-6dc6-47a7-81ed-fd8242fd2b5d', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('608b4b42-fef8-4655-a20f-02b9d2974f3a', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('6117fb88-a29f-4dd9-98b0-0a39f1de7c1e', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'UNDETERMINED', '240b983f-7a39-4e57-975d-5b13366debc0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('637df96f-e19f-4882-8ad1-bce0402ef7d0', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('640fd464-1d0c-468a-9fa8-ab70de523136', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'UNDETERMINED', '809bb104-2a5f-403f-aae1-9536b15a9057', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('6b0e9b31-6bff-4cb5-bb50-b72b957d35b2', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', 'b5a2f182-d34d-4fd1-aabe-fa56d7cbf558', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('6d626d69-f12a-4204-864f-f74d88ae4494', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'UNDETERMINED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('6e8c0e68-a09e-4496-b3f0-39f5b8dd97f4', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('703f8dda-4b26-4c79-84eb-7b864629bcc2', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('72128024-d0bf-4deb-95a7-4b6189e317c3', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', 'df4ca75f-2a5f-4f03-92f8-c2a4609eeeb8', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('741d7a6a-8bc4-4574-87e1-af0cabe8e98a', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', 'cdf43a53-b7c7-4cf4-88f9-952ebda8d792', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('76021072-200f-40cf-ab22-ae0e42978136', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', 'b4c7f788-9cfd-4277-8913-c4e92ee1678f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('77f7fc1c-a9f7-411a-bf53-31a4866bfd17', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('780d5b06-87f2-4d7e-a9bd-0c746d6867f5', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('7ad2d697-564f-4ec6-990c-6eb583e37ae5', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('7b42e561-7c9e-42c1-9caa-fcf5823bf662', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('7d68a7f2-1c4a-4cc0-b2ae-4ab9fed6459d', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', 'b5a2f182-d34d-4fd1-aabe-fa56d7cbf558', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('80953d55-f980-4d4d-815c-721ca767a7ae', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('846bb47b-11e5-4eec-a706-661747c3503e', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '809bb104-2a5f-403f-aae1-9536b15a9057', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('85795ae2-6c66-40a5-a6f6-b6ec1388106e', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('86c72f68-15d9-4d3f-8c44-f8de4cee6ff7', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('880f3061-7f97-4917-8e4a-06302fcd5873', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('88db0120-10c1-4599-8c7b-e02343cc5c80', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('89ba2aa0-53d7-4a41-b98d-6b4b14e6b1d7', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('8a70222d-5099-4ae6-b428-803b8c8374f1', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('8a7ef68e-9f47-4aa0-bbc1-b9da7460b994', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('8c34b6b4-a865-4fd8-b5a9-2b37f79b4905', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('8f2484c5-3c82-46f4-adf4-c6278720d6d8', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', 'df4ca75f-2a5f-4f03-92f8-c2a4609eeeb8', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('90b9f975-3485-4431-b015-902a720033c6', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('90ec89e3-ec85-4bde-8715-ea5089966806', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('92f55584-edf9-402a-befd-60e90caa0ef8', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('95029e50-cb62-44d2-8a7a-2a10edaa092c', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('954e8500-a467-4fa1-b20a-d135c4d9b2f1', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('9747c797-83df-453c-8e26-b74de8616127', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('98c937b0-dda0-4445-bde2-512f3f3db62e', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('9ad047c3-0a20-4dd0-a656-ca48c4a7be2b', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('9dd1d13b-b637-4619-9a4c-a80a3b4f6d2b', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '0ab1dd86-aebe-446d-bbbb-7a19b4d3ed5a', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('9e3ce305-a442-48cd-aa0a-59e47a2bf3e7', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('a188396c-e2a5-4ed6-b4f1-ea3036ea5e16', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'UNDETERMINED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('a1e8a04d-f56e-4420-a23c-bfe040014490', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'UNDETERMINED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('a2d63fcf-1559-4920-a480-c1f9d5ba12f4', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('a8a6f52f-563b-46f5-8aae-2594b54adb18', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'UNDETERMINED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('a9177865-7c8f-4e2b-9504-7d3822d5e1dc', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('abe3b393-7266-4f28-af1c-c939f897887b', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '240b983f-7a39-4e57-975d-5b13366debc0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('acb25d44-29c5-4223-87d4-a139257eb8ba', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', 'b4c7f788-9cfd-4277-8913-c4e92ee1678f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ad1061c7-a6d7-42a0-a431-c485aaaabc4a', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ade506c7-febb-4a06-9a83-67fcd30b0dd7', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ae5c3b6e-4d4e-4173-8ad1-d0241d50c226', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('af935b9a-4a26-4535-8a6e-6b11f0606a26', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b0964949-f5f9-4e25-8ed8-5ab5ae5b4100', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '692b96a0-3943-4e5c-a9fb-8f31477706ff', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b2fc0c4c-f988-44c5-93eb-1387f7424783', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b54dd1b6-19ad-45e4-888b-b8d2fb9f52c1', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b551b699-749a-4eb3-82e2-c1cec3427cca', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b6979c85-f0e8-40f1-be73-e0db7dd57f5b', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b7c2e52f-23bc-4487-8a08-e04355aaccb0', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('b82d5e7e-1784-40e0-b4c8-80c1f7f351dd', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('bd5457c6-667b-498b-b727-8a4abb703751', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'UNDETERMINED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c19a59ee-6d2d-4bae-adf8-6ff6c540456a', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c3b596fe-1c68-4ed8-9765-403ca13a1b64', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c3cd304f-c974-4d20-b326-0be07503a8e9', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '809bb104-2a5f-403f-aae1-9536b15a9057', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c431f3e0-e679-4be0-a0b6-e171972850eb', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '21bbcd4c-5616-4f10-a3f0-7704a58d0db1', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c687a46e-9a56-43a1-af51-1b48c071304a', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '692b96a0-3943-4e5c-a9fb-8f31477706ff', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c749fd66-00dd-4d6f-8b16-13c7d215723f', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c7952c76-7931-4f28-89a4-276032ec6309', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '809bb104-2a5f-403f-aae1-9536b15a9057', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('c9172ff5-28ad-4911-b40d-794faf377def', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ca419071-8561-48ed-b60f-535700cf6f9d', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('cb8fe99f-02a1-4747-9e31-09cfb92c7884', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', 'cdf43a53-b7c7-4cf4-88f9-952ebda8d792', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('cccd12dd-e32f-4dde-82bc-3b6f2732f83a', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '1e1eb69e-38ca-4782-9f9d-f64fc31dfdf9', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('cd163893-2262-4583-b223-a9c0cf75850d', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d00a04ed-931e-49e4-a998-e7d5c5733417', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '52414265-96d5-49dc-9d05-27fdb5286bda', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d15901a4-57ff-4594-a61a-f00688fb8431', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'UNDETERMINED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d18da7b3-bbf1-406a-a8d5-1cb88d475afd', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'UNDETERMINED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d1914bd1-7a78-4984-9e25-e6ab7ce59cfb', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '240b983f-7a39-4e57-975d-5b13366debc0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d32e3807-3e71-4dcb-b615-fad19c807979', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d36f32f2-5e05-4b2d-b247-225ef1d6011e', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d3e3d8a3-8034-4f94-8ee6-5028cc77dfab', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'UNDETERMINED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d40db8ba-4025-4e75-b69e-bfdde689f5d3', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '8b1c022b-d136-44f9-8a8a-23a2911a2ef5', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d4483706-aa6a-4298-ac7d-330ab6735df5', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('d9f6d73a-b3bd-4602-8d27-1b85a05bc443', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('da4690a6-33de-4a8e-be60-b513c2049ec7', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('dc73bcea-a707-40f7-b34e-1fe56302a098', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ddf56dac-7c9b-49c4-8ecd-51831f83b1f2', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ddfbee6e-aacc-4183-aa47-cd1f3ad4f8bc', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', 'e6bc1247-24f0-4a34-9c55-dc052449d5a4', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('decf7ac7-36c0-4f35-a2e7-402eb5959e60', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', 'df4ca75f-2a5f-4f03-92f8-c2a4609eeeb8', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('dff8ed1f-ab25-410e-921e-6333c46ddc79', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '97a67db9-39a2-45eb-a04b-16dbb9a5df64', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('e03e3f79-fc8a-4f6b-afe6-63273c82a987', '2017-06-07 15:03:41', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '0', 'SELECTED', '83f76d4d-c406-4ceb-b983-960e6236869f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('e0b3ddbe-96e3-4a00-b52e-48d09fef415b', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '4fcf7b11-3d1f-437e-9538-adb6d9d8dea3', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('e323f887-41b0-4246-9c52-d40737b3e9b9', '2017-05-31 11:24:32', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:23:59', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('e57e1b1f-ba94-448d-8d1a-51d0a77b396e', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', 'b4c7f788-9cfd-4277-8913-c4e92ee1678f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('e60ea128-0474-4a9c-be54-4bce3a9be915', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('e868bcb4-ae88-4b14-bf6b-ddb5d82f91af', '2017-05-31 15:29:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 16:02:22', '1', 'SELECTED', '809bb104-2a5f-403f-aae1-9536b15a9057', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('ecc149d6-3e1b-4607-a682-d0deb706774e', '2017-05-31 16:02:22', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-05 11:00:23', '1', 'SELECTED', '225733ba-b2db-4e9b-994a-5901dc8f4759', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('f10bc0e1-b71b-4c5a-abd3-cb28bdc0ece6', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', '11cab484-1bda-48f8-b8b9-579f58d4ea1f', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('f22d2569-e3e3-45bb-b678-59d5da1cf872', '2017-05-31 14:59:46', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 15:29:22', '1', 'SELECTED', 'df4ca75f-2a5f-4f03-92f8-c2a4609eeeb8', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('f7576330-f527-4cab-8a07-d73292331dca', '2017-05-31 14:23:59', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 14:59:46', '1', 'SELECTED', '1af2148e-1a78-41f9-bbff-6165237d6283', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('f93b8e85-1ab2-4fa9-9a25-00220f67c902', '2017-06-05 11:00:23', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-06 09:45:40', '1', 'SELECTED', 'eb9c830c-115b-47aa-beaf-406614774f77', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('fcab21e1-d57b-4f5e-9411-f33a6dfbcd90', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'UNDETERMINED', '809bb104-2a5f-403f-aae1-9536b15a9057', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');
INSERT INTO `t_sys_role_menu` VALUES ('fcb59cae-419d-42ec-a161-e4c177cc1c90', '2017-06-06 09:45:40', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '0', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:03:41', '1', 'SELECTED', '7bce61fb-34e0-42dc-9470-75ca653ca74e', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c');

-- ----------------------------
-- Table structure for t_sys_role_resources
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_resources`;
CREATE TABLE `t_sys_role_resources` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `resources_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_resources
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_tree
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_tree`;
CREATE TABLE `t_sys_tree` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `entity_id` varchar(255) DEFAULT NULL,
  `expand` bit(1) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `treetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_tree
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disabled` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('109e6417-0fdc-4c3a-a5fd-033972919e2d', '2017-06-07 13:27:26', 'SYS-ID', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-06-07 15:33:35', '3', '用户注册', '1', null, '15862431627', '96e79218965eb72c92a549dd5a330112', '15862431627');
INSERT INTO `t_sys_user` VALUES ('501733b0-e537-4f9e-8197-16130b5dab72', '2017-06-01 16:31:32', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:09:37', '4', '用户注册', '1', '', '你高兴就好', 'b0baee9d279d34fa1dfd71aadb908c3f', '18621725101');
INSERT INTO `t_sys_user` VALUES ('501733b0-e537-4f9e-8197-16130b5dab7d', '2017-06-01 16:31:32', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 10:09:37', '4', '用户注册', '1', null, '13605214971', '1a3444fc007f0cb06a77ee94911e7a28', '13605214971');
INSERT INTO `t_sys_user` VALUES ('cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2016-08-10 09:37:47', 'SYS', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-01-18 14:28:28', '23', '11', '1', '333', '系统超级管理员', 'b0baee9d279d34fa1dfd71aadb908c3f', 'admin');
INSERT INTO `t_sys_user` VALUES ('SYS-ID', '2016-08-10 09:37:47', 'SYS', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-01-18 14:28:28', '21', '11', '1', '333', 'SYS-ID', 'b0baee9d279d34fa1dfd71aadb908c3f', 'sys');

-- ----------------------------
-- Table structure for t_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES ('398d9ffd-b19c-49cb-9223-1fbeaa51ac5a', '2017-05-31 11:24:24', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '1', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7', '2017-05-31 11:24:24', '0', 'd627f8ff-6c67-496b-88c7-9ab9d3afea7c', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7');

-- ----------------------------
-- Table structure for t_user_casecategory
-- ----------------------------
DROP TABLE IF EXISTS `t_user_casecategory`;
CREATE TABLE `t_user_casecategory` (
  `id` varchar(36) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator_id` varchar(36) DEFAULT NULL,
  `is_available` int(11) DEFAULT NULL,
  `modifier_id` varchar(36) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `case_category_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_casecategory
-- ----------------------------
INSERT INTO `t_user_casecategory` VALUES ('150800da-4465-47e7-932f-35ff65c8004d', '2017-06-05 10:15:21', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:15:21', '0', 'undefined1a20f030-3a07-4db6-8f6f-c696915116ec', null);
INSERT INTO `t_user_casecategory` VALUES ('21f5eb17-454a-4d1d-9a70-2b618a5074dd', '2017-06-06 09:32:14', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 09:32:14', '0', '1a20f030-3a07-4db6-8f6f-c696915116ec', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7');
INSERT INTO `t_user_casecategory` VALUES ('3090390e-20cc-4631-acfc-d0231f2f415f', '2017-06-06 14:32:02', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 14:32:02', '0', 'undefinedb1fce668-df87-4c44-a123-140d31209621', 'SYS-ID');
INSERT INTO `t_user_casecategory` VALUES ('40c20d82-ea9a-46f6-b2fa-9651862f7b3e', '2017-06-05 10:15:21', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:15:21', '0', '48140cf5-e2ce-4509-9b5f-008d43d3484c', null);
INSERT INTO `t_user_casecategory` VALUES ('45bb7999-b4d4-451a-a8fb-1745f9bd4776', '2017-06-05 10:17:53', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:17:53', '0', 'undefined1a20f030-3a07-4db6-8f6f-c696915116ec', null);
INSERT INTO `t_user_casecategory` VALUES ('68caa2eb-b817-4f50-9c0b-d7097e5c640e', '2017-06-06 09:32:18', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 09:32:18', '0', '1df65619-835f-43cc-9ab8-1b2c3adf457f', 'cf14ed35-cadd-45aa-97d6-f292f90df5a7');
INSERT INTO `t_user_casecategory` VALUES ('7558773d-4be6-40df-babb-eb33eeb801fd', '2017-06-06 14:32:02', 'SYS-ID', '1', 'SYS-ID', '2017-06-06 14:32:02', '0', '6dc7b565-6111-47ea-a257-feae09743be2', 'SYS-ID');
INSERT INTO `t_user_casecategory` VALUES ('e8654eb2-a314-42c2-afe3-1875961963b8', '2017-06-05 10:17:53', 'SYS-ID', '1', 'SYS-ID', '2017-06-05 10:17:53', '0', '48140cf5-e2ce-4509-9b5f-008d43d3484c', null);
