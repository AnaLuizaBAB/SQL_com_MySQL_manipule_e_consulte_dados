CREATE DATABASE  IF NOT EXISTS `sucos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sucos`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sucos
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tabela_de_vendedores`
--

DROP TABLE IF EXISTS `tabela_de_vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_de_vendedores` (
  `MATRICULA` varchar(5) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `PERCENTUAL_DE_COMISSAO` float DEFAULT NULL,
  `DATA_ADMISSÃO` date DEFAULT NULL,
  `DE_FERIAS` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_de_vendedores`
--

LOCK TABLES `tabela_de_vendedores` WRITE;
/*!40000 ALTER TABLE `tabela_de_vendedores` DISABLE KEYS */;
INSERT INTO `tabela_de_vendedores` VALUES ('00233','João Geraldo da Fonseca',0.1,NULL,NULL),('00235',' Márcio Almeida Silva',0.08,NULL,NULL),('00236','Cláudia Morais',0.08,NULL,NULL),('235','Márcio Almeida Silva',0.08,'2014-08-15',_binary ''),('236','Cláudia Morais',0.08,'2013-09-17',_binary '\0'),('237','Roberta Martins',0.11,'2017-03-18',_binary '\0'),('238','Péricles Alves',0.11,'2016-08-21',_binary '');
/*!40000 ALTER TABLE `tabela_de_vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcliente` (
  `CPF` varchar(11) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `ENDERECO1` varchar(150) DEFAULT NULL,
  `ENDERECO2` varchar(150) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(50) DEFAULT NULL,
  `CEP` varchar(50) DEFAULT NULL,
  `IDADE` smallint DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `LIMITE_DE_CREDITO` float DEFAULT NULL,
  `VOLUME_DE_COMPRA` float DEFAULT NULL,
  `PRIMEIRA_COMPRA` bit(1) DEFAULT NULL,
  `DATA_NASCIMENTO` date DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcliente`
--

LOCK TABLES `tbcliente` WRITE;
/*!40000 ALTER TABLE `tbcliente` DISABLE KEYS */;
INSERT INTO `tbcliente` VALUES ('00388934505','João da Silva','Rua projetada A número 10','','Vila Roman','CARATINGA','AM','2222222',30,'M',10000,2000,_binary '\0','1989-10-05'),('1471156710','Érica Carvalho','R. Iriquitia','','Jardins','São Paulo','SP','80012212',27,'F',170000,245000,_binary '\0','1990-09-01'),('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','Água Santa','Rio de Janeiro','RJ','22000000',18,'M',100000,200000,_binary '','2000-02-12'),('2600586709','César Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001',18,'M',120000,220000,_binary '\0','2000-03-12'),('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012',23,'M',110000,220000,_binary '','1995-01-13'),('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002',23,'M',75000,95000,_binary '','1994-07-19'),('50534475787','Abel Silva ','Rua Humaitá','','Humaitá','Rio de Janeiro','RJ','22000212',22,'M',170000,260000,_binary '\0','1995-09-11'),('5576228758','Petra Oliveira','R. Benício de Abreu','','Lapa','São Paulo','SP','88192029',22,'F',70000,160000,_binary '','1995-11-14'),('5648641702','Paulo César Mattos','Rua Hélio Beltrão','','Tijuca','Rio de Janeiro','RJ','21002020',26,'M',120000,220000,_binary '\0','1991-08-30'),('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','São Paulo','SP','80010221',32,'M',140000,210000,_binary '','1985-03-16'),('7771579779','Marcelo Mattos','R. Eduardo Luís Lopes','','Brás','São Paulo','SP','88202912',25,'M',120000,200000,_binary '','1992-03-25'),('8502682733','Valdeci da Silva','R. Srg. Édison de Oliveira','','Jardins','São Paulo','SP','82122020',22,'M',110000,190000,_binary '\0','1995-10-07'),('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','São Paulo','SP','81192002',34,'M',200000,240000,_binary '\0','1983-12-20'),('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002',22,'M',150000,250000,_binary '','1995-10-07'),('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201',28,'M',60000,120000,_binary '','1989-06-20'),('95939180787','Fábio Carvalho','R. dos Jacarandás da Península','','Barra da Tijuca','Rio de Janeiro','RJ','22002020',16,'M',90000,180000,_binary '','1992-01-05');
/*!40000 ALTER TABLE `tbcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproduto` (
  `PRODUTO` varchar(20) NOT NULL,
  `NOME` varchar(150) DEFAULT NULL,
  `EMBALAGEM` varchar(50) DEFAULT NULL,
  `TAMANHO` varchar(50) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `PRECO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`PRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproduto`
--

LOCK TABLES `tbproduto` WRITE;
/*!40000 ALTER TABLE `tbproduto` DISABLE KEYS */;
INSERT INTO `tbproduto` VALUES ('1000889','Sabor da Montanha - 700 ml - Uva','Garrafa','700 ml','Uva',6.31),('1002334','Linha Citros - 1 Litro - Lima/Limão','PET','1 Litro','Lima/Limão',7.004),('1002767','Videira do Campo - 700 ml - Cereja/Maça','Garrafa','700 ml','Cereja/Maça',8.41),('1004327','Videira do Campo - 1,5 Litros - Melancia','PET','1,5 Litros','Melancia',19.51),('1013793','Videira do Campo - 2 Litros - Cereja/Maça','PET','2 Litros','Cereja/Maça',24.01),('1022450','Festival de Sabores - 2 Litros - Açai','PET','2 Litros','Açai',38.012),('1037797','Clean - 2 Litros - Laranja','PET','2 LITROS','Laranja',16.01),('1040107','Light - 350 ml - Melancia','Lata','350 ml','Melancia',4.56),('1041119','Linha Citros - 700 ml - Lima/Limão','Garrafa','700 ml','Lima/Limão',4.904),('1042712','Linha Citros - 700 ml - Limão','Garrafa','700 ml','Limão',4.904),('1051518','Frescor do Verão - 470 ml - Limão','Garrafa','470 ml','Limão',3.2995),('1086543','Linha Refrescante - 1 Litro - Manga','PET','1 Litro','Manga',11.0105),('1088126','Linha Citros - 1 Litro - Limão','PET','1 Litro','Limão',7.004),('1096818','Linha Refrescante - 700 ml - Manga','Garrafa','700 ml','Manga',7.7105),('1101035','Linha Refrescante - 1 Litro - Morango/Limão','PET','1 Litro','Morango/Limão',9.0105),('229900','Pedaços de Frutas - 350 ml - Maça','Lata','350 ml','Maça',4.211),('231776','Festival de Sabores - 700 ml - Açai','Garrafa','700 ml','Açai',13.312),('235653','Frescor do Verão - 350 ml - Manga','Lata','350 ml','Manga',3.8595),('243083','Festival de Sabores - 1,5 Litros - Maracujá','PET','1,5 Litros','Maracujá',10.512),('290478','Videira do Campo - 350 ml - Melância','Lata','350 ml','Melância',4.56),('326779','Linha Refrescante - 1,5 Litros - Manga','PET','1,5 Litros','Manga',16.5105),('394479','Sabor da Montanha - 700 ml - Cereja','Garrafa','700 ml','Cereja',8.409),('479745','Clean - 470 ml - Laranja','Garrafa','470 ml','Laranja',3.768),('520380','Pedaços de Frutas - 1 Litro - Maça','PET','1 Litro','Maça',12.011),('695594','Festival de Sabores - 1,5 Litros - Açai','PET','1,5 Litros','Açai',28.512),('723457','Festival de Sabores - 700 ml - Maracujá','Garrafa','700 ml','Maracujá',4.912),('746596','Light - 1,5 Litros - Melância','PET','1,5 Litros','Melância',19.505),('773912','Clean - 1 Litro - Laranja','PET','1 Litro','Laranja',8.008),('783663','Sabor da Montanha - 700 ml - Morango','Garrafa','700 ml','Morango',7.709),('788975','Pedaços de Frutas - 1,5 Litros - Maça','PET','1,5 Litros','Maça',18.011),('812829','Clean - 350 ml - Laranja','Lata','350 ml','Laranja',2.808),('826490','Linha Refrescante - 700 ml - Morango/Limão','Garrafa','700 ml','Morango/Limão',6.3105),('838819','Clean - 1,5 Litros - Laranja','PET','1,5 Litros','Laranja',12.008);
/*!40000 ALTER TABLE `tbproduto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28 15:54:42
