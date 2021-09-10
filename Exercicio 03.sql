create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("remedios");
insert into tb_categoria (categoria) values ("perfumaria");
insert into tb_categoria (categoria) values ("higiene");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
remedio varchar(255),
perfumaria varchar(255),
higiene varchar (255),
preco decimal(8,2) not null,
quantidade int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (remedio, preco, quantidade, categoria_id) values ("dipirona", 2.00, 3, 1);
insert into tb_produto (remedio, preco, quantidade, categoria_id) values ("buscofem", 36.00, 12, 3);
insert into tb_produto (remedio, preco, quantidade, categoria_id) values ("dorflex", 29.00, 6, 2);
insert into tb_produto (perfumaria, preco, quantidade, categoria_id) values ("shampoo", 52.00, 4, 4);

