create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255) unique,
idade int not null,
altura decimal,
primary key(id)
);

insert into tb_classes (nome,idade,altura) values ( "Bardo", 18,100);
insert into tb_classes (nome,idade,altura) values ( "Guerreiro", 30,1.50);
insert into tb_classes (nome,idade,altura) values ("Assassino", 20,1.95);
insert into tb_classes (nome,idade,altura) values ("Feiticeiro", 19,1.70);
insert into tb_classes (nome,idade,altura) values ("Mago", 35,1.65);

create table tb_personagem(
id bigint auto_increment,
nome varchar (255),
poderdef int,
poderatk int,
agilidade int,
magia int,
categoria varchar(255),
primary key(id),
id_conect_classes bigint,
FOREIGN KEY (id_conect_classes) REFERENCES tb_classes (id)
);

insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Jose",5060,2300,4400,7000,"Frontzeiros",1);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Stephany",6905,6500,3400,4340,"Guerrilheiros",2);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("André",3050,5870,2400,5456,"The Killers",3);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Pietra",8870,9860,5000,7268,"Wandismo",4);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Carlito",3980,5000,3900,4200,"Strange",5);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Catarina",21700,1000,4100,3300,"Wandismo",4);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Billy",3826,5200,6530,4520,"The Killers",3);
insert into tb_personagem (nome,poderdef, poderatk, agilidade, magia, categoria,id_conect_classes) values ("Jason",1580,2780,3450,5260,"Frontzeiros",1);



select * from tb_personagem;
select * from tb_classes;

select * from tb_personagem where poderatk > 2000;

select * from tb_personagem where poderdef between 1000 and 2000;

select * from tb_personagem where categoria like "%A%";

select * from tb_personagem where categoria LIKE "%Guerrilheiros%";

SELECT * from tb_classes
INNER JOIN tb_personagem
ON tb_classes.id = tb_personagem.id_conect_classes;