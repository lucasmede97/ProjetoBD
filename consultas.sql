--Mostrar todos atributos da tabela funcionario
SELECT * FROM TblFuncionario
--Mostrar todos os nomes dos funcionario 
SELECT nome_Funcionario FROM TblFuncionario
--Mostrar todos os funcionários que recebem mais de R$ 1.500 
SELECT * FROM TblFuncionario WHERE salario_Funcionario < 1500
--Mostrar funcionário Homens
SELECT * FROM TblFuncionario WHERE sexo_Funcionario = 'M'
--Mostrar todos os CPFs dos fucionario
SELECT cpf_Funcionario FROM TblFuncionario
--Mostrar todos os RGS dos fucionario
SELECT rg_Funcionario FROM TblFuncionario
--Mostrar todos no cargo de supervisor
SELECT * FROM TblFuncionario WHERE cargo_Funcionario = 'supervisor'
--Mostrar todos os homens que começam com a letra A
SELECT * FROM TblFuncionario WHERE (sexo_Funcionario = 'm') and (nome_Funcionario like 'a%')
--Mostrar todos os funcionário so sexo feminino
SELECT * FROM TblFuncionario WHERE sexo_Funcionario = 'F'
--Mostrar quantos funcionarios
SELECT COUNT(codigo_Funcionario) FROM TblFuncionario 

--•	TblEditora
--Mostrar todos atributos da tabela funcionario
SELECT * FROM TblEditora
--Mostrar todas as editoras que estão no brasil
SELECT * FROM TblEditora WHERE pais_Editora = 'brasil'
--Mostrar todas as editoras que tem como endereço Manaira 
SELECT * FROM TblEditora WHERE endereco_Editora = 'manaira'
--Mostra quantas editoras estão cadastradas
SELECT COUNT(codigo_Editora) FROM TblEditora
--Mostra todas editoras que começam com A
SELECT * FROM TblEditora WHERE nome_Editora = 'a%'
--Mostra as editoras que estão em países com a letra B
SELECT * FROM TblEditora WHERE pais_Editora = 'B%'
--Mostra todas as editoras que não preencheram o campo de email
SELECT * FROM TblEditora WHERE email_Editora IS NULL
--Mostras todas as editoras que estão cadastradas como gmail
SELECT * FROM TblEditora WHERE email_Editora = '%gmail.com'
--Mostrar todas os países onde tem editoras cadastradas
SELECT pais_Editora FROM TblEditora
--Mostra todos os endereços onde tem editoras cadastradas
SELECT endereco_Editora FROM TblEditora

--•	TblFornecedor

--Mostrar todos atributos da tabela fornecedor
SELECT * FROM TblFornecedor
--Mostrar quantos fornecedores estão cadastrados
SELECT COUNT(codigo_Fornecedor) FROM TblFornecedor
--Mostrar todos os fornecedores
SELECT nome_Fornecedor FROM TblFornecedor
--Mostrar todos os fornecedores que estão com email cadastrados com gmail
SELECT email_Fornecedor FROM TblFornecedor WHERE email_Fornecedor = '%gmail.com'
--Mostrar todos os endereços onde tem fornecedores
SELECT endereço_Fornecedor FROM TblFornecedor
--Mostrar todos os CNPJs dos fornecedores
SELECT cnpj_Fornecedor FROM TblFornecedor
--Mostrar todos os celulares dos fornecedores
SELECT celular_Fornecedor FROM TblFornecedor
--Mostrar todos fornecedores que estão sem cep cadastrados
SELECT * from TblFornecedor where cep_Fornecedor is NULL
--Mostrar todos os fornecedores que tem o cep começados em 58
SELECT * from TblFornecedor where cep_Fornecedor = '58%'

--•	TblCurso

--Mostrar todos atributos da tabela curso
SELECT * FROM TblCurso
--Mostrar a quantidade de cursos existentes
SELECT COUNT(codigo_Curso) FROM TblCurso
--Mostrar todos os cursos
SELECT nome_Curso FROM TblCurso
--Mostrar os coordenadores  
SELECT coordenador_Curso FROM TblCurso 
--Mostrar os coordenadores que comecem com a letra C
SELECT * FROM TblCurso WHERE coordenador_Curso = 'C'
--Mostrar quantos períodos tem o curso de SI
SELECT QTPeriodos_Curso FROM TblCurso where nome_Curso = 'Sistemas de informação'
--Mostrar todos os cursos que começem com a letra M
SELECT * FROM TblCurso WHERE nome_Curso = 'm%'
--Mostrar todos os cursos que tem menos de 7 periodos 
SELECT * FROM TblCurso WHERE QTPeriodos_Curso < 7
--Ordenar todos os cursos do mais novos aos mais antigos
SELECT nome_Curso FROM TblCurso ORDER BY codigo_Curso
--Ordenar os cursos em ordem alfabetica
SELECT nome_Curso FROM TblCurso ORDER BY nome_Curso

--•	TblUsuario

--Mostrar todos atributos da tabela Usuario
SELECT * FROM TblUsuario
--Mostrar os usuario por ordem alfabética
SELECT nome_Usuario FROM TblUsuario ORDER BY nome_Usuario
--Mostrar os alunos que estão no sétimo periodo
SELECT * from TblUsuario WHERE periodo = 7
--Mostrar todos os usuriarios do sexo masculino 
 SELECT * from TblUsuario WHERE sexo_Usuario = ‘M’
--Mostrar todos os que moram em Joao Pessoa
SELECT * FROM TblUsuario WHERE endereço_Usuario = ‘joao pessoa’
--Mostrar todos os tipos de usuairos
SELECT tipo_Usuario FROM TblUsuario
--Mostrar todos os usuário que estão sem preencher os RG no cadastro
SELECT * FROM TblUsuario WHERE rg_Usuario IS NULL
--Mostrar todos os usuariario que cadastraram o email com hotmail
SELECT * from TblUsuario WHERE email_Usuario = '% Hotmail.com'
--Mostrar os usuários por ordem de idade
SELECT * from TblUsuario ORDER BY DT_Nasc_Usuario

--•	TblMaterial
--Mostrar todos os atributos da tabela material
SELECT * FROM TblMaterial
--Mostrar todos os materiais , do mais novo pra o mais antigo
SELECT * FROM TblMaterial ORDER BY ano_Material ASC
--Mostrar todos os materiais que tenha como autor Machado de Assis
SELECT * FROM TblMaterial WHERE autorPri_Material = 'Machado de Assis'
--Mostrar todos títulos dos matérias por ordem alfabética
SELECT titulo_Material FROM TblMaterial ORDER BY titulo_Material
--Mostrar os matérias mais recentes cadastrados 
SELECT * FROM TblMaterial ORDER BY DT_Cad_Material
--Mostrar todos os materiais que tenham mais de 2 volumes
SELECT * FROM  TblMaterial WHERE volume_Material > 2
--Mostrar todos os materiais ordenados por ordem alfabética de edição
SELECT * FROM  TblMaterial ORDER BY edição_Material
--Mostrar todas as editoras ordenadas por codigo
SELECT * FROM TblMaterial ORDER BY codigo_Editora
--Mostrar os matérias cadastrados do mais novo para o mais antigo
SELECT * FROM TblMaterial ORDER BY ano_Material
--Mostrar todos os matérias do ano atual
SELECT titulo_Material FROM TblMaterial WHERE ano_Material = '2019'

--•	TblPedidoMaterial
--Mostrar todos os atributos da tabela pedidomaterial
SELECT * FROM TblPedidoMaterial
--Mostrar  todos os pedidos ordenados por codigo
SELECT * FROM TblPedidoMaterial ORDER BY codigo_Pedido
--Mostrar todos os pedidos ordenados pela quantidade 
SELECT * FROM TblPedidoMaterial ORDER BY quantExemplares_Pedido
--Mostrar todos pedidos que tenham valor a cima de 100 reais
SELECT * from TblPedidoMaterial WHERE valorUnitario_Pedido > 100
--Listar todos os pedidos em ordem por preço
SELECT * FROM TblPedidoMaterial	 ORDER BY valorUnitario_Pedido
--Mostrar todos os pedidos em ordem por Num_NotaFiscal
SELECT * FROM TblPedidoMaterial	 ORDER BY Num_NotaFiscal_Pedido
--Mostrar todos os pedidos que tenham data de emissão desse ano
SELECT * FROM TblPedidoMaterial WHERE DT_Emissão_NotaFiscal_Pedido  > 2019
--Mostrar a quantidade de fornecedores
SELECT COUNT(codigo_Fornecedor) FROM TblPedidoMaterial
--Mostrar todos os pedidos que tem desconto
SELECT * FROM TblPedidoMaterial WHERE desconto_pedido IS NOT NULL 

--•	TblExemplar
--Mostrar todos os atributos da tabela exemplar
SELECT * FROM TblExemplar
--Mostrar mostrar quantos exemplares existem
SELECT COUNT(codigo_Fornecedor) FROM TblExemplar
--Mostrar todos os exemplares que tem tombo cadastrado
SELECT * FROM TblExemplar WHERE tombo_Exemplar IS NOT NULL
--Mostrar todas as observações de cada exemplar
SELECT Observaçao_Exemplar FROM TblExemplar
--Mostrar todos os exemplares por ordem de registro
SELECT * FROM TblExemplar ORDER BY rg_material
--Mostrar  todos os exemplares por ordem de pedido
SELECT * FROM TblExemplar ORDER BY codigo_Pedido
--Mostrar a situação de todos os exemplares
SELECT situação_Exemplar FROM TblExemplar
--Mostrar o numero de nota fiscal de todos exemplares
SELECT Num_NotaFiscal_Pedido FROM TblExemplar
--Mostrar código de pedido e do fornecedor
SELECT codigo_Pedido , codigo_Fornecedor FROM TblExemplar
--Mostrar quantas notas ficais foram feitas
SELECT COUNT(Num_NotaFiscal_Pedido) FROM TblExemplar

--•	TblEmprestimo
--Mostrar todos os atributos da tabela emprestimo
SELECT * FROM TblEmprestimo
--Mostrar quantos usuário estão matriculados
SELECT COUNT(matricula_Usuario) FROM TblEmprestimo
--Mostrar quantos livros foram emprestados
SELECT COUNT(codigo_Emprestimo)FROM TblEmprestimo
--Mostrar todas as datas de devolução
SELECT DTEmprestimo FROM TblEmprestimo
--Mostrar quantos livros estão com tombamento
SELECT COUNT(tombo_exemplar) FROM TblEmprestimo
--Mostrar todos os tombamentos maiores que 500
SELECT tombo_Exemplar from TblEmprestimo WHERE tombo_exemplar > 500
--Mostrar quantos funcionários estão cadastrados
SELECT COUNT(codigo_Funcionario) FROM TblEmprestimo
--Mostrar todos os empréstimos por ordem crescente 
SELECT codigo_emprestimo FROM TblEmprestimo ORDER BY codigo_emprestimo
--Mostrar código de funcionário por ordem crescente
SELECT codigo_Funcionario FROM TblEmprestimo ORDER BY codigo_funcionario
--Mostrar todas as datas previstas para devolução
SELECT DTPrevista_Devolução FROM TblEmprestimo

--•	TblDevolução
--Mostrar todos atributos da tabela devolucao
SELECT * FROM TblDevolução
--Mostrar todos os códigos de devolucao
SELECT codigo_Devolução FROM TblDevolução
--Mostrar usuário com matricula 500
SELECT matricula_usuario FROM TblDevolução WHERE matricula_Usuario = 500
--Mostrar todos os funcionários por ordem crescente do codigo
SELECT codigo_Funcionario FROM TblDevolução ORDER BY codigo_Funcionario
--Mostrar todas as datas de devolução
SELECT DTDevolução FROM TblDevolução
--Mostrar quantos livros estão com tombamento
SELECT COUNT(tombo_exemplar) FROM TblDevolução
--Mostrar todos os livos que tem devolução entre o dia 16 do 4 e o dia 27 do 8
SELECT * FROM TblDevolução WHERE DTDevolução > '2018/04/16' AND DTDevolução < '2018/08/27'
--Mostrar todos os funcionários que tenham código entra 120 e 170
SELECT codigo_Funcionario from TblDevolução WHERE codigo_Funcionario BETWEEN 120 AND 170
--Mostrar todos os livros por ondem crescente de seu tombo
SELECT tombo_exemplar FROM TblDevolução ORDER BY tombo_exemplar

--•	TblReserva
--Mostrar todos os atributos da tabela reserva
SELECT * from TblReserva
--Mostrar todas as matriculas dos usuários cadastrados
SELECT matricula_Usuario FROM TblReserva
--Mostrar os usuairo que foram cadastrados entre o dia 1 ao dia 15
SELECT * FROM TblReserva WHERE DTReserva > '2018/04/01' AND DTReserva < '2018/04/15'
--Mostrar todas as datas limites  de reserva
SELECT DTLimite_Reserva FROM TblReserva
--Mostrar os códigos de reserva por ordem crescente
SELECT codigo_Reserva FROM TblReserva ORDER BY codigo_Funcionario ASC
--Mostrar os códigos de reserva por ordem decrescente
SELECT codigo_Reserva FROM TblReserva ORDER BY codigo_Reserva DESC
--Mostrar quantos livros foram reservados no dia 25 do 4
SELECT COUNT(DTReserva) FROM TblReserva where DTReserva= '2019/04/25'
--Mostrar matricula do usuario de forma decrescente
SELECT matricula_Usuario FROM TblReserva ORDER BY  matricula_usuario

--•	TblRevista
--Mostrar todos atributos da tabela revista 
SELECT * FROM TblRevista
--Mostrar todos os edicao de revista
SELECT edição_Material FROM TblRevista
--Mostrar todos os cutter de forma crescente
SELECT Cutter_Material FROM TblRevista ORDER BY Cutter_Material
--Mostrar todos os títulos das revista que tem volume maior que 3
SELECT titulo_Material FROM TblRevista WHERE volume_Material > 3
--Mostrar a edicao das revistas em ordem decrescente
SELECT edição_Material FROM TblRevista ORDER BY edição_Material
--Mostrar data da publicação maior que 2000
SELECT DTPublicaçao_Revista FROM TblRevista WHERE DTPublicaçao_Revista < 2000
--Mostrar  CDU de todas as revistas
SELECT CDU_Material FROM TblRevista
--Mostrar edicao das revistas , das mais novas para as mais velhas 
SELECT edição_Material FROM TblRevista ORDER BY DTPublicaçao_Revista
--Mostrar todos os títulos que começam com a letra a
SELECT titulo_Material FROM TblRevista WHERE titulo_Material = 'a%'
--Mostrar todos os títulos que começam com a letra B e tem volume maior que 2
SELECT titulo_Material FROM TblRevista WHERE titulo_Material = 'b%' and volume_Material > 2

