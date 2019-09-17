--Q1
select codigo, nome Produto, quantest [Estoque Real],estmin [Estoque Mínimo], 'Num. Ref.'[Referencia] from produto
--Q2
select venda-custo[Lucro na Venda] from produto
--Q3
select (venda+venda*0.25) [Aumento de 25%] from produto
--Q4
select distinct cidade from funcionario
--Q5
select codigo, nome, tipo, custo, venda from produto order by nome
--Q6
select * from funcionario where sexo='M' order by datanasc desc
--Q7
select nome, setor,cidade from funcionario where (cidade in (7,8,9)) order by setor,nome
--Q8
select codigo, nome from cidade where (pais not in('BRA'))
--Q9
select * ,salario+(salario*0.52) [Salario Adicional] from funcionario where sexo='F'
--Q10
select * from funcionario where salario>1000 and salario<3000
--Q11
select * from produto where custo>20 and custo<100 order by codigo
--Q12
select * from funcionario where fone is NULL
--Q13
select * from produto where quantest<estmin
--Q14
select * from produto where (tipo in(1,2,3)) and venda>10 and venda<50
--Q15
select * from funcionario where email is not null
--Q16
select * from funcionario where datanasc>'01/12/1965' and datanasc<'31/03/1966'
--Q17
select nome,(YEAR(getdate()) - YEAR(datanasc)) Idade from funcionario order by Idade,nome
--Q18
select cliente from pedido 
--Q19
select * from funcionario where sexo='M' and estcivil='C' and salario<=3000 order by nome
--Q20
select codigo, nome, tipo, venda from produto where venda<=50 and tipo in(1,3) order by nome desc
--Q21
select * from funcionario where datanasc>'01/01/1965' and datanasc<'31/12/1966' and codigo not in(4,6,10) order by nome
--Q22
select nome, venda from produto where descricao like'%chocolate%'
--Q23
select codigo, nome from funcionario where sexo='M' and nome not like 'A%' and nome not like 'M%' order by nome
--Q24
select * from pedido where via='A' and frete>=300 order by codigo
--Q25
select count(cliente) from pedido,cliente
--Q26 
select count (cliente) from pedido,cliente where cidade=17
--27
select count(pais) from cidade where pais not in('BRA')
--28
select count(email) from funcionario where email is not null
--29
select count(codigo) from cidade
--30
select sum(salario) from funcionario
--31
select sum(venda*quantest) from produto
--32
select sum(frete) from pedido where via='M'
--33
select sum(salario) from funcionario where sexo='M' and funcao not in(10,11)
--34
select avg((YEAR(getdate()) - YEAR(datanasc))) Idade from funcionario where setor='COV' or setor='RHM'
--35
select avg(salario) from funcionario where salario>1000 and salario<2000 and setor!='PRS' and setor!='MKT'
--36
select avg(salario) from funcionario where funcao=10 or funcao=11 and estcivil!='C'
--37
select avg(venda) from produto where tipo=1
--38
select max((YEAR(getdate()) - YEAR(datanasc))) Idade from funcionario
--39
select max(custo) from produto
--40
select max(datapedid) from pedido
--41
select min(datapedid) from pedido where via='A'
--42
select pedido, max(quant) Quantidade from itens group by pedido
--43
select setor,avg(salario) STS from funcionario group by setor having avg(salario)>5000 
--44
select avg(custo) [P.custo],avg(venda) [P. Venda],(avg(venda)-avg(custo))[Diferença de Preço] from produto group by nome
--45
select produto,count(pedido)[Quantidade de Pedidos] from itens group by produto having count(pedido)>20 order by produto 
--46
select setor,sexo,avg((YEAR(getdate()) - YEAR(datanasc))) Idade from funcionario group by setor,sexo having avg((YEAR(getdate()) - YEAR(datanasc)))<40
--47
select count(sexo) Sexo,cidade from funcionario where sexo='F' group by cidade having count(cidade)>=3
union 
select count(sexo) Sexo,cidade from funcionario where sexo='M' group by cidade having count(cidade)>=3
--48
select count(codigo)Quantidade,pais from cidade group by pais having count(codigo)>5 
--49
select cliente,count(codigo)Pedido,year(datapedid)DT_PedidoPedido from pedido group by cliente,year(datapedid) having count(codigo)>5 
--50
select avg(venda)Venda,avg(custo)Custo,((avg(venda)*100/avg(custo))-100) Percentual,nome from produto group by nome having ((avg(venda)*100/avg(custo))-100)>40