select @@version;

create database db_escola;
use db_escola;

create table tb_alunos (
	id bigint auto_increment,
    nome varchar(40),
    idade int,
    sala int,
    serie int,
    nota decimal(10,2),
    PRIMARY KEY(id)
);

insert into tb_alunos(nome, idade, sala, serie, nota) values ("Charles", 13, 1, 8, 9.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("João", 11, 4, 6, 5.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Pedro", 11, 2, 6, 6.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Sueli", 13, 1, 8, 10.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Laura", 13, 2, 8, 8.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Issac", 11,3, 6, 7.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Paulo", 13, 4, 8, 5.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Sheila", 11, 3, 6, 7.0);
insert into tb_alunos(nome, idade, sala, serie, nota) values ("Nancy", 13, 2, 8, 10.0);

select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set sala = 2 where id = 2;