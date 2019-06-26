-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Jun-2019 às 10:06
-- Versão do servidor: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banco_caixa_eletronico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE IF NOT EXISTS `conta` (
  `id_conta` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(9) DEFAULT NULL,
  `agencia` int(4) NOT NULL,
  `login` int(11) NOT NULL,
  `senha` int(11) NOT NULL,
  `saldo` float NOT NULL,
  PRIMARY KEY (`id_conta`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id_conta`, `nome`, `cpf`, `rg`, `agencia`, `login`, `senha`, `saldo`) VALUES
(4, 'Alan Vitor', '0909099900', '787833', 1000, 5, 1, 100998),
(5, 'Otavio ', '5264254725', '375683434', 1000, 33333, 201456, 7788),
(6, 'João Marco', '54572545274', '2654', 1000, 5658, 123, 353),
(7, 'Antõnio Silva', '464852364', '565684', 1000, 1234, 1234, 180),
(11, 'Jose da Silva', '54574717545', '375683434', 1000, 1507, 105518, 265);

-- --------------------------------------------------------

--
-- Estrutura da tabela `deposito`
--

CREATE TABLE IF NOT EXISTS `deposito` (
  `id_deposito` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `id_contaFK` int(11) NOT NULL,
  `dataTransacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_deposito`),
  KEY `FK_Conta` (`id_contaFK`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `deposito`
--

INSERT INTO `deposito` (`id_deposito`, `valor`, `id_contaFK`, `dataTransacao`) VALUES
(1, 265, 11, '2019-06-25 09:29:19'),
(2, 353, 6, '2019-06-25 09:40:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saque`
--

CREATE TABLE IF NOT EXISTS `saque` (
  `id_saque` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `id_contaFK` int(11) NOT NULL,
  `dataTransacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_saque`),
  KEY `id_contaFK` (`id_contaFK`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `saque`
--

INSERT INTO `saque` (`id_saque`, `valor`, `id_contaFK`, `dataTransacao`) VALUES
(1, 3, 6, '2019-06-25 06:24:54'),
(2, 20, 11, '2019-06-25 09:12:44'),
(3, 10, 11, '2019-06-25 09:11:44'),
(4, 153, 6, '2019-06-25 09:34:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transferencia`
--

CREATE TABLE IF NOT EXISTS `transferencia` (
  `id_transferencia` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `id_contaFK` int(11) NOT NULL,
  `dataTransacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_transferencia`),
  KEY `FK_Conta` (`id_contaFK`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `transferencia`
--

INSERT INTO `transferencia` (`id_transferencia`, `valor`, `id_contaFK`, `dataTransacao`) VALUES
(1, 10, 6, '2019-06-25 09:26:07'),
(2, 5, 6, '2019-06-25 09:26:07'),
(3, 120, 11, '2019-06-25 09:26:07'),
(4, 5, 11, '2019-06-25 06:55:07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
