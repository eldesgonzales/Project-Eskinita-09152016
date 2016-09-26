-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2016 at 04:07 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ragnarok`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_reg_num`
--

CREATE TABLE `acc_reg_num` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acc_reg_str`
--

CREATE TABLE `acc_reg_str` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `buynow` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hours` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bonus_script`
--

CREATE TABLE `bonus_script` (
  `char_id` int(11) UNSIGNED NOT NULL,
  `script` text NOT NULL,
  `tick` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `flag` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `icon` smallint(3) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyingstores`
--

CREATE TABLE `buyingstores` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `limit` int(10) UNSIGNED NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyingstore_items`
--

CREATE TABLE `buyingstore_items` (
  `buyingstore_id` int(10) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_inventory`
--

CREATE TABLE `cart_inventory` (
  `id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `nameid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) NOT NULL DEFAULT '0',
  `card0` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `char`
--

CREATE TABLE `char` (
  `char_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_num` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `base_level` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `job_level` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `base_exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `job_exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `str` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `agi` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `vit` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `int` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `dex` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `luk` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_hp` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hp` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `sp` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `status_point` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `option` int(11) NOT NULL DEFAULT '0',
  `karma` tinyint(3) NOT NULL DEFAULT '0',
  `manner` smallint(6) NOT NULL DEFAULT '0',
  `party_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pet_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `homun_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `elemental_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clothes_color` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `body` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `weapon` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `shield` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_top` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_mid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_bottom` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `robe` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) UNSIGNED NOT NULL DEFAULT '53',
  `last_y` smallint(4) UNSIGNED NOT NULL DEFAULT '111',
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) UNSIGNED NOT NULL DEFAULT '53',
  `save_y` smallint(4) UNSIGNED NOT NULL DEFAULT '111',
  `partner_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `online` tinyint(2) NOT NULL DEFAULT '0',
  `father` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `mother` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `child` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `fame` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rename` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `delete_date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `moves` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `font` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `uniqueitem_counter` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sex` enum('M','F','U') NOT NULL DEFAULT 'U',
  `hotkey_rowshift` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `char`
--

INSERT INTO `char` (`char_id`, `account_id`, `char_num`, `name`, `class`, `base_level`, `job_level`, `base_exp`, `job_exp`, `zeny`, `str`, `agi`, `vit`, `int`, `dex`, `luk`, `max_hp`, `hp`, `max_sp`, `sp`, `status_point`, `skill_point`, `option`, `karma`, `manner`, `party_id`, `guild_id`, `pet_id`, `homun_id`, `elemental_id`, `hair`, `hair_color`, `clothes_color`, `body`, `weapon`, `shield`, `head_top`, `head_mid`, `head_bottom`, `robe`, `last_map`, `last_x`, `last_y`, `save_map`, `save_x`, `save_y`, `partner_id`, `online`, `father`, `mother`, `child`, `fame`, `rename`, `delete_date`, `moves`, `unban_time`, `font`, `uniqueitem_counter`, `sex`, `hotkey_rowshift`) VALUES
(150000, 2000000, 1, 'asdf', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 40, 40, 11, 11, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'iz_int04', 97, 90, 'iz_int04', 97, 90, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'U', 0);

-- --------------------------------------------------------

--
-- Table structure for table `charlog`
--

CREATE TABLE `charlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `agi` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `int` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `luk` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` tinyint(4) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charlog`
--

INSERT INTO `charlog` (`time`, `char_msg`, `account_id`, `char_num`, `name`, `str`, `agi`, `vit`, `int`, `dex`, `luk`, `hair`, `hair_color`) VALUES
('2016-09-25 10:06:34', 'make new char', 2000000, 1, 'asdf', 1, 1, 1, 1, 1, 1, 1, 0),
('2016-09-25 10:06:35', 'char select', 2000000, 1, 'asdf', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `char_reg_num`
--

CREATE TABLE `char_reg_num` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `char_reg_str`
--

CREATE TABLE `char_reg_str` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_roulette`
--

CREATE TABLE `db_roulette` (
  `index` int(11) NOT NULL DEFAULT '0',
  `level` smallint(5) UNSIGNED NOT NULL,
  `item_id` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `flag` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `elemental`
--

CREATE TABLE `elemental` (
  `ele_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `mode` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_hp` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `atk1` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `atk2` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `matk` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `aspd` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `def` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `mdef` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `flee` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hit` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `life_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `friend_account` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `global_acc_reg_num`
--

CREATE TABLE `global_acc_reg_num` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `global_acc_reg_str`
--

CREATE TABLE `global_acc_reg_str` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild`
--

CREATE TABLE `guild` (
  `guild_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `connect_member` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `max_member` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `average_lv` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `next_exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `emblem_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `emblem_data` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_alliance`
--

CREATE TABLE `guild_alliance` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `opposition` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_castle`
--

CREATE TABLE `guild_castle` (
  `castle_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `economy` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `defense` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggerE` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggerD` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nextTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `payTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `createTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleC` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG0` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG1` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG2` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG3` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG4` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG5` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG6` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG7` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_expulsion`
--

CREATE TABLE `guild_expulsion` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_member`
--

CREATE TABLE `guild_member` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `gender` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `class` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `lv` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `exp_payper` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `online` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_position`
--

CREATE TABLE `guild_position` (
  `guild_id` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_mode` tinyint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_skill`
--

CREATE TABLE `guild_skill` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `lv` tinyint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guild_storage`
--

CREATE TABLE `guild_storage` (
  `id` int(10) UNSIGNED NOT NULL,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homunculus`
--

CREATE TABLE `homunculus` (
  `homun_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `prev_class` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT '0',
  `exp` int(12) NOT NULL DEFAULT '0',
  `intimacy` int(12) NOT NULL DEFAULT '0',
  `hunger` smallint(4) NOT NULL DEFAULT '0',
  `str` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `agi` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `vit` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `int` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `dex` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `luk` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `max_hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_sp` int(12) NOT NULL DEFAULT '1',
  `skill_point` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `alive` tinyint(2) NOT NULL DEFAULT '1',
  `rename_flag` tinyint(2) NOT NULL DEFAULT '0',
  `vaporize` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotkey`
--

CREATE TABLE `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `itemskill_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_lvl` tinyint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interlog`
--

CREATE TABLE `interlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interreg`
--

CREATE TABLE `interreg` (
  `varname` varchar(11) NOT NULL,
  `value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `favorite` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `char_id`, `nameid`, `amount`, `equip`, `identify`, `refine`, `attribute`, `card0`, `card1`, `card2`, `card3`, `expire_time`, `favorite`, `bound`, `unique_id`) VALUES
(1, 150000, 1201, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 150000, 2301, 1, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipbanlist`
--

CREATE TABLE `ipbanlist` (
  `list` varchar(255) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT '0',
  `state` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `expiration_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `logincount` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL DEFAULT '0000-00-00',
  `character_slots` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vip_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `old_group` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `birthdate`, `character_slots`, `pincode`, `pincode_change`, `vip_time`, `old_group`) VALUES
(1, 'ragnarok', 'ragnarok', 'S', 'athena@athena.com', 0, 0, 0, 0, 1, '2016-09-25 10:06:08', '127.0.0.1', '0000-00-00', 0, '', 0, 0, 0),
(2000000, 'test', 'test', 'F', '', 99, 0, 0, 0, 1, '2016-09-25 10:06:30', '127.0.0.1', '0000-00-00', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `card0` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapreg`
--

CREATE TABLE `mapreg` (
  `varname` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapreg`
--

INSERT INTO `mapreg` (`varname`, `index`, `value`) VALUES
('$arn_pritop60', 0, '480'),
('$arn_pritop70', 0, '480'),
('$arn_pritop80', 0, '480'),
('$arn_pritop90', 0, '480'),
('$arn_acotop', 0, '480'),
('$arn_pritopn60$', 0, 'Default'),
('$arn_pritopn70$', 0, 'Default'),
('$arn_pritopn80$', 0, 'Default'),
('$arn_pritopn90$', 0, 'Default'),
('$arn_acotopn$', 0, 'Default'),
('$timezonestring$', 0, '^FF0000GMT^000000'),
('$ttnames$', 0, 'Breezy Havana'),
('$ttnames$', 1, 'RS125'),
('$ttnames$', 2, 'Hollgrehenn'),
('$ttnames$', 3, 'Antonio'),
('$ttnames$', 4, 'Aragham'),
('$ttnames$', 5, 'Kafra Jasmine'),
('$ttnames$', 6, 'Chris'),
('$ttnames$', 7, 'Breezy Havana'),
('$ttnames$', 8, 'RS125'),
('$ttnames$', 9, 'Breezy Havana'),
('$ttnames$', 10, 'Nari'),
('$ttnames$', 11, 'Senorita Sylvia'),
('$ttnames$', 12, 'Joo Jahk'),
('$ttnames$', 13, 'RS125'),
('$ttranks', 0, '999999'),
('$top_60min', 0, '6'),
('$top_80min', 0, '8'),
('$malayaNames$', 0, 'unknown'),
('$malayaNames$', 1, 'unknown'),
('$malayaNames$', 2, 'unknown'),
('$malayaNames$', 3, 'unknown'),
('$malayaNames$', 4, 'unknown'),
('$malayaNames$', 5, 'unknown'),
('$top_50min', 0, '5'),
('$top_ptmin', 0, '10'),
('$top_70min', 0, '7');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `nameid` smallint(5) UNSIGNED NOT NULL,
  `price` int(11) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `flag` tinyint(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE `memo` (
  `memo_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `y` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mercenary`
--

CREATE TABLE `mercenary` (
  `mer_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mercenary_owner`
--

CREATE TABLE `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT '0',
  `arch_calls` int(11) NOT NULL DEFAULT '0',
  `arch_faith` int(11) NOT NULL DEFAULT '0',
  `spear_calls` int(11) NOT NULL DEFAULT '0',
  `spear_faith` int(11) NOT NULL DEFAULT '0',
  `sword_calls` int(11) NOT NULL DEFAULT '0',
  `sword_faith` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `party_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `item` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `leader_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `leader_char` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(11) UNSIGNED NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `level` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `egg_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `equip` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `intimate` smallint(9) UNSIGNED NOT NULL DEFAULT '0',
  `hungry` smallint(9) UNSIGNED NOT NULL DEFAULT '0',
  `rename_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `incubate` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quest_id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `count1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ragsrvinfo`
--

CREATE TABLE `ragsrvinfo` (
  `index` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `jexp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `drop` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sc_data`
--

CREATE TABLE `sc_data` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `type` smallint(11) UNSIGNED NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `lv` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skillcooldown`
--

CREATE TABLE `skillcooldown` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `skill` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `tick` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skill_homunculus`
--

CREATE TABLE `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sstatus`
--

CREATE TABLE `sstatus` (
  `index` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `user` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amount` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card1` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card2` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `card3` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendings`
--

CREATE TABLE `vendings` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vending_items`
--

CREATE TABLE `vending_items` (
  `vending_id` int(10) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `cartinventory_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_reg_num`
--
ALTER TABLE `acc_reg_num`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `acc_reg_str`
--
ALTER TABLE `acc_reg_str`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auction_id`);

--
-- Indexes for table `buyingstores`
--
ALTER TABLE `buyingstores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_inventory`
--
ALTER TABLE `cart_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `char`
--
ALTER TABLE `char`
  ADD PRIMARY KEY (`char_id`),
  ADD UNIQUE KEY `name_key` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `party_id` (`party_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `online` (`online`);

--
-- Indexes for table `char_reg_num`
--
ALTER TABLE `char_reg_num`
  ADD PRIMARY KEY (`char_id`,`key`,`index`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `char_reg_str`
--
ALTER TABLE `char_reg_str`
  ADD PRIMARY KEY (`char_id`,`key`,`index`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `db_roulette`
--
ALTER TABLE `db_roulette`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `elemental`
--
ALTER TABLE `elemental`
  ADD PRIMARY KEY (`ele_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `global_acc_reg_num`
--
ALTER TABLE `global_acc_reg_num`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `global_acc_reg_str`
--
ALTER TABLE `global_acc_reg_str`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `guild`
--
ALTER TABLE `guild`
  ADD PRIMARY KEY (`guild_id`,`char_id`),
  ADD UNIQUE KEY `guild_id` (`guild_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `guild_alliance`
--
ALTER TABLE `guild_alliance`
  ADD PRIMARY KEY (`guild_id`,`alliance_id`),
  ADD KEY `alliance_id` (`alliance_id`);

--
-- Indexes for table `guild_castle`
--
ALTER TABLE `guild_castle`
  ADD PRIMARY KEY (`castle_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_expulsion`
--
ALTER TABLE `guild_expulsion`
  ADD PRIMARY KEY (`guild_id`,`name`);

--
-- Indexes for table `guild_member`
--
ALTER TABLE `guild_member`
  ADD PRIMARY KEY (`guild_id`,`char_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `guild_position`
--
ALTER TABLE `guild_position`
  ADD PRIMARY KEY (`guild_id`,`position`);

--
-- Indexes for table `guild_skill`
--
ALTER TABLE `guild_skill`
  ADD PRIMARY KEY (`guild_id`,`id`);

--
-- Indexes for table `guild_storage`
--
ALTER TABLE `guild_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `homunculus`
--
ALTER TABLE `homunculus`
  ADD PRIMARY KEY (`homun_id`);

--
-- Indexes for table `hotkey`
--
ALTER TABLE `hotkey`
  ADD PRIMARY KEY (`char_id`,`hotkey`);

--
-- Indexes for table `interreg`
--
ALTER TABLE `interreg`
  ADD PRIMARY KEY (`varname`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `ipbanlist`
--
ALTER TABLE `ipbanlist`
  ADD KEY `list` (`list`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `name` (`userid`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapreg`
--
ALTER TABLE `mapreg`
  ADD PRIMARY KEY (`varname`,`index`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`name`,`nameid`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`memo_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `mercenary`
--
ALTER TABLE `mercenary`
  ADD PRIMARY KEY (`mer_id`);

--
-- Indexes for table `mercenary_owner`
--
ALTER TABLE `mercenary_owner`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`char_id`,`quest_id`);

--
-- Indexes for table `sc_data`
--
ALTER TABLE `sc_data`
  ADD KEY `account_id` (`account_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexes for table `skillcooldown`
--
ALTER TABLE `skillcooldown`
  ADD KEY `account_id` (`account_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `skill_homunculus`
--
ALTER TABLE `skill_homunculus`
  ADD PRIMARY KEY (`homun_id`,`id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `vendings`
--
ALTER TABLE `vendings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auction`
--
ALTER TABLE `auction`
  MODIFY `auction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart_inventory`
--
ALTER TABLE `cart_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `char`
--
ALTER TABLE `char`
  MODIFY `char_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150001;
--
-- AUTO_INCREMENT for table `elemental`
--
ALTER TABLE `elemental`
  MODIFY `ele_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guild`
--
ALTER TABLE `guild`
  MODIFY `guild_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guild_storage`
--
ALTER TABLE `guild_storage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `homunculus`
--
ALTER TABLE `homunculus`
  MODIFY `homun_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000001;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `memo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mercenary`
--
ALTER TABLE `mercenary`
  MODIFY `mer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
