--use BD_Biblioteca
--GO

--insert into TblFuncionario (
--nome_Funcionario,
--cpf_Funcionario,
--rg_Funcionario,
--telefone_Funcionario,
--email_Funcionario,
--endere�o_Funcionario,
--cargo_Funcionario,
--salario_Funcionario,
--DtNasc_Funcionario,
--senha_Funcionario,
--sexo_Funcionario) 

----Funcionario1
--values('Lucas Medeiros','82765923768',
--'6913521','819569873',
--'lucasmede97@outlook.com',
--'Mangabeira IV, Jo�o Pessoa',
--'TI',1200.0,'23/09/1999',
--'123456','M'),

----Funcionario2
--('Jo�o Pereira','10234120431',
--'7232343','8396267335',
--'jo�opereira@outlook.com',
--'Cruz das Armas, Jo�o pessoa',
--'Atendente',1100.0,'15/08/1993',
--'654321','M'),

----Funcionario3
--('Yasmin Matos','71507263056',
--'7263592','8394834538',
--'yasmimm@outlook.com',
--'Miramar, Jo�o pessoa',
--'Atendente',1500.0,'13/03/1999',
--'012468','F'),

----Funcionario4
--('Igor Santos','91746965236',
--'7803625','8391872653',
--'igormarques@outlook.com',
--'Geisel, Jo�o pessoa',
--'Atendente',1200.0,'10/11/1998',
--'987654','M'),

----Funcionario5
--('Rosangela Pereira','02785623632',
--'1290262','8384829364',
--'rosangelaps@outlook.com',
--'Ilha do Bispo, Jo�o pessoa',
--'Digitadora',1100.0,'01/06/1994',
--'975310','F'),

----Funcionario6
--('Anderson Matheus','90772350634',
--'8327873','8390908530',
--'andersonma@outlook.com',
--'Cruz das Armas, Jo�o pessoa',
--'Caixa',1400.0,'18/07/1996',
--'963852','M'),

----Funcionario7
--('Angelica Campos','92186401286',
--'2785621','8126892764',
--'angelicaca@outlook.com',
--'Valentina, Jo�o pessoa',
--'Bibliotecaria',1350.0,'03/04/1999',
--'741852','F'),

----Funcionario8
--('Maria Joana','72835692381',
--'7232343','8396267335',
--'maria@outlook.com',
--'Jos� Am�rico, Jo�o pessoa',
--'Atendente',1200.0,'15/08/1993',
--'654321','F'),

----Funcionario9
--('Jessica Silva','48395039823',
--'8397593','8337629687',
--'jessicasilva@outlook.com',
--'Manaira, Jo�o pessoa',
--'Jovem Aprendiz',650.0,'03/01/1993',
--'654321','F'),

----Funcionario10
--('Elisangela Gomes','72305629386',
--'7685545','8396267335',
--'elisangelam@outlook.com',
--'Bancarios, Jo�o pessoa',
--'Jovem Aprendiz',650.0,'08/11/1993',
--'789456','F'),

----Funcionario11
--('Lucas Vin�cios','76239876947',
--'0823796','8429857263',
--'lucas.lv@outlook.com',
--'Industriais, Jo�o pessoa',
--'Estagiario',500.0,'14/12/1997',
--'456123','M'),

----Funcionario12
--('Ruan Henrique','72356923723',
--'7892363','8928345233',
--'ruanhenrique@outlook.com',
--'�gua Fria, Jo�o pessoa',
--'Auxiliar Administrativo',650.0,'08/11/1993',
--'654321','M'),

----Funcionario13
--('Elisangela Moreira','74305629386',
--'7621545','8392237335',
--'elisangelammm@outlook.com',
--'Cidade Universit�ria, Jo�o pessoa',
--'Jovem Aprendiz',620.0,'09/02/1993',
--'654221','F')

----Funcionalidades
----select * from TblFuncionario
----DBCC CHECKIDENT('TblFuncionario', RESEED, 0)
----delete from TblFuncionario where codigo_Funcionario>39
--go

--insert into TblCurso(nome_Curso,QTPeriodos_Curso,coordenador_Curso) values

----Curso1
--('Administra��o',8,'Marcela'),

----Curso2
--('Arquitetura',8,'Fernando'),

----Curso3
--('Cont�beis',8,'Fl�via'),

----Curso4
--('Design',8,'Jo�o'),

----Curso5
--('Direito',8,'Carlos'),

----Curso6
--('Educa��o F�sica',10,'Lucas'),

----Curso7
--('Enfermagem',10,'Celma'),

----Curso8
--('Engenharia Civil',8,'Maria'),

----Curso9
--('Est�tica',8,'Carla'),

----Curso10
--('Fisioterapia',10,'Ana'),

----Curso11
--('Gest�o Comvercial',5,'Paulo'),

----Curso12
--('Gest�o de RH',5,'Yasmin'),

----Curso13
--('Nutri��o',10,'Gl�ria'),

----Curso14
--('Odontologia',10,'Erica'),

----Curso15
--('Psicologia',10,'Julia'),

----Curso16
--('Sistemas de Informa��o',8,'Marcelo'),

----Curso17
--('Sistemas Para Internet',5,'Marcelo')

----Funcionalidades
----select * from TblCurso
----DBCC CHECKIDENT('TblCurso', RESEED, 0)
----delete from TblCurso where nome_Curso='Administra��o'
--go

--insert into TblUsuario(matricula_Usuario,rg_Usuario,nome_Usuario,curso_Usuario,tipo_Usuario,email_Usuario,
--senha_Usuario,sexo_Usuario,periodo,DT_Nasc_Usuario,DT_Validade_Usuario,endere�o_Usuario) values 

----Usuario
--('20171022029','9755601','Lucas Medeiros',17,
--'Aluno','lucasmede97@outlook.com','123456','M',5,'27/09/1999','30/12/2017',
--'Mangabeira IV, Jo�o Pessoa'),

----Usuario2
--('20181022030','5387453','Julia Maria',7,
--'Aluno','jlmaria@gmail.com','654321','F',7,'02/01/1997','30/06/2017',
--'Centro, Mamanguape'),

----Usuario3
--('20162022031','9231494','Luciano Oliveira',14,
--'Aluno','luciano@outlook.com','789456','M',8,'12/07/1997','30/12/2017',
--'Mana�ra, Jo�o Pessoa'),

----Usuario4
--('20191022032','3237864','Dayane Santos',7,
--'Aluno','dayanes@gmail.com','183342','F',2,'25/03/1997','30/06/2018',
--'�gua Fria, Jo�o Pessoa'),

----Usuario5
--('20182022033','5443524','Elisangela Vieira',12,
--'Aluno',null,'270999','F',3,'13/05/1992','30/12/2019',
--'Ilha do Bispo, Jo�o Pessoa'),

----Usuario6
--('20191022034','7345239','Helena de Souza',12,
--'Aluno','helenas@gmail.com','112233','F',3,'13/05/1992','30/06/2018',
--'Jos� Am�rico, Jo�o Pessoa'),

----Usuario7
--('20191021003','4657485','Heloiza Gomes',10,
--'Aluno','null','270999','F',2,'31/01/1992','31/12/2018',
--'Valentina, Jo�o Pessoa'),

----Usuario8
--('20151027015','2548795','Rizete Medeiros',14,
--'Aluno','rizetem@outlook.com','987657','F',6,'21/09/1994','30/12/2019',
--'Jos� Am�rico, Jo�o Pessoa'),

----Usuario9
--('20172140058','1549854','Deivison Dami�o',17,
--'Aluno','dd@gmail.com','741852','M',5,'04/08/1999','30/06/2018',
--'�gua Fria, Jo�o Pessoa'),

----Usuario10
--('20181025487','6541648','Helio J�nior',16,
--'Aluno','heliokid@gmail.com','641968','M',6,'13/12/1999','30/12/2018',
--'�gua Fria, Jo�o Pessoa'),

----Usuario11
--('20142085906','9654824','Hiago Melo',13,
--'Aluno','hiagohmelo@gmail.com','369258','M',2,'09/02/1999','30/12/2015',
--'�gua Fria, Jo�o Pessoa'),

----Usuario12
--('20151054017','2134168','Maria Eduarda',8,
--'Aluno','null','014025','M',7,'07/04/1995','30/06/2019',
--'Jardim Oceania, Jo�o Pessoa'),

----Usuario13
--('20142085905','1674621','Jo�o Marques',13,
--'Aluno','null','410520','M',5,'17/04/1998','30/12/2017',
--'Altiplano, Jo�o Pessoa'),

----Usuario14
--('20142085907','8734187','Pedro Henrique',8,
--'Aluno','pedroh@gmail.com','654987','M',4,'21/12/2000','30/12/2019',
--'Banc�rios, Jo�o Pessoa')

----Funcionalidades
----select * from TblUsuario
----delete from TblUsuario where matricula_Usuario='20171022029'
----select TblUsuario.nome_Usuario,TblCurso.codigo_Curso from TblUsuario 
----inner join TblCurso on TblUsuario.curso_Usuario=TblCurso.codigo_Curso

--insert into TblEditora(nome_Editora,email_Editora,pais_Editora,endereco_Editora) values

----Editora1
--('Patmos','patmos@gmail.com','Brasil','R. Paulo Peixoto de Vasconcelos, N�95, Jo�o Pessoa'),

----Editora2
--('Moderna','moderna@gmail.com','Brasil','Av. Tabajaras, N�1096, Jo�o Pessoa'),

----Editora3
--('UFPB','ufpb@gmail.com','Brasil','R. Jo�o Freite, N�616, Jo�o Pessoa'),

----Editora4
--('IESP','editora@iesp.edu.br','Brasil','Nova Morada, Cabedelo'),

----Editora5
--('JC','jv@gmail.com','Brasil','Av. Tabajaras, N� 960, Jo�o Pessoa'),

----Editora6
--('MVC','mvc@gmail.com','Brasil','Av. Esperan�a, N� 535, Jo�o Pessoa'),

----Editora7
--('Id�ia Livraria','ideia@gmail.com','Brasil','Avenida Pra�a Dom Adauto, N�169, Jo�o Pessoa'),

----Editora8
--('FTD','ftd@gmail.com','Brasil','Av. Bar�o de Mamanguape, Jo�o Pessoa'),

----Editora9
--('Editora Brasil','br@fmail.com','Brasil','Primeiro de Maio, N�962, Jo�o Pessoa'),

----Editora10
--('CJW','cjw@gmail.com','Brasil','Av. Sergipe, N�138, Jo�o Pessoa'),

----Editora11
--('Grafset','graf@gmail.com','Brasil','R. Hortencio Ribeiro Lima, N�200, Jo�o Pessoa'),

----Editora12
--('Construir','cosntruir@gmail.com','Brasil','Av. Primeiro de Maio'),

----Editora13
--('Bookline','bookline@gmail.com','Brasil','Av Bar�o Mamanguape')

--insert into TblFornecedor(nome_Fornecedor,cnpj_Fornecedor,email_Fornecedor,cep_Fornecedor,
--celular_Fornecedor,endere�o_Fornecedor) values
----Fornecedor1
--('Livraria Cultura S.A.','1921647900','secemifek@quick-mail.club',
--'55870000','96358264','Mana�ra, Jo�o Pessoa'),

----Fornecedor2
--('Livraria Guanabara','9234045700','guanabara@gmail.com',
--'5594000','94658792','Rui Carneiro, Jo�o Pessoa'),

----Fornecedor3
--('Livraria Internacional do Nordesde LTDA','9234045758','linorderte@gmail.com',
--'55820000','98450215','Mangabeira, Jo�o Pessoa'),

----Fornecedor4
--('Shopping Editorial LTDA','1034845756',null,
--'54840000','96484621','Jos� Am�rico, Jo�o Pessoa'),

----Fornecedor5
--('Sintom�tica Livraria','5034835752','sistomatica@gmail.com',
--'52952000','84621654','Cabo Branco, Jo�o Pessoa'),

----Fornecedor6
--('Saraiva','4316879868','saraiva@outlook.com',
--'48580000','98547265','Mana�ra, Jo�o Pessoa'),

----Fornecedor7
--('ABACO','7577608000','abaco@gmail.com',
--'58000000','30723034','Porto Alegre'),

----Fornecedor8
--('Atlas','1234567894',null,'58000480','68459872','Recife'),

----Fornecedor9
--('De Olho No Livro Distribuidora','6549452165',null,
--'52000320','99781390','Recife'),

----Fornecedor10
--('Leitura','3571596548','leitura@gmail.com',
--'551000000','97016875','Mana�ra, Jo�o Pessoa'),

----Fornecedo11
--('SESC/SENAC','9315651631',null,'58150920','97024838','S�o Paulo'),

----Fornecedor12
--('Casa da Comunica��o','6549871235','comunica@gmail.com','54630150','98086849','Recife'),

----Fornecedor13
--('Difus�o LTDA','8465321548',null,'48650000','94683197','Natal')

----select * from TblFornecedor

insert into TblMaterial(codigo_Editora,autorPri_Material,titulo_Material,edi��o_Material,volume_Material,
ano_Material,CDU_Material,Cutter_Material,DT_Cad_Material) values

----Material1
--(2,'Schildt, Herbert','A arte do java','3�',null,'2003','004.43','S334a','15/12/2014')

--Mateirial2
(3,'Cadenhead, Rogers','Aprenda em 21 dias java 2','4�','1','2007','004.43','C122a','09/01/2009'),

--Mateirial3
(1,'Lobo, Edson Junio Rodrigues','Desenvolvimento para internet com java','2�',null,'2001','004.43','L799d','12/11/2013'),

--Mateirial4
(11,'Richard Allen','Desenvolvimento web java','8�',null,'2006','004.43','D451','20/11/2013'),

--Mateirial5
(8,'Mueller, John Paul','Come�ando a programar em python para leigos','1�',null,'2016','004.438','M946c','20/04/2018'),

--Mateirial6
(10,'Allen B. Downey','Pense em python: pense como um cientista da computa��o','1�',null,'2016','004.438','D744p','28/03/2018'),

--Mateirial7
(7,'Mark Summerfield','Programa��o em python 3: uma introdu��o completa � linguagem python','1�',null,2013,'004.438','S955p','28/03/2018'),

--Mateirial8
(1,'David Beazley','Python cookbook','1�',null,'2013','004.438','B365p','19/04/2018'),

--Mateirial9
(12,'Paul Barry','Use a cabe�a python','2�',null,'2013','004.438','B279u','28/03/2018'),

--Mateirial10
(2,'','','','','','','',''),

--Mateirial11
(2,'','','','','','','',''),

--Mateirial12
(2,'','','','','','','',''),

--Mateirial13
(2,'','','','','','','',''),

--Mateirial12
(2,'','','','','','','',''),
