/*1- Selecionar e mostrar na tela a lista de todos os clientes com respectivos pontos 
do programa de fidelidade em ordem decrescente. Não mostrar clientes que 
não possuam pontos.*/
SELECT id_cliente,nome,pontos_prog_fidelidade FROM cliente where pontos_prog_fidelidade > 0 order by pontos_prog_fidelidade desc;
/*2- Mostrar a média de pontos do programa de fidelidade dos homens e das 
mulheres.*/
SELECT genero,avg(pontos_prog_fidelidade) FROM cliente group by genero;
/*3-Exibir a quantidade de clientes cadastrados por ano.*/
SELECT ano_cadastro, count(id_cliente) FROM cliente group by ano_cadastro;
/*4-Exibir a quantidade de clientes cadastrados por ano apenas para os anos entre 
2005 e 2010.*/
SELECT ano_cadastro, count(id_cliente) FROM cliente where ano_cadastro BETWEEN 2005 AND 2010 group by ano_cadastro;
/*5- Mostrar a quantidade de produtos por id_fabricante.*/
select id_fabricante, count(id_produto) from produto group by id_fabricante;
/*6- Mostrar as quantidades de itens vendidos em cada venda.*/
select id_venda,sum(qtde) from item_venda group by id_venda;
/*7- Exibir os possíveis percentuais de comissão que um vendedor pode receber.*/
select distinct percentual_comissao from vendedor;
/*8- Mostrar os id's de fabricantes que já forneceram produtos para a papelaria.*/
select id_fabricante from produto where qtde_estoque >= 0;
/*9- Exibir os produtos com as respectivas quantidades em estoque em ordem 
decrescente da quantidade.*/
select id_produto,descricao,qtde_estoque from produto order by qtde_estoque desc;
/*10- Apresentar quantos vendedores do genero feminino estão cadastrados.*/
select count(id_vendedor) from vendedor where genero=0;
/*11- Apresentar quantos vendedores do genero feminino possuem salário maior 
que R$ 1500,00.estão cadastrados.*/
select count(id_vendedor) from vendedor where genero= 0 and salario > 1500;
/*12- Crie uma consulta que apresente como resultado a lista dos 
produtos cujo valor seja maior que R$ 100,00 seguido da 
quantidade em estoque. O resultado deve ser apresentado 
conforme a seguir:
“O produto xxxx possui yyyy unidades em estoque”*/
select concat("O Produto ", descricao," possui ", qtde_estoque, " unidades em estoque! ") from produto where valor > 100;