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
  `cpf_administrador` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`cpf_administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrador`
--

/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` (`cpf_administrador`,`nome`,`login`,`senha`) VALUES 
 (1,'admin1','a1','123');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;


--
-- Definition of table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
CREATE TABLE `carrinho` (
  `cod_carrinho` int(10) NOT NULL,
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
  `cidade` varchar(40) NOT NULL,
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
INSERT INTO `cliente` (`cpf_cliente`,`nome`,`endereco`,`cidade`,`uf`,`tel_fixo`,`tel_cel`,`sexo`,`estado_civil`,`email`,`login`,`senha`,`conf_senha`) VALUES 
 (2,'thiago','qmsw23','brasilia','1',33334444,0,'masculino','1','t.carvalho0@gmail.com','tcarvalho','123','123'),
 (3,'Thiago','T3 endereco esta completo','Brasilia','BA',33333333,33333333,'feminino','Separado','T3@TESTE.COM','T3','123','123'),
 (5,'t5','5','brasilia','1',50505,0,'masculino','1','t5@teste.com','t5','123','123'),
 (234212,'3','3','3','0',3,0,'feminino','4','3','3','3','3'),
 (77777777,'t7','t7 endereco','brasilia','2',7777777,0,'feminino','1','t7@teste.com','t7','123','123'),
 (92929292,'t7','t7 endereco','brasilia','1',7777777,0,'feminino','1','t7@teste.com','t7','123','123'),
 (777077777,'t7','t7 endereco','brasilia','2',7777777,0,'feminino','1','t7@teste.com','t7','',''),
 (909099090,'t6','ende 6','brasilia','1',66666666,0,'masculino','2','t6@teste.com','t6','123','123');
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
  `preco` int(11) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `fabricante` varchar(40) NOT NULL,
  PRIMARY KEY (`cod_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto`
--

/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`cod_produto`,`nome`,`descricao`,`preco`,`quantidade`,`fabricante`) VALUES 
 (1,'Monitor LCD - Sansung blabla','Monitor LCD - Sansung blabla',50,8,'Sansung'),
 (2,'Mouse','Mouse alterado dinovo',39,5,'Clone LTDA');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
