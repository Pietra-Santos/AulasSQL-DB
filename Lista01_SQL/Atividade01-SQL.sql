create database db_rh_empresa;

use db_rh_empresa;
create table tb_funcionarios (
id bigint auto_increment,
nome varchar (255),
cpf bigint,
salario decimal,
setor varchar(255),
cargo varchar(255),
primary key(id)
);
insert into tb_funcionarios (nome,cpf,salario,setor,cargo) values ("Pietra",98756709182,5000,"TI","Desenvolvedor(a) Full Stack");
insert into tb_funcionarios (nome,cpf,salario,setor,cargo) values ("Joana",124578690832,3500,"TI","Desenvolvedor(a) Full Stack");
insert into tb_funcionarios (nome,cpf,salario,setor,cargo) values ("Carlos",09835794725,4500,"TI","Desenvolvedor(a) Full Stack");
insert into tb_funcionarios (nome,cpf,salario,setor,cargo) values ("Lucas",78645689723,2000,"TI","Desenvolvedor(a) Full Stack");
insert into tb_funcionarios (nome,cpf,salario,setor,cargo) values ("Eduarda",76389904567,1500,"TI","Desenvolvedor(a) Full Stack");

select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;
 
update tb_funcionarios set salario = 2500 where id = 8;

