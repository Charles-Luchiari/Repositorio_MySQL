select @@version;

create database db_comercio;
use db_comercio;
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(40),
    valor decimal (10,2),
    quantidade int,
    codigo int,
    descricao varchar(40),
    PRIMARY KEY(id)
);

insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Televisão", 1500.00, 10, 245, "descricao televisão");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Computador", 4500.00, 100, 235, "descricao Computador");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Escova", 15.00, 30, 240, "descricao Escova");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Livro", 30.00, 110, 345, "descricao Livro");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Geladeira", 7500.00, 9, 247, "descricao Geladeira");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Mesa", 2500.00, 20, 248, "descricao Mesa");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Fogão", 7500.00, 19, 249, "descricao Fogão");
insert into tb_produtos(nome, valor, quantidade, codigo, descricao) values ("Microondas", 6500.00, 5, 244, "descricao Microondas");

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set codigo = 244 where id = 1;