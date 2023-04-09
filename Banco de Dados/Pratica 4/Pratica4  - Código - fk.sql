-- Exercicio 1
create database sprint2;
use sprint2;

create table atleta (
	idatleta int primary key auto_increment,
    nome varchar(40),
    modalidade varchar(40),
    qtdmedalha int
);
    
create table pais (
	idpais int primary key auto_increment,
    nome varchar(30),
    capital varchar(40)
);

insert into pais values 
	(null, 'Brasil', 'Brasilia'),
    (null, 'Japão', 'Tóquio'),
	(null, 'China', 'Pequim'),
    (null, 'Alemanha', 'Berlim');
    
alter table atleta add column fkpais int, 
	add constraint fkpais foreign key (fkpais)
		references pais(idpais);
        
insert into atleta values
	(null,'Lucas Faria','Futebol','20', 1),
    (null, 'Katherinne Assis', 'Volei', '15', 3),
	(null, 'Gabriel Guedes', 'Handball', '30', 4),
    (null, 'Carlos Henrique', 'Futebol', '25', 1),
    (null, 'Guilherme Henrique', 'Volei', '30', 2),
    (null, 'Gustavo Morais', 'Handball', '45', 3);
        
select 
atleta.*,
pais.nome as nomepais
from atleta join pais
on idpais = fkpais;

select
atleta.nome as NomeAtleta,
pais.nome as NomePais
from atleta join pais 
on atleta.fkpais = pais.idpais;

select 
atleta.*,
pais.nome as NomePais
from atleta join pais 
on atleta.fkpais = pais.idpais
where capital = "Berlim";





-- EXERCICIO 2
use sprint2;
create table musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar (40)
);

insert into musica values
(null,'Style','Lucas Faria','Funk'),
(null,'Lover','João Vitor','MPB'),
(null,'6 balls','Kevin Wesselka','Acustico'),
(null,'New Romantics','Taylor Swift','Pop'),
(null,'All you have to do is stay', 'Katherinne', 'pop');

create table album(
idAlbum int primary key auto_increment,
Nome varchar(40),
Tipo varchar(40), constraint chkTipo check (tipo in ('Digital', 'Fisico')),
dtlancamento date
);

insert into album value
(null, '1989', 'Digital', '2014-10-27'),
(null, 'Lover', 'Fisico', '2019-08-23'),
(null, 'Kamaitachi', 'Digital', '2018-11-11'),
(null, 'dos predios', 'Fisico', '2022-11-17'),
(null, 'Our song', 'Digital', '2014-10-27');

select *from musica;
select *from album;

alter table musica add column fkAlbum int, 
	add constraint fkAlbum foreign key (fkAlbum)
		references album(idAlbum);
        
update musica set fkAlbum = 1 where idMusica = 5;
update musica set fkAlbum = 2 where idMusica = 4;
update musica set fkAlbum = 3 where idMusica = 3;
update musica set fkAlbum = 4 where idMusica = 2;
update musica set fkAlbum = 5 where idMusica = 1;

select 
musica.*,
album.nome as nomealbum
from musica join album
on idAlbum = fkAlbum;

select
musica.titulo as TituloMusica,
album.nome as NomeAlbum
from musica join album 
on musica.idMusica = Album.idAlbum;

select 
musica.*,
album.nome as NomeAlbum
from musica join album 
on musica.fkAlbum = album.idAlbum
where nome like 'Lover';

