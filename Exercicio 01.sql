create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(200)not null,
primary key (id)
);

insert into tb_classe (classe) values ("Feiticeira");
insert into tb_classe (classe) values ("Mago");
insert into tb_classe (classe) values ("Guerreiro");
insert into tb_classe (classe) values ("Vingador");
insert into tb_classe (classe) values ("Bruxo");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255)not null,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key(classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Escarlate", 1000, 2000, 2);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Belchior", 1000, 5000, 5);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Alaunus", 2500, 4000, 3);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Capitão América", 1600, 4500, 4);
insert into tb_personagem (nome, ataque, defesa, classe_id) values ("Morgan", 2000, 1500, 1);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where ataque > 1000 and ataque < 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem inner join tb_classe on tb_personagem.classe_id where classe_id = 4;
