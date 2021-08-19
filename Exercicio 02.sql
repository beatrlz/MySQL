create database ecommerce;
use ecommerce;

create table produtos(
id bigint auto_increment,
marca varchar(255) not null,
preco decimal(8,2),
setor varchar(80),
descricao varchar(255),
primary key (id)
);

insert into produtos (marca, preco, setor, descricao) values ("Nike", 1200.00, "calcados", "Tenis Air VaporMax Evo");
insert into produtos (marca, preco, setor, descricao) values ("Adidas", 900.00, "calcados", "Tenis Ultraboost");
insert into produtos (marca, preco, setor, descricao) values ("Puma", 690.00, "calcados", "Tenis Suede Classic");
insert into produtos (marca, preco, setor, descricao) values ("Olympikus", 769.00, "calcados", "Anyway");
insert into produtos (marca, preco, setor, descricao) values ("Rebook", 456.00, "calcados", "Zig VB");

select id, marca, preco, setor, descricao from produtos where preco <500;
select id, marca, preco, setor, descricao from produtos where preco >500;

select * from produtos;

alter table produtos change nome marca varchar(255);

update produtos set marca = "Nike" where id = 1;
