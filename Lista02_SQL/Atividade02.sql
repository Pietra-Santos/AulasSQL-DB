create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
ativo boolean,
primary key(id)
);

insert into tb_categoria (categoria,ativo) values ("Doce",true);
insert into tb_categoria (categoria,ativo) values ("Salgada",true);
insert into tb_categoria (categoria,ativo) values ("Vegana",true );
insert into tb_categoria (categoria,ativo) values ("Vegetariana",true) ;
insert into tb_categoria (categoria,ativo) values ("Especial",true);

create table tb_pizza (
id bigint auto_increment,
nome varchar(100),
sabor varchar(100),
preco decimal(10,2),
tamanho varchar(100),
id_categoria bigint,
primary key(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Calabresa","Calabresa fatiada e cebola",25.00,"Média",2);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Marguerita","Molho, mussarela,tomate e manjericão",28.00,"Broto"2);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Frango com catupiry","Frango desfiado com catupiry",30.00,"Grande",2);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Pepperoni de Abobrinha","Massa sem gluten, abobrinha temperada e molho"38.00,"Pequena",3);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Contra-fié com queijo","contra-filé fatiado, queijo mussarela e orégano",50.00,"Média",2);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Brócolis com queijo","brócolis marinado no azeite e queijo mussarela",30.00,"Pequena",4);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Nutella com leite ninho","Nutella com brigadeiro de leite ninho",58.00,"Grande",1);
insert into tb_pizza  (nome,sabor,preco,tamanho,id_categoria) values ("Especial","recomendação do chefe",34.00,"Grande",5);



select * from tb_pizza ;
select * from tb_categoria;

select * from tb_pizza  where preco > 45.00;

select * from tb_pizza  where preco between 29.00 and 60.00;

select * from tb_pizza  where nome like "%C%";

SELECT * from tb_categoria
INNER JOIN tb_pizza 
ON tb_categoria.id = tb_pizza.id_categoria;