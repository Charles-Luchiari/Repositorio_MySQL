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

insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("Charles", 25, "1998-01-17", "Desenvolvedor", 3500.00, 1);
insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("Roberto", 22, "1991-06-19", "Desenvolvedor Junior", 3500.00, 1);
insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("João", 29, "1995-08-26", "Desenvolvedor Pleno", 5500.00, 0);
insert into tb_cola(nome, idade, data_nasc, cargo, salario) values ("Pedro", 19, "2002-09-11", "Marketing", 1500.00, 0);

select * from tb_cola where salario > 2000.00;
select * from tb_cola where salario < 2000.00;

update tb_cola set cargo = "Desenvolvedor" where id = 4;

alter table tb_cola add ativo tinyint(1);
select * from tb_cola;
update tb_cola set ativo = 1 where id = 1;
update tb_cola set ativo = 0 where id = 2;
update tb_cola set ativo = 1 where id = 3;
UPDATE tb_cola
SET 
    ativo = 0
WHERE
    id = 4;

