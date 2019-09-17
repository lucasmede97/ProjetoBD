use master
GO

create database BD_Biblioteca
ON(name=BDBiblio_Date,
filename='C:\BDII\BDBiblioDate1.mdf',
size=50,
maxsize=1000,
filegrowth= 2)	
LOG ON
(name= BDBiblio_Log,
filename='C:\BDII\BDBiblioLog1.ldf',
size=500,
maxsize=5000,
filegrowth= 2)
GO

use BD_Biblioteca
GO

create table TblFuncionario(
codigo_Funcionario int constraint PK_TblFuncionario primary key not null IDENTITY(1,1),
nome_Funcionario varchar(95) constraint UN1_TblFuncionario unique not null,
cpf_Funcionario char(11) constraint UN2_TblFuncionario unique not null,
rg_Funcionario varchar(8) not null,
telefone_Funcionario char(10),
email_Funcionario varchar(45) not null,
endereço_Funcionario varchar(300) not null,
cargo_Funcionario varchar(45) not null,
salario_Funcionario smallmoney not null,
DtNasc_Funcionario datetime not null,
senha_Funcionario varchar(8) not null,
sexo_Funcionario char(1) not null constraint CK_TblFuncionario check(sexo_Funcionario like'[FM]'))

create table TblEditora(
codigo_Editora int constraint PK_TblEditora primary key not null IDENTITY(1,1),
nome_Editora varchar(50) constraint UN_TblEditora unique not null,
email_Editora varchar(45) not null,
pais_Editora varchar(20) not null,
endereco_Editora varchar(300) not null)

create table TblFornecedor(
codigo_Fornecedor int constraint PK_TblFornecedor primary key not null IDENTITY(1,1),
nome_Fornecedor varchar(50) constraint UN1_TblFornecedor unique not null,
cnpj_Fornecedor varchar(10),
email_Fornecedor varchar(45),
cep_Fornecedor varchar(10),
celular_Fornecedor varchar(11),
endereço_Fornecedor varchar(300) not null)

create table TblCurso(
codigo_Curso int constraint PK_TblCurso primary key not null IDENTITY(1,1),
nome_Curso varchar(50) constraint UN_TblCurso unique not null,
QTPeriodos_Curso tinyint not null,
coordenador_Curso varchar(95) not null)

create table TblUsuario(
matricula_Usuario varchar(15) constraint PK_TblUsuario primary key not null,
rg_Usuario varchar(12) constraint UN1_TblUsuario unique not null,
nome_Usuario varchar(95) not null,
curso_Usuario int constraint FK_TblUsuario_TblCurso foreign key references TblCurso(codigo_Curso),
tipo_Usuario varchar(20) not null,
email_Usuario varchar(45),
senha_Usuario varchar(8) not null,
sexo_Usuario char(1) constraint CK_TblUsuario check(sexo_Usuario like'[FM]'),
periodo tinyint not null,
DT_Nasc_Usuario datetime not null,
DT_Validade_Usuario datetime not null,
endereço_Usuario varchar(300) )

create table TblMaterial(
RG_Material int constraint PK_TblMaterial  primary key not null IDENTITY(1,1),
codigo_Editora int constraint FK_TblMaterial_TblEditora  foreign key references TblEditora (codigo_Editora) not null,
autorPri_Material varchar(95) not null,
titulo_Material varchar(200), 
edição_Material varchar(8), 
volume_Material varchar(8), 
ano_Material varchar(5),
CDU_Material varchar(40),
Cutter_Material varchar(15),
DT_Cad_Material datetime not null)

create table TblPedidoMaterial(
codigo_Pedido int constraint PK_TblPedidoMaterial primary key IDENTITY(1,1) not null,
codigo_Fornecedor int constraint FK1_TblPedidoMaterial_TblFornecedor foreign key references TblFornecedor(codigo_Fornecedor) not null,
codigo_Material int constraint FK2_TblPedidoMaterial_TblMaterial foreign key references TblMaterial(RG_Material) not null,
Num_NotaFiscal_Pedido int constraint UN1_TblPedidoMaterial unique not null ,
valorUnitario_Pedido smallmoney not null,
quantExemplares_Pedido int not null,
desconto_Pedido smallmoney,
DT_Emissão_NotaFiscal_Pedido datetime not null)

create table TblExemplar(
tombo_Exemplar varchar(10) constraint PK_TblExemplar primary key not null,
RG_Material int constraint FK1_TblExemplar_TblMaterial foreign key references TblMaterial(RG_Material) not null,
codigo_Pedido int constraint FK2_TblExemplar_TblPedidoMaterial foreign key references TblPedidoMaterial(codigo_Pedido) not null,
codigo_Fornecedor int constraint FK3_TblExemplar_TblFornecedor foreign key references TblFornecedor(codigo_Fornecedor) not null,
situação_Exemplar char(1) not null constraint CK_TblExemplar check(situação_Exemplar like'[DFERN]'),--Disponível,Furtado,Emprestado,Restauração, Não Emprestar
Num_NotaFiscal_Pedido int constraint FK4_TblExemplar_TblPedidoMaterial foreign key references TblPedidoMaterial(Num_NotaFiscal_Pedido) not null,
Observaçao_Exemplar varchar(100))

 create table TblEmprestimo(
 codigo_Emprestimo int constraint PK_TblEmprestimo primary key IDENTITY(1,1) not null,
 matricula_Usuario varchar(15) constraint FK1_TblEmprestimo_TblUsuario references TblUsuario(matricula_Usuario) not null,
 codigo_Funcionario int constraint FK2_TblEmprestimo_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 tombo_Exemplar varchar(10) constraint FK3_TblEmprestimo_TblExemplar foreign key references TblExemplar(tombo_Exemplar) not null,
 DTPrevista_Devolução datetime not null,
 DTEmprestimo datetime not null)

 create table TblDevolução(
 codigo_Devolução int constraint PK_TblDevolução primary key IDENTITY(1,1) not null,
 matricula_Usuario varchar(15) constraint FK1_TblDevolução_TblUsuario references TblUsuario(matricula_Usuario) not null,
 codigo_Funcionario int constraint FK2_TblDevolução_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 tombo_Exemplar varchar(10) constraint FK3_TblDevolução_TblExemplar foreign key references TblExemplar(tombo_Exemplar) not null,
 DTDevolução datetime not null)

 create table TblReserva(
 codigo_Reserva int constraint PK_TblReserva primary key IDENTITY(1,1) not null,
 matricula_Usuario varchar(15) constraint FK1_TblReserva_TblUsuario references TblUsuario(matricula_Usuario) not null,
 codigo_Funcionario int constraint FK2_TblReserva_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 tombo_Exemplar varchar(10) constraint FK3_TblReserva_TblExemplar foreign key references TblExemplar(tombo_Exemplar) not null,
 DTReserva datetime not null,
 DTLimite_Reserva datetime not null)
 
 create table TblRevista(
 titulo_Revista varchar(200) constraint PK_TblRevista primary key not null,
 edição_Revista varchar(8), 
 volume_Revista varchar(8), 
 DTPublicaçao_Revista varchar(30) not null,
 CDU_Revista varchar(40),
 Cutter_Revista varchar(15))

 create table TblControla_Editora(
 codigo_Funcionario int constraint FK1_TblControla_Editora_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 codigo_Editora int constraint FK2_TblControla_Editora_TblEditora foreign key references TblEditora(codigo_Editora),
 DTAltera datetime not null constraint PK_TblControla_Editora primary key)

 create table TblControla_Fornecedor(
 codigo_Funcionario int constraint FK1_TblControla_Fornecedor_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 codigo_Fornecedor int constraint FK2_TblControla_Fornecedor_TblFornecedor foreign key references TblFornecedor(codigo_Fornecedor),
 DTAltera datetime not null constraint PK_TblControla_Fornecedor primary key)

 create table TblControla_Material(
 codigo_Funcionario int constraint FK1_TblControla_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 RG_Material int constraint FK2_TblControla_Material_TblMaterial foreign key references TblMaterial(RG_Material),
 DTAltera datetime not null constraint PK_TblControla_Material primary key)

 create table TblControla_Usuario(
 codigo_Funcionario int constraint FK1_TblControla_Usuario_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 matricula_Usuario varchar(15) constraint FK2_TblControlaUsuario_TblUsuario foreign key references TblUsuario(matricula_Usuario),
 DTAltera datetime not null constraint PK_TblControla_Usuario primary key)

 create table TblControla_Pedido_Material(
 codigo_Funcionario int constraint FK1_TblControla_Pedido_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 codigo_Pedido_Material int constraint FK2_TblControla_Pedido_Material_TblPedido_Material foreign key references TblPedidoMaterial(codigo_Pedido),
 DTAltera datetime not null constraint PK_TblControla_Pedido_Material primary key)

 create table TblControla_Funcionario(
 codigo_Funcionario_Alterado int constraint FK1_TblFucnionario_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 codigo_Funcionario_Adm int constraint FK2_TblFucnionario_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 DTAltera datetime not null constraint PK_TblControla_Funcionario primary key)
 
 create table TblControla_Curso(
 codigo_Funcionario int constraint FK1_TblControla_Curso_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 codigo_curso int constraint FK2_ControlaCurso_TblCurso foreign key references TblCurso(codigo_Curso),
 DTAltera datetime not null constraint PK_TblControla_Curso primary key)
