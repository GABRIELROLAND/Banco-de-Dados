create table departamento(
codigo integer primary key,
descricao varchar(50) not null);

create table funcionario(
matricula integer,
nome varchar (100),
sexo char check(sexo in('F','M')),
idade smallint check (idade>=18) default 18,
codigo integer references departamento(codigo),
primary key (matricula));

insert into departamento(codigo,descricao) values(1,'TI');
insert into departamento(codigo,descricao) values(2,'MKT');
insert into departamento(codigo,descricao) values(3,'FIN');
insert into departamento(codigo,descricao) values(4,'PESSOAL');

insert into funcionario (matricula,nome,sexo)values(10,'JOSE','M');
insert into funcionario (matricula,nome,sexo)values(30,'JOAO','M');
insert into funcionario (matricula,nome,sexo)values(50,'MARIA','F');


