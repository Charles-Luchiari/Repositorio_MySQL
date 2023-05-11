select @@version;
create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
	id bigint auto_increment,
    nome varchar(255),
    descricao varchar(255),
    primary key(id)
);

create table tb_personagens (
	id bigint auto_increment,
    nome varchar(40),
    vida int,
    nivel int,
    ataque int,
    defesa int,
    id_classes bigint default null,
    primary key(id),
    constraint fk_classes_personagens foreign key (id_classes) references tb_classes (id)
);

insert into tb_classes (nome, descricao) values ("Guerreiro", "Guerreiros são exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.");
insert into tb_classes (nome, descricao) values ("Caçador", "Os caçadores são conhecidos pelo combate à distância, uma vez que atacam de longe.");
insert into tb_classes (nome, descricao) values ("Mago", "Os magos são capazes de controlar os elementos para usá-los de forma ofensiva ou defensiva.");
insert into tb_classes (nome, descricao) values ("Ninja", "Ninjas são classes com habilidades exclusivas de furtividade e geralmente causam dano absurdo e instantâneo.");
insert into tb_classes (nome, descricao) values ("Curandeiro", "Curandeiros são as classes de suporte cujas habilidades são voltadas para o grupo como curas, buffs, expurgos de debuffs e ressurreições.");

insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Silvio",10,99,3000,5000,1);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Carilinho",10,35,1400,3000,2);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Silverster",10,85,5000,3500,4);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Chuck Norris",1000,10000,10000,10000,2);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Nubi",5,3,10,100,5);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Eragon",10,90,4000,4700,3);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Mario",10,86,1500,3000,5);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Luigi",10,72,1220,2023,3);
insert into tb_personagens (nome, vida, nivel, ataque, defesa, id_classes) values ("Mago Implacavel",10,100,1220,1500,3);

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome like "C%";
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classes;
select * from tb_personagens order by id asc;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classes where tb_classes.nome = "Caçador";