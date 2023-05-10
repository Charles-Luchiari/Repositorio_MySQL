select @@version;

create database db_quitanda;

use db_quitanda;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
	preco decimal not null,
    primary key(id)
);
insert into tb_produtos (nome, quantidade, preco) values ("melancia", 100,12.00);
insert into tb_produtos (nome, quantidade, preco) values ("laranja", 80,8.00);
insert into tb_produtos (nome, quantidade, preco) values ("morango", 120,15.00);
insert into tb_produtos (nome, quantidade, preco) values ("banana", 30,5.00);
insert into tb_produtos (nome, quantidade, preco) values ("manga", 50,4.00);
insert into tb_produtos (nome, quantidade, preco) values ("kiwi", 105,14.00);

select * from tb_produtos;

select * from tb_produtos where preco > 10.00;
update tb_produtos set preco = 15.00 where id = 2;

delete from tb_produtos where id >= 7 and id <= 12;

select * from tb_produtos where preco >= 10.00 and quantidade <=100;

update tb_produtos set preco = 5.00 where id = 1;

delete from tb_produtos where id = 2;

alter table tb_produtos modify preco decimal(6,2);

ALTER TABLE tb_produtos ADD observacao varchar(255);

alter table tb_produtos drop observacao;

alter table tb_produtos change nome nomeproduto varchar(255);

