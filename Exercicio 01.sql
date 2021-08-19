create database rh_funcionarios;

use rh_funcionarios;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
funcao varchar(80),
setor varchar(50),
salario decimal(8,2) not null,
primary key (id)
);

insert into tb_funcionarios (nome, funcao, setor, salario) values ("Gabriela", "desenvolvedora java", "TI", 2500.00);
insert into tb_funcionarios (nome, funcao, setor, salario) values ("Gabriel", "analista de suporte técnico", "TI", 3000.00);
insert into tb_funcionarios (nome, funcao, setor, salario) values ("Ana Clara", "analista de aplicativo", "TI", 4530.00);
insert into tb_funcionarios (nome, funcao, setor, salario) values ("Bernardo", "engenheiro de software", "TI", 5430.00);
insert into tb_funcionarios (nome, funcao, setor, salario) values ("Pedro", "programador de internet", "TI", 2300.00);

select * from tb_funcionarios;

select * from tb_funcionarios where salario >2000;
select * from tb_funcionarios where salario <2000;
 
 update tb_funcionarios set nome = "Bernardo" where id = 1;
 
 