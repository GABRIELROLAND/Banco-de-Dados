create table produto(codigo integer primary key ,
descricao varchar(50) not null,
unidmedia varchar(10) not null,
qtdest integer not null,
valunit float not null);

insert into produto(codigo,descricao,unidmedia,qtdest,valunit)
values(10,'arroz','kg',10,9.80);
insert into produto(codigo,descricao,unidmedia,qtdest,valunit)
values(20,'feijao','kg',5,2.50);
insert into produto(codigo,descricao,unidmedia,qtdest,valunit)
values(30,'batata','',3,1.40);
insert into produto(codigo,descricao,unidmedia,qtdest,valunit)
values(40,'leite','lt',15,1.60);

update produto set valunit=3.20 where descricao='feijao'
delete from produto where codigo=20
select codigo,descricao from produto

select descricao from produto where descricao like'%a%'//Mostra tudo que tem a letra "A"//
select *from produto where unidmedia is null
select *from produto where unidmedia in('kg','mt')
select *from produto order by valunit desc //ordena por valor em ordem decrecente ,asc seria crescente