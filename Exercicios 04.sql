create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("frutas");
insert into tb_categoria (categoria) values ("legumes");
insert into tb_categoria (categoria) values ("verduras");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
frutas varchar(255),
legumes varchar(255),
preco decimal(8,2) not null,
quantidade int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (frutas, quantidade, preco, categoria_id) values ("maça", 80, 5.00, 1);
insert into tb_produto (frutas, quantidade, preco, categoria_id) values ("banana", 45, 3.00, 1);
insert into tb_produto (frutas, quantidade, preco, categoria_id) values ("mamao", 30, 4.00, 1);
insert into tb_produto (legumes, quantidade, preco, categoria_id) values ("chuchu", 80, 6.00, 2);
insert into tb_produto (legumes, quantidade, preco, categoria_id) values ("batata doce", 100, 4.50, 2);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where frutas or legumes like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;