create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
ativo boolean,
primary key(id)
);

insert into tb_categoria (categoria,ativo) values ("Medicamentos",true);
insert into tb_categoria (categoria,ativo) values ("Cosméticos",true);
insert into tb_categoria (categoria,ativo) values ("Higiene pessoal",true );
insert into tb_categoria (categoria,ativo) values ("Nutricao",true) ;
insert into tb_categoria (categoria,ativo) values ("Mamae e bebe",true);

create table tb_produto (
id bigint auto_increment,
nome varchar(100),
marca varchar(100),
preco decimal(10,2),
id_categoria bigint,
primary key(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome,marca,preco,id_categoria) values ("Paracetamol","Tylenol",25.00,1);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Dipirona","Novalgina",15.00,1);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Multivitaminico","Pharmaton",87.30,4);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Sabonete liquido","Protex",6.50,3);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Sombra para olhos dourada","Vult Make UP",12.00,2);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Batom matte vermelho", "Ruby Rose",20.00,1);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Shampoo","Johnson's Baby",18.00,5);
insert into tb_produto (nome,marca,preco,id_categoria) values ("Fralda","Pampers",31.50,5);


select * from tb_produto ;
select * from tb_categoria;

select * from tb_produto  where preco > 50.00;

select * from tb_produto  where preco between 3.00 and 60.00;

select * from tb_produto  where nome like "%B%";
select * from tb_categoria  where categoria LIKE "%Medicamentos%";

SELECT * from tb_categoria
INNER JOIN tb_produto 
ON tb_categoria.id = tb_produto.id_categoria;