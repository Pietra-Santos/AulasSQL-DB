create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
ativo boolean,
primary key(id)
);

insert into tb_categoria (categoria,ativo) values ("Materiais de construção",true);
insert into tb_categoria (categoria,ativo) values ("Eletrica",true);
insert into tb_categoria (categoria,ativo) values ("Hidraulica",true );
insert into tb_categoria (categoria,ativo) values ("Ferramentas",true) ;
insert into tb_categoria (categoria,ativo) values ("Decoração",true);

create table tb_produto (
id bigint auto_increment,
nome varchar(100),
marca varchar(100),
preco decimal(10,2),
id_categoria bigint,
primary key(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome,marca,preco,id_categoria) values ("Cimento 20kg","Quartzolit",70.00,1);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Estabilizador 300Va","SMS",176.00,2);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Rolo para pintura","Atlas",5.90,1);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Disjuntor Monopolar","Camper",54.90,2);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Tubo de ligação para bacia","Esteves",67.90,3);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Chave de fenda","Redline",13.00,4);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Relógio de Parede Cachorro Pug","GNA",49.90,5);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Estilete Multiuso","Starrett",42.90,4);


select * from tb_produto ;
select * from tb_categoria;

select * from tb_produto  where preco > 50.00;

select * from tb_produto  where preco between 3.00 and 60.00;

select * from tb_produto  where nome like "%C%";
select  tb_produto.nome  from tb_produto where  tb_produto . id_categoria  =  2 ;

SELECT * from tb_categoria
INNER JOIN tb_produto 
ON tb_categoria.id = tb_produto.id_categoria;