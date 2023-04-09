create database sprint1;
use sprint1;

create table Professor2(
idProfessor int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
especialidade1 varchar(40),
especialidade2 varchar(40)
);

insert into Professor2 values
(null, 'Yan', 'Bezerra', 'JavaScript', 'React'),
(null, 'Gabriel', 'Guedes', 'Cyber Security', 'pericia'),
(null, 'Lucas', 'Faria Masnão fez', 'Algorismo', 'Porcentagem'),
(null, 'Guilherme', 'Nardi', 'Doenças infecciosas', 'Covid-19'),
(null, 'Katherinne', 'Assis', 'Matematica','Portugues'),
(null, 'Gustavo', 'Morais', 'Historia Brasil', 'Historia dos Indios');

create table Disciplina(
idDisc int auto_increment,
nomeDisc varchar(45),
fkProf int,
constraint fkProfDisc foreign key (fkProf) references Professor2(idProfessor),
	constraint pkCompostaDisc primary key (idDisc, fkProf) 
	) auto_increment = 100;

Insert into Disciplina values
(null, 'Algoritmo', '1'),
(null, 'Segurança na net', '2'),
(null, 'Crimes', '2'),
(null, 'Calculo 1', '3'),
(null, 'Saude', '4'),
(null, 'Portugues', '5'),
(null, 'Historia da tecnologia', '6'),
(null, 'Historia do Brasil', '6');

select * from Professor2 join Disciplina
	on idProfessor = fkProf;
    
select Professor2.nome, Disciplina.nomeDisc from Disciplina join Professor2
	on idProfessor = fkProf;
    
select * from Professor2 join Disciplina
	on idProfessor = fkProf where sobrenome = 'Guedes';

select Professor2.especialidade1, Disciplina.nomeDisc from Professor2 join Disciplina
	on fkProf = idProfessor order by especialidade1;
    
    
    
-- Exercicio 2

use sprint2;
create table Curso3(
idCurso int primary key auto_increment,
nome varchar (50),
sigla varchar(3),
coordenador varchar(45)
);

insert into Curso3 values
(null, 'Portugues', 'POR', 'Carlinhos Andre'),
(null, 'Matematica', 'MAT', 'Ana Maria'),
(null, 'Geografia', 'GEO', 'Josefa Campos');

select * from Curso3;

create table Alunos2(
idAluno int auto_increment,
nomeAluno varchar(45),
sobrenome varchar(45),
fkCurso int,
	constraint fkCursoProf foreign key (fkCurso) references Curso3(idCurso),
		constraint pkCompostaCurso primary key (idAluno, fkCurso) 
) auto_increment = 100;

select * from Alunos2;

insert into Alunos2 values
(null, 'Andre', 'Souza', '1'),
(null, 'Luiza', 'Vitoria', '2'),
(null, 'Carol', 'Santos', '2'),
(null, 'Wallace', 'Silva', '3');


select * from Curso3 join Alunos2
	on idCurso = fkCurso;

select * from Curso3 join Alunos2
	on idCurso = fkCurso where sigla = 'MAT';
    
alter table Alunos2 add column Presenca varchar(3);
    
alter table Alunos2 add constraint Presenca
	check (presenca <= 1);
    
