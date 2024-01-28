CREATE DATABASE sucos;

USE sucos;

                            /*Criando as tabelas do banco de dados*/

CREATE TABLE tbcliente(
	CPF VARCHAR (11),
    NOME VARCHAR (100),
    ENDERECO1 VARCHAR (150),
    ENDERECO2 VARCHAR (150),
    BAIRRO VARCHAR (50),
    CIDADE VARCHAR (50),
    ESTADO VARCHAR (50),
    CEP VARCHAR (50),
    IDADE SMALLINT,
    SEXO VARCHAR (1),
    LIMITE_DE_CREDITO FLOAT,
    VOLUME_DE_COMPRA FLOAT,
    PRIMEIRA_COMPRA BIT(1)
    
);

CREATE TABLE tbproduto(
	PRODUTO VARCHAR (20),
    NOME VARCHAR (150), 
    EMBALAGEM VARCHAR  (50),
    TAMANHO VARCHAR (50), 
    SABOR VARCHAR (50), 
    PRECO_LISTA FLOAT
);

CREATE TABLE tabela_de_vendedores(
    MATRICULA VARCHAR (5),
    NOME VARCHAR (100),
    PERCENTUAL_DE_COMISSAO float
);


                        /*Inserindo dados nas tabelas do banco*/



INSERT INTO tbproduto(
	PRODUTO,NOME,EMBALAGEM,TAMANHO,SABOR,PRECO_LISTA ) VALUES 
    ('1040107',	'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56),
    ('1037797',	'Clean - 2 Litros - Laranja', 'PET', '2 LITROS', 'Laranja',	16.01),
	('1000889',	'Sabor da Montanha - 700 ml - Uva',	'Garrafa', '700 ml', 'Uva',	6.31),
    ('1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

INSERT INTO tabela_de_vendedores(
	MATRICULA,NOME,PERCENTUAL_DE_COMISSAO) VALUES 
    ('00233', 'João Geraldo da Fonseca', 0.10),
    ('00235', ' Márcio Almeida Silva', 0.08 ),
	('00236', 'Cláudia Morais', 0.08);