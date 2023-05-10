select @@version;

create database db_RH;

use db_RH;
create table tb_cola(
	id bigint auto_increment,
    nome varchar(40) not null,
    idade int,
    data_nasc date,
    cargo varchar(40),
    salario decimal(10, 2),
    PRIMARY KEY(id)
);

insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("Charles", 25, "1998-01-17", "Desenvolvedor", 3500.00);
insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("Roberto", 22, "1991-06-19", "Desenvolvedor Junior", 3500.00);
insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("João", 29, "1995-08-26", "Desenvolvedor Pleno", 5500.00);
insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("Pedro", 19, "2002-09-11", "Marketing", 1500.00);

select * from tb_cola where salario > 2000.00;
select * from tb_cola where salario < 2000.00;

update tb_cola set cargo = "Desenvolvedor" where id = 4;
