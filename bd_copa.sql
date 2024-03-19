-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/03/2024 às 02:22
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_copa`
--
CREATE DATABASE IF NOT EXISTS `bd_copa` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bd_copa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `selecoes`
--

CREATE TABLE `selecoes` (
  `id` int(11) NOT NULL,
  `selecao` varchar(25) NOT NULL,
  `grupo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `selecoes`
--

INSERT INTO `selecoes` (`id`, `selecao`, `grupo`) VALUES
(1, 'Holanda', 'A'),
(2, 'Senegal', 'A'),
(3, 'Equador', 'A');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `selecoes`
--
ALTER TABLE `selecoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `selecoes`
--
ALTER TABLE `selecoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
