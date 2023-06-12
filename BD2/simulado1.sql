CREATE TABLE Pilotos(

codPiloto SMALLINT UNSIGNED NOT NULL,
nome VARCHAR(100) NOT NULL,
dataNascimento DATE NOT NULL,
codPais SMALLINT UNSIGNED NOT NULL,
codEquipe SMALLINT UNSIGNED NOT NULL


)ENGINE=INNODB;


//02//------------------------------------------------------------


ALTER TABLE Pilotos CHANGE codPiloto codPiloto INT NOT NULL;

ALTER TABLE Pilotos DROP COLUMN dataNascimento;

ALTER TABLE Pilotos ADD peso FLOAT;

ALTER TABLE Pilotos CHANGE nome codNome VARCHAR(100) NOT NULL;

-----------------------------------------------------------------


//03//------------------------------------------------------------

DROP TABLE Pilotos;

------------------------------------------------------------------


//04//------------------------------------------------------------

CREATE TABLE Boletim(

matricula INT UNSIGNED NOT NULL,
nome VARCHAR(100) NOT NULL,
primeiraNota INT UNSIGNED NOT NULL,
segundaNota INT UNSIGNED NOT NULL,
media INT UNSIGNED NOT NULL


)ENGINE=INNODB;



INSERT INTO Boletim (matricula, nome, primeiraNota, segundaNota, media)
VALUES (1, 'Aldroaldo', 64, 100, 82),
(2, 'Andre', 83, 66, 74),
(3, 'Andrea', 8, 97, 52),
(4, 'Caue', 19, 4, 11),
(5, 'Daniel', 60, 19, 39),
(6, 'Denis', 7, 77, 42),
(7, 'Douglas', 49, 29, 39),
(8, 'Felipe', 24, 1, 12),
(9, 'Gean', 43, 61, 52),
(10, 'Gislene', 98, 51, 78);

DELETE FROM Boletim WHERE MEDIA < 60;

------------------------------------------------------------------


//05//------------------------------------------------------------

UPDATE Boletim 
SET segundaNota = 60
WHERE nome = 'Caue'; 

------------------------------------------------------------------

//06//------------------------------------------------------------

INSERT INTO Pilotos (codPiloto, nome, dataNascimento, codPais, codEquipe)
VALUES (1, 'Aldroaldo', 30/08/2002, 30, 10);

------------------------------------------------------------------


//06//------------------------------------------------------------

INSERT INTO Pilotos (codPiloto, nome, dataNascimento, codPais, codEquipe)
VALUES (1, 'Aldroaldo', 30/08/2002, 30, 10);

------------------------------------------------------------------