--innerJoin
USE bdEscolaCurso

--1 Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem; OK
select nomeAluno as 'aluno', nomeCurso as 'curso' from tblAluno
INNER JOIN tblMatricula ON tblAluno.idAluno= tblMatricula.idAluno
		INNER JOIN tblTurma ON tblMatricula.idTurma = tblTurma.idTurma
				INNER JOIN tblCurso ON tblCurso.idCurso = tblTurma.idCurso

--2 Apresentar a quantidade de alunos matriculados por nome do curso; OK
select count (idAluno) as 'qtdAlunos', nomeCurso from tblMatricula
INNER JOIN tblTurma ON tblTurma.idTurma=tblMatricula.idTurma
		INNER JOIN tblCurso ON tblCurso.idCurso=tblTurma.idCurso
				GROUP BY nomeCurso 

--3 Apresentar a quantidade de alunos matriculados por nome da turma; OK
select count (idAluno) as 'qtdAlunos', nomeTurma from tblMatricula
INNER JOIN tblTurma ON tblTurma.idTurma=tblMatricula.idTurma
	GROUP BY nomeTurma

--4 Apresentar a quantidade de alunos que fizeram matricula em maio de 2016; OK
select count (tblAluno.idAluno) as 'qtdAlunos', dataMatricula from tblAluno
INNER JOIN tblMatricula ON tblAluno.idAluno=tblMatricula.idAluno
	WHERE MONTH (dataMatricula) = 05 AND YEAR (dataMatricula) = 2016
		GROUP BY dataMatricula

--5 Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas e os nomes dos cursos em que estão matriculados; OK
select nomeAluno as 'Alunos' , nomeTurma as ' nomeTurma' , nomeCurso as 'nomeCurso' from tblAluno
	INNER JOIN tblMatricula ON tblAluno.idAluno=tblMatricula.idAluno
		INNER JOIN tblTurma ON tblMatricula.idTurma = tblTurma.idTurma
			INNER JOIN tblCurso ON tblTurma.idCurso = tblCurso.idCurso
				ORDER BY nomeAluno

--6 Apresentar o nome dos cursos e os horários em que eles são oferecidos; OK
select nomeCurso, horarioTurma from tblTurma
	INNER JOIN tblCurso ON tblCurso.idCurso = tblTurma.idCurso

--7 Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de ingles; OK
select count (tblAluno.idAluno) as 'qtdAlunos', naturalidadeAluno as 'Estado' from tblAluno
	INNER JOIN tblMatricula ON tblMatricula.idAluno=tblAluno.idAluno
		INNER JOIN tblTurma ON tblMatricula.idTurma = tblTurma.idTurma
			INNER JOIN tblCurso ON tblTurma.idCurso = tblCurso.idCurso
				WHERE nomeCurso LIKE 'Inglês'
					GROUP BY naturalidadeAluno 

--8 Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa; ARRUMAR
select nomeAluno as 'nomeAluno' from tblAluno CONVERT ( VARCHAR (10), dataMatricula, 103) AS 'dataMatricula'
	INNER JOIN tblMatricula ON tblMatricula.idAluno=tblAluno.idAluno 

--9 Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês; OK
select nomeAluno from tblAluno
	INNER JOIN tblMatricula ON tblAluno.idAluno = tblMatricula.idAluno
		INNER JOIN tblTurma ON tblMatricula.idTurma = tblTurma.idTurma
			INNER JOIN tblCurso ON tblTurma.idCurso = tblCurso.idCurso
				WHERE nomeCurso = 'Ingles' AND nomeAluno LIKE 'A%'

--10 Apresentar a quantidade de matriculas feitas no ano de 2016; OK
select count(tblMatricula.dataMatricula) AS 'qtdMatricula' from tblMatricula
		WHERE YEAR(dataMatricula) = 2016

--11 Apresentar a quantidade de matriculas por nome do curso; OK
select count (tblCurso.idCurso) as 'qtdMatriculas', nomeCurso from tblMatricula
INNER JOIN tblTurma ON tblTurma.idTurma=tblMatricula.idTurma
		INNER JOIN tblCurso ON tblCurso.idCurso=tblTurma.idCurso
				GROUP BY nomeCurso

--12 Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$300,00; OK
select count(tblAluno.idAluno) AS 'qtdAlunos' from tblAluno
	INNER JOIN tblMatricula ON tblAluno.idAluno = tblMatricula.idAluno
		INNER JOIN tblTurma ON tblMatricula.idTurma = tblTurma.idTurma
			INNER JOIN tblCurso ON tblTurma.idCurso = tblCurso.idCurso
				WHERE valorCurso > 300.00

--13 Apresentar os nomes dos alunos que fazem o curso de alemão; OK
select  (tblCurso.idCurso), nomeAluno from tblAluno
	INNER JOIN tblMatricula ON tblMatricula.idAluno = tblAluno.idAluno
		INNER JOIN tblTurma ON tblMatricula.idTurma = tblTurma.idTurma
			INNER JOIN tblCurso ON tblCurso.idCurso = tblTurma.idCurso
				WHERE nomeCurso = 'Alemão'