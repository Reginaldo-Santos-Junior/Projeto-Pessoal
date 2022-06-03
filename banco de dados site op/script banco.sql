create database onepiecex;

use onepiecex;

create table usuario(
idUsuario int auto_increment primary key,
nome varchar(45),
telefone char (11),
email varchar (50),
senha varchar (30),
fkJogo int,
foreign key (fkJogo) references jogo(idjogo));

select * from usuario;

create table jogo(
idJogo int primary key,
nomeJogo varchar (30));

insert into jogo values
(1, 'Cruzadinha',0),
(2,'Jogo da memoria',0);

select * from jogo;

select nomeJogo, count(fkJogo) as totalVOtos from Jogo join usuario on idJogo = fkJogo group by fkJogo;