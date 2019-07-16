-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2019 at 01:22 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bell`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'Ground floor, Country Arcade Building, Next to Be Energy petrol station'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_formats', '[]'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '0'),
('company', 'The Lunch Bell'),
('company_logo', 'company_logo.png'),
('country_codes', 'us'),
('currency_decimals', '2'),
('currency_symbol', '$'),
('customer_reward_enable', '0'),
('customer_sales_tax_support', '0'),
('dateformat', 'm/d/Y'),
('date_or_time_format', ''),
('default_origin_tax_code', ''),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'changeme@example.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', '0'),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('language', 'english'),
('language_code', 'en-US'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '0'),
('lines_per_page', '25'),
('line_sequence', '0'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'bottom'),
('number_locale', 'en_US'),
('payment_options_order', 'cashdebitcredit'),
('phone', '0751616715'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'Not available'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_included', '0'),
('theme', 'flatly'),
('thousands_separator', '1'),
('timeformat', 'H:i:s'),
('timezone', 'America/New_York'),
('website', ''),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `sales_tax_code` varchar(32) NOT NULL DEFAULT '1',
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `package_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int(10) NOT NULL,
  `consent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `sales_tax_code`, `discount_percent`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(3, NULL, NULL, 1, '', '0.00', NULL, NULL, 0, '2019-06-11 02:13:53', 1, 1),
(5, NULL, NULL, 1, '', '0.00', NULL, NULL, 0, '2019-06-11 02:29:48', 1, 1),
(6, NULL, NULL, 1, '', '0.00', NULL, NULL, 0, '2019-06-11 02:32:38', 1, 1),
(9, NULL, NULL, 1, '', '0.00', NULL, NULL, 0, '2019-06-11 06:25:06', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_packages`
--

CREATE TABLE `ospos_customers_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_points`
--

CREATE TABLE `ospos_customers_points` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_dinner_tables`
--

CREATE TABLE `ospos_dinner_tables` (
  `dinner_table_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `hash_version` int(1) NOT NULL DEFAULT '2',
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('ann-ann', '$2y$10$PBgufMSxRuA2UDkOqkCM9.2AuETuzWQCyIx5T9vcxBO8FWx9SuRvG', 8, 0, 2, '', ''),
('oduorsamuel', '$2y$10$G2tcy4.b6GCu7QvIsng5nO1jDdNGCtLC5Jked/Oc6EgAdjg1nB2Te', 1, 0, 2, 'english', 'en-US'),
('ruth-ruth', '$2y$10$FR9cLsbvOGopwVz87zvvFeeu5j5zkVuG.QtfEsxgz5vzwgmqEYLq.', 2, 0, 2, '', ''),
('susan', '$2y$10$umH8XhkH8s6iQ3bNYzW5He5M0JIGX5e0phtOgJdqbvW6vN807lsVa', 7, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expenses`
--

CREATE TABLE `ospos_expenses` (
  `expense_id` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_expenses`
--

INSERT INTO `ospos_expenses` (`expense_id`, `date`, `amount`, `payment_type`, `expense_category_id`, `description`, `employee_id`, `deleted`, `supplier_name`, `supplier_tax_code`, `tax_amount`) VALUES
(1, '2019-06-11 02:20:07', '100.00', 'Cash', 1, 'To give 5 potions', 1, 0, 'Beatrice', '', '0.00'),
(2, '2019-06-11 02:21:54', '100.00', 'Cash', 1, '6 potions', 1, 0, 'Beatrice', '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expense_categories`
--

CREATE TABLE `ospos_expense_categories` (
  `expense_category_id` int(10) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_expense_categories`
--

INSERT INTO `ospos_expense_categories` (`expense_category_id`, `category_name`, `category_description`, `deleted`) VALUES
(1, 'Groceries', 'This include vegetables', 0),
(2, 'Capital Expeditures', 'Eg Aluminium foil', 0),
(3, 'Raw Material for production', 'Eg  Wheat floor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_giftcards`
--

INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
('2019-06-11 03:50:38', 1, '1', '50.00', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('config', 1, 'office'),
('customers', 1, 'home'),
('customers', 2, 'home'),
('customers', 7, 'home'),
('customers', 8, 'home'),
('employees', 1, 'office'),
('expenses', 1, 'home'),
('expenses_categories', 1, 'home'),
('giftcards', 1, 'home'),
('home', 1, 'office'),
('home', 2, 'home'),
('items', 1, 'home'),
('items', 8, 'home'),
('items_stock', 1, '--'),
('items_stock', 8, '--'),
('item_kits', 1, 'home'),
('messages', 1, 'home'),
('messages', 2, 'home'),
('messages', 7, 'home'),
('messages', 8, 'home'),
('office', 1, 'home'),
('receivings', 1, 'home'),
('receivings', 2, 'home'),
('receivings_stock', 1, '--'),
('receivings_stock', 2, '--'),
('reports', 1, 'home'),
('reports', 2, 'home'),
('reports_categories', 1, '--'),
('reports_categories', 2, '--'),
('reports_customers', 1, '--'),
('reports_customers', 2, '--'),
('reports_discounts', 1, '--'),
('reports_discounts', 2, '--'),
('reports_employees', 1, '--'),
('reports_expenses_categories', 1, '--'),
('reports_expenses_categories', 2, '--'),
('reports_inventory', 1, '--'),
('reports_inventory', 2, '--'),
('reports_items', 1, '--'),
('reports_items', 2, '--'),
('reports_payments', 1, '--'),
('reports_payments', 2, '--'),
('reports_receivings', 1, '--'),
('reports_receivings', 2, '--'),
('reports_sales', 1, '--'),
('reports_sales', 2, '--'),
('reports_suppliers', 1, '--'),
('reports_suppliers', 2, '--'),
('reports_taxes', 1, '--'),
('reports_taxes', 2, '--'),
('sales', 1, 'home'),
('sales', 2, 'home'),
('sales', 7, 'home'),
('sales', 8, 'home'),
('sales_delete', 1, '--'),
('sales_stock', 1, '--'),
('sales_stock', 2, '--'),
('sales_stock', 7, '--'),
('sales_stock', 8, '--'),
('suppliers', 1, 'home'),
('suppliers', 2, 'home'),
('taxes', 1, 'office');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2019-06-11 02:29:23', 'Manual Edit of Quantity', 1, '1.000'),
(2, 1, 1, '2019-06-11 02:30:59', 'POS 1', 1, '-1.000'),
(3, 2, 1, '2019-06-11 02:34:24', 'Manual Edit of Quantity', 1, '1.000'),
(4, 2, 1, '2019-06-11 02:35:37', 'POS 2', 1, '-1.000'),
(5, 3, 1, '2019-06-11 02:43:55', 'Manual Edit of Quantity', 1, '2.000'),
(6, 4, 1, '2019-06-11 02:46:40', 'Manual Edit of Quantity', 1, '5.000'),
(7, 5, 1, '2019-06-11 02:51:26', 'Manual Edit of Quantity', 1, '0.000'),
(8, 5, 1, '2019-06-11 02:56:33', 'POS 5', 1, '-1.000'),
(9, 6, 1, '2019-06-11 03:03:21', 'Manual Edit of Quantity', 1, '7.000'),
(10, 7, 1, '2019-06-11 03:04:43', 'Manual Edit of Quantity', 1, '5.000'),
(11, 8, 1, '2019-06-11 03:06:20', 'Manual Edit of Quantity', 1, '5.000'),
(12, 9, 1, '2019-06-11 03:07:43', 'Manual Edit of Quantity', 1, '0.000'),
(13, 5, 1, '2019-06-11 03:08:27', 'Manual Edit of Quantity', 1, '1.000'),
(14, 10, 1, '2019-06-11 03:09:22', 'Manual Edit of Quantity', 1, '0.000'),
(15, 10, 1, '2019-06-11 03:10:15', 'Manual Edit of Quantity', 1, '10.000'),
(16, 11, 1, '2019-06-11 03:11:15', 'Manual Edit of Quantity', 1, '6.000'),
(17, 12, 1, '2019-06-11 03:18:12', 'Manual Edit of Quantity', 1, '0.000'),
(18, 13, 1, '2019-06-11 03:19:03', 'Manual Edit of Quantity', 1, '0.000'),
(19, 14, 1, '2019-06-11 03:19:59', 'Manual Edit of Quantity', 1, '0.000'),
(20, 15, 1, '2019-06-11 03:21:20', 'Manual Edit of Quantity', 1, '0.000'),
(21, 16, 1, '2019-06-11 03:23:03', 'Manual Edit of Quantity', 1, '0.000'),
(22, 17, 1, '2019-06-11 03:24:21', 'Manual Edit of Quantity', 1, '0.000'),
(23, 18, 1, '2019-06-11 03:25:10', 'Manual Edit of Quantity', 1, '0.000'),
(24, 19, 1, '2019-06-11 03:26:34', 'Manual Edit of Quantity', 1, '0.000'),
(25, 20, 1, '2019-06-11 03:27:45', 'Manual Edit of Quantity', 1, '0.000'),
(26, 21, 1, '2019-06-11 03:28:35', 'Manual Edit of Quantity', 1, '0.000'),
(27, 22, 1, '2019-06-11 03:29:46', 'Manual Edit of Quantity', 1, '0.000'),
(28, 23, 1, '2019-06-11 03:31:43', 'Manual Edit of Quantity', 1, '0.000'),
(29, 24, 1, '2019-06-11 03:33:00', 'Manual Edit of Quantity', 1, '0.000'),
(30, 25, 1, '2019-06-11 03:34:10', 'Manual Edit of Quantity', 1, '0.000'),
(31, 26, 1, '2019-06-11 03:34:53', 'Manual Edit of Quantity', 1, '0.000'),
(32, 27, 1, '2019-06-11 03:35:51', 'Manual Edit of Quantity', 1, '0.000'),
(33, 28, 1, '2019-06-11 03:36:43', 'Manual Edit of Quantity', 1, '0.000'),
(34, 29, 1, '2019-06-11 03:37:27', 'Manual Edit of Quantity', 1, '0.000'),
(35, 30, 1, '2019-06-11 03:38:29', 'Manual Edit of Quantity', 1, '21.000'),
(36, 31, 1, '2019-06-11 03:40:59', 'Manual Edit of Quantity', 1, '0.000'),
(37, 32, 1, '2019-06-11 03:52:16', 'Manual Edit of Quantity', 1, '2.000'),
(38, 32, 1, '2019-06-11 03:52:37', 'RECV 1', 1, '1.000'),
(39, 8, 2, '2019-06-11 03:58:39', 'POS 7', 1, '-1.000'),
(40, 6, 2, '2019-06-11 03:58:39', 'POS 7', 1, '-1.000'),
(41, 6, 1, '2019-06-11 06:04:54', 'POS 8', 1, '-1.000'),
(42, 30, 1, '2019-06-11 06:28:14', 'POS 12', 1, '-1.000'),
(43, 6, 7, '2019-06-11 06:42:00', 'POS 13', 1, '-1.000'),
(44, 31, 7, '2019-06-11 06:45:01', 'POS 14', 1, '-1.000'),
(45, 7, 7, '2019-06-11 06:51:29', 'POS 16', 1, '-1.000'),
(46, 6, 7, '2019-06-12 01:16:33', 'POS 17', 1, '-3.000'),
(47, 30, 7, '2019-06-12 01:17:26', 'POS 18', 1, '-1.000'),
(48, 33, 1, '2019-06-13 01:01:49', 'Manual Edit of Quantity', 1, '100.000'),
(49, 33, 1, '2019-06-13 01:14:06', 'RECV 2', 1, '100.000'),
(50, 32, 1, '2019-06-13 01:14:06', 'RECV 2', 1, '1000.000'),
(51, 32, 1, '2019-06-13 01:47:18', 'RECV 3', 1, '1000.000'),
(52, 5, 1, '2019-06-13 01:52:19', 'RECV 4', 1, '1000.000'),
(53, 3, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-2.000'),
(54, 4, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-5.000'),
(55, 5, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-1000.000'),
(56, 6, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-1.000'),
(57, 7, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-4.000'),
(58, 8, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-4.000'),
(59, 10, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-10.000'),
(60, 11, 1, '2019-06-13 08:56:25', 'Deleted', 1, '-6.000'),
(61, 30, 1, '2019-06-13 08:56:46', 'Deleted', 1, '-19.000'),
(62, 32, 1, '2019-06-13 08:56:46', 'Deleted', 1, '-2003.000'),
(63, 33, 1, '2019-06-13 08:56:46', 'Deleted', 1, '-200.000'),
(64, 34, 1, '2019-06-13 02:05:48', 'Manual Edit of Quantity', 1, '100.000'),
(65, 34, 1, '2019-06-13 03:05:03', 'RECV 5', 1, '1.000'),
(66, 35, 1, '2019-06-13 03:14:12', 'Manual Edit of Quantity', 1, '100.000'),
(67, 36, 1, '2019-06-13 03:16:40', 'Manual Edit of Quantity', 1, '10.000'),
(68, 37, 1, '2019-06-13 03:17:57', 'Manual Edit of Quantity', 1, '10.000'),
(69, 38, 1, '2019-06-13 03:19:41', 'Manual Edit of Quantity', 1, '0.000'),
(70, 39, 1, '2019-06-13 03:20:18', 'Manual Edit of Quantity', 1, '0.000'),
(71, 40, 1, '2019-06-13 03:21:56', 'Manual Edit of Quantity', 1, '0.000'),
(72, 41, 1, '2019-06-13 03:22:54', 'Manual Edit of Quantity', 1, '0.000'),
(73, 34, 1, '2019-06-13 03:31:57', 'POS 20', 1, '-1.000'),
(74, 37, 1, '2019-06-13 03:31:57', 'POS 20', 1, '-1.000'),
(75, 35, 7, '2019-06-13 04:27:13', 'POS 21', 1, '-1.000'),
(76, 34, 7, '2019-06-13 04:27:13', 'POS 21', 1, '-1.000'),
(77, 34, 1, '2019-06-17 22:46:47', 'POS 22', 1, '-1.000'),
(78, 37, 1, '2019-06-17 22:46:47', 'POS 22', 1, '-1.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT '0.000',
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `item_id` int(10) NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(2) NOT NULL DEFAULT '0',
  `item_type` tinyint(2) NOT NULL DEFAULT '0',
  `tax_category_id` int(10) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `custom7` varchar(255) DEFAULT NULL,
  `custom8` varchar(255) DEFAULT NULL,
  `custom9` varchar(255) DEFAULT NULL,
  `custom10` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `tax_category_id`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
('Ugali managu', 'main dishes', NULL, NULL, '', '50.00', '90.00', '1.000', '1.000', 1, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Rice beans', 'Main dishes', NULL, NULL, '', '10.00', '50.00', '1.000', '1.000', 2, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('ugali & Sukumawiki/cabbage', 'Main Dishes', NULL, NULL, '', '30.00', '60.00', '0.000', '0.000', 3, NULL, 0, 0, 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Ugal & Managu', 'Main Dishes', NULL, NULL, '', '45.00', '90.00', '1.000', '1.000', 4, NULL, 0, 0, 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Ugali & chicken', 'Main Dishes', NULL, NULL, '', '150.00', '300.00', '0.000', '0.000', 5, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Ugali & Beef', 'Main Dishes', NULL, NULL, '', '60.00', '120.00', '0.000', '0.000', 6, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Ugali & Ndegu', 'Main Dishes', NULL, NULL, '', '45.00', '90.00', '0.000', '0.000', 7, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Ugali & Omena', 'Main Dishes', NULL, NULL, '', '40.00', '80.00', '0.000', '0.000', 8, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('rice & chicken', 'Main Dishes', NULL, NULL, '', '160.00', '320.00', '0.000', '0.000', 9, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('rice & beef', 'Main Dishes', NULL, NULL, '', '75.00', '150.00', '0.000', '0.000', 10, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('rice & ndegu', 'Main Dishes', NULL, NULL, '', '50.00', '100.00', '0.000', '0.000', 11, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chips & Chicken', 'Main Dishes', NULL, NULL, '', '175.00', '350.00', '1.000', '1.000', 12, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chips plain', 'Main Dishes', NULL, NULL, '', '50.00', '100.00', '1.000', '1.000', 13, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chapati & beef', 'Main Dishes', NULL, NULL, '', '60.00', '120.00', '1.000', '1.000', 14, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chapati & Chicken', 'Main Dishes', NULL, NULL, '', '140.00', '280.00', '1.000', '1.000', 15, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chapati & Kales/Cabbage', 'Main Dishes', NULL, NULL, '', '25.00', '50.00', '1.000', '1.000', 16, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chapati & Managu', 'Main Dishes', NULL, NULL, '', '35.00', '70.00', '1.000', '1.000', 17, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chapati & Ndegu', 'Main Dishes', NULL, NULL, '', '35.00', '70.00', '1.000', '1.000', 18, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Mixed tea', 'Breakfast', NULL, NULL, '', '15.00', '30.00', '1.000', '1.000', 19, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Black Tea', 'Breakfast', NULL, NULL, '', '10.00', '20.00', '1.000', '1.000', 20, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('White Coffee', 'Breakfast', NULL, NULL, '', '30.00', '60.00', '1.000', '1.000', 21, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Black coffee', 'Breakfast', NULL, NULL, '', '20.00', '40.00', '1.000', '1.000', 22, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Hot Chocolate', 'Breakfast', NULL, NULL, '', '30.00', '60.00', '1.000', '1.000', 23, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Mandazi', 'Breakfast', NULL, NULL, '', '10.00', '20.00', '1.000', '1.000', 24, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Chapati', 'Breakfast', NULL, NULL, '', '10.00', '20.00', '1.000', '1.000', 25, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Bread with Margarine', 'Breakfast', NULL, NULL, '', '10.00', '20.00', '1.000', '1.000', 26, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Sausage', 'Breakfast', NULL, NULL, '', '25.00', '50.00', '1.000', '1.000', 27, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('fried Eggs 2pcs', 'Breakfast', NULL, NULL, '', '20.00', '40.00', '1.000', '1.000', 28, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('Omelette', 'Breakfast', NULL, NULL, '', '30.00', '60.00', '1.000', '1.000', 29, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('soda (350 ml)', 'Soft Drinks', NULL, NULL, '', '30.00', '40.00', '0.000', '1.000', 30, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('soda (450 ml)', 'Soft Drinks', NULL, NULL, '', '50.00', '60.00', '1.000', '1.000', 31, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('ugali & managu', 'Main Dishes', NULL, NULL, '', '45.00', '90.00', '1.000', '1.000', 32, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('ugali & beef', 'Main Dishes', NULL, NULL, '', '60.00', '120.00', '1.000', '100.000', 33, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
('ugali', 'Main Dishes', NULL, NULL, '', '20.00', '40.00', '1.000', '1.000', 34, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Sukumawiki/cabbage', 'Main Dishes', NULL, NULL, '', '10.00', '20.00', '1.000', '1.000', 35, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Managu', 'Main Dishes', NULL, NULL, '', '25.00', '50.00', '1.000', '1.000', 36, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('chicken', 'Main Dishes', NULL, NULL, '', '150.00', '300.00', '1.000', '1.000', 37, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Beef', 'Main Dishes', NULL, NULL, '', '60.00', '120.00', '1.000', '1.000', 38, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Ndegu', 'Main Dishes', NULL, NULL, '', '25.00', '50.00', '1.000', '1.000', 39, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Omena', 'Main Dishes', NULL, NULL, '', '20.00', '40.00', '1.000', '1.000', 40, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Rice', 'Main Dishes', NULL, NULL, '', '25.00', '50.00', '1.000', '1.000', 41, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL DEFAULT '0',
  `kit_discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `price_option` tinyint(2) NOT NULL DEFAULT '0',
  `print_option` tinyint(2) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_kits`
--

INSERT INTO `ospos_item_kits` (`item_kit_id`, `name`, `item_id`, `kit_discount_percent`, `price_option`, `print_option`, `description`) VALUES
(3, 'Ugali & Beef', 0, '0.00', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_kit_items`
--

INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`, `kit_sequence`) VALUES
(3, 34, '1.000', 0),
(3, 37, '1.000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, '0.000'),
(2, 1, '0.000'),
(3, 1, '0.000'),
(4, 1, '0.000'),
(5, 1, '0.000'),
(6, 1, '0.000'),
(7, 1, '0.000'),
(8, 1, '0.000'),
(9, 1, '0.000'),
(10, 1, '0.000'),
(11, 1, '0.000'),
(12, 1, '0.000'),
(13, 1, '0.000'),
(14, 1, '0.000'),
(15, 1, '0.000'),
(16, 1, '0.000'),
(17, 1, '0.000'),
(18, 1, '0.000'),
(19, 1, '0.000'),
(20, 1, '0.000'),
(21, 1, '0.000'),
(22, 1, '0.000'),
(23, 1, '0.000'),
(24, 1, '0.000'),
(25, 1, '0.000'),
(26, 1, '0.000'),
(27, 1, '0.000'),
(28, 1, '0.000'),
(29, 1, '0.000'),
(30, 1, '0.000'),
(31, 1, '0.000'),
(32, 1, '0.000'),
(33, 1, '0.000'),
(34, 1, '98.000'),
(35, 1, '99.000'),
(36, 1, '10.000'),
(37, 1, '8.000'),
(38, 1, '0.000'),
(39, 1, '0.000'),
(40, 1, '0.000'),
(41, 1, '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_migrations`
--

CREATE TABLE `ospos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`version`) VALUES
(20180501100000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_config', 'module_config_desc', 110, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Oduor', 'Samuel', 1, '0790648600', 'soduor15@gmail.com', 'Ngong', '', 'Nairobi', 'Ngong', '50400', 'Kenya', 'System Admin', 1),
('Ruth', 'Ruth', 0, '0705901910', '', '', '', '', '', '', '', 'Chef', 2),
('Oduor', 'Samuel', 1, '0790648600', 'soduor15@gmail.com', '', '', '', '', '', '', '', 3),
('Beatrice', 'Beatrice', 0, '', '', '', '', '', '', '', '', '', 4),
('Bella', 'Bella', NULL, '', '', '', '', '', '', '', '', '', 5),
('Susan', 'Susan', 0, '', '', '', '', '', '', '', '', '', 6),
('Susan', 'Susan', 0, '0790897899', '', '', '', '', '', '', '', '', 7),
('Ann', 'Ann', 0, '0797482117', '', '', '', '', '', '', '', '', 8),
('Hellen', 'Chemist', NULL, '', '', '', '', '', '', '', '', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2019-06-11 03:52:37', 4, 1, '', 1, 'Cash', NULL),
('2019-06-13 01:14:06', NULL, 1, '', 2, 'Cash', NULL),
('2019-06-13 01:47:18', NULL, 1, '', 3, 'Cash', NULL),
('2019-06-13 01:52:19', NULL, 1, '', 4, 'Cash', NULL),
('2019-06-13 03:05:03', NULL, 1, '', 5, 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT '1.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `receiving_quantity`) VALUES
(1, 32, '', '', 1, '1.000', '45.00', '45.00', '0.00', 1, '1.000'),
(2, 32, '', NULL, 2, '1000.000', '45.00', '45.00', '0.00', 1, '1.000'),
(2, 33, '', '', 1, '1.000', '60.00', '60.00', '0.00', 1, '100.000'),
(3, 32, '', NULL, 3, '1000.000', '45.00', '45.00', '0.00', 1, '1.000'),
(4, 5, '', NULL, 1, '1000.000', '150.00', '150.00', '0.00', 1, '0.000'),
(5, 34, '', NULL, 1, '1.000', '20.00', '10.00', '0.00', 1, '1.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_status` tinyint(2) NOT NULL DEFAULT '0',
  `dinner_table_id` int(11) DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2019-06-11 02:30:59', 5, 1, '', NULL, NULL, 1, 0, NULL, NULL, 0),
('2019-06-11 02:35:37', 6, 1, '', NULL, NULL, 2, 0, NULL, NULL, 0),
('2019-06-11 02:52:39', 5, 1, '', NULL, NULL, 3, 0, NULL, NULL, 0),
('2019-06-11 02:54:23', 5, 1, '', NULL, NULL, 4, 0, NULL, NULL, 0),
('2019-06-11 02:56:33', 6, 1, '', NULL, NULL, 5, 0, NULL, NULL, 0),
('2019-06-11 02:58:53', 5, 1, '', NULL, NULL, 6, 0, NULL, NULL, 0),
('2019-06-11 03:58:39', 6, 2, '', NULL, NULL, 7, 0, NULL, NULL, 0),
('2019-06-11 06:04:54', 5, 1, '', NULL, NULL, 8, 0, NULL, NULL, 0),
('2019-06-11 06:08:48', 6, 1, '', NULL, NULL, 9, 0, NULL, NULL, 0),
('2019-06-11 06:16:45', 3, 7, '', NULL, NULL, 10, 0, NULL, NULL, 0),
('2019-06-11 06:26:37', 9, 1, '', NULL, NULL, 11, 0, NULL, NULL, 0),
('2019-06-11 06:28:14', 3, 1, '', NULL, NULL, 12, 0, NULL, NULL, 0),
('2019-06-11 06:42:00', NULL, 7, '', NULL, NULL, 13, 0, NULL, NULL, 0),
('2019-06-11 06:45:00', NULL, 7, '', NULL, NULL, 14, 0, NULL, NULL, 0),
('2019-06-11 06:47:33', NULL, 8, '', NULL, NULL, 15, 0, NULL, NULL, 0),
('2019-06-11 06:51:29', NULL, 7, '', NULL, NULL, 16, 0, NULL, NULL, 0),
('2019-06-12 01:16:33', NULL, 7, '', NULL, NULL, 17, 0, NULL, NULL, 0),
('2019-06-12 01:17:26', NULL, 7, '', NULL, NULL, 18, 0, NULL, NULL, 0),
('2019-06-12 23:50:21', 5, 7, '', NULL, NULL, 19, 0, NULL, NULL, 0),
('2019-06-13 03:31:57', NULL, 1, '', NULL, NULL, 20, 0, NULL, NULL, 0),
('2019-06-13 04:27:13', 9, 7, '', NULL, NULL, 21, 0, NULL, NULL, 0),
('2019-06-17 22:46:47', 5, 1, '', NULL, NULL, 22, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT '0.000',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  `print_option` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `print_option`) VALUES
(1, 1, '', '', 1, '1.000', '50.00', '90.00', '0.00', 1, 0),
(2, 2, '', '', 1, '1.000', '10.00', '50.00', '0.00', 1, 0),
(3, 5, '', '', 1, '1.000', '150.00', '300.00', '0.00', 1, 0),
(4, 3, '', '', 1, '1.000', '30.00', '60.00', '0.00', 1, 0),
(5, 4, '', '', 2, '1.000', '45.00', '90.00', '0.00', 1, 0),
(5, 5, '', '', 1, '1.000', '150.00', '300.00', '0.00', 1, 0),
(6, 4, '', '', 1, '1.000', '45.00', '90.00', '0.00', 1, 0),
(7, 6, '', '', 2, '1.000', '60.00', '120.00', '0.00', 1, 0),
(7, 8, '', '', 1, '1.000', '40.00', '80.00', '0.00', 1, 0),
(8, 6, '', '', 1, '1.000', '60.00', '120.00', '0.00', 1, 0),
(9, 4, '', '', 1, '1.000', '45.00', '90.00', '0.00', 1, 0),
(10, 4, '', '', 1, '1.000', '45.00', '90.00', '0.00', 1, 0),
(11, 3, '', '', 1, '1.000', '30.00', '60.00', '0.00', 1, 0),
(12, 30, '', '', 1, '1.000', '30.00', '40.00', '0.00', 1, 0),
(13, 6, '', '', 1, '1.000', '60.00', '120.00', '0.00', 1, 0),
(14, 31, '', '', 2, '1.000', '50.00', '60.00', '0.00', 1, 0),
(15, 4, '', '', 2, '1.000', '45.00', '90.00', '0.00', 1, 0),
(16, 7, '', '', 2, '1.000', '45.00', '90.00', '0.00', 1, 0),
(17, 6, '', '', 1, '3.000', '60.00', '120.00', '0.00', 1, 0),
(18, 30, '', '', 1, '1.000', '30.00', '40.00', '0.00', 1, 0),
(19, 4, '', '', 1, '1.000', '45.00', '90.00', '0.00', 1, 0),
(20, 34, '', '', 1, '1.000', '20.00', '0.00', '0.00', 1, 0),
(20, 37, '', '', 2, '1.000', '150.00', '300.00', '0.00', 1, 0),
(21, 34, '', '', 2, '1.000', '20.00', '40.00', '0.00', 1, 0),
(21, 35, '', '', 1, '1.000', '10.00', '20.00', '0.00', 1, 0),
(22, 34, '', '', 1, '1.000', '20.00', '40.00', '0.00', 1, 0),
(22, 37, '', '', 2, '1.000', '150.00', '300.00', '0.00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_type` tinyint(2) NOT NULL DEFAULT '0',
  `rounding_code` tinyint(2) NOT NULL DEFAULT '0',
  `cascade_tax` tinyint(2) NOT NULL DEFAULT '0',
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT '0',
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_amount`) VALUES
(1, 'Cash', '90.00'),
(2, 'Cash', '50.00'),
(3, 'Cash', '300.00'),
(4, 'Cash', '60.00'),
(5, 'Due', '390.00'),
(6, 'Credit Card', '90.00'),
(7, 'Cash', '200.00'),
(8, 'Cash', '120.00'),
(9, 'Cash', '90.00'),
(10, 'Debit Card', '90.00'),
(11, 'Cash', '60.00'),
(12, 'Cash', '40.00'),
(13, 'Cash', '120.00'),
(14, 'Cash', '100.00'),
(15, 'Cash', '90.00'),
(16, 'Cash', '90.00'),
(17, 'Due', '360.00'),
(18, 'Cash', '40.00'),
(19, 'Due', '90.00'),
(20, 'Cash', '300.00'),
(21, 'Cash', '60.00'),
(22, 'Cash', '340.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_reward_points`
--

CREATE TABLE `ospos_sales_reward_points` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_taxes`
--

CREATE TABLE `ospos_sales_taxes` (
  `sale_id` int(10) NOT NULL,
  `tax_type` smallint(2) NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code` varchar(32) NOT NULL DEFAULT '',
  `rounding_code` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('5t8pqhe382afmv8gp9dusshh3fja35a9', '::1', 1560415063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431343837363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a323b613a31353a7b733a373a226974656d5f6964223b733a323a223130223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a31313a227269636520262062656566223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a363a2231302e303030223b733a353a227072696365223b733a353a2237352e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22302e303030223b733a353a22746f74616c223b733a373a2237352e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('7qne2f2g4nfiupul9334k2kj018m4bl0', '::1', 1560415506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431353230313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a323b613a31353a7b733a373a226974656d5f6964223b733a323a223130223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a31313a227269636520262062656566223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b643a313030303b733a383a22646973636f756e74223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231302e303030223b733a353a227072696365223b643a37353b733a31383a22726563656976696e675f7175616e74697479223b733a353a22302e303030223b733a353a22746f74616c223b733a31303a2237353030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('fua58d4ssjf388rjm3uiijodsigj9emt', '::1', 1560415853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431353530393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('nnmsc5ubiqqbrumbv5imhfc0of9uei0m', '::1', 1560416208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431353835363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a323a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a313a2237223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a31333a225567616c692026204e64656775223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a353a22342e303030223b733a353a227072696365223b733a353a2234352e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22302e303030223b733a353a22746f74616c223b733a373a2234352e30303030223b7d693a323b613a31353a7b733a373a226974656d5f6964223b733a323a223332223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a31343a227567616c692026206d616e616775223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a383a22323030332e303030223b733a353a227072696365223b733a353a2234352e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2234352e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('6tlob3r0irth4ib4kugukqo2bamlq0bh', '::1', 1560416435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431363231313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('5mp36cqsmui5ja8mb492ds6ekp9eo4mh', '::1', 1560416971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431363533353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130302e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('4bniaor027bpdn1si9nmgpgogfr86jkv', '::1', 1560417749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431373233313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130302e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('t3q6ne73iluaorqe824jj6n404mhf6cv', '::1', 1560418851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431373735343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130302e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('4etp5inbhqfoacode6eifq41opkq5d7r', '::1', 1560419270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431383932383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130302e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('fon045nnpcja0uo86sahtsn07nrskc55', '::1', 1560419757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431393435373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130302e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('g9v6o8iekk478og5da4o92pkto5752s8', '::1', 1560420237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303431393738363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130302e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('hv3422oti29b2p9ngjomokc4jfp74afd', '::1', 1560420601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432303234313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('vo2nf1lpuk8pnditk337cujf2qrennoq', '::1', 1560421078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432303631343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('uka656v6tcn3kjukol46tnl4q30tgf1d', '::1', 1560421374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432313131313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('bq0dbolrlvdruphdb7lhaokmt68qv9c4', '::1', 1560421783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432313530373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f636172747c613a323a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a313a2230223b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2234302e3030223b733a31303a22636f73745f7072696365223b733a353a2232302e3030223b733a353a22746f74616c223b733a373a2234302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a373a2234302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d693a323b613a32313a7b733a373a226974656d5f6964223b733a323a223337223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a323b733a343a226e616d65223b733a373a22636869636b656e223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b733a353a22312e303030223b733a383a22646973636f756e74223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231302e303030223b733a353a227072696365223b733a363a223330302e3030223b733a31303a22636f73745f7072696365223b733a363a223135302e3030223b733a353a22746f74616c223b733a383a223330302e30303030223b733a31363a22646973636f756e7465645f746f74616c223b733a383a223330302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('mb1d6bthavm29c7lm6uutg5qsclr3a1b', '::1', 1560422123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432313832373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('gq002gip4tsol3vv3n9u5isf3m993geq', '::1', 1560422242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432323132383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('qh4rsjt2c6s2kpoltprstiqpuv1lfsan', '::1', 1560422466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432323434313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('m959b2ra330thsi4qopd4h2pq7rdj1j1', '::1', 1560424238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432343139353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a313a7b693a313b613a31353a7b733a373a226974656d5f6964223b733a323a223334223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a353a227567616c69223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b693a303b733a383a22696e5f73746f636b223b733a373a223130312e303030223b733a353a227072696365223b733a353a2232302e3030223b733a31383a22726563656976696e675f7175616e74697479223b733a353a22312e303030223b733a353a22746f74616c223b733a373a2232302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('o0pv8d205q7dpt422cdba1g4bkj726o2', '::1', 1560425145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432343834363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('l0qrb8huadibkoevm2f5mrboje59390o', '::1', 1560425254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432353235343b),
('p8no3329srgtr92ems6484dum4nmki6a', '::1', 1560426177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432363031363b),
('531q018nes68taqch7b91s27cgtq8msl', '::1', 1560426482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303432363438323b),
('gqic37u6ruksbeksqbd8tjfkfl660o06', '::1', 1560502635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303530323632373b),
('h580chgmat0vu8152oo5encuegng9e49', '::1', 1560510588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303531303538363b706572736f6e5f69647c733a313a2231223b),
('3s5f3d5k7c5qq10ccun08s237lcgs2bq', '::1', 1560510589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303531303538363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('732j87tna96hpli5tg5bu63cu49nafjn', '::1', 1560510588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303531303538363b706572736f6e5f69647c733a313a2231223b),
('7bpofre04v5aq9h42c7i4134mtevsuik', '::1', 1560510588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303531303538363b706572736f6e5f69647c733a313a2231223b),
('bjsoc811jr2gn67i5re2f7miaqg1s7rp', '::1', 1560511044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303531313034343b),
('bv8b8vd0vjamqrrudru5642g4mv73eeg', '::1', 1560576440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303537363431333b),
('obdtldi6k75jgv4g8tahr8k1u344ro3d', '::1', 1560578248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303537383139313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('o3jcnfpuit47133356hdvtf317fudbh2', '::1', 1560693625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303639333631373b),
('4fsvf2h2ki5qhatagl4g8fhptc9q43l6', '::1', 1560697125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303639373132343b),
('ohem903rrumcsu3g6bd0dg28daa7jblq', '::1', 1560750920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303735303931373b),
('s184j1picvjblf8ooi7af8d1hnc4bl1t', '::1', 1560835743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303833353734323b),
('063fe65gthi5s9cpro3gmfr0hqh0o1p6', '192.168.43.1', 1560836807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303833363733313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('8jssoa008mnf03gsl7e9066m5iveglf3', '::1', 1560861438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303836313433373b),
('h1bu0jd8llandnib0d7f7d7mhnm71853', '::1', 1560923306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303932333330353b),
('ckc16gr4j709m2535tt1tsev1o5f3fco', '::1', 1561359451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313335393434343b),
('qddfs7gu9rtfou08jhtikkcesesifgba', '::1', 1561452435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313435323337323b),
('dtlubouut5rjgkqebkofco9pl1jiq6sn', '::1', 1561527601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313532373538343b),
('phfk092v0e5eli0u35ualb5e246kmobg', '::1', 1561613675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313631333637303b),
('paj7nohqkqs53ms2ql26p52nsk44ne1i', '::1', 1561733551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313733333534313b),
('plf1bq84duamun087gpo520hgg6jfpvt', '::1', 1561896888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313839363838333b),
('101dp5a0m71sro420luj6bndvapi4c5h', '::1', 1561969049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313936393034353b),
('ojdeolr7t391ek7niocfttavqigv0f32', '::1', 1561985746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313938353734363b);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
(4, 'Vegetables', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_categories`
--

CREATE TABLE `ospos_tax_categories` (
  `tax_category_id` int(10) NOT NULL,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_tax_categories`
--

INSERT INTO `ospos_tax_categories` (`tax_category_id`, `tax_category`, `tax_group_sequence`) VALUES
(1, 'Standard', 10),
(2, 'Service', 12),
(3, 'Alcohol', 11);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_codes`
--

CREATE TABLE `ospos_tax_codes` (
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `tax_code_type` tinyint(2) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_code_rates`
--

CREATE TABLE `ospos_tax_code_rates` (
  `rate_tax_code` varchar(32) NOT NULL,
  `rate_tax_category_id` int(10) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `rounding_code` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  ADD PRIMARY KEY (`dinner_table_id`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`),
  ADD KEY `ospos_grants_ibfk_2` (`person_id`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `ospos_permissions_ibfk_2` (`location_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reference` (`reference`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `dinner_table_id` (`dinner_table_id`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  ADD PRIMARY KEY (`sale_id`,`tax_type`,`tax_group`),
  ADD KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_type`,`tax_group`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  ADD PRIMARY KEY (`tax_category_id`);

--
-- Indexes for table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  ADD PRIMARY KEY (`tax_code`);

--
-- Indexes for table `ospos_tax_code_rates`
--
ALTER TABLE `ospos_tax_code_rates`
  ADD PRIMARY KEY (`rate_tax_code`,`rate_tax_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  MODIFY `dinner_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  MODIFY `expense_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  MODIFY `expense_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  MODIFY `tax_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`);

--
-- Constraints for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD CONSTRAINT `ospos_customers_points_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_3` FOREIGN KEY (`dinner_table_id`) REFERENCES `ospos_dinner_tables` (`dinner_table_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD CONSTRAINT `ospos_sales_reward_points_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
