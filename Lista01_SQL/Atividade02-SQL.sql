create database db_ecommerce;
use db_ecommerce;
create table tb_produto (
id bigint auto_increment,
nome varchar (50),
categoria varchar (50),
marca varchar (50),
quantidade int ,
valor decimal,
primary key (id)
);

insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("Notebook", "Eletroeletronico", "Samsung",100,4000);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("Smartphone", "Eletroeletronico", "Motorola G9",200,1400);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("Panela Elétrica", "Eletrodoméstico", "Electrolux",110,300);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("Geladeira Frost-Free", "Eletrodoméstico", "Electrolux",50,5000);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("Smartphone", "Eletroeletronico", "SamsungA71",20,2000);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("SmartTV", "Eletrodoméstico", "LG k10",40,4000);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("AirFryer", "Eletrodoméstico", "Walita",100,1000);
insert into tb_produto (nome, categoria, marca, quantidade, valor) values ("Forno Elétrico", "Eletrodoméstico", "Samsung",100,500);

select * from tb_produto;
select * from tb_produto where valor > 500;
select * from tb_produto where valor < 500;

update tb_produto set valor = 4000  where id = 5;

 
