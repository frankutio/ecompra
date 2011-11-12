-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.41


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ecompra
--

CREATE DATABASE IF NOT EXISTS ecompra;
USE ecompra;

--
-- Definition of table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE `administrador` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrador`
--

/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;


--
-- Definition of table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
CREATE TABLE `carrinho` (
  `cod_carrinho` int(10) NOT NULL,
  `cod_produto` int(10) NOT NULL,
  PRIMARY KEY (`cod_carrinho`),
  CONSTRAINT `carrinho_ibfk_1` FOREIGN KEY (`cod_carrinho`) REFERENCES `carrinho` (`cod_carrinho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carrinho`
--

/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;


--
-- Definition of table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `cpf_cliente` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `tel_fixo` int(8) NOT NULL,
  `tel_cel` int(8) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `conf_senha` varchar(20) NOT NULL,
  PRIMARY KEY (`cpf_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


--
-- Definition of table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `cod_pedido` int(10) NOT NULL,
  `status` varchar(40) NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `cpf_cliente` int(11) NOT NULL,
  PRIMARY KEY (`cod_pedido`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cod_pedido`) REFERENCES `pedido` (`cod_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedido`
--

/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;


--
-- Definition of table `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `cod_produto` int(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `preco` float NOT NULL,
  `quantidade` int(10) NOT NULL,
  `fabricante` varchar(40) NOT NULL,
  `imagem1` varchar(1) NOT NULL,
  `imagen2` varchar(1) NOT NULL,
  `imagem3` varchar(1) NOT NULL,
  PRIMARY KEY (`cod_produto`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto`
--

/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;


--
-- Definition of table `produto_pedido`
--

DROP TABLE IF EXISTS `produto_pedido`;
CREATE TABLE `produto_pedido` (
  `cod_produto` int(10) NOT NULL,
  `cod_pedido` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto_pedido`
--

/*!40000 ALTER TABLE `produto_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_pedido` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
