

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `haims`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_ha`
--

DROP TABLE IF EXISTS `t_ha`;
CREATE TABLE IF NOT EXISTS `t_ha` (
  `id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(32) DEFAULT NULL,
  `number` VARCHAR(32) DEFAULT NULL,
  `type_id` VARCHAR(32) DEFAULT NULL,
  `state` INT(2) DEFAULT NULL,
  `url` VARCHAR(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_ha`
--

INSERT INTO `t_ha` (`id`, `name`, `number`, `type_id`, `state`, `url`) VALUES
('8F237513925D4FD6A01F4A1EDFE370DB', 'Redmi小爱音箱', '20', '5ACDA5E8E43A49EBA6172E8393FFA22A', 0, '/static/image/f719adf6-d525-4b0e-93a3-b8472f699689.jpg'),
('CEED1D9FBE834778A35848BAA496B49D', '格力空调', '6', 'F0B3C7B9361C45F6A4841A8A4AB76622', 0, '/static/image/666fde14-40ba-47d2-bcab-8eb48121ad33.jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `t_order`
--

DROP TABLE IF EXISTS `t_order`;
CREATE TABLE IF NOT EXISTS `t_order` (
  `id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(32) DEFAULT NULL,
  `type_id` VARCHAR(32) DEFAULT NULL,
  `supplier_id` VARCHAR(32) DEFAULT NULL,
  `stuff_id` VARCHAR(32) DEFAULT NULL,
  `number` VARCHAR(32) DEFAULT NULL,
  `time` VARCHAR(32) DEFAULT NULL,
  `money` VARCHAR(32) DEFAULT NULL,
  `user_id` VARCHAR(32) DEFAULT NULL,
  `state` INT(2) DEFAULT NULL,
  `is_delete` INT(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_order`
--

INSERT INTO `t_order` (`id`, `name`, `type_id`, `supplier_id`, `stuff_id`, `number`, `time`, `money`, `user_id`, `state`, `is_delete`) VALUES
('A275144C37634B948CBF36A77FE00099', '购买格力空调', 'F0B3C7B9361C45F6A4841A8A4AB76622', 'A9C3BE1C59194DCD927176D883A0AE1D', 'CEED1D9FBE834778A35848BAA496B49D', '10', '2021-06-22 20:04:39', '30000', '418907585224BA0AC8F5971C3D5E1B1', 1, 0),
('BB5476B67A7446A1B2673010404054EF', '卖出5台格力空调', 'F0B3C7B9361C45F6A4841A8A4AB76622', '75480BCE18E840A49910C99E4D3B2B70', 'CEED1D9FBE834778A35848BAA496B49D', '5', '2021-06-22 20:21:11', '20000', '418907585224BA0AC8F5971C3D5E1B1', 2, 0),
('FFF7B99CC1754203AA122C763DE75FDC', '购买小爱音箱', '5ACDA5E8E43A49EBA6172E8393FFA22A', '960041F9A76B4935BC45DF2DD1FC67BF', '8F237513925D4FD6A01F4A1EDFE370DB', '10', '2021-06-22 19:49:32', '900', '418907585224BA0AC8F5971C3D5E1B1', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_role`
--

DROP TABLE IF EXISTS `t_role`;
CREATE TABLE IF NOT EXISTS `t_role` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32) DEFAULT NULL,
  `state` INT(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_role`
--

INSERT INTO `t_role` (`id`, `name`, `state`) VALUES
(1, '管理员', 0),
(2, '库存管理人员', 0),
(3, '业务人员', 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_supplier`
--

DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE IF NOT EXISTS `t_supplier` (
  `id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(32) DEFAULT NULL,
  `address` VARCHAR(32) DEFAULT NULL,
  `phone` VARCHAR(32) DEFAULT NULL,
  `state` INT(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_supplier`
--

INSERT INTO `t_supplier` (`id`, `name`, `address`, `phone`, `state`) VALUES
('75480BCE18E840A49910C99E4D3B2B70', '国美电器', '陕西省西安市 西安邮电大学', '19865475214', 0),
('960041F9A76B4935BC45DF2DD1FC67BF', '小米电视供货商', '陕西省西安市郭杜街道长安街道办', '15512451245', 0),
('A9C3BE1C59194DCD927176D883A0AE1D', '格力电器供应商', '北京市北京市东城区安定路20号6号楼（安贞桥北200米）', '15848464864', 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_supplier_type`
--

DROP TABLE IF EXISTS `t_supplier_type`;
CREATE TABLE IF NOT EXISTS `t_supplier_type` (
  `id` VARCHAR(32) NOT NULL,
  `supplier_id` VARCHAR(32) DEFAULT NULL,
  `type_id` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_supplier_type`
--

INSERT INTO `t_supplier_type` (`id`, `supplier_id`, `type_id`) VALUES
('032B71CAAD084EE695348381D969983C', '75480BCE18E840A49910C99E4D3B2B70', 'D962936CAF344E23977E9AFF1665DF72'),
('1BE5FFBC295C490C9C282C67C776B9C2', 'A9C3BE1C59194DCD927176D883A0AE1D', 'D962936CAF344E23977E9AFF1665DF72'),
('1E8BEAC22B544BE2A1BC693B834EA539', '75480BCE18E840A49910C99E4D3B2B70', 'B5DCA7D44FAD44A89DD1A37D7A4BB3E9'),
('31DEA411842D4367A1E42798C417BF86', '75480BCE18E840A49910C99E4D3B2B70', 'BEE3CA110E5A48D7A4A3959D8971EAE2'),
('4F74DE3FAC1E4D28ADAC542CB9564CE3', '75480BCE18E840A49910C99E4D3B2B70', 'F0B3C7B9361C45F6A4841A8A4AB76622'),
('659EF6E322474518A0EE4E20D0B3CA58', 'A9C3BE1C59194DCD927176D883A0AE1D', 'B5DCA7D44FAD44A89DD1A37D7A4BB3E9'),
('6F9A6BEFCCEB46258BE2D36AEA48E5A6', '75480BCE18E840A49910C99E4D3B2B70', '5ACDA5E8E43A49EBA6172E8393FFA22A'),
('89705BD02DF14996B0BF574FBFA14C29', '75480BCE18E840A49910C99E4D3B2B70', '9BD59BE1B9D449C598D23EC8F8FF6833'),
('C9EAC10527E245BBBFDBCD2CB4C7FC95', 'A9C3BE1C59194DCD927176D883A0AE1D', 'F0B3C7B9361C45F6A4841A8A4AB76622'),
('D51132512BFF456389DAAE09D455F3D4', '960041F9A76B4935BC45DF2DD1FC67BF', '5ACDA5E8E43A49EBA6172E8393FFA22A'),
('FFD43B49DAAD49E48D5E224747D2E147', '960041F9A76B4935BC45DF2DD1FC67BF', '9BD59BE1B9D449C598D23EC8F8FF6833');

-- --------------------------------------------------------

--
-- 表的结构 `t_type`
--

DROP TABLE IF EXISTS `t_type`;
CREATE TABLE IF NOT EXISTS `t_type` (
  `id` VARCHAR(32) NOT NULL,
  `type` VARCHAR(32) DEFAULT NULL,
  `parent_id` VARCHAR(32) DEFAULT NULL,
  `t_level` INT(2) DEFAULT NULL,
  `state` INT(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_type`
--

INSERT INTO `t_type` (`id`, `type`, `parent_id`, `t_level`, `state`) VALUES
('5ACDA5E8E43A49EBA6172E8393FFA22A', '智能音箱', NULL, NULL, 0),
('9BD59BE1B9D449C598D23EC8F8FF6833', '电视机', '', NULL, 0),
('B5DCA7D44FAD44A89DD1A37D7A4BB3E9', '洗衣机', NULL, NULL, 0),
('BEE3CA110E5A48D7A4A3959D8971EAE2', '电磁炉', NULL, NULL, 0),
('D962936CAF344E23977E9AFF1665DF72', '冰箱', NULL, NULL, 0),
('F0B3C7B9361C45F6A4841A8A4AB76622', '空调', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` VARCHAR(32) NOT NULL,
  `name` VARCHAR(32) DEFAULT NULL,
  `phone` VARCHAR(32) DEFAULT NULL,
  `password` VARCHAR(32) DEFAULT NULL,
  `roleid` INT(2) DEFAULT NULL,
  `state` INT(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_user`
--

INSERT INTO `t_user` (`id`, `name`, `phone`, `password`, `roleid`, `state`) VALUES
('3BF40E90F29843048B6A0ACA074C0E35', '业务员', '19862516278', '123456', 3, 0),
('418907585224BA0AC8F5971C3D5E1B1', '管理员', '18812345678', '123456', 1, 0),
('9BF7AB533398416890C6B977D6A3EDD0', '仓库管理员', '18812345679', '123456', 2, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
