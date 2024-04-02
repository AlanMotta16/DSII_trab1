-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02-Abr-2024 às 14:51
-- Versão do servidor: 8.0.35-0ubuntu0.22.04.1
-- versão do PHP: 7.3.33-8+ubuntu22.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Trabalho1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Emprestimo`
--

CREATE TABLE `Emprestimo` (
  `Emprestid` int NOT NULL,
  `id` int NOT NULL,
  `Livroid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Livros`
--

CREATE TABLE `Livros` (
  `Livroid` int NOT NULL,
  `autores` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `ano` int NOT NULL,
  `editora` varchar(250) NOT NULL,
  `quantidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id` int NOT NULL,
  `nome` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Emprestimo`
--
ALTER TABLE `Emprestimo`
  ADD PRIMARY KEY (`Emprestid`);

--
-- Índices para tabela `Livros`
--
ALTER TABLE `Livros`
  ADD PRIMARY KEY (`Livroid`);

--
-- Índices para tabela `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Emprestimo`
--
ALTER TABLE `Emprestimo`
  MODIFY `Emprestid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Livros`
--
ALTER TABLE `Livros`
  MODIFY `Livroid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
