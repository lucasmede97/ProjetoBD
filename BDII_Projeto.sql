USE master
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
USE BD_Biblioteca
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
salario smallmoney not null,
DtNasc_Funcionario datetime not null,
senha_Funcionario varchar(8) not null
)
GO

create table TblEditora(
codigo_Editora int constraint PK_TblEditora primary key not null IDENTITY(1,1),
nome_Editora varchar(50) constraint UN_TblEditora unique not null,
email_Editora varchar(45) not null,
pais_Editora varchar(20) not null,
endereco_Editora varchar(300) not null
)
GO

create table TblFornecedor(
codigo_Fornecedor int constraint PK_TblFornecedor primary key not null IDENTITY(1,1),
nome_Fornecedor varchar(50) constraint UN1_TblFornecedor unique not null,
responsavel_Fornecedor varchar(95) not null,
cnpj_Fornecedor varchar(10) constraint UN2_TblFornecedor unique not null,
email_Fornecedor varchar(45) not null,
cep_Fornecedor varchar(10),
celular_Fornecedor varchar(11),
endereço_Fornecedor varchar(300)
)
GO

create table TblCurso(
codigo_Curso int constraint PK_TblCurso primary key not null IDENTITY(1,1),
nome_Curso varchar(50) constraint UN_TblCurso unique not null,
QTPeriodos_Curso tinyint not null,
coordenador_Curso varchar(95) not null
)
GO

drop table TblUsuario
create table TblUsuario(
matricula_Usuario varchar(15) constraint PK_TblUsuario primary key not null,
rg_Usuario varchar(12) constraint UN1_TblUsuario unique not null,
nome_Usuario varchar(95) constraint UN2_TblUsuario unique not null,
curso_Usuario varchar(50) constraint FK_TblUsuario_TblCurso foreign key references TblCurso(nome_Curso),
tipo_Usuario varchar(20) not null,
email varchar(45) constraint UN2_TblUsuuario unique not null,
senha_Usuario varchar(8) not null,
periodo tinyint not null,
DT_Nasc_Usuario datetime not null,
DT_Validade_Usuario datetime not null,
endereço_Usuario varchar(300) not null
)
GO
drop table TblMaterial
create table TblMaterial(
RG_Material int constraint PK_TblMaterial  primary key not null,
nome_Editora varchar(50) constraint FK_TblMaterial_TblEditora  foreign key references TblEditora (nome_Editora) not null,
autorPri_Material varchar(95) constraint UN1_TblMaterial unique not null,
titulo_Material varchar(200) constraint UN2_TblMaterial unique, 
edição_Material varchar(8) constraint UN3_TblMaterial unique, 
volume_Material varchar(8) constraint UN4_TblMaterial unique, 
ano_Material varchar(5) constraint UN5_TblMaterial unique not null,
CDU_Material varchar(40) constraint UN6_TblMaterial unique,
Cutter_Material varchar(15) constraint UN7_TblMaterial unique,
DT_Cad_Material datetime not null
)
GO

drop table TblPedidoMaterial
create table TblPedidoMaterial(
codigo_Pedido int constraint PK_TblPedidoMaterial primary key IDENTITY(1,1) not null,
codigo_Fornecedor int constraint FK1_TblPedidoMaterial_TblFornecedor foreign key references TblFornecedor(codigo_Fornecedor) not null,
volume_Material varchar(8) constraint FK2_TblPedidoMaterial_TblMaterial foreign key references TblMaterial(volume_Material) not null,
edição_Material varchar(8) constraint FK3_TblPedidoMaterial_TblMaterial foreign key references TblMaterial(edição_Material) not null,
ano_Material varchar(5) constraint FK4_TblPedidoMaterial_TblMaterial foreign key references TblMaterial(ano_Material) not null,
autorPri_Material varchar(95) constraint FK5_TblPedidoMaterial_TblMaterial foreign key references TblMaterial(autorPri_Material) not null,
Num_NotaFiscal_Pedido int constraint UN1_TblPedidoMaterial unique not null ,
valorUnitario_Pedido smallmoney constraint UN2_TblPedidoMaterial unique not null,
valorTotal_Pedido smallmoney not null,
quantExemplares_Pedido int not null,
desconto_Pedido smallmoney,
DT_Emissão_NotaFiscal_Pedido datetime not null
)
GO

create table TblExemplar(
tombo_Exemplar varchar(10) constraint PK_TblExemplar primary key not null,
RG_Material int constraint FK1_TblExemplar_TblMaterial foreign key references TblMaterial(RG_Material) not null,
titulo_Material varchar(200) constraint FK2_TblExemplar_TblMaterial foreign key references TblMaterial(titulo_Material) not null,
CDU_Material varchar(40) constraint FK3_TblExemplar_TblMaterial foreign key references TblMaterial(CDU_Material),
Cutter_Material varchar(15) constraint FK4_TblExemplar_TblMaterial foreign key references TblMaterial(Cutter_Material),
codigo_Pedido int constraint FK5_TblExemplar_TblPedidoMaterial foreign key references TblPedidoMaterial(codigo_Pedido) not null,
codigo_Fornecedor int constraint FK6_TblExemplar_TblFornecedor foreign key references TblFornecedor(codigo_Fornecedor) not null,
situação_Exemplar varchar(20) not null,
valor_Unitario_Pedido smallmoney constraint FK7_TblExemplar_TblPedidoMaterial foreign key references TblPedidoMaterial(ValorUnitario_Pedido) not null,
Num_NotaFiscal_Pedido int constraint FK8_TblExemplar_TblPedidoMaterial foreign key references TblPedidoMaterial(Num_NotaFiscal_Pedido) not null,
Observaçao_Exemplar varchar(100)
)
GO

 create table TblEmprestimo(
 matricula_Usuario varchar(15) constraint PK_TblEmprestimo primary key constraint FK1_TblEmprestimo_TblUsuario references TblUsuario(matricula_Usuario) not null,
 nome_Usuario varchar(95) constraint FK2_TblEmprestimo_TblUsuario foreign key references TblUsuario(nome_Usuario) not null,
 codigo_Funcionario int constraint FK3_TblEmprestimo_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 email_Usuario varchar(45) constraint FK4_TblEmprestimo_TblUsuario foreign key references TblUsuario(email_Usuario) not null,
 nome_Funcionario varchar(95) constraint FK5_TblEmprestimo_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 tombo_Exemplar varchar(10) constraint FK6_TblEmprestimo_TblExemplar foreign key references TblExemplar(tombo_Exemplar) not null,
 titulo_Exemplar varchar(200) constraint FK7_TblEmprestimo_TblExemplar foreign key references TblExemplar(titulo_Exemplar) not null,
 senha_Usuario varchar(6) constraint FK8_TblEmprestimo_TblUsuario foreign key references TblUsuario(senha_Usuario) not null,
 DTPrevista_Devolução datetime not null,
 DTEmprestimo datetime not null
 )
 GO

 create table TblDevolução(
 matricula_Usuario varchar(15) constraint PK_TblDevolução primary key constraint FK_TblDevolução_TblUsuario references TblUsuario(matricula_Aluno) not null,
 nome_Usuario varchar(95) constraint FK_TblDevolução_TblUsuario foreign key references TblUsuario(nome_Usuario) not null,
 codigo_Funcionario int constraint FK_TblDevolução_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 email_Usuario varchar(45) constraint FK_TblDevolução_TblUsuario foreign key references TblUsuario(email_Usuario) not null,
 nome_Funcionario varchar(95) constraint FK_TblDevolução_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 tombo_Exemplar varchar(10) constraint FK_TblDevolução_TblExemplar foreign key references TblExemplar(tombo_Exemplar) not null,
 titulo_Exemplar varchar(200) constraint FK_TblDevolução_TblExemplar foreign key references TblExemplar(titulo_Exemplar) not null,
 DTDevolução datetime not null
 )
 GO 

 create table TblReserva(
 matricula_Usuario varchar(15) constraint PK_TblReserva primary key constraint FK_TblReserva_TblUsuario references TblUsuario(matricula_Aluno) not null,
 nome_Usuario varchar(95) constraint FK_TblReserva_TblUsuario foreign key references TblUsuario(nome_Usuario) not null,
 codigo_Funcionario int constraint FK_TblReserva_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 email_Usuario varchar(45) constraint FK_TblReserva_TblUsuario foreign key references TblUsuario(email_Usuario) not null,
 nome_Funcionario varchar(95) constraint FK_TblReserva_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 tombo_Exemplar varchar(10) constraint FK_TblReserva_TblExemplar foreign key references TblExemplar(tombo_Exemplar) not null,
 titulo_Exemplar varchar(200) constraint FK_TblReserva_TblExemplar foreign key references TblExemplar(titulo_Exemplar) not null,
 DTReserva datetime not null,
 DTLimite_Reserva datetime not null
 )
 GO

 create table Revista(
 DDPublicaçao_Revista datetime constraint PK_TblRevista primary key not null,
 tipo varchar(20) not null
 )
 GO

 create table Controla_Editora(
 codigo_Funcionario int constraint PK_TblControla_Editora primary key constraint FK_TblControla_Reserva_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario varchar(95) constraint FK_Controla_Editora_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO

 create table Controla_Fornecedor(
 codigo_Funcionario int constraint PK_TblControla_Fornecedor primary key constraint FK_TblControla_Fornecedor_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario varchar(95) constraint FK_Controla_Fornecedor_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO

 create table Controla_Material(
 codigo_Funcionario int constraint PK_TblControla_Material primary key constraint FK_TblControla_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario varchar(95) constraint FK_Controla_Material_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO

 create table Controla_Usuario(
 codigo_Funcionario int constraint PK_Controla_Usuario primary key constraint FK_TblControla_Usuario_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario varchar(95) constraint FK_Controla_Usuario_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO

 create table Controla_Pedido_Material(
 codigo_Funcionario int constraint PK_Controla_Pedido_Material primary key constraint FK_TblControla_Pedido_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario varchar(95) constraint FK_Controla_Pedido_Material_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO

 create table Controla_Fucnionario(
 codigo_Funcionario int constraint PK_Controla_Fucnionario primary key constraint FK_TblFucnionario_Material_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario_ADM varchar(95) constraint FK_Controla_Fucnionario_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 nome_Funcionario_alterado varchar(95) constraint FK_Controla_Fucnionario_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO

 create table Controla_Curso(
 codigo_Funcionario int constraint PK_Controla_Curso primary key constraint FK_TblControla_Curso_TblFuncionario foreign key references TblFuncionario(codigo_Funcionario) not null,
 nome_Funcionario varchar(95) constraint FK_Controla_Curso_TblFuncionario foreign key references TblFuncionario(nome_Funcionario) not null,
 DTAltera datetime not null
 )
 GO