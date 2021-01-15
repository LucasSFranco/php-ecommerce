-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 01:41 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `senha`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(5, 'Camisas'),
(6, 'Tênis'),
(7, 'Sapatos'),
(8, 'Vestidos'),
(9, 'Saias'),
(10, 'Calções'),
(15, 'Camisetas'),
(21, 'Jaquetas'),
(22, 'Calças');

-- --------------------------------------------------------

--
-- Table structure for table `itens_carrinho`
--

CREATE TABLE `itens_carrinho` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `imagem` text NOT NULL,
  `titulo` text NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` float NOT NULL,
  `desconto` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `id_categoria`, `imagem`, `titulo`, `quantidade`, `valor`, `desconto`) VALUES
(122, 5, 'D_NQ_NP_926850-MLB41806502199_052020-W-_1_.png', 'Camisa Social Masculina Manga Longa Slim Fit Sem Bolso', 1492, 79, 13),
(123, 22, 'D_NQ_NP_857770-MLB40466921304_012020-W.png', 'Calça Jeans Lavado Escuro Bigodes Guess 40309', 42, 67.9, 19),
(124, 15, 'D_NQ_NP_798794-MLB43093026485_082020-W.png', 'Camiseta Fe Camisa Longline Masculina Oversized Estampada', 1710, 31.9, 0),
(125, 22, 'D_NQ_NP_750155-MLB31700989684_082019-W.png', 'Calça Brim Cinza Uniforme Profissional Pronta Entrega', 13716, 38.97, 0),
(126, 5, 'D_NQ_NP_790824-MLB41806509442_052020-W.png', 'Camisa Social Masculina Slim Fit Eventos Festas Casamentos', 1395, 78.69, 17),
(127, 15, 'D_NQ_NP_610835-MLB32650029533_102019-W.png', 'Kit 5 Pç Camisas Long Line Masculina Oversize Swag Promoçao', 14268, 128.9, 0),
(128, 15, 'D_NQ_NP_996884-MLB42224812823_062020-W.png', '10 Camisas Camisetas Masculinas Baratas Atacado Diversas', 2826, 181.9, 5),
(129, 15, 'D_NQ_NP_970330-MLB42793979039_072020-W.png', 'Camisa Gola Polo Em Malha Piquet Camiseta Barato', 2687, 39.99, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `cpf` text NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL,
  `sexo` text NOT NULL,
  `nascimento` text NOT NULL,
  `celular` text NOT NULL,
  `cep` text NOT NULL,
  `endereco` text NOT NULL,
  `cidade` text NOT NULL,
  `uf` text NOT NULL,
  `bairro` text NOT NULL,
  `numero` text NOT NULL,
  `complemento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `sexo`, `nascimento`, `celular`, `cep`, `endereco`, `cidade`, `uf`, `bairro`, `numero`, `complemento`) VALUES
(2, 'Lucas José Lunelli Vital', '000.000.000-00', 'lucas.lunelli@gmail.com', 'lunelli123', 'masculino', '01/01/2000', '(49) 99999-9999', '99999-999', 'X', 'Chapecó', 'SC', 'X', 'X', ''),
(8, 'Lucas Surdi Franco', '000.000.000-00', 'lucas.surdi@gmail.com', 'surdi123', 'masculino', '01/01/2002', '(49) 00000-0000', '00000-000', 'x', 'x', 'x', 'x', 'x', 'x');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itens_carrinho`
--
ALTER TABLE `itens_carrinho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `itens_carrinho`
--
ALTER TABLE `itens_carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itens_carrinho`
--
ALTER TABLE `itens_carrinho`
  ADD CONSTRAINT `itens_carrinho_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `itens_carrinho_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
