create database escola;
use escola;

create table alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
materia varchar(30),
nota decimal(8,2),
primary key (id)
);
insert into alunos (nome, idade, materia, nota) values ("Lucas", 19, "Português", 4.6);
insert into alunos (nome, idade, materia, nota) values ("Bruna", 22, "Biologia", 8.0);
insert into alunos (nome, idade, materia, nota) values ("Jessica", 20, "Fisica", 5.5);
insert into alunos (nome, idade, materia, nota) values ("Leonardo", 25, "Matemática", 9.8);
insert into alunos (nome, idade, materia, nota) values ("Gabrielle", 21, "Literatura", 7.4);
insert into alunos (nome, idade, materia, nota) values ("Beatriz", 20, "Quimica", 7.2);
insert into alunos (nome, idade, materia, nota) values ("Juliana", 17, "História", 6.2);
insert into alunos (nome, idade, materia, nota) values ("Matheus", 22, "Geografia", 5.0);

select id, nome, idade, materia, nota from alunos where nota < 7;
select id, nome, idade, materia, nota from alunos where nota > 7;

select * from alunos;

update alunos set nota = 9.8 where id=1;

