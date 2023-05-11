create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categoria(
	id bigint auto_increment,
    nome_categoria varchar(255),
    descricao_categoria varchar(255),
    primary key(id)
);

create table tb_produtos (
	id bigint auto_increment,
    nome_produto varchar(255),
    descricao_produto varchar(255),
    preco_produto decimal(6,2),
    id_categoria bigint default null,
    primary key(id),
    constraint fk_categoria_produto foreign key(id_categoria) references tb_categoria (id)
);


insert into tb_categoria(nome_categoria, descricao_categoria) values ("Higiene","Produtos para higiene pessoal");
insert into tb_categoria(nome_categoria, descricao_categoria) values ("Medicamentos","Remédios para a saúde em geral");
insert into tb_categoria(nome_categoria, descricao_categoria) values ("Suplementos","Suplementos alimentares e vitaminas");

insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Shampoo","Shampoo para cabelos cacheados", 20.00, 1);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Condicionador","Condicionador para cabelos cacheados", 15.00, 1);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Loratadina","Medicamento para alergias", 35.00, 2);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Dipirona","Medicamento para dor", 6.00, 2);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Anticoncepcional","Método contraceptivo", 30.00, 2);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Omeprazol","Medicamento para dor no estomago", 10.00, 2);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Creatina","Suplemento para ganho de força e massa muscular", 150.00, 3);
insert into tb_produtos(nome_produto, descricao_produto, preco_produto, id_categoria) values ("Colageno","Suplemento para a saúde da pele", 80.00, 3);

select * from tb_produtos where preco_produto > 50.00;
select * from tb_produtos where preco_produto between 5.00 and 60.00;
select * from tb_produtos where nome_produto like "%C%";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria where tb_categoria.nome_categoria = "Higiene";
