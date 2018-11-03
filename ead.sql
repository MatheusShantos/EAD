DROP TABLE IF EXISTS `aluno_curso`;

CREATE TABLE `aluno_curso` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `aluno_curso` (`id`, `id_curso`, `id_aluno`)
VALUES
	(5,1,1),
	(6,2,1),
	(7,3,1),
	(8,6,1),
	(9,7,1),
	(10,8,2);

DROP TABLE IF EXISTS `alunos`;

CREATE TABLE `alunos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `alunos` (`id`, `nome`, `email`, `senha`)
VALUES
	(1,'Matheus','matheus@teste.com','202cb962ac59075b964b07152d234b70'),
	(2,'Aluno de teste','aluno@teste.com','202cb962ac59075b964b07152d234b70');

DROP TABLE IF EXISTS `aulas`;

CREATE TABLE `aulas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `aulas` (`id`, `id_modulo`, `id_curso`, `ordem`, `tipo`)
VALUES
	(1,1,1,1,'video'),
	(2,1,1,2,'video'),
	(3,2,1,1,'video'),
	(4,2,1,2,'poll'),
	(5,3,1,1,'video'),
	(7,3,1,3,'video'),
	(8,6,1,1,'video'),
	(9,1,1,3,'poll');
  

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `imagem` varchar(37) NOT NULL DEFAULT '',
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cursos` (`id`, `nome`, `imagem`, `descricao`)
VALUES
	(1,'PHP','php.jpg','Curso para desenvolvimento de sites e sistemas.'),
	(2,'HTML','html.jpg','Curso para desenvolvimento de páginas web'),
	(3,'JAVASCRIPT','javascript.jpg', 'Curso de programação na linguagem javascript'),
	(4,'CSS','503e41d1aa116efa266c7467dcd24a68.jpg','Curso de estilização de páginas web'),
	(6,'jQuery','0676d836af8b182c6d38547f8bb31219.jpg','Curso de programação com jQuery'),
	(7,'Swift','swift.jpg','Curso de programação na linguagem javascript'),
	(8,'Android','782d69edbb6949f7d81a54828d84768d.jpg','Curso de programação para Android');

DROP TABLE IF EXISTS `duvidas`;

CREATE TABLE `duvidas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_duvida` datetime NOT NULL,
  `respondida` tinyint(1) NOT NULL,
  `duvida` text,
  `id_aluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `duvidas` (`id`, `data_duvida`, `respondida`, `duvida`, `id_aluno`)
VALUES
	(1,'2016-08-12 05:45:23',0,'Duvida de teste...',1);

DROP TABLE IF EXISTS `historico`;

CREATE TABLE `historico` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_viewed` datetime NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `historico` (`id`, `data_viewed`, `id_aluno`, `id_aula`)
VALUES
	(25,'2016-08-30 06:07:44',1,1),
	(26,'2016-08-30 06:10:00',1,9),
	(27,'2016-08-30 06:10:18',1,3);

DROP TABLE IF EXISTS `modulos`;

CREATE TABLE `modulos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `modulos` (`id`, `id_curso`, `nome`)
VALUES
	(1,1,'Básico'),
	(2,1,'Intermediário'),
	(3,1,'Avançado'),
	(6,1,'Super Avançado');

DROP TABLE IF EXISTS `questionarios`;

CREATE TABLE `questionarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `pergunta` varchar(100) NOT NULL DEFAULT '',
  `opcao1` varchar(100) DEFAULT NULL,
  `opcao2` varchar(100) DEFAULT NULL,
  `opcao3` varchar(100) DEFAULT NULL,
  `opcao4` varchar(100) DEFAULT NULL,
  `resposta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `questionarios` (`id`, `id_aula`, `pergunta`, `opcao1`, `opcao2`, `opcao3`, `opcao4`, `resposta`)
VALUES
	(1,4,'Qual a pergunta? 2','Opção2','Opção3','Opção5','Opção',4),
	(2,9,'Pergunta de teste','Opção1','Opção2','Opção3','Opção4',3);

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `usuarios` (`id`, `email`, `senha`)
VALUES
	(1,'suporte@teste.com.br','202cb962ac59075b964b07152d234b70');

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `descricao` text,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `videos` (`id`, `id_aula`, `nome`, `descricao`, `url`)
VALUES
	(1,1,'Aula 1','','178300706'),
	(2,2,'Aula 2',NULL,'178300706'),
	(3,3,'Aula 3',NULL,'178300706'),
	(4,5,'Aula 4',NULL,'178300706'),
	(6,7,'Aula 6',NULL,'178300706'),
	(7,8,'Aula Teste 2','','178300706');
