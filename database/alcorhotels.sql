-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 11 juin 2019 à 20:43
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alcorhotels`
--

-- --------------------------------------------------------

--
-- Structure de la table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `texte1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `texte2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `abouts`
--

INSERT INTO `abouts` (`id`, `texte1`, `texte2`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p>Le Groupe Hotelier ALCOR vous souhaite la bienvenue</p>\r\n<p>&nbsp;</p>\r\n<p>Que vous veniez pour la premi&egrave;re fois ou que vous soyez un visiteur fr&eacute;quent, nous aurons toujours &agrave; c&oelig;ur de vous proposer le meilleur service dans une atmosph&egrave;re confortable et personnalis&eacute;e. Le rythme de vis dynamique du Groupe Hotelier ALCOR propose toutes sortes d\'occasions tant au voyageurs d\'affaire qu\'aux vacanciers. Dans les deux cas, nous rendrons votre s&eacute;jour agr&eacute;able. Chers clients, notre volont&eacute; est de vous procurer un excellent s&eacute;jour au sein Groupe Hotelier ALCOR .</p>', '<p>.</p>', 'abouts\\June2019\\mXpVazj51n01rg9lvEek.jpg', '2019-06-07 16:19:16', '2019-06-07 16:19:16');

-- --------------------------------------------------------

--
-- Structure de la table `alcors`
--

CREATE TABLE `alcors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre` text COLLATE utf8_unicode_ci,
  `about` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intagram` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail3` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail4` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail5` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel3` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel4` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel5` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `alcors`
--

INSERT INTO `alcors` (`id`, `name1`, `name2`, `logo`, `photo1`, `photo2`, `titre`, `about`, `facebook`, `twitter`, `intagram`, `skype`, `mail1`, `mail2`, `mail3`, `mail4`, `mail5`, `tel1`, `tel2`, `tel3`, `tel4`, `tel5`, `created_at`, `updated_at`) VALUES
(1, 'Groupe Alcor', 'Alcor Hotel', NULL, 'alcors\\June2019\\6dUt956YjO1YpOoPk3WT.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'alcortogo@yahoo.fr', 'info@alcorhotels.info', 'ahiatak.dav@gmail.com', NULL, NULL, '90 12 01 05', '90 04 50 80', '90 01 48 98', '99 07 29 29', NULL, '2019-06-11 07:24:00', '2019-06-11 07:29:23');

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `texte` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`id`, `titre`, `image`, `texte`, `created_at`, `updated_at`) VALUES
(1, 'Our New Presidential Room', 'blogs\\June2019\\B97yFaObX8wW2zDzEZij.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>.<img src=\"http://localhost:8000/storage/blogs/June2019/img_5.jpg\" alt=\"\" width=\"615\" height=\"406\" /></p>', '2019-06-11 16:46:50', '2019-06-11 16:46:50');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hotels`
--

CREATE TABLE `chambre_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prix` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `adulte` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorie` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facilitie` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bed` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `chambre_hotels`
--

INSERT INTO `chambre_hotels` (`id`, `hotel_id`, `name`, `image`, `prix`, `description`, `created_at`, `updated_at`, `adulte`, `categorie`, `facilitie`, `size`, `bed`) VALUES
(1, 2, 'Chambres CONFORTS', 'chambre-hotels\\June2019\\k3EE4KEJUfj9rwkl8vUC.jpg', '18 000', NULL, '2019-06-04 16:54:00', '2019-06-10 21:30:32', '1', 'Single', '[\"HD flat-screen TV\",\"Wifi\"]', '20', '1'),
(2, 2, 'Salle De Conférence', 'chambre-hotels\\June2019\\y2BacxKIijmHyuUKAie8.jpg', '50 000', 'Salle de conférence spacieuse ventilée et climatisée, pouvant contenir au plus 50 personnes.', '2019-06-06 17:20:00', '2019-06-10 19:15:07', NULL, NULL, NULL, NULL, NULL),
(3, 2, 'Chambres JUNIORS', 'chambre-hotels\\June2019\\QmVHilCUP7LhX3sVvdWI.jpg', '22 000', NULL, '2019-06-07 15:46:00', '2019-06-10 19:46:19', NULL, NULL, NULL, NULL, NULL),
(4, 2, 'Chambre', 'chambre-hotels\\June2019\\6HXK5T8TLPxer539WJPt.jpg', '30 000', NULL, '2019-06-07 15:47:00', '2019-06-10 19:45:51', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'aaaa', '2019-06-07 14:39:07', '2019-06-07 14:39:07'),
(2, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'aaaa', '2019-06-07 14:39:39', '2019-06-07 14:39:39'),
(3, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'aaaa', '2019-06-07 14:41:08', '2019-06-07 14:41:08'),
(4, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'aaaa', '2019-06-07 14:41:32', '2019-06-07 14:41:32'),
(5, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'aaaa', '2019-06-07 14:41:46', '2019-06-07 14:41:46'),
(6, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'aaaa', '2019-06-07 14:42:08', '2019-06-07 14:42:08'),
(7, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'ss', '2019-06-07 14:44:29', '2019-06-07 14:44:29'),
(8, 'David Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'ghfgfgfg', '2019-06-07 20:55:26', '2019-06-07 20:55:26'),
(9, 'David Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'reservation de Chambres JUNIORS , jours : [object HTMLInputElement]  prix : 22 000', '2019-06-11 14:00:53', '2019-06-11 14:00:53'),
(10, 'David Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'reservation de Chambres JUNIORS , jours : [object HTMLInputElement]  prix : 22 000', '2019-06-11 14:13:43', '2019-06-11 14:13:43'),
(11, 'David Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'reservation de Chambres JUNIORS , jours : [object HTMLInputElement]  prix : 22 000', '2019-06-11 14:14:16', '2019-06-11 14:14:16'),
(12, 'David Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'reservation de Chambres JUNIORS , jours : [object HTMLInputElement]  prix : 22 000', '2019-06-11 14:14:55', '2019-06-11 14:14:55'),
(13, 'David Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'reservation de Chambres JUNIORS , jours : [object HTMLInputElement]  prix : 22 000', '2019-06-11 14:24:18', '2019-06-11 14:24:18');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"528\"}},{\"name\":\"detail\",\"crop\":{\"width\":\"1200\",\"height\":\"728\"}}]}', 3),
(25, 4, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(29, 5, 'hotel_id', 'select_dropdown', 'Hotel', 1, 1, 1, 1, 1, 1, '{}', 2),
(30, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(31, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"528\"}},{\"name\":\"detail\",\"crop\":{\"width\":\"1200\",\"height\":\"728\"}}]}', 5),
(32, 5, 'prix', 'text', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 6),
(33, 5, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(34, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(36, 5, 'chambre_hotel_belongsto_hotel_relationship', 'relationship', 'hotels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Hotel\",\"table\":\"hotels\",\"type\":\"belongsTo\",\"column\":\"hotel_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alcors\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(37, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 6, 'texte1', 'rich_text_box', 'Texte1', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 6, 'texte2', 'rich_text_box', 'Texte2', 1, 1, 1, 1, 1, 1, '{}', 3),
(40, 6, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(43, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 7, 'restaurant_id', 'select_dropdown', 'Restaurant Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(45, 7, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 4),
(46, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"528\"}}]}', 5),
(47, 7, 'prix', 'text', 'Prix', 1, 1, 1, 1, 1, 1, '{}', 6),
(48, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 7),
(49, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(50, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(51, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 8, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 2),
(53, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"528\"}}]}', 3),
(54, 8, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(55, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(56, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(57, 5, 'adulte', 'select_dropdown', 'Adulte', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"5\":\"5\",\"6\":\"6\",\"7\":\"7\",\"8\":\"8\",\"9\":\"9\",\"10\":\"10\",\"11\":\"11\",\"12\":\"12\",\"13\":\"13\",\"14\":\"14\"}}', 8),
(58, 5, 'categorie', 'select_dropdown', 'Categorie', 0, 1, 1, 1, 1, 1, '{\"default\":\"Single\",\"options\":{\"Single\":\"Single\",\"Multiple\":\"Multiple\"}}', 9),
(59, 5, 'facilitie', 'select_multiple', 'Facilitie', 0, 1, 1, 1, 1, 1, '{\"default\":\"Closet with hangers\",\"options\":{\"Closet with hangers\":\"Closet with hangers\",\"HD flat-screen TV\":\"HD flat-screen TV\",\"Telephone\":\"Telephone\",\"Wifi\":\"Wifi\"}}', 10),
(60, 5, 'size', 'number', 'Size', 0, 1, 1, 1, 1, 1, '{}', 11),
(61, 5, 'bed', 'select_dropdown', 'Bed', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\"}}', 12),
(62, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"528\"}},{\"name\":\"detail\",\"crop\":{\"width\":\"1200\",\"height\":\"728\"}}]}', 3),
(65, 10, 'prix', 'text', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 4),
(66, 10, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(67, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(68, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(69, 7, 'plat_belongsto_restaurant_relationship', 'relationship', 'restaurants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Restaurant\",\"table\":\"restaurants\",\"type\":\"belongsTo\",\"column\":\"restaurant_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(70, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 11, 'name1', 'text', 'Name1', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 11, 'name2', 'text', 'Name2', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 11, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 11, 'photo1', 'image', 'Photo1', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 11, 'photo2', 'image', 'Photo2', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 11, 'titre', 'text', 'Titre', 0, 1, 1, 1, 1, 1, '{}', 7),
(77, 11, 'about', 'text', 'About', 0, 1, 1, 1, 1, 1, '{}', 8),
(78, 11, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 9),
(79, 11, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 10),
(80, 11, 'intagram', 'text', 'Intagram', 0, 1, 1, 1, 1, 1, '{}', 11),
(81, 11, 'skype', 'text', 'Skype', 0, 1, 1, 1, 1, 1, '{}', 12),
(82, 11, 'mail1', 'text', 'Mail1', 0, 1, 1, 1, 1, 1, '{}', 13),
(83, 11, 'mail2', 'text', 'Mail2', 0, 1, 1, 1, 1, 1, '{}', 14),
(84, 11, 'mail3', 'text', 'Mail3', 0, 1, 1, 1, 1, 1, '{}', 15),
(85, 11, 'mail4', 'text', 'Mail4', 0, 1, 1, 1, 1, 1, '{}', 16),
(86, 11, 'mail5', 'text', 'Mail5', 0, 1, 1, 1, 1, 1, '{}', 17),
(87, 11, 'tel1', 'text', 'Tel1', 0, 1, 1, 1, 1, 1, '{}', 18),
(88, 11, 'tel2', 'text', 'Tel2', 0, 1, 1, 1, 1, 1, '{}', 19),
(89, 11, 'tel3', 'text', 'Tel3', 0, 1, 1, 1, 1, 1, '{}', 20),
(90, 11, 'tel4', 'text', 'Tel4', 0, 1, 1, 1, 1, 1, '{}', 21),
(91, 11, 'tel5', 'text', 'Tel5', 0, 1, 1, 1, 1, 1, '{}', 22),
(92, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 23),
(93, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 24),
(94, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(95, 12, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 2),
(96, 12, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"528\"}},{\"name\":\"detail\",\"crop\":{\"width\":\"1200\",\"height\":\"728\"}}]}', 3),
(97, 12, 'texte', 'rich_text_box', 'Texte', 1, 1, 1, 1, 1, 1, '{}', 4),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(99, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-06-04 11:48:22', '2019-06-04 11:48:22'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-06-04 11:48:22', '2019-06-04 11:48:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-06-04 11:48:22', '2019-06-04 11:48:22'),
(4, 'hotels', 'hotels', 'Hotel', 'Hotels', 'voyager-trophy', 'App\\Hotel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-04 15:48:54', '2019-06-10 20:52:04'),
(5, 'chambre_hotels', 'chambre-hotels', 'Chambre Hotel', 'Chambre Hotels', 'voyager-list-add', 'App\\ChambreHotel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-04 15:54:34', '2019-06-10 21:28:50'),
(6, 'abouts', 'abouts', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-07 16:14:52', '2019-06-07 16:14:52'),
(7, 'plats', 'plats', 'Plat', 'Plats', 'voyager-anchor', 'App\\Plat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-07 16:16:26', '2019-06-11 00:31:12'),
(8, 'restaurants', 'restaurants', 'Restaurant', 'Restaurants', 'voyager-backpack', 'App\\Restaurant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-07 16:17:42', '2019-06-11 00:18:25'),
(10, 'residences', 'residences', 'Residence', 'Residences', 'j', 'App\\Residence', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-10 23:11:57', '2019-06-10 23:11:57'),
(11, 'alcors', 'alcors', 'Alcor', 'Alcors', 'voyager-check', 'App\\Alcor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-11 07:19:35', '2019-06-11 07:25:38'),
(12, 'blogs', 'blogs', 'Blog', 'Blogs', NULL, 'App\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-11 16:38:41', '2019-06-11 16:38:41');

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hôtel Acropolis', 'hotels\\June2019\\aoNomsW3Q9nBchlkeKqo.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\r\n<p>&nbsp;</p>', '2019-06-04 16:08:00', '2019-06-04 16:49:43'),
(2, 'Hôtel Alcor', 'hotels\\June2019\\hbY4jqgEheirc265niz5.jpg', '<p><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 13.5px;\">un s&eacute;jour d&eacute;tente que pour vos voyages d\'affaires, l\'H&ocirc;tel Alcor accueille les voyageurs et est situ&eacute; au c&oelig;ur de la ville de Lome, &agrave; deux pas du service des passports non loin de GTA. L&rsquo;H&ocirc;tel Alcor met &agrave; votre disposition 20 chambres climatis&eacute;es de tout genre, toutes avec Tv &eacute;cran plat et wifi gratuit, sont toutes pourvues de salles de bain dans un cadre authentique et confortable.</span></p>', '2019-06-06 17:16:47', '2019-06-06 17:16:47');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-06-04 11:48:25', '2019-06-04 11:48:25');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-06-04 11:48:25', '2019-06-04 11:48:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-06-04 11:48:25', '2019-06-04 11:48:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-06-04 11:48:25', '2019-06-04 11:48:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-06-04 11:48:25', '2019-06-04 11:48:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-06-04 11:48:26', '2019-06-04 11:48:26', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-06-04 11:48:26', '2019-06-04 11:48:26', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-06-04 11:48:26', '2019-06-04 11:48:26', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-06-04 11:48:26', '2019-06-04 11:48:26', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-06-04 11:48:26', '2019-06-04 11:48:26', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-06-04 11:48:26', '2019-06-04 11:48:26', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-06-04 11:48:31', '2019-06-04 11:48:31', 'voyager.hooks', NULL),
(12, 1, 'Hotels', '', '_self', 'voyager-trophy', NULL, NULL, 15, '2019-06-04 15:48:56', '2019-06-04 15:48:56', 'voyager.hotels.index', NULL),
(13, 1, 'Chambre Hotels', '', '_self', 'voyager-list-add', NULL, NULL, 16, '2019-06-04 15:54:34', '2019-06-04 15:54:34', 'voyager.chambre-hotels.index', NULL),
(14, 1, 'Abouts', '', '_self', NULL, NULL, NULL, 17, '2019-06-07 16:14:53', '2019-06-07 16:14:53', 'voyager.abouts.index', NULL),
(15, 1, 'Plats', '', '_self', NULL, NULL, NULL, 18, '2019-06-07 16:16:26', '2019-06-07 16:16:26', 'voyager.plats.index', NULL),
(16, 1, 'Restaurants', '', '_self', 'voyager-backpack', NULL, NULL, 19, '2019-06-07 16:17:42', '2019-06-07 16:17:42', 'voyager.restaurants.index', NULL),
(17, 1, 'Residences', '', '_self', 'j', NULL, NULL, 20, '2019-06-10 23:11:59', '2019-06-10 23:11:59', 'voyager.residences.index', NULL),
(18, 1, 'Alcors', '', '_self', 'voyager-check', NULL, NULL, 21, '2019-06-11 07:19:39', '2019-06-11 07:19:39', 'voyager.alcors.index', NULL),
(19, 1, 'Blogs', '', '_self', NULL, NULL, NULL, 22, '2019-06-11 16:38:43', '2019-06-11 16:38:43', 'voyager.blogs.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_06_03_102820_create_alcors_table', 1),
(24, '2019_06_03_103806_create_hotels_table', 1),
(25, '2019_06_03_104357_create_contacts_table', 1),
(26, '2019_06_03_110335_create_chambre_hotels_table', 1),
(27, '2019_06_04_103141_create_restaurants_table', 2),
(28, '2019_06_04_111157_create_plats_table', 2),
(29, '2019_06_07_140930_create_residences_table', 3),
(30, '2019_06_07_141352_create_posts_table', 3),
(31, '2019_06_07_144817_create_abouts_table', 3),
(32, '2019_06_10_210409_add_bed_to_chambre_hotels_table', 4),
(33, '2019_06_11_105228_create_blogs_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-06-04 11:48:26', '2019-06-04 11:48:26'),
(2, 'browse_bread', NULL, '2019-06-04 11:48:26', '2019-06-04 11:48:26'),
(3, 'browse_database', NULL, '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(4, 'browse_media', NULL, '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(5, 'browse_compass', NULL, '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(6, 'browse_menus', 'menus', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(7, 'read_menus', 'menus', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(8, 'edit_menus', 'menus', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(9, 'add_menus', 'menus', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(10, 'delete_menus', 'menus', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(11, 'browse_roles', 'roles', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(12, 'read_roles', 'roles', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(13, 'edit_roles', 'roles', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(14, 'add_roles', 'roles', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(15, 'delete_roles', 'roles', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(16, 'browse_users', 'users', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(17, 'read_users', 'users', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(18, 'edit_users', 'users', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(19, 'add_users', 'users', '2019-06-04 11:48:27', '2019-06-04 11:48:27'),
(20, 'delete_users', 'users', '2019-06-04 11:48:28', '2019-06-04 11:48:28'),
(21, 'browse_settings', 'settings', '2019-06-04 11:48:28', '2019-06-04 11:48:28'),
(22, 'read_settings', 'settings', '2019-06-04 11:48:28', '2019-06-04 11:48:28'),
(23, 'edit_settings', 'settings', '2019-06-04 11:48:28', '2019-06-04 11:48:28'),
(24, 'add_settings', 'settings', '2019-06-04 11:48:28', '2019-06-04 11:48:28'),
(25, 'delete_settings', 'settings', '2019-06-04 11:48:28', '2019-06-04 11:48:28'),
(26, 'browse_hooks', NULL, '2019-06-04 11:48:31', '2019-06-04 11:48:31'),
(27, 'browse_hotels', 'hotels', '2019-06-04 15:48:56', '2019-06-04 15:48:56'),
(28, 'read_hotels', 'hotels', '2019-06-04 15:48:56', '2019-06-04 15:48:56'),
(29, 'edit_hotels', 'hotels', '2019-06-04 15:48:56', '2019-06-04 15:48:56'),
(30, 'add_hotels', 'hotels', '2019-06-04 15:48:56', '2019-06-04 15:48:56'),
(31, 'delete_hotels', 'hotels', '2019-06-04 15:48:56', '2019-06-04 15:48:56'),
(32, 'browse_chambre_hotels', 'chambre_hotels', '2019-06-04 15:54:34', '2019-06-04 15:54:34'),
(33, 'read_chambre_hotels', 'chambre_hotels', '2019-06-04 15:54:34', '2019-06-04 15:54:34'),
(34, 'edit_chambre_hotels', 'chambre_hotels', '2019-06-04 15:54:34', '2019-06-04 15:54:34'),
(35, 'add_chambre_hotels', 'chambre_hotels', '2019-06-04 15:54:34', '2019-06-04 15:54:34'),
(36, 'delete_chambre_hotels', 'chambre_hotels', '2019-06-04 15:54:34', '2019-06-04 15:54:34'),
(37, 'browse_abouts', 'abouts', '2019-06-07 16:14:53', '2019-06-07 16:14:53'),
(38, 'read_abouts', 'abouts', '2019-06-07 16:14:53', '2019-06-07 16:14:53'),
(39, 'edit_abouts', 'abouts', '2019-06-07 16:14:53', '2019-06-07 16:14:53'),
(40, 'add_abouts', 'abouts', '2019-06-07 16:14:53', '2019-06-07 16:14:53'),
(41, 'delete_abouts', 'abouts', '2019-06-07 16:14:53', '2019-06-07 16:14:53'),
(42, 'browse_plats', 'plats', '2019-06-07 16:16:26', '2019-06-07 16:16:26'),
(43, 'read_plats', 'plats', '2019-06-07 16:16:26', '2019-06-07 16:16:26'),
(44, 'edit_plats', 'plats', '2019-06-07 16:16:26', '2019-06-07 16:16:26'),
(45, 'add_plats', 'plats', '2019-06-07 16:16:26', '2019-06-07 16:16:26'),
(46, 'delete_plats', 'plats', '2019-06-07 16:16:26', '2019-06-07 16:16:26'),
(47, 'browse_restaurants', 'restaurants', '2019-06-07 16:17:42', '2019-06-07 16:17:42'),
(48, 'read_restaurants', 'restaurants', '2019-06-07 16:17:42', '2019-06-07 16:17:42'),
(49, 'edit_restaurants', 'restaurants', '2019-06-07 16:17:42', '2019-06-07 16:17:42'),
(50, 'add_restaurants', 'restaurants', '2019-06-07 16:17:42', '2019-06-07 16:17:42'),
(51, 'delete_restaurants', 'restaurants', '2019-06-07 16:17:42', '2019-06-07 16:17:42'),
(52, 'browse_residences', 'residences', '2019-06-10 23:11:59', '2019-06-10 23:11:59'),
(53, 'read_residences', 'residences', '2019-06-10 23:11:59', '2019-06-10 23:11:59'),
(54, 'edit_residences', 'residences', '2019-06-10 23:11:59', '2019-06-10 23:11:59'),
(55, 'add_residences', 'residences', '2019-06-10 23:11:59', '2019-06-10 23:11:59'),
(56, 'delete_residences', 'residences', '2019-06-10 23:11:59', '2019-06-10 23:11:59'),
(57, 'browse_alcors', 'alcors', '2019-06-11 07:19:38', '2019-06-11 07:19:38'),
(58, 'read_alcors', 'alcors', '2019-06-11 07:19:38', '2019-06-11 07:19:38'),
(59, 'edit_alcors', 'alcors', '2019-06-11 07:19:38', '2019-06-11 07:19:38'),
(60, 'add_alcors', 'alcors', '2019-06-11 07:19:38', '2019-06-11 07:19:38'),
(61, 'delete_alcors', 'alcors', '2019-06-11 07:19:38', '2019-06-11 07:19:38'),
(62, 'browse_blogs', 'blogs', '2019-06-11 16:38:42', '2019-06-11 16:38:42'),
(63, 'read_blogs', 'blogs', '2019-06-11 16:38:42', '2019-06-11 16:38:42'),
(64, 'edit_blogs', 'blogs', '2019-06-11 16:38:42', '2019-06-11 16:38:42'),
(65, 'add_blogs', 'blogs', '2019-06-11 16:38:42', '2019-06-11 16:38:42'),
(66, 'delete_blogs', 'blogs', '2019-06-11 16:38:42', '2019-06-11 16:38:42');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `prix` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id`, `restaurant_id`, `nom`, `image`, `prix`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Spicy Noodles', 'plats\\June2019\\kx2CWdGwyUVz9fUWcOJ1.jpg', '3500', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p>\r\n<p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>\r\n<p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-06-11 00:29:57', '2019-06-11 00:29:57'),
(2, 1, 'Egg & Grilled Steak', 'plats\\June2019\\JP3piP8tg3YFgNrebQMc.jpg', '3800', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p>\r\n<p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>\r\n<p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-06-11 00:32:39', '2019-06-11 00:32:39'),
(3, 1, 'Grilled Top Sirloin Steak', 'plats\\June2019\\ab22fu7lwNBV8diQYRuI.jpg', '3500', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione quo vel aut ab qui quas!</span></p>', '2019-06-11 18:36:12', '2019-06-11 18:36:12');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `residences`
--

CREATE TABLE `residences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prix` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `residences`
--

INSERT INTO `residences` (`id`, `name`, `image`, `prix`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor Room', 'residences\\June2019\\4eZRjiw1rbbJhjtDxKOn.jpg', '22 000', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p><img src=\"http://localhost:8000/storage/residences/June2019/img_5.jpg\" alt=\"\" width=\"309\" height=\"204\" /> &nbsp; &nbsp; <img src=\"http://localhost:8000/storage/residences/June2019/bg_1.jpg\" alt=\"\" width=\"301\" height=\"200\" /></p>', '2019-06-10 23:18:00', '2019-06-10 23:23:05'),
(2, 'Family Room', 'residences\\June2019\\CwioydWHmvcRkNEYceRQ.jpg', '30 000', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p>\r\n<p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p>\r\n<p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-06-10 23:20:13', '2019-06-10 23:20:13');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `restaurants`
--

INSERT INTO `restaurants` (`id`, `nom`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant LIBRA', 'restaurants\\June2019\\fajeQRtFvR1FecrwZwjN.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-06-11 00:22:04', '2019-06-11 00:22:04');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-06-04 11:48:26', '2019-06-04 11:48:26'),
(2, 'user', 'Normal User', '2019-06-04 11:48:26', '2019-06-04 11:48:26');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2019\\SLFN7ZJjs3nC0XezkAsB.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Page Administration', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenue dans la page d\'administration du Groupe Alcor', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dav', 'dav@dav.com', 'users/default.png', NULL, '$2y$10$Mtm3CnWdNppZgmXYu43RKugcYrHUJVKIv4FstfMQv6WHaEbd5MLbG', NULL, NULL, '2019-06-04 11:52:33', '2019-06-04 11:52:33');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `alcors`
--
ALTER TABLE `alcors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambre_hotels`
--
ALTER TABLE `chambre_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chambre_hotels_hotel_id_foreign` (`hotel_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plats_restaurant_id_foreign` (`restaurant_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `residences`
--
ALTER TABLE `residences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `alcors`
--
ALTER TABLE `alcors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `chambre_hotels`
--
ALTER TABLE `chambre_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `residences`
--
ALTER TABLE `residences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre_hotels`
--
ALTER TABLE `chambre_hotels`
  ADD CONSTRAINT `chambre_hotels_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `plats`
--
ALTER TABLE `plats`
  ADD CONSTRAINT `plats_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
