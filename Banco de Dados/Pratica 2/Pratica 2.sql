-- Exercicio 1
create database sprint1;
use sprint1;
create table atleta (
id int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);
insert into atleta (nome, modalidade, qtdMedalha) values
('Kat', 'corrida', '7'),
('Lucas', 'Ping-pong', '14'),
('João', 'Salto com vara', '21'),
('Kevin', 'Xadrez', '28'),
('Guedes', 'Futebol', '35');
select *from atleta;
select nome, qtdMedalha from atleta;
select *from atleta where modalidade = 'futebol';
select *from atleta order by modalidade;
select *from atleta order by qtdMedalha desc;
select *from atleta where nome like '%s%';
select *from atleta where nome like 'K%';
select *from atleta where nome like '%o';
select *from atleta where nome like '%r_';
drop table atleta;

-- EXERCICIO 2
use sprint1;
create table Musica(
idMusica int primary key auto_increment,
Titulo varchar(40),
Artista varchar(40),
Genero varchar(40)
);
insert into Musica(Titulo, Artista, Genero) values
('Closer', 'Eden','Indie'),
('Right Now', 'One Direction', 'Pop'),
('Homemade Dynamite', 'Lorde', 'Melodrama'),
('Love Drought', 'Beyonce', 'Pop'),
('Lucky Again', 'Louis Tomlinson', 'Indie'),
('Satelite', 'Harry Styles', 'Pop'),
('Young and Beautiful', 'Lana Del Rey', 'Indie'),
('The Scoop on heaven', 'Mac Miller', 'Rap');
Select *from Musica;
select Titulo, Artista from Musica;
select *from Musica where Genero = 'Indie';
select *from Musica where Artista = 'Lorde';
select *from Musica order by Titulo;
select *from Musica order by Artista desc;
select *from Musica where Titulo like 'L%';
select *from Musica where Artista like '%e';
select *from Musica Where Genero like '_N%';
select *from Musica Where Titulo like '%e_';
drop table Musica;


-- EXERCICIO 3
 use sprint1;
create table Filme(
idFilme int primary key auto_increment,
Titulo varchar (50),
Genero varchar (40),
Diretor varchar (40)
);
Insert into Filme (Titulo, Genero, Diretor) values
('Procurando Nemo', 'Infantil', 'Andrew Staton'),
('Avatar', 'Ficção científica', 'James Cameron'),
('Questão de tempo', 'Romance', 'Richard Curtis'),
('O jogo da imitação', 'Guerra', 'Morten Tyldum'),
('Sorria', 'Terror', 'Larry W. Brown'),
('O telefone preto', 'Terror', 'Scott Derrickson'),
('Gato de botas', 'Aventura', 'Joel Crawford'),
('Homem-Aranha no Aranhaverso', 'Ficção científica', 'Peter Ramsey');
select *from Filme;
select Titulo, Diretor from Filme;
select *from Filme where Genero = 'Terror';
select *from Filme where Diretor = 'Morten Tyldum';
select *from Filme order by Titulo;
select *from Filme order by Diretor desc;
select *from Filme where Titulo like 'O%';
select *from Filme where Diretor like '%N';
select *from Filme where Genero like '_e%';
select *from Filme where Titulo like '%s_';
drop table Filme;


-- EXERCICIO 4
use sprint1;
create table Professores(
idprofessor int primary key auto_increment,
Nome varchar (50),
Especialidade varchar (40),
dtNasc date
);
insert into Professores (Nome, Especialidade, dtNasc) values
('Ana Lucia', 'Banco de dados', '1990-12-22'),
('Beonce Knowles', 'Geometria Quantica', '1988-08-19'),
('Ariana Grande', 'Cinemática', '1979-04-01'),
('Bernardo Assis', 'Ingles', '1985-09-20'),
('Gracielle Assis', 'Artes Cenicas', '2000-05-15'),
('Tania Viana', 'Algoritmo', '1990-03-03'),
('Selena Gomez', 'Musica', '1987-08-08'),
('Luis Tamáo', 'Portugues', '1990-12-24');
select *from Professores;
select Especialidade from Professores;
select *from Professores where Especialidade = 'Ingles';
select *from Professores order by Nome;
select *from Professores order by dtNasc desc;
select *from Professores where Nome like 'A%';
select *from Professores where Nome like '%A';
select *from Professores where Nome like '_e%';
select *from Professores where Nome like '%i_';
drop table Professores;


-- EXERCICIO 5
use sprint1;
create table Curso(
idCurso int primary key auto_increment,
Nome varchar (50),
Sigla varchar (3),
Coordenador varchar (50)
);
insert into Curso(Nome, Sigla, Coordenador) values
('Sistemas de informação ', 'SIS', 'Ana Lucia'),
('Ciencia da computação', 'CCO', 'Mario André'),
('Artes Cenicas', 'AEC', 'Paula Maria'),
('Inglês', 'ING', 'Tania Maria'),
('Gastronomia', 'GAS', 'Onavo Santos'),
('Ciencias Economias', 'CEC', 'Gracielle Assis'),
('Engenharia Civil', 'ENC', 'Bernardo Santos');
select *from Curso;
select Coordenador from Curso;
select *from Curso where Sigla = "SIS";
select *from Curso order by Coordenador desc;
select *from Curso where Nome like 'c%';
select *from Curso where Nome like '%s';
select *from Curso where Nome like '_i%';
select *from Curso where Nome like '%a_';
drop table Curso;


-- EXERCICIO 6
use sprint1;
create table Revista(
idRevista int primary key auto_increment,
Nome varchar (40),
Categoria varchar (30)
);
Insert into Revista(Nome) values
('Veja'),
('Isto é'),
('Epoca'),
('Claudia');
select *from Revista;
update Revista
set Categoria ='Entretenimento'
where idRevista ='1';

update Revista
set Categoria ='Noticias'
where idRevista = '2';

update Revista
set Categoria ='Noticias'
where idRevista = '3';

update Revista
set Categoria ='Entretenimento'
where idRevista = '4';

select *from Revista;
insert into Revista(Nome, Categoria) Values
('Capricho', 'Entretenimento'),
('Atrevida', 'Entretenimento'),
('Fanzine', 'Entretenimento');
select *from Revista;
describe Revista;
alter table Revista modify column Categoria varchar(40);
describe Revista;
alter table Revista add column Periodicidade varchar (15);
select *from Revista;
alter table Revista drop column Periodicidade;
select *from Revista;
drop table Revista;

drop database sprint1;