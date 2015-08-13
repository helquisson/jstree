-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Ago-2015 às 13:38
-- Versão do servidor: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jstree`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `id_parent`, `name`) VALUES
(1, 0, 'Category 1'),
(2, 0, 'Category 2'),
(3, 1, 'Sub Category 1'),
(4, 3, 'Sub Category'),
(5, 4, 'Sub Category'),
(6, 0, 'New Category'),
(7, 2, 'New Category');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `id_category`, `title`, `content`) VALUES
(1, 1, 'New Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu laoreet erat. Morbi vel enim laoreet, dictum lorem vitae, congue magna. Nam blandit neque eu massa laoreet, eu ullamcorper justo faucibus. Morbi tellus arcu, viverra at justo in, facilisis porta ipsum. Pellentesque laoreet nibh felis, volutpat commodo orci bibendum vel. Nunc felis augue, rhoncus a porttitor a, ornare sed libero. Duis ultricies eros nisi, at posuere justo scelerisque in. Sed ultrices pharetra elit, ac convallis velit hendrerit a. Donec convallis mi leo, ut tristique diam posuere sed. Sed porttitor tempor est, sit amet fermentum nunc bibendum non. Sed vehicula augue quis sapien lacinia mattis. Nulla tellus arcu, porttitor eget massa at, pellentesque rutrum ex.\r\n\r\nFusce et neque est. Donec eu ligula sagittis, efficitur felis ut, placerat ipsum. Nullam sed molestie velit. Nullam tempus in dolor sed fermentum. Etiam eu sapien magna. Aliquam erat volutpat. Aenean commodo tempor interdum. Nam in nisi sed felis ullamcorper eleifend. Phasellus eu ex consectetur, consectetur ipsum eget, pretium elit. Mauris vel lobortis nunc. Pellentesque non massa lacinia, pellentesque eros at, rutrum dui. Curabitur tincidunt eros velit, sit amet vulputate sem condimentum vitae. Donec mollis nisl vitae augue cursus maximus. '),
(2, 5, 'New Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu laoreet erat. Morbi vel enim laoreet, dictum lorem vitae, congue magna. Nam blandit neque eu massa laoreet, eu ullamcorper justo faucibus. Morbi tellus arcu, viverra at justo in, facilisis porta ipsum. Pellentesque laoreet nibh felis, volutpat commodo orci bibendum vel. Nunc felis augue, rhoncus a porttitor a, ornare sed libero. Duis ultricies eros nisi, at posuere justo scelerisque in. Sed ultrices pharetra elit, ac convallis velit hendrerit a. Donec convallis mi leo, ut tristique diam posuere sed. Sed porttitor tempor est, sit amet fermentum nunc bibendum non. Sed vehicula augue quis sapien lacinia mattis. Nulla tellus arcu, porttitor eget massa at, pellentesque rutrum ex.\r\n\r\nFusce et neque est. Donec eu ligula sagittis, efficitur felis ut, placerat ipsum. Nullam sed molestie velit. Nullam tempus in dolor sed fermentum. Etiam eu sapien magna. Aliquam erat volutpat. Aenean commodo tempor interdum. Nam in nisi sed felis ullamcorper eleifend. Phasellus eu ex consectetur, consectetur ipsum eget, pretium elit. Mauris vel lobortis nunc. Pellentesque non massa lacinia, pellentesque eros at, rutrum dui. Curabitur tincidunt eros velit, sit amet vulputate sem condimentum vitae. Donec mollis nisl vitae augue cursus maximus. '),
(3, 4, 'New Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu laoreet erat. Morbi vel enim laoreet, dictum lorem vitae, congue magna. Nam blandit neque eu massa laoreet, eu ullamcorper justo faucibus. Morbi tellus arcu, viverra at justo in, facilisis porta ipsum. Pellentesque laoreet nibh felis, volutpat commodo orci bibendum vel. Nunc felis augue, rhoncus a porttitor a, ornare sed libero. Duis ultricies eros nisi, at posuere justo scelerisque in. Sed ultrices pharetra elit, ac convallis velit hendrerit a. Donec convallis mi leo, ut tristique diam posuere sed. Sed porttitor tempor est, sit amet fermentum nunc bibendum non. Sed vehicula augue quis sapien lacinia mattis. Nulla tellus arcu, porttitor eget massa at, pellentesque rutrum ex.\r\n\r\nFusce et neque est. Donec eu ligula sagittis, efficitur felis ut, placerat ipsum. Nullam sed molestie velit. Nullam tempus in dolor sed fermentum. Etiam eu sapien magna. Aliquam erat volutpat. Aenean commodo tempor interdum. Nam in nisi sed felis ullamcorper eleifend. Phasellus eu ex consectetur, consectetur ipsum eget, pretium elit. Mauris vel lobortis nunc. Pellentesque non massa lacinia, pellentesque eros at, rutrum dui. Curabitur tincidunt eros velit, sit amet vulputate sem condimentum vitae. Donec mollis nisl vitae augue cursus maximus. '),
(4, 7, 'New Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu laoreet erat. Morbi vel enim laoreet, dictum lorem vitae, congue magna. Nam blandit neque eu massa laoreet, eu ullamcorper justo faucibus. Morbi tellus arcu, viverra at justo in, facilisis porta ipsum. Pellentesque laoreet nibh felis, volutpat commodo orci bibendum vel. Nunc felis augue, rhoncus a porttitor a, ornare sed libero. Duis ultricies eros nisi, at posuere justo scelerisque in. Sed ultrices pharetra elit, ac convallis velit hendrerit a. Donec convallis mi leo, ut tristique diam posuere sed. Sed porttitor tempor est, sit amet fermentum nunc bibendum non. Sed vehicula augue quis sapien lacinia mattis. Nulla tellus arcu, porttitor eget massa at, pellentesque rutrum ex.\r\n\r\nFusce et neque est. Donec eu ligula sagittis, efficitur felis ut, placerat ipsum. Nullam sed molestie velit. Nullam tempus in dolor sed fermentum. Etiam eu sapien magna. Aliquam erat volutpat. Aenean commodo tempor interdum. Nam in nisi sed felis ullamcorper eleifend. Phasellus eu ex consectetur, consectetur ipsum eget, pretium elit. Mauris vel lobortis nunc. Pellentesque non massa lacinia, pellentesque eros at, rutrum dui. Curabitur tincidunt eros velit, sit amet vulputate sem condimentum vitae. Donec mollis nisl vitae augue cursus maximus. '),
(5, 1, 'New Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu laoreet erat. Morbi vel enim laoreet, dictum lorem vitae, congue magna. Nam blandit neque eu massa laoreet, eu ullamcorper justo faucibus. Morbi tellus arcu, viverra at justo in, facilisis porta ipsum. Pellentesque laoreet nibh felis, volutpat commodo orci bibendum vel. Nunc felis augue, rhoncus a porttitor a, ornare sed libero. Duis ultricies eros nisi, at posuere justo scelerisque in. Sed ultrices pharetra elit, ac convallis velit hendrerit a. Donec convallis mi leo, ut tristique diam posuere sed. Sed porttitor tempor est, sit amet fermentum nunc bibendum non. Sed vehicula augue quis sapien lacinia mattis. Nulla tellus arcu, porttitor eget massa at, pellentesque rutrum ex.\r\n\r\nFusce et neque est. Donec eu ligula sagittis, efficitur felis ut, placerat ipsum. Nullam sed molestie velit. Nullam tempus in dolor sed fermentum. Etiam eu sapien magna. Aliquam erat volutpat. Aenean commodo tempor interdum. Nam in nisi sed felis ullamcorper eleifend. Phasellus eu ex consectetur, consectetur ipsum eget, pretium elit. Mauris vel lobortis nunc. Pellentesque non massa lacinia, pellentesque eros at, rutrum dui. Curabitur tincidunt eros velit, sit amet vulputate sem condimentum vitae. Donec mollis nisl vitae augue cursus maximus. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
