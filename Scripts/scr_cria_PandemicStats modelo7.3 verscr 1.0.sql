create table pais (
codpai numeric(2, 0) not null constraint pais_pk primary key, 
nompai varchar(60) not null unique
);

comment on table pais is 'Cadastro de pa�ses.';
comment on column pais.nompai is 'Nome do pa�s.';
comment on column pais.codpai is 'Chave prim�ria, c�digo do p�is.';




create table estado (
codest numeric(2, 0) not null constraint estado_pk primary key,
nomest varchar(60) not null, 
codpai numeric(2, 0) not null constraint estado_codpai_fk references pais (codpai)
);

comment on table estado is 'Cadastro de estados do pa�s';
comment on column estado.codest is 'C�digo do estado';




create table cidade (
codcid numeric(6, 0) not null constraint cidade_pk primary key,
nomcid varchar(60) not null, 
codest numeric(2, 0) not null constraint cidade_codest_fk references estado (codest)
);

comment on table cidade is 'Cadastro de cidades do estado.';
comment on column cidade.codcid is 'C�digo da cidade';
comment on column cidade.nomcid is 'Nome da cidade.';




create table ajuda (
codaju numeric(10, 0) not null constraint ajuda_pk primary key,
infaju varchar(500) not null 
);

comment on table ajuda is 'Tabela com informa��es e orienta��es para o paciente.';
comment on column ajuda.codaju is 'C�digo da ajuda.';
comment on column ajuda.infaju is 'Cadastrar informa��es.';




create table empresa (
codemp numeric(10, 0) not null constraint empresa_pk primary key,
nomemp varchar(100) not null, 
cnpjemp numeric(14, 0) not null unique, 
nomfanemp varchar(100), 
telemp1 varchar(20) not null, 
telemp2 varchar(20), 
emaemp varchar(30), 
ramemp varchar(60) not NULL,
codaju numeric(10, 0) not null constraint empresa_codaju_fk references ajuda (codaju)
);

comment on table empresa is 'Cadastro das empresas';
comment on column empresa.codemp is 'C�digo diferenciador das empresas';
comment on column empresa.nomemp is 'Nome da empresa';
comment on column empresa.cnpjemp is 'Cnpj da empresa';
comment on column empresa.nomfanemp is 'Nome fantasia da empresa';
comment on column empresa.telemp1 is 'Telefone 1 da empresa';
comment on column empresa.telemp2 is 'Telefone 2 da empresa';
comment on column empresa.emaemp is 'Email da empresa';
comment on column empresa.ramemp is 'Ramo da empresa';




create table endereco_empresa (
codendemp numeric(10, 0) not null constraint endemp_pk primary key,
cepemp numeric(8, 0) not null, 
numemp varchar(10) not null, 
ruaemp varchar(60) not null, 
codemp numeric(10, 0) not null constraint endemp_codemp_fk references empresa (codemp),
codcid numeric(6, 0) not null constraint endemp_codcid_fk references cidade (codcid)
);

comment on table endereco_empresa is 'Cadastro do endere�o da empresa';
comment on column endereco_empresa.codendemp is 'C�digo do endere�o da empresa';
comment on column endereco_empresa.cepemp is 'Endere�o da empresa: n�mero do cep.';
comment on column endereco_empresa.numemp is 'Endere�o da empresa: n�mero do edif�cio.';
comment on column endereco_empresa.ruaemp is 'Endere�o da empresa: nome da rua.';




create table tipo_funcionario (
codfun numeric(10, 0) not null constraint tipfun_pk primary key, 
tipfun varchar(30) not null, 
desfun varchar(300) not null
);

comment on table tipo_funcionario is 'Tabela para cadastrar a fun��o do paciente na empresa';
comment on column tipo_funcionario.codfun is 'C�digo da fun��o';
comment on column tipo_funcionario.tipfun is 'Nome da fun��o';
comment on column tipo_funcionario.desfun is 'Descri��o da fun��o.';




create table paciente (
codpac numeric(10, 0) not null constraint paciente_pk primary key,
nompac varchar(100) not null, 
cpfpac numeric(11, 0) not null unique, 
datnaspac date not null, 
pespac numeric(5,2) not null, 
telpac1 varchar(20) not null, 
telpac2 varchar(20), 
grurispac char(1) not null check(grurispac in ('s','n')), 
sexpac char(1) not null check(sexpac in('m','f')), 
codemp numeric(10, 0) not null constraint paciente_codemp_fk references empresa (codemp), 
codfun numeric(10, 0) not null constraint paciente_codfun_fk references tipo_funcionario (codfun),
sitpac varchar(20) not null check(sitpac in('internado','isolamento','curado','bem'))
);

comment on table paciente is 'Cadastro de pacientes.';
comment on column paciente.codpac is 'C�digo do paciente.';
comment on column paciente.nompac is 'Nome do paciente.';
comment on column paciente.cpfpac is 'Cpf do paciente.';
comment on column paciente.datnaspac is 'Data de nascimento do paciente.';
comment on column paciente.pespac is 'Peso do paciente.';
comment on column paciente.telpac1 is 'Telefone 1 do paciente.';
comment on column paciente.telpac2 is 'Telefone 2 do paciente.';
comment on column paciente.grurispac is 'Paciente � do grupo de risco:
s- sim;
n- n�o;';
comment on column paciente.sexpac is 'Sexo do paciente:
m- masculino
f- feminino';
comment on column paciente.sitpac is 'Situa��o do paciente:
internado;
isolamento;
curado;
bem.';




create table test_covid(
codtes numeric (10) not null constraint tescov_pk primary key,
dattes date not null,
covpactes char(1) check(covpactes in ('p','n')),
codpac numeric (10) not null constraint tescov_codpac_fk references paciente(codpac)
);

comment on table test_covid is 'Cadastro de testes de covid.';
comment on column test_covid.codtes is 'C�digo do teste de covid.';
comment on column test_covid.dattes is 'Data do teste.';
comment on column test_covid.covpactes is 'Resultado do teste para covid do paciente:
p-positivo
n-negativo';




create table comorbidade (
codcom numeric(10, 0) not null constraint comorbidade_pk primary key,
com varchar(300) not null 
);

comment on table comorbidade is 'Cadastro de comorbidades';
comment on column comorbidade.codcom is 'C�digo da comorbidade';
comment on column comorbidade.com is 'Comorbidades e sua descri��o se necess�rio.';



create table paciente_comorbidade(
codcom numeric(10,0) not null constraint paccom_codcom_fk references comorbidade (codcom),
codpac numeric(10, 0) not null constraint paccom_codpac_fk references paciente (codpac),
constraint paccom_pk primary key(codcom, codpac)
);

comment on table paciente_comorbidade is 'Rela��o entre paciente e comorbidade';




create table endereco_paciente (
codendpac numeric(10, 0) not null constraint endpac_pk primary key,
ceppac numeric(8, 0) not null, 
ruapac varchar(60) not null, 
numpac varchar(10) not null, 
codpac numeric(10, 0) not null constraint endpac_codpac_fk references paciente (codpac), 
codcid numeric(6, 0) not null constraint endpac_codcid_fk references cidade (codcid)
);

comment on table endereco_paciente is 'Cadastro de endere�o do paciente.';
comment on column endereco_paciente.codendpac is 'C�digo do endere�o do paciente.';
comment on column endereco_paciente.ceppac is 'Endere�o do paciente: n�mero do cep.';
comment on column endereco_paciente.ruapac is 'Endere�o do paciente: nome da rua.';
comment on column endereco_paciente.numpac is 'Endere�o do paciente: n�mero da casa';




create table sintoma (
codsin numeric(10, 0) not null constraint sintoma_pk primary key, 
nomsin varchar(60) not null, 
dessin varchar(300)
);

comment on table sintoma is 'Cadastro de sintomas do dia monitorado.';
comment on column sintoma.codsin is 'C�digo do sintoma.';
comment on column sintoma.nomsin is 'Nome do sintoma.';
comment on column sintoma.dessin is 'Descri��o do sintoma.';




create table monitoramento_paciente (
codmon numeric(10, 0) not null constraint monpac_pk primary key, 
datmon date not null, 
intsin char(1) not null check(intsin in('p','m','c','s')),
codpac numeric(10, 0) not null constraint monpac_codpac_fk references paciente (codpac), 
codsin numeric(10, 0) not null constraint monpac_codsin_fk references sintoma (codsin)
);

comment on table monitoramento_paciente is 'Tabela de monitoramento so paciente.';
comment on column monitoramento_paciente.codmon is 'C�digo do monitoramento';
comment on column monitoramento_paciente.datmon is 'Data do monitoramento';
comment on column monitoramento_paciente.intsin is 'Intensidade dos sintomas:
s - sem sintomas;
p - pouco;
m- moderado;
c - constante.';




create table usuario (
codusu numeric(10, 0) not null constraint usuario_pk primary key, 
nomusu varchar(100) not null, 
logusu varchar(30) not null, 
senusu varchar(20) not null, 
tipusu char(1) not null constraint usu_tipusu_ck check(tipusu in('a','c','p')),
codemp numeric (10) constraint usu_codemp_fk references empresa(codemp),
codpac numeric (10) constraint usu_codpac_fk references paciente(codpac)
);

comment on table usuario is 'Cadastro de informa��es de login';
comment on column usuario.nomusu is 'Nome do usu�rio';
comment on column usuario.logusu is 'Login do usu�rio';
comment on column usuario.senusu is 'Senha do usu�rio';
comment on column usuario.tipusu is 'Tipo de usu�rio:
administardos do sistema - a;
chefe de empresa - c
paciente - p';



--INDEXES
--Paciente
create index pac_nompac_ix
on paciente(nompac);
create index pac_sitpac_ix
on paciente(sitpac);


--Endere�o_paciente
create index endpac_ruapac_ix
on endereco_paciente(ruapac);
create index endpac_numpac_ix
on endereco_paciente(numpac);


--Teste de covid
create index tescov_covpactes_ix
on test_covid(covpactes);
create index tescov_dattes_ix
on test_covid(dattes);

--Monitoramento_paciente
create index monpac_intsin_ix
on monitoramento_paciente(intsin);
create index monpac_datmon_ix
on monitoramento_paciente(datmon);


--Cidades
create index cid_nomcid_ix
on cidade(nomcid);


--Empresas
create index emp_nomemp_ix
on empresa(nomemp);

--Usuario
create index usu_logusu_ix
on usuario(logusu);
create index usu_senusu_ix
on usuario(senusu);






