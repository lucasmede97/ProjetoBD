use BD_Biblioteca
GO

insert into TblFuncionario (
nome_Funcionario,
cpf_Funcionario,
rg_Funcionario,
telefone_Funcionario,
email_Funcionario,
endereço_Funcionario,
cargo_Funcionario,
salario_Funcionario,
DtNasc_Funcionario,
senha_Funcionario,
sexo_Funcionario) values
('Lucas Medeiros','8275923768','6913521','819569873',
'lucasmede97@outlook.com','Mangabeira IV, João Pessoa',
'TI',1200.0,'23/09/1999','123456','M'),

('João Pereira','10234120431','7232343','8396267335',
'joãopereira@outlook.com','Cruz das Armas, João pessoa',
'Atendente',1100.0,'15/08/1993','654321','M'),

('Yasmin Matos','71507263056','7263592','8394834538',
'yasmimm@outlook.com','Miramar, João pessoa',
'Atendente',1500.0,'13/03/1999','012468','F'),

('Igor Santos','91746965236','7803625','8391872653',
'igormarques@outlook.com','Geisel, João pessoa',
'Atendente',1200.0,'10/11/1998','987654','M'),

('Rosangela Pereira','02785623632','1290262','8384829364',
'rosangelaps@outlook.com','Ilha do Bispo, João pessoa',
'Digitadora',1100.0,'01/06/1994','975310','F'),

('Anderson Matheus','90772350634','8327873','8390908530',
'andersonma@outlook.com','Cruz das Armas, João pessoa',
'Caixa',1400.0,'18/07/1996','963852','M'),

('Angelica Campos','92186401286','2785621','8126892764',
'angelicaca@outlook.com','Valentina, João pessoa',
'Bibliotecaria',1350.0,'03/04/1999','741852','F'),

('Maria Joana','72835692381','7232343','8396267335',
'maria@outlook.com','José Américo, João pessoa',
'Atendente',1200.0,'15/08/1993','654321','F'),

('Jessica Silva','48395039823','8397593','8337629687',
'jessicasilva@outlook.com','Manaira, João pessoa',
'Jovem Aprendiz',650.0,'03/01/1993','654321','F'),

('Elisangela Gomes','72305629386','7685545','8396267335',
'elisangelam@outlook.com','Bancarios, João pessoa',
'Jovem Aprendiz',650.0,'08/11/1993','789456','F'),

('Lucas Vinícios','76239876947','0823796','8429857263',
'lucas.lv@outlook.com','Industriais, João pessoa',
'Estagiario',500.0,'14/12/1997','456123','M'),

('Ruan Henrique','72356923723','7892363','8928345233',
'ruanhenrique@outlook.com','Água Fria, João pessoa',
'Auxiliar Administrativo',650.0,'08/11/1993','654321','M'),

('Elisangela Moreira','74305629386','7621545','8392237335',
'elisangelammm@outlook.com','Cidade Universitária, João pessoa',
'Jovem Aprendiz',620.0,'09/02/1993','654221','F')

--DBCC CHECKIDENT('TblFuncionario', RESEED, 0)

insert into TblCurso(nome_Curso,QTPeriodos_Curso,coordenador_Curso) values
('Administração',8,'Marcela'),

('Arquitetura',8,'Fernando'),

('Contábeis',8,'Flávia'),

('Design',8,'João'),

('Direito',8,'Carlos'),

('Educação Física',10,'Lucas'),

('Enfermagem',10,'Celma'),

('Engenharia Civil',8,'Maria'),

('Estética',8,'Carla'),

('Fisioterapia',10,'Ana'),

('Gestão Comvercial',5,'Paulo'),

('Gestão de RH',5,'Yasmin'),

('Nutrição',10,'Glória'),

('Odontologia',10,'Erica'),

('Psicologia',10,'Julia'),

('Sistemas de Informação',8,'Marcelo'),

('Sistemas Para Internet',5,'Marcelo')

--DBCC CHECKIDENT('TblCurso', RESEED, 0)

insert into TblUsuario(matricula_Usuario,rg_Usuario,nome_Usuario,curso_Usuario,tipo_Usuario,email_Usuario,
senha_Usuario,sexo_Usuario,periodo,DT_Nasc_Usuario,DT_Validade_Usuario,endereço_Usuario) values 

('20171022029','9755601','Lucas Medeiros',17,
'Aluno','lucasmede97@outlook.com','123456','M',5,'27/09/1999','30/12/2017',
'Mangabeira IV, João Pessoa'),

('20181022030','5387453','Julia Maria',7,
'Aluno','jlmaria@gmail.com','654321','F',7,'02/01/1997','30/06/2017',
'Centro, Mamanguape'),

('20162022031','9231494','Luciano Oliveira',14,
'Aluno','luciano@outlook.com','789456','M',8,'12/07/1997','30/12/2017',
'Manaíra, João Pessoa'),

('20191022032','3237864','Dayane Santos',7,
'Aluno','dayanes@gmail.com','183342','F',2,'25/03/1997','30/06/2018',
'Água Fria, João Pessoa'),

('20182022033','5443524','Elisangela Vieira',12,
'Aluno',null,'270999','F',3,'13/05/1992','30/12/2019',
'Ilha do Bispo, João Pessoa'),

('20191022034','7345239','Helena de Souza',12,
'Aluno','helenas@gmail.com','112233','F',3,'13/05/1992','30/06/2018',
'José Américo, João Pessoa'),

('20191021003','4657485','Heloiza Gomes',10,
'Aluno','null','270999','F',2,'31/01/1992','31/12/2018',
'Valentina, João Pessoa'),

('20151027015','2548795','Rizete Medeiros',14,
'Aluno','rizetem@outlook.com','987657','F',6,'21/09/1994','30/12/2019',
'José Américo, João Pessoa'),

('20172140058','1549854','Deivison Damião',17,
'Aluno','dd@gmail.com','741852','M',5,'04/08/1999','30/06/2018',
'Água Fria, João Pessoa'),

('20181025487','6541648','Helio Júnior',16,
'Aluno','heliokid@gmail.com','641968','M',6,'13/12/1999','30/12/2018',
'Água Fria, João Pessoa'),

('20142085906','9654824','Hiago Melo',13,
'Aluno','hiagohmelo@gmail.com','369258','M',2,'09/02/1999','30/12/2015',
'Água Fria, João Pessoa'),

('20151054017','2134168','Maria Eduarda',8,
'Aluno','null','014025','M',7,'07/04/1995','30/06/2019',
'Jardim Oceania, João Pessoa'),

('20142085905','1674621','João Marques',13,
'Aluno','null','410520','M',5,'17/04/1998','30/12/2017',
'Altiplano, João Pessoa'),

('20142085907','8734187','Pedro Henrique',8,
'Aluno','pedroh@gmail.com','654987','M',4,'21/12/2000','30/12/2019',
'Bancários, João Pessoa')

insert into TblEditora(nome_Editora,email_Editora,pais_Editora,endereco_Editora) values
('Patmos','patmos@gmail.com','Brasil','R. Paulo Peixoto de Vasconcelos, Nº95, João Pessoa'),

('Moderna','moderna@gmail.com','Brasil','Av. Tabajaras, Nº1096, João Pessoa'),

('UFPB','ufpb@gmail.com','Brasil','R. João Freite, Nº616, João Pessoa'),

('IESP','editora@iesp.edu.br','Brasil','Nova Morada, Cabedelo'),

('JC','jv@gmail.com','Brasil','Av. Tabajaras, Nº 960, João Pessoa'),

('MVC','mvc@gmail.com','Brasil','Av. Esperança, Nº 535, João Pessoa'),

('Idéia Livraria','ideia@gmail.com','Brasil','Avenida Praça Dom Adauto, Nº169, João Pessoa'),

('FTD','ftd@gmail.com','Brasil','Av. Barão de Mamanguape, João Pessoa'),

('Editora Brasil','br@fmail.com','Brasil','Primeiro de Maio, Nº962, João Pessoa'),

('CJW','cjw@gmail.com','Brasil','Av. Sergipe, Nº138, João Pessoa'),

('Grafset','graf@gmail.com','Brasil','R. Hortencio Ribeiro Lima, Nº200, João Pessoa'),

('Construir','cosntruir@gmail.com','Brasil','Av. Primeiro de Maio'),

('Bookline','bookline@gmail.com','Brasil','Av Barão Mamanguape')

insert into TblFornecedor(nome_Fornecedor,cnpj_Fornecedor,email_Fornecedor,cep_Fornecedor,
celular_Fornecedor,endereço_Fornecedor) values

('Livraria Cultura S.A.','1921647900','secemifek@quick-mail.club',
'55870000','96358264','Manaíra, João Pessoa'),

('Livraria Guanabara','9234045700','guanabara@gmail.com',
'5594000','94658792','Rui Carneiro, João Pessoa'),

('Livraria Internacional do Nordesde LTDA','9234045758','linorderte@gmail.com',
'55820000','98450215','Mangabeira, João Pessoa'),

('Shopping Editorial LTDA','1034845756',null,
'54840000','96484621','José Américo, João Pessoa'),

('Sintomática Livraria','5034835752','sistomatica@gmail.com',
'52952000','84621654','Cabo Branco, João Pessoa'),

('Saraiva','4316879868','saraiva@outlook.com',
'48580000','98547265','Manaíra, João Pessoa'),

('ABACO','7577608000','abaco@gmail.com',
'58000000','30723034','Porto Alegre'),

('Atlas','1234567894',null,'58000480','68459872','Recife'),

('De Olho No Livro Distribuidora','6549452165',null,
'52000320','99781390','Recife'),

('Leitura','3571596548','leitura@gmail.com',
'551000000','97016875','Manaíra, João Pessoa'),

('SESC/SENAC','9315651631',null,'58150920','97024838','São Paulo'),

('Casa da Comunicação','6549871235','comunica@gmail.com','54630150','98086849','Recife'),

('Difusão LTDA','8465321548',null,'48650000','94683197','Natal')

insert into TblMaterial(codigo_Editora,autorPri_Material,titulo_Material,edição_Material,volume_Material,
ano_Material,CDU_Material,Cutter_Material,DT_Cad_Material) values

(2,'Schildt, Herbert','A arte do java','3º',null,'2003','004.43','S334a','15/12/2014'),

(3,'Cadenhead, Rogers','Aprenda em 21 dias java 2','4º','1','2007','004.43','C122a','09/01/2009'),

(1,'Lobo, Edson Junio Rodrigues','Desenvolvimento para internet com java','2º',null,'2001','004.43','L799d','12/11/2013'),

(11,'Richard Allen','Desenvolvimento web java','8º',null,'2006','004.43','D451','20/11/2013'),

(8,'Mueller, John Paul','Começando a programar em python para leigos','1º',null,'2016','004.438','M946c','20/04/2018'),

(10,'Allen B. Downey','Pense em python: pense como um cientista da computação','1º',null,'2016','004.438','D744p','28/03/2018'),

(7,'Mark Summerfield','Programação em python 3: uma introdução completa à linguagem python','1º',null,'2001','004.438','S955p','28/03/2012'),

(1,'David Beazley','Python cookbook','1º',null,'2004','004.438','B365p','19/04/2008'),

(12,'Paul Barry','Use a cabeça python','2º',null,'2009','004.438','B279u','28/03/2017'),

(4,'Sommerville, Ian','Engenharia de software','3º',null,'2015','004.41 ','S697e','01/06/2017'),

(9,'informação	Rezende, Denis Alcides','Engenharia de software e sistemas de informação','1º',null,'2005','	004.41 ','R467e','28/04/2017')

insert into TblPedidoMaterial(codigo_Fornecedor,codigo_Material,Num_NotaFiscal_Pedido,valorUnitario_Pedido,quantExemplares_Pedido,
desconto_Pedido,DT_Emissão_NotaFiscal_Pedido) values

(1,1,58075,35.90,3,0,'05/04/2019'),

(2,2,00058,45.10,4,5,'10/02/2017'),

(1,3,00098,55.00,10,0,'05/04/2019'),

(3,4,58087,135.90,10,10,'05/04/2019'),

(2,5,64987,125.50,15,0,'05/04/2019'),

(4,6,00015,145.10,8,0,'05/04/2019'),

(5,7,54025,237.25,4,0,'05/04/2019'),

(6,8,03548,450.05,6,20,'05/04/2019'),

(5,9,000059,310.90,5,0,'05/04/2019'),

(7,10,34879,170.35,8,0,'05/04/2019'),

(8,11,00000089,90.70,9,0,'05/04/2019')

insert into TblExemplar(tombo_Exemplar,RG_Material,codigo_Pedido,codigo_Fornecedor,situação_Exemplar,Num_NotaFiscal_Pedido,Observaçao_Exemplar) values
('L0000001',1,1,1,'N',58075,null),

('L0000002',1,1,1,'D',58075,null),

('L0000003',1,1,1,'D',58075,null),

('L0000004',2,2,2,'N',00058,null),

('L0000005',2,2,2,'D',00058,null),

('L0000006',2,2,2,'D',00058,null),

('L0000007',2,2,2,'D',00058,null),

('L0000008',2,2,2,'D',00058,null),

('L0000009',3,3,1,'N',00098,null),

('L0000010',3,3,1,'D',00098,null),

('L0000011',3,3,1,'D',00098,null),

('L0000012',3,3,1,'D',00098,null),

('L0000013',3,3,1,'D',00098,null),

('L0000014',3,3,1,'D',00098,null),

('L0000015',3,3,1,'D',00098,null),

('L0000016',3,3,1,'D',00098,null),

('L0000017',3,3,1,'D',00098,null),

('L0000018',3,3,1,'D',00098,null),

('L0000019',3,3,1,'D',00098,null)

insert into TblEmprestimo(matricula_Usuario,codigo_Funcionario,tombo_Exemplar,DTEmprestimo,DTPrevista_Devolução) values
('20171022029',1,'L0000001','05/04/2019','15/04/2019'),

('20171022029',1,'L0000004','05/04/2019','15/04/2019'),
                  
('20171022029',1,'L0000012','05/04/2019','15/04/2019'),

('20191022034',3,'L0000003','05/04/2019','15/04/2019'),

('20191022034',3,'L0000002','06/04/2019','16/04/2019'),

('20151027015',4,'L0000017','07/04/2019','17/04/2019'),

('20151027015',4,'L0000016','07/04/2019','17/04/2019'),

('20151027015',4,'L0000008','07/04/2019','17/04/2019'),

('20151054017',5,'L0000011','08/04/2019','18/04/2019'),

('20151054017',5,'L0000013','08/04/2019','18/04/2019'),

('20151054017',5,'L0000005','08/04/2019','18/04/2019')
 
insert into TblDevolução(matricula_Usuario,codigo_Funcionario,tombo_Exemplar,DTDevolução) values
('20171022029',2,'L0000001','15/04/2019'),

('20171022029',2,'L0000004','15/04/2019'),
                  
('20171022029',2,'L0000012','15/04/2019'),

('20191022034',4,'L0000003','15/04/2019'),

('20191022034',4,'L0000002','16/04/2019'),

('20151027015',7,'L0000017','17/04/2019'),

('20151027015',7,'L0000016','17/04/2019'),

('20151027015',7,'L0000008','17/04/2019'),

('20151054017',9,'L0000011','18/04/2019'),

('20151054017',9,'L0000013','18/04/2019'),

('20151054017',9,'L0000005','18/04/2019')

insert into TblReserva(matricula_Usuario,codigo_Funcionario,tombo_Exemplar,DTReserva,DTLimite_Reserva) values

('20181025487',5,'L0000012','05/07/2017','07/07/2017'),

('20181025487',5,'L0000015','05/07/2017','07/07/2017'),

('20181025487',5,'L0000001','05/07/2017','07/07/2017'),

('20142085905',9,'L0000002','06/07/2017','08/07/2017'),

('20142085905',9,'L0000005','06/07/2017','08/07/2017'),

('20142085905',9,'L0000017','06/07/2017','08/07/2017'),

('20172140058',11,'L0000016','07/07/2017','09/07/2017'),

('20172140058',11,'L0000004','07/07/2017','09/07/2017'),

('20172140058',11,'L0000006','07/07/2017','09/07/2017'),

('20191021003',10,'L0000010','08/07/2017','10/07/2017'),

('20191021003',10,'L0000011','08/07/2017','10/07/2017'),

('20191021003',10,'L0000007','08/07/2017','10/07/2017')
	
insert into TblRevista(titulo_Material,edição_Material,volume_Material,DTPublicaçao_Revista,CDU_Material,Cutter_Material) values 
('Revista Veja 49','4º','49','maio de 2013','77(05)','R449'),

('Revista Veja 50','4º','50','junho de 2013','77(05)','R449'),

('Revista Veja 51','4º','51','julho de 2013','77(05)','R449'),

('Revista Veja 52','4º','52','agusto de 2013','77(05)','R449'),

('Revista Veja 53','4º','53','setembro de 2013','77(05)','R449'),

('Revista Veja 54','4º','54','outubro de 2013','77(05)','R449'),

('Revista Veja 55','4º','55','novembro de 2013','77(05)','R449'),

('Revista Veja 56','4º','56','dezembro de 2013','77(05)','R449'),

('Revista Veja 57','5º','57','janeiro de 2013','77(05)','R449'),

('Revista Veja 58','5º','58','fevereiro de 2013','77(05)','R449'),

('Revista Veja 59','5º','59','março de 2013','77(05)','R449')

insert into TblControla_Editora values
(1,1,'17/10/2004'),
(1,2,'18/09/2004'),
(1,3,'19/10/2004'),
(1,4,'16/10/2004'),
(1,5,'01/11/2004'),
(1,6,'17/11/2004'),
(1,7,'17/12/2004'),
(1,8,'18/10/2004'),
(1,9,'19/07/2004'),
(1,10,'20/10/2004')

insert into TblControla_Fornecedor values
(1,1,'17/10/2005'),
(1,2,'18/09/2004'),
(1,3,'19/04/2006'),
(1,4,'16/01/2007'),
(1,5,'01/05/2004'),
(1,6,'17/06/2005'),
(1,7,'17/12/2006'),
(1,8,'18/03/2007'),
(1,9,'19/02/2005'),
(1,10,'20/10/2006')

insert into TblControla_Material values
(1,1,'17/10/2005'),
(1,2,'18/09/2004'),
(1,3,'19/04/2006'),
(1,4,'16/01/2007'),
(1,5,'01/05/2004'),
(1,6,'17/06/2005'),
(1,7,'17/12/2006'),
(1,8,'18/03/2007'),
(1,9,'19/02/2005'),
(1,10,'20/10/2006')

insert into TblControla_Usuario values
(1,20182022033,'17/10/2004'),
(1,20191022034,'18/09/2004'),
(1,20191021003,'19/10/2004'),
(1,20151027015,'16/10/2004'),
(1,20172140058,'01/11/2004'),
(1,20181025487,'17/11/2004'),
(1,20142085906,'17/12/2004'),
(1,20151054017,'18/10/2004'),
(1,20142085905,'19/07/2004'),
(1,20142085907,'20/10/2004')

insert into TblControla_Pedido_Material values
(1,1,'17/10/2005'),
(1,2,'18/09/2004'),
(1,3,'19/04/2006'),
(1,4,'16/01/2007'),
(1,5,'01/05/2004'),
(1,6,'17/06/2005'),
(1,7,'17/12/2006'),
(1,8,'18/03/2007'),
(1,9,'19/02/2005'),
(1,10,'20/10/2006')

insert into TblControla_Fucnionario values
(1,1,'17/10/2004'),
(1,2,'18/09/2004'),
(1,3,'19/10/2004'),
(1,4,'16/10/2004'),
(1,5,'01/11/2004'),
(1,6,'17/11/2004'),
(1,7,'17/12/2004'),
(1,8,'18/10/2004'),
(1,9,'19/07/2004'),
(1,10,'20/10/2004')

insert into TblControla_Curso values
(1,1,'17/10/2005'),
(1,2,'18/09/2004'),
(1,3,'19/04/2006'),
(1,4,'16/01/2007'),
(1,5,'01/05/2004'),
(1,6,'17/06/2005'),
(1,7,'17/12/2006'),
(1,8,'18/03/2007'),
(1,9,'19/02/2005'),
(1,10,'20/10/2006')