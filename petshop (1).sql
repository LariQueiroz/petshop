-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/05/2026 às 20:03
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
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`, `descricao`, `ativo`) VALUES
(1, 'Cachorro', 'Produtos para cães', 1),
(2, 'Gato', 'Produtos para gatos', 1),
(3, 'Peixe', 'Aquários e rações', 1),
(4, 'Pássaros', 'Utensílios para aves', 1),
(5, 'Outros pets', 'Explore diferentes produtos para seus animais', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `preco_desconto` double DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `qtd_estoque` int(11) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `descricao`, `preco`, `preco_desconto`, `imagem`, `qtd_estoque`, `ativo`, `id_categoria`) VALUES
(1, 'Ração Pedigree Adulto Carne e Vegetais 15kg', 'Ração completa e balanceada para cães adultos, com proteínas de alta qualidade e vitaminas essenciais.', 180, 149.9, 'https://m.media-amazon.com/images/I/71zv6FzqYBL._AC_SL1500_.jpg', 20, 1, 1),
(2, 'Ração Golden Fórmula Adulto Frango e Arroz 15kg', 'Alimento premium com excelente digestibilidade, ideal para cães adultos de todos os portes.', 210, 179.9, 'https://m.media-amazon.com/images/I/81n+Yv+Y4xL._AC_SL1500_.jpg', 15, 1, 1),
(3, 'Brinquedo Mordedor Kong Classic', 'Brinquedo resistente para cães, ideal para aliviar ansiedade e estimular a mastigação saudável.', 60, 49.9, 'https://m.media-amazon.com/images/I/61X6M8vJ0CL._AC_SL1000_.jpg', 30, 1, 1),
(4, 'Coleira Antipulgas Seresto', 'Proteção contra pulgas e carrapatos por até 8 meses, segura e eficaz.', 220, 199.9, 'https://m.media-amazon.com/images/I/71T5K3b6FJL._AC_SL1500_.jpg', 10, 1, 1),
(5, 'Cama Pet Cachorro Grande', 'Cama confortável e macia para cães de grande porte, tecido lavável e resistente.', 150, 120, 'https://m.media-amazon.com/images/I/71g9z6sF9oL._AC_SL1500_.jpg', 8, 1, 1),
(6, 'Ração Whiskas Adulto Carne 10kg', 'Ração sabor carne com nutrientes essenciais para a saúde dos gatos adultos.', 120, 99.9, 'https://m.media-amazon.com/images/I/71f+v3k+FGL._AC_SL1500_.jpg', 20, 1, 2),
(7, 'Areia Higiênica Pipicat Classic 12kg', 'Areia de alta absorção com controle de odores para maior higiene.', 45, 39.9, 'https://m.media-amazon.com/images/I/71gYw0l3kFL._AC_SL1500_.jpg', 25, 1, 2),
(8, 'Arranhador para Gatos com Plataforma', 'Arranhador resistente com espaço para descanso e diversão.', 130, 109.9, 'https://m.media-amazon.com/images/I/71S5yZ8F0EL._AC_SL1500_.jpg', 12, 1, 2),
(9, 'Brinquedo Ratinho para Gato', 'Brinquedo interativo que estimula o instinto de caça do gato.', 20, 14.9, 'https://m.media-amazon.com/images/I/61G4l8X+WEL._AC_SL1000_.jpg', 40, 1, 2),
(10, 'Fonte de Água Automática para Gatos', 'Fonte silenciosa que incentiva o consumo de água pelos gatos.', 150, 129.9, 'https://m.media-amazon.com/images/I/71tRk5hYzVL._AC_SL1500_.jpg', 10, 1, 2),
(11, 'Aquário Completo 20L', 'Aquário com filtro e iluminação LED, ideal para iniciantes.', 200, 169.9, 'https://m.media-amazon.com/images/I/71cWzG5k5PL._AC_SL1500_.jpg', 10, 1, 3),
(12, 'Ração para Peixes TetraMin 100g', 'Alimento balanceado para peixes ornamentais.', 25, 19.9, 'https://m.media-amazon.com/images/I/71vFZpR3o6L._AC_SL1500_.jpg', 50, 1, 3),
(13, 'Filtro Interno para Aquário', 'Filtro eficiente para manter a água limpa e saudável.', 80, 65, 'https://m.media-amazon.com/images/I/61g2r5g6v8L._AC_SL1000_.jpg', 15, 1, 3),
(14, 'Termostato para Aquário', 'Controle de temperatura automático para aquários.', 70, 59.9, 'https://m.media-amazon.com/images/I/61z3g4k2bGL._AC_SL1000_.jpg', 20, 1, 3),
(15, 'Enfeite Submarino para Aquário', 'Decoração temática para deixar o aquário mais bonito.', 45, 35, 'https://m.media-amazon.com/images/I/61s7g9g7g5L._AC_SL1000_.jpg', 30, 1, 3),
(16, 'Ração Nutrópica Calopsita Natural', 'Alimento completo para calopsitas, com sementes selecionadas.', 35, 29.9, 'https://m.media-amazon.com/images/I/61qW+Kk2jZL._AC_SL1000_.jpg', 30, 1, 4),
(17, 'Gaiola para Pássaros Média', 'Gaiola resistente com poleiros e espaço ideal para conforto.', 180, 150, 'https://m.media-amazon.com/images/I/71K7yR8dZVL._AC_SL1500_.jpg', 10, 1, 4),
(18, 'Brinquedo Espelho para Pássaros', 'Espelho interativo que estimula a atividade dos pássaros.', 25, 19.9, 'https://m.media-amazon.com/images/I/61uX6Yv0F6L._AC_SL1000_.jpg', 35, 1, 4),
(19, 'Comedouro Automático para Aves', 'Comedouro prático que mantém o alimento sempre disponível.', 40, 34.9, 'https://m.media-amazon.com/images/I/61r4x4Zq4GL._AC_SL1000_.jpg', 20, 1, 4),
(20, 'Bebedouro para Pássaros', 'Bebedouro resistente com fácil instalação na gaiola.', 18, 14.9, 'https://m.media-amazon.com/images/I/51u9yqZk5KL._AC_SL1000_.jpg', 40, 1, 4),
(21, 'Ração para Hamster Nutrópica', 'Alimento completo para hamsters e pequenos roedores.', 20, 15.9, 'https://m.media-amazon.com/images/I/61k7l6f7kGL._AC_SL1000_.jpg', 30, 1, 5),
(22, 'Gaiola para Hamster com Tubos', 'Gaiola divertida com túneis para exercícios do pet.', 120, 99.9, 'https://m.media-amazon.com/images/I/71r7y7y7y7L._AC_SL1500_.jpg', 10, 1, 5),
(23, 'Bebedouro para Roedores', 'Bebedouro automático para pequenos animais.', 25, 19.9, 'https://m.media-amazon.com/images/I/51v6h6g6g6L._AC_SL1000_.jpg', 25, 1, 5),
(24, 'Feno para Coelhos 500g', 'Feno natural rico em fibras para coelhos e roedores.', 30, 24.9, 'https://m.media-amazon.com/images/I/61f5f5f5f5L._AC_SL1000_.jpg', 20, 1, 5),
(25, 'Brinquedo para Roedores', 'Brinquedo de madeira para desgaste natural dos dentes.', 18, 12.9, 'https://m.media-amazon.com/images/I/61h6h6h6h6L._AC_SL1000_.jpg', 40, 1, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
