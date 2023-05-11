select @@version;

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id_categoria bigint auto_increment,
    nome_categoria varchar(255),
    descricao_categoria varchar(255),
    primary key(id_categoria)
);

create table tb_pizzas (
	id bigint auto_increment,
    nome_pizza varchar(255),
    descricao_pizza varchar(255),
    quantidade int,
    preco decimal(4,2),
    id_categoria bigint default null,
    primary key(id),
    constraint fk_categoria_pizzas foreign key (id_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (nome_categoria, descricao_categoria) values ("Pizzas Salgadas","Todos os tipos de pizzas salgadas");
insert into tb_categoria (nome_categoria, descricao_categoria) values ("Pizzas Doces","Todos os tipos de pizzas doces");
insert into tb_categoria (nome_categoria, descricao_categoria) values ("Esfirras","Todos os tipos de esfirras salgadas");
insert into tb_categoria (nome_categoria, descricao_categoria) values ("Esfirras Doces","Todos os tipos de esfirras doces");
insert into tb_categoria (nome_categoria, descricao_categoria) values ("Pizzas com Borda","Todos os tipos de pizzas com bordas");

insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ( "Mussarela","Pizza com molho de tomate, muito queijo mussarela, rodelas de tomate e azeitona.", 10,39.99, 1);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ( "Brócolis","Pizza com molho de tomate, muito queijo mussarela, pedaços de bacon e azeitona.",45.99, 15, 1);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ("Floresta Negra","Pizza com Leite Condensado, Chocolate ao leite e por cima uma cereja.", 20,59.99, 2);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ("Tentação","Pizza com doce de leite, coco ralada, catupiry, e leite condensado.", 18,49.99, 2);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ("Caipira","Esfirra com frango, milho e catupiry.", 7,7.99, 3);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ("Calabresa c/ queijo","Esfirra com calabresa moída e queijo mussarela.", 13,4.59, 3);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ("Paçoquinha","Esfirra com paçoca e leite condensado.", 10,6.99, 4);
insert into tb_pizzas(nome_pizza, descricao_pizza, quantidade, preco, id_categoria) values ("Mussarela 2.0","Pizza com molho de tomate, muito queijo mussarela, rodelas de tomate, azeitona e borda de catupiry.", 5,79.99, 5);

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where nome_pizza like "%M%";
select * from tb_pizzas inner join tb_categoria on tb_pizzas.id_categoria = tb_categoria.id_categoria;
select * from tb_pizzas inner join tb_categoria on tb_pizzas.id_categoria = tb_categoria.id_categoria where tb_categoria.nome_categoria = "Pizzas Doces";