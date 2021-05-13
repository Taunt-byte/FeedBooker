-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Maio-2021 às 19:48
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `feedbooker2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` text NOT NULL,
  `RA` int(11) NOT NULL,
  `idade` int(11) NOT NULL,
  `ingressao` date NOT NULL,
  `conclusao` date NOT NULL,
  `faltas` int(11) NOT NULL,
  `fk_calendário` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `RA`, `idade`, `ingressao`, `conclusao`, `faltas`, `fk_calendário`) VALUES
(1, 'Julio Martins dos Santos', 895741619, 23, '2005-01-15', '2030-04-10', 15, 0),
(2, 'Julio Martins da Silva', 211312412, 19, '2021-01-14', '2023-04-06', 31, 0),
(3, 'Luis Inacio da Silva', 121241241, 49, '2021-04-14', '2027-04-09', 14, 0),
(4, 'Gabriel Fermino Santos', 131412345, 23, '2014-03-20', '2028-04-20', 21, 7),
(5, 'Mario dos Santos Pereira', 131312345, 18, '2017-02-10', '2021-04-23', 4, 0),
(6, 'Benedito Jose', 281342512, 23, '2020-01-24', '2026-04-23', 2, 0),
(7, 'Alberto de  Itanhaem', 381549512, 28, '2012-06-13', '2021-04-27', 1, 3),
(8, 'João Pereira', 882345513, 34, '2015-08-11', '2021-04-26', 8, 9),
(9, 'Bolsonaro da Silva', 581646512, 46, '2011-02-16', '2024-04-27', 9, 1),
(10, 'Ayrton Sena', 481445562, 27, '2021-09-22', '2025-04-20', 5, 0),
(11, 'Machado de Assis', 285348518, 52, '2017-03-22', '2021-04-11', 14, 0);
(12, 'Stephen Hawking', 285458518, 42, '2017-02-22', '2021-04-11', 24, 0);
(13, 'Roberto Justos', 285348218, 31, '2017-03-22', '2021-04-11', 44, 0);
(14, 'Martin Luther King', 385348518, 41, '2017-03-12', '2021-04-11', 0, 0);
(15, 'Samanda Bronkin', 284448518, 22, '2017-03-22', '2021-04-11', 24, 0);
(16, 'Julia Machado', 287648518, 52, '2017-03-32', '2021-04-11', 13, 0);
(17, 'Regina de Assis Solsa', 285248518, 52, '2017-03-12', '2021-04-11', 11, 0);
(18, 'Mariane Silva', 485348518, 52, '2017-03-22', '2021-04-11', 14, 0);
(19, 'Maria Laura da Fonseca', 384348518, 52, '2017-03-22', '2021-04-11', 12, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `calendário`
--

CREATE TABLE `calendário` (
  `id_semestre` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  `comeco` date NOT NULL,
  `termino` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `calendário`
--

INSERT INTO `calendário` (`id_semestre`, `semestre`, `comeco`, `termino`) VALUES
(1, 1, '2011-01-01', '2011-06-30'),
(2, 2, '2011-07-01', '2011-12-31'),
(3, 1, '2012-01-01', '2012-06-30'),
(4, 2, '2012-07-01', '2012-12-31'),
(5, 1, '2013-01-01', '2013-06-30'),
(6, 2, '2013-07-01', '2013-12-31'),
(7, 1, '2014-01-01', '2014-06-30'),
(8, 2, '2014-07-01', '2014-12-31'),
(9, 1, '2015-01-01', '2015-06-30'),
(10, 2, '2015-07-01', '2015-12-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `N_de_planejamento` int(11) NOT NULL,
  `N_de_entusiasmo` int(11) NOT NULL,
  `N_de_comunicacao` int(11) NOT NULL,
  `N_de_conteudo` int(11) NOT NULL,
  `fk_aluno` int(11) NOT NULL,
  `fk_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `N_de_planejamento`, `N_de_entusiasmo`, `N_de_comunicacao`, `N_de_conteudo`, `fk_aluno`, `fk_professor`) VALUES
(1, 2, 8, 6, 9, 1, 2),
(2, 2, 8, 6, 9, 2, 3),
(3, 2, 8, 6, 9, 3, 2),
(4, 6, 5, 7, 4, 1, 1),
(5, 8, 8, 4, 3, 5, 4),
(6, 5, 9, 8, 7, 5, 2),
(7, 5, 9, 8, 7, 2, 2),
(8, 4, 8, 9, 6, 1, 2),
(9, 8, 5, 6, 5, 11, 4),
(10, 7, 8, 4, 2, 10, 3),
(11, 5, 6, 6, 4, 8, 1),
(12, 6, 9, 9, 7, 9, 6),
(13, 2, 3, 4, 4, 7, 5),
(14, 6, 10, 5, 10, 6, 2),
(15, 7, 11, 3, 7, 10, 1),
(16, 2, 2, 2, 2, 8, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nome` text NOT NULL,
  `fk_professor` int(11) NOT NULL,
  `fk_aluno` int(11) NOT NULL,
  `nota_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`id_materia`, `nome`, `fk_professor`, `fk_aluno`, `nota_aluno`) VALUES
(1, 'Gestão de dados', 1, 1, 5),
(2, 'Ciencia', 2, 1, 8),
(3, 'Fisica', 5, 7, 7),
(4, 'Lingua portuguesa', 3, 10, 2),
(5, 'Matematica', 6, 9, 9),
(6, 'Calculo I', 4, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `nome` text NOT NULL,
  `RA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id_professor`, `nome`, `RA`) VALUES
(1, 'walvirzao duque de caixias', 859172263),
(2, 'uarni deus da ciencia', 859172261),
(3, 'homer simpsons ', 123124124),
(4, 'luciana semara', 123124133),
(5, 'carlos semara', 123124137),
(6, 'Jailson Mendes', 123124148);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `fk_calendário` (`fk_calendário`);

--
-- Índices para tabela `calendário`
--
ALTER TABLE `calendário`
  ADD PRIMARY KEY (`id_semestre`);

--
-- Índices para tabela `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `fk_aluno` (`fk_aluno`),
  ADD KEY `fk_professor` (`fk_professor`);

--
-- Índices para tabela `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `fk_professor` (`fk_professor`),
  ADD KEY `fk_aluno` (`fk_aluno`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
