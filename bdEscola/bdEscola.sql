--DROP DATABASE bdEscolaCurso
CREATE DATABASE bdEscolaCurso
USE bdEscolaCurso
GO

CREATE TABLE tblCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (40) NOT NULL
	,cargaHorariaCurso SMALLINT NOT NULL
	,valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tblAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (40) NOT NULL
	,dataNascimentoAluno DATE NOT NULL
	,rgAluno VARCHAR (15) NOT NULL
	,naturalidadeAluno VARCHAR (20) NOT NULL
)

CREATE TABLE tblTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (40) NOT NULL
	,horarioTurma TIME NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tblCurso (idCurso )
)

CREATE TABLE tblMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATE NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tblTurma (idTurma)
	,idAluno INT FOREIGN KEY REFERENCES tblAluno (idAluno)
)