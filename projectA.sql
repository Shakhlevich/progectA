-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Окт 31 2018 г., 18:21
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `projectA`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `body`, `picture`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Уроки', 'жывадыпож', '0', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Уроки сольфеджио', '<p>Стоимость 1 руб</p>', '2018-10-27 06:05:16', '2018-10-27 06:05:16', NULL),
(2, 'Уроки вокала', '<p>Стоимость 1 руб.</p>', '2018-10-27 06:06:57', '2018-10-27 06:06:57', NULL),
(3, 'Default category', 'html text:', '2018-10-27 09:37:23', '2018-10-27 09:37:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `body`, `showhide`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'dgf', 'show', NULL, '2018-10-25 12:18:52', '2018-10-25 12:18:52');

-- --------------------------------------------------------

--
-- Структура таблицы `main_texts`
--

CREATE TABLE `main_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_texts`
--

INSERT INTO `main_texts` (`id`, `name`, `body`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Добро пожаловать на сайт!', '<div class=\"maintext\">\r\n	  <h2 class=\"bs-docs-featurette-title\">Designed for everyone, everywhere</h2>\r\n      <p class=\"lead\">Bootstrap makes front-end web development faster and easier. It\'s made for folks of all skill levels, devices of all shapes, and projects of all sizes.</p>\r\n\r\n\r\n	          <div class=\"col-sm-4\"> \r\n          <h3>Preprocessors</h3>\r\n          <p>Bootstrap ships with vanilla CSS, but its source code utilizes the two most popular CSS preprocessors, Less and Sass. Quickly get started with precompiled CSS or build on the source.</p>\r\n        </div>\r\n        <div class=\"col-sm-4\"> \r\n          <h3>One framework, every device.</h3>\r\n          <p>Bootstrap easily and efficiently scales your websites and applications with a single code base, from phones to tablets to desktops with CSS media queries.</p>\r\n        </div>\r\n        <div class=\"col-sm-4\"> \r\n          <h3>Full of features</h3>\r\n          <p>With Bootstrap, you get extensive and beautiful documentation for common HTML elements, dozens of custom HTML and CSS components, and awesome jQuery plugins.</p>\r\n        </div>\r\n		</div>', 'index', NULL, NULL, NULL),
(2, 'О компании', 'фывплоф ждфовп фвпоф ', 'About', NULL, NULL, NULL),
(3, 'Услуги', '1. длвопжфдыпо\r\n2. фылповажп ', 'Services', NULL, NULL, NULL),
(4, 'Контакты', 'тел. 35735735737\r\nадрес ыапдылоржыдаоры', 'Contacts', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Category', 'Categories', NULL, '2018-10-27 06:02:17', '2018-10-27 06:02:17'),
(4, 0, 1, 'fa-database', 'Product', 'Products', NULL, '2018-10-27 06:18:54', '2018-10-27 06:18:54');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_25_121749_create_main_texts_table', 2),
(4, '2018_10_25_145133_create_feedback_table', 3),
(5, '2018_10_26_155158_create_catalogs_table', 4),
(6, '2015_10_10_000000_create_menus_table', 5),
(7, '2015_10_10_000000_create_roles_table', 5),
(8, '2015_10_10_000000_update_users_table', 5),
(9, '2015_12_11_000000_create_users_logs_table', 5),
(10, '2016_03_14_000000_update_menus_table', 5),
(11, '2018_10_27_090217_create_category_table', 6),
(12, '2018_10_27_091854_create_product_table', 7),
(13, '2018_10_31_155729_create_orders_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postIndex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `body`, `price`, `picture`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Академический вокал Индивидуальные занятия', '<p>Продолжительность урока 45 минут 1-2 раза в неделю</p>', '45', '1540621889-academ_vocal.jpg', 1, 1, '2018-10-27 06:31:29', '2018-10-27 10:23:44', NULL),
(2, 'Академический вокал Групповые занятия', '<p>Продолжительность урока 1 час 30 минут.</p>\r\n\r\n<p>3-5 человек в группе</p>', '12', '1540622049-vocal_academy_group.jpg', 2, 1, '2018-10-27 06:34:09', '2018-10-27 10:23:31', NULL),
(3, 'Уроки эстрадного вокала Индивидуальные', '<p>Продолжительность занятия 45 минут</p>\r\n\r\n<p>1-2 раза в неделю</p>\r\n\r\n<p>&nbsp;</p>', '78', '1540622224-estrada.jpg', 2, 1, '2018-10-27 06:37:05', '2018-10-27 06:37:05', NULL),
(4, 'Уроки эстрадного вокала Групповые', '<p>Продолжительность урока 1 час 30 минут</p>\r\n\r\n<p>Группа - 3-5 человек</p>', '69', '1540622284-estr_group.jpg', 2, 1, '2018-10-27 06:38:04', '2018-10-27 06:38:04', NULL),
(5, 'Уроки сольфеджио Индивидуальные', '<p>Продолжительность урока 45 минут</p>\r\n\r\n<p>Удаленно (skype) и аудиторные занятия</p>', '78', '1540622425-solf.jpg', 1, 2, '2018-10-27 06:39:38', '2018-10-27 06:40:25', NULL),
(6, 'Уроки сольфеджио групповые', '<p>Продолжительность урока 1 час 30 минут</p>\r\n\r\n<p>Тип занятий: аудиторные</p>', '12', '1540622517-solf_group.jpg', 1, 2, '2018-10-27 06:41:57', '2018-10-27 06:41:57', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-10-27 05:44:31', '2018-10-27 05:44:31'),
(2, 'User', '2018-10-27 05:44:31', '2018-10-27 05:44:31');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Shakhlevich', 'veronikavrubel@rambler.ru', NULL, '$2y$10$T6mdi5Uwg2G/ZvqJdz/u5.gqwK38uZ1eHp19Wpv0aK8YwGWc4SkrW', '5OPipqcKHMpY1RTxjVyQZFksn2WLytcax2urSn7R3Ed14opLV7XSvabDHh6r', '2018-10-25 07:44:47', '2018-10-25 07:44:47'),
(2, 1, 'VeronikaSh', 'veronikavrubel@yandex.ru', NULL, '$2y$10$Puhtm8fUuoP1baQjSnfCp.SGIXVTNLhFcKkurOWvCvwXjPPaJ4jtC', 'OCNx234R6TPGlK8B8v4U6EjiUQoPn8sFr0pmoDKXD0Iqsq65wQzp6TQTGQCD', '2018-10-27 05:47:31', '2018-10-27 05:47:31');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'created', 'category', 1, '2018-10-27 06:05:16', '2018-10-27 06:05:16'),
(2, 2, 'created', 'category', 2, '2018-10-27 06:06:57', '2018-10-27 06:06:57'),
(3, 2, 'created', 'product', 1, '2018-10-27 06:31:29', '2018-10-27 06:31:29'),
(4, 2, 'created', 'product', 2, '2018-10-27 06:34:09', '2018-10-27 06:34:09'),
(5, 2, 'created', 'product', 3, '2018-10-27 06:37:05', '2018-10-27 06:37:05'),
(6, 2, 'created', 'product', 4, '2018-10-27 06:38:04', '2018-10-27 06:38:04'),
(7, 2, 'created', 'product', 5, '2018-10-27 06:39:38', '2018-10-27 06:39:38'),
(8, 2, 'updated', 'product', 5, '2018-10-27 06:40:25', '2018-10-27 06:40:25'),
(9, 2, 'created', 'product', 6, '2018-10-27 06:41:57', '2018-10-27 06:41:57'),
(10, 2, 'updated', 'users', 2, '2018-10-27 10:16:09', '2018-10-27 10:16:09'),
(11, 2, 'updated', 'product', 2, '2018-10-27 10:23:31', '2018-10-27 10:23:31'),
(12, 2, 'updated', 'product', 1, '2018-10-27 10:23:44', '2018-10-27 10:23:44');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_texts`
--
ALTER TABLE `main_texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `main_texts`
--
ALTER TABLE `main_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
