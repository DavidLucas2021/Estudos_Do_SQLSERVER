/*
select * from Table_aluno;
select * from Situacao;
select * from Cursos;
select * from Turmas;
select * from REGISTRO_PRESEN�A;
select * from ALUNOS_TURMAS;
*/
---INSERINDO DADOS REFERENTES AO DAVID LUCAS---
INSERT INTO Table_aluno (ID_ALUNO,NOME,DATA_NASCIMENTO,SEXO,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES (01,'DAVID LUCAS','06/11/1993','M','23/02/2022','DAVI_L');
INSERT INTO Cursos(ID_CURSO,NOME_CURSO,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES(01,'T�CNICO EM AUTOMA��O','23/02/2022 08:41:39','DAVI_L');
INSERT INTO Situacao(ID_SITUACAO,SITUA��O,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES(01,'PRESENTE','23/02/2022 08:41:39','DAVI_L');

---INSERINDO DADOS REFERENTES AO JO�O PAULO---
INSERT INTO Table_aluno (ID_ALUNO,NOME,DATA_NASCIMENTO,SEXO,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES (02,'JO�O PAULO','17/04/1989','M','23/02/2022','JOAOP@');
INSERT INTO Cursos(ID_CURSO,NOME_CURSO,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES(02,'T�CNICO EM AUTOMA��O','23/02/2022 10:01:39','JOAOP@');
INSERT INTO Situacao(ID_SITUACAO,SITUA��O,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES(02,'AUSENTE','23/02/2022 10:01:39','JOAOP@');

---ALTERA��ES NO PROJETO REFERENTE A TABELA TURMAS(DELETES)---
---DELETE DA COLUNA ALUNO---
ALTER TABLE Turmas
DROP CONSTRAINT FK_ALUNO;
ALTER TABLE Turmas
DROP COLUMN ID_ALUNO;
---DELETE DA COLUNA VALOR_TURMA---
ALTER TABLE Turmas
DROP COLUMN VALOR_TURMA;
---DELETE DA COLUNA VALOR_TURMA---
ALTER TABLE Turmas
DROP COLUMN DESCONTO;

INSERT INTO Turmas (ID_TURMA,DATA_INCIO,DATA_TERMINO,DATA_CADASTRO,LOGIN_CADASTRO,ID_CURSO)
VALUES (01,'02/01/2022','09/10/2024','11/10/2021','TAI012022','01');

INSERT INTO ALUNOS_TURMAS (ID_ALUNO,ID_TURMA,VALOR,DESCONTO,DATA_CADASTRO,LOGIN_CADASTRO)
VALUES (01,01,1046,0.2,GETDATE(),'DAVI_L');

--select VALOR,DESCONTO,LOGIN_CADASTRO FROM dbo.ALUNOS_TURMAS;
--select * from dbo.Turmas t
--select t.DATA_CADASTRO,t.DATA_INCIO from dbo.Turmas t