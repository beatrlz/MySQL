create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key (id)
);

insert into tb_categoria (categoria) values ("curso");


select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
curso varchar(255),
preco decimal(8,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, preco, categoria_id) values ("Java", 250.00, 1);
insert into tb_curso (curso, preco, categoria_id) values ("C#", 47.00, 1);
insert into tb_curso (curso, preco, categoria_id) values ("JavaScript", 22.00, 1);
insert into tb_curso (curso, preco, categoria_id) values ("Python", 400.00, 1);

select * from tb_curso;

select * from tb_curso where preco > 50.00;

select * from tb_curso where preco > 3.00 and preco < 60.00;

select * from tb_curso where curso like "%j%";

select tb_categoria.categoria, tb_curso.curso, tb_curso.preco
from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id;

select * from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;