CREATE TABLE professor(
	codProfessor INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL, 
	CONSTRAINT professorPK PRIMARY KEY (codProfessor) 
)ENGINE=INNODB;

CREATE TABLE disciplina(
	codDisciplina INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL, 
	ementa VARCHAR(5000), 
	preRequisito INT UNSIGNED,
	CONSTRAINT disciplinaPK PRIMARY KEY (codDisciplina),
	CONSTRAINT disciplina_FK FOREIGN KEY (preRequisito) 
                REFERENCES disciplina (codDisciplina) ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE turma(
	codDisciplina INT UNSIGNED NOT NULL,
	codProfessor INT UNSIGNED NOT NULL,
	dataInicio DATE NOT NULL,
	mediaTurma FLOAT,
	CONSTRAINT turmaPK PRIMARY KEY (codDisciplina,codProfessor,dataInicio),
	CONSTRAINT turma_FK1 FOREIGN KEY (codDisciplina) 
                REFERENCES disciplina (codDisciplina) ON DELETE CASCADE,
	CONSTRAINT turma_FK2 FOREIGN KEY (codProfessor) 
                REFERENCES professor (codProfessor) ON DELETE CASCADE
)ENGINE=INNODB;

//QUESTAO 02//

ALTER TABLE Professor RENAME Docentes;

//QUESTAO 03//

DROP TABLE Turma;

//QUESTAO 04//

DESC Disciplina;

//QUESTAO 05//

ALTER TABLE Disciplina CHANGE ementa conteudoProgramatico VARCHAR(5000);

//QUESTAO 06//

ALTER TABLE turma DROP COLUMN mediaTurma; 

//QUESTAO 07//

ALTER TABLE Docentes ADD codCoordenacao VARCHAR(100) NOT NULL;

//QUESTAO 08//



//QUESTAO 09//




//QUESTAO 10//





//10//





//11//





//12//








