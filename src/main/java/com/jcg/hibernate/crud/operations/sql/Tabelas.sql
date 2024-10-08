CREATE TABLE IF NOT EXISTS `Medico` (
	`salario` double NOT NULL,
	`especialidade` varchar(255) NOT NULL,
	`crm` varchar(255) NOT NULL UNIQUE,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`crm`)
);

CREATE TABLE IF NOT EXISTS `Paciente` (
	`nome` varchar(255) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	`telefone` varchar(255) NOT NULL,
	`data_nasc` date NOT NULL,
	`quarto` int NOT NULL,
	`cpf` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`cpf`)
);

CREATE TABLE IF NOT EXISTS `Tratamento` (
	`responsavel` bool NOT NULL,
	`cpf_paciente` varchar(255) NOT NULL,
	`crm_medico` varchar(255) NOT NULL
);



ALTER TABLE `Tratamento` ADD CONSTRAINT `Tratamento_fk1` FOREIGN KEY (`cpf_paciente`) REFERENCES `Paciente`(`cpf`);

ALTER TABLE `Tratamento` ADD CONSTRAINT `Tratamento_fk2` FOREIGN KEY (`crm_medico`) REFERENCES `Medico`(`crm`);