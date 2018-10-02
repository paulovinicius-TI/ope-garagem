-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02-Out-2018 às 04:19
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ope`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista`
--

CREATE TABLE IF NOT EXISTS `lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `texto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `lista`
--

INSERT INTO `lista` (`id`, `titulo`, `texto`) VALUES
(1, 'Teste 3', 'Content 4'),
(2, 'Teste 2', 'Content 4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_aux_pedido`
--

CREATE TABLE IF NOT EXISTS `tb_aux_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `tb_aux_pedido`
--

INSERT INTO `tb_aux_pedido` (`id`, `id_pedido`, `id_cliente`) VALUES
(28, 30, 0),
(29, 31, 0),
(30, 32, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cargo`
--

CREATE TABLE IF NOT EXISTS `tb_cargo` (
  `idcargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tb_cargo`
--

INSERT INTO `tb_cargo` (`idcargo`, `cargo`) VALUES
(1, 'Administrador'),
(2, 'Funcionário'),
(3, 'Cozinheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tb_categoria`
--

INSERT INTO `tb_categoria` (`idcategoria`, `categoria`, `status`) VALUES
(1, 'Perecível', b'1'),
(2, 'teste', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `cpf` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`idcliente`, `nome`, `sobrenome`, `cpf`, `status`) VALUES
(1, 'Vinicius', 'Oliveira', '22494676843', b'1'),
(3, 'ope', 'ope', '000.000.000-00', b'1'),
(4, 'test', 'test', 'test', b'1'),
(5, 'Lucas', 'test', '654.654.654-65', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente_endereco`
--

CREATE TABLE IF NOT EXISTS `tb_cliente_endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `estado` char(2) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `tb_cliente_endereco`
--

INSERT INTO `tb_cliente_endereco` (`id`, `endereco`, `numero`, `cidade`, `bairro`, `estado`, `id_cliente`) VALUES
(1, 'Rua São paulo', '222', 'Arujá', 'Jd real', 'SP', 1),
(2, 'ope', '333', 'ope', 'ope', 'SP', 3),
(3, 'test', 'test', 'tet', 'test', 'SP', 4),
(4, 'L test', '321', 'L test', 'L test', 'SP', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente_telefone`
--

CREATE TABLE IF NOT EXISTS `tb_cliente_telefone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `tb_cliente_telefone`
--

INSERT INTO `tb_cliente_telefone` (`id`, `id_cliente`, `tel`) VALUES
(1, 1, '46522937'),
(2, 3, 'ope'),
(3, 4, 'test'),
(4, 5, '65-46561-3521');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_endereco`
--

CREATE TABLE IF NOT EXISTS `tb_endereco` (
  `idendereco` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `estado` char(2) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  PRIMARY KEY (`idendereco`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `tb_endereco`
--

INSERT INTO `tb_endereco` (`idendereco`, `endereco`, `numero`, `cidade`, `bairro`, `estado`, `cpf`) VALUES
(1, 'Rua: São Paulo', '333', 'Arujá', 'Jardim Real', 'SP', '22494676843'),
(2, 'Rua: Presidente Vemslau', '400', 'Santa Isabel', 'Centro', 'SP', '06065498765432'),
(3, 'AV: Antônio de Lima', '400', 'Arujá', 'Centro', 'SP', '98765432165487'),
(4, 'Rua: Santa julia, Vila dos Pescadores', '23C', 'Cubatão', 'Jardim Casqueiro', 'SP', '98765445678912'),
(5, 'Av: Tiradentes', '504', 'Guarulhos', 'Centro', 'SP', '95195175375365'),
(6, 'Rua: Recife', '98', 'Arujá', 'Mirante', 'SP', '98778998765445'),
(7, 'Rua: Teste', '98C', 'Arujá', 'Real', 'SP', '2265465424'),
(8, 'AV. Tiradentes', '350C - Apart 4', 'Arujá', 'Arujazihho', 'SP', '95175365415954'),
(9, 'Rua teste', 'AC98', 'Arujá', 'TESTE', 'SP', '123'),
(10, 'Rua teste', 'AC98', 'Arujá', 'TESTE', 'SP', '123'),
(11, 'Rua teste', 'AC98', 'Arujá', 'TESTE', 'SP', '123'),
(12, 'ope', '654', 'ope', 'ope', 'SP', '654'),
(13, 'ope', '4', 'ope', 'ope', 'SP', '849564654');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ficha_funcionario`
--

CREATE TABLE IF NOT EXISTS `tb_ficha_funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_telefone` int(11) NOT NULL,
  `id_acao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor`
--

CREATE TABLE IF NOT EXISTS `tb_fornecedor` (
  `idfornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(255) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idfornecedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tb_fornecedor`
--

INSERT INTO `tb_fornecedor` (`idfornecedor`, `fornecedor`, `cnpj`, `email`, `status`) VALUES
(1, 'Skol', '00123456', 'skol@skol.com', b'1'),
(2, 'Danone', '0231321', 'danone@danone.com', b'1'),
(3, 'test', 'test', 'test@test.com', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor_endereco`
--

CREATE TABLE IF NOT EXISTS `tb_fornecedor_endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(25) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `estado` char(2) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tb_fornecedor_endereco`
--

INSERT INTO `tb_fornecedor_endereco` (`id`, `endereco`, `numero`, `cidade`, `bairro`, `estado`, `id_fornecedor`) VALUES
(1, 'Teste', '98', 'Teste', 'teste', 'SP', 1),
(2, 'teste', '54', 'teste', 'teste', 'SP', 2),
(3, 'test', 'test', 'test', 'test', 'SP', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor_telefone`
--

CREATE TABLE IF NOT EXISTS `tb_fornecedor_telefone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int(11) NOT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tb_fornecedor_telefone`
--

INSERT INTO `tb_fornecedor_telefone` (`id`, `id_fornecedor`, `tel`) VALUES
(1, 1, '40028922'),
(2, 2, '321564'),
(3, 3, 'test');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario`
--

CREATE TABLE IF NOT EXISTS `tb_funcionario` (
  `idfuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` char(14) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `sobrenome` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`idfuncionario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `tb_funcionario`
--

INSERT INTO `tb_funcionario` (`idfuncionario`, `cpf`, `nome`, `id_cargo`, `sobrenome`, `email`, `senha`, `status`) VALUES
(1, '22494676843', 'Vinicius', 1, 'Oliveira', 'vinicius@exemplo.com', '123456', 1),
(8, '14725836901472', 'teste', 2, 'teste', 'teste@teste.com', 'teste', 1),
(9, 'op', 'ope', 2, 'ope', 'paulovinicius_ti@outlook.com', 'ope', 1),
(10, 'test', 'test', 1, 'test54', 'teste@t32.com', 'test', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario_endereco`
--

CREATE TABLE IF NOT EXISTS `tb_funcionario_endereco` (
  `idenderecofunc` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `estado` char(2) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  PRIMARY KEY (`idenderecofunc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `tb_funcionario_endereco`
--

INSERT INTO `tb_funcionario_endereco` (`idenderecofunc`, `endereco`, `numero`, `cidade`, `bairro`, `estado`, `id_funcionario`) VALUES
(1, 'Rua São paulo', '333', 'Arujá', 'Jd real', 'SP', 1),
(2, 'teste', 'teste', 'teste', 'teste', 'SP', 8),
(3, 'ope', 'ope', 'ope', 'ope', 'SP', 9),
(4, 'tet', 'test', 'test', 'test', 'SP', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario_telefone`
--

CREATE TABLE IF NOT EXISTS `tb_funcionario_telefone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `tel` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `tb_funcionario_telefone`
--

INSERT INTO `tb_funcionario_telefone` (`id`, `id_funcionario`, `tel`) VALUES
(1, 1, 46522937),
(2, 8, 222),
(3, 9, 0),
(4, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedido`
--

CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(200) DEFAULT 'Não informado',
  `id_funcionario` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `clienteCad` bit(1) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idpedido`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Extraindo dados da tabela `tb_pedido`
--

INSERT INTO `tb_pedido` (`idpedido`, `cliente`, `id_funcionario`, `status`, `clienteCad`, `total`) VALUES
(30, 'Teste 1', 1, 'A', b'0', '50'),
(31, 'Carina', 8, 'A', b'0', '30'),
(32, 'ope ope', 8, 'C', b'1', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE IF NOT EXISTS `tb_produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `id_categoria` int(1) NOT NULL,
  `estoque` int(11) NOT NULL,
  `preco_unit` decimal(10,0) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`idproduto`, `nome`, `id_categoria`, `estoque`, `preco_unit`, `id_fornecedor`, `status`) VALUES
(1, 'Cerveja G', 1, 45, '10', 1, b'1'),
(2, 'Danoninho', 1, 45, '6', 1, b'1'),
(3, 'Leite saquinho', 1, 50, '5', 1, b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto_pedido`
--

CREATE TABLE IF NOT EXISTS `tb_produto_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qtd` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Extraindo dados da tabela `tb_produto_pedido`
--

INSERT INTO `tb_produto_pedido` (`id`, `qtd`, `id_pedido`, `id_produto`, `status`) VALUES
(44, 5, 30, 1, b'1'),
(45, 5, 31, 2, b'1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
