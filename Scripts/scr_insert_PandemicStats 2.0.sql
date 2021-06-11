

--COMORBIDADES
insert into comorbidade values(1, 'Idade igual ou superior a 60 anos');
insert into comorbidade values(2, 'Tabagismo');
insert into comorbidade values(3, 'Obesidade');
insert into comorbidade values(4, 'Miocardiopatias de diferentes etiologias (insuficiência cardíaca, miocardiopatia isquêmica etc.)');
insert into comorbidade values(5, 'Hipertensão arterial');
insert into comorbidade values(6, 'Pneumopatias graves ou descompensados (asma moderada/grave, DPOC)');
insert into comorbidade values(7, 'Imunodepressão e imunossupressão');
insert into comorbidade values(8, 'Doenças renais crônicas em estágio avançado (graus 3, 4 e 5)');
insert into comorbidade values(9, 'Diabetes melito, conforme juízo clínico');
insert into comorbidade values(10, 'Doenças cromossômicas com estado de fragilidade imunológica');
insert into comorbidade values(11, 'Neoplasia maligna (exceto câncer não melanótico de pele)');
insert into comorbidade values(12, 'Algumas doenças hematológicas (incluindo anemia falciforme e talassemia)');
insert into comorbidade values(13, 'Gestação');



--SINTOMAS
insert into sintoma(codsin, nomsin) values(1, 'Febre');
insert into sintoma(codsin, nomsin) values(2, 'Espirros e secreção nasal');
insert into sintoma(codsin, nomsin) values(3, 'Tosse seca');
insert into sintoma(codsin, nomsin) values(4, 'Dor no corpo');
insert into sintoma(codsin, nomsin) values(5, 'Dor de cabeça');
insert into sintoma(codsin, nomsin) values(6, 'Dor ou irritação na garganta');
insert into sintoma(codsin, nomsin) values(7, 'Dificuldade respiratória');
insert into sintoma(codsin, nomsin) values(8, 'Diarreia');
insert into sintoma(codsin, nomsin) values(9, 'Perda de paladar e/ou olfato');
insert into sintoma(codsin, nomsin) values(10, 'Outros sintomas');
insert into sintoma(codsin, nomsin) values(11, 'Oximetria ou Saturação de oxigênio por oxímetro');


--AJUDAS
insert into ajuda values(1, 'Procure um atendimento médico.');
insert into ajuda values(2, 'Não se automedique procure um atendimento médico.');

--PAIS
insert into pais values(1, 'Brasil');
insert into pais values(2, 'Argentina');
insert into pais values(3, 'Paraguai');

--ESTADOS
insert into estado values(1, 'Santa Catarina', 1);
insert into estado values(2, 'Parana', 2);
insert into estado values(3, 'São Paulo', 3);


--CIDADES
insert into cidade values(1, 'São José do Cedro', 1);
insert into cidade values(2, 'São Miguel do Oeste', 1);
insert into cidade values(3, 'Campinas', 3);
insert into cidade values(4, 'Curitiba', 2);
insert into cidade values(5, 'Maravilha', 1);
insert into cidade values(6, 'Descanso', 1);
insert into cidade values(7, 'Pinhalzinho', 3);
insert into cidade values(8, 'Chapecó', 2);
insert into cidade values(9, 'Itapiranga', 2);


--EMPRESAS
insert into empresa values(1, 'Empresa 1', 10101010101010, 'Fan emp 1', 49991111111, 36451111, 'emp1@gmail.com', 'Roupas', 1);
insert into empresa values(2, 'Empresa 2', 20202020202020, 'Fan emp 2', 49992222222, 36452222, 'emp2@gmail.com', 'Carros', 2);
insert into empresa values(3, 'Empresa 3', 30303030303030, 'Fan emp 3', 49993333333, 36453333, 'emp3@gmail.com', 'Perfumes', 1);
insert into empresa(codemp, nomemp, cnpjemp, nomfanemp, telemp1, ramemp, codaju) values(4, 'Empresa 4', 40404040404040, 'Fan emp 4', 49994444444, 'Vidros', 2);
insert into empresa(codemp, nomemp, cnpjemp, nomfanemp, telemp1, ramemp, codaju) values(5, 'Empresa 5', 50505050505050, 'Fan emp 5', 49995555555, 'Plantas', 1);
insert into empresa(codemp, nomemp, cnpjemp, nomfanemp, telemp1, ramemp, codaju) values(6, 'Empresa 6', 60606060606060, 'Fan emp 6', 49996666666, 'Construção', 2);


--ENDEREÇO DAS EMPRESAS
insert into endereco_empresa values(1, 11111111, '11', 'Rua 1', 1, 1);
insert into endereco_empresa values(2, 22222222, '22', 'Rua 2', 2, 1);
insert into endereco_empresa values(3, 33333333, '33', 'Rua 3', 3, 2);
insert into endereco_empresa values(4, 44444444, '44', 'Rua 4', 4, 2);
insert into endereco_empresa values(5, 55555555, '55', 'Rua 5', 5, 3);
insert into endereco_empresa values(6, 66666666, '66', 'Rua 6', 6, 4);


--TIPO FUNCIONÁRIO
insert into tipo_funcionario values(1, 'Faxineiro', 'Limpa a empresa');
insert into tipo_funcionario values(2, 'Cozinheiro', 'Faz comida');
insert into tipo_funcionario values(3, 'Gerente', 'Gerencia');
insert into tipo_funcionario values(4, 'Contador', 'Cuida da Contabilidade');


--PACIENTE
insert into paciente values(1, 'Pac 1', 00000000001, '01/01/2001', (100), 49992111111, 49992111111, 's', 'm', 1, 1, 'bem');
insert into paciente values(2, 'Pac 2', 00000000002, '02/01/2001', (500), 49992111112, 49992111112, 'n', 'f', 2, 2, 'curado');
insert into paciente values(3, 'Pac 3', 00000000003, '03/01/2001', (70), 49992111113, 49992111113, 's', 'm', 3, 3, 'isolamento');
insert into paciente values(4, 'Pac 4', 00000000004, '04/01/2001', (80), 49992111114, 49992111114, 'n', 'f', 4, 4, 'internado');
insert into paciente values(5, 'Pac 5', 00000000005, '05/01/2001', (90), 49992111115, 49992111115, 's', 'm', 5, 1, 'bem');
insert into paciente values(6, 'Pac 6', 00000000006, '06/01/2001', (120), 49992111116, 49992111116, 'n', 'f', 6, 2, 'bem');
insert into paciente values(7, 'Pac 7', 00000000007, '07/01/2001', (45), 49992111117, 49992111117, 's', 'm', 1, 3, 'bem');
insert into paciente values(8, 'Pac 8', 00000000008, '08/01/2001', (60), 49992111118, 49992111118, 'n', 'f', 2, 4, 'bem');
insert into paciente values(9, 'Pac 9', 00000000009, '09/01/2001', (50), 49992111119, 49992111119, 's', 'm', 3, 1, 'bem');
insert into paciente values(10, 'Pac 10', 00000000010, '03/11/1972', (50.5), 49992111110, 49992111110, 'n', 'f', 4, 2, 'curado');
insert into paciente values(11, 'Pac 11', 00000000011, '14/11/1979', (40), 49992111211, 49992111211, 's', 'm', 5, 3, 'isolamento');
insert into paciente values(12, 'Pac 12', 00000000012, '13/03/1976', (30), 49992111212, 49992111212, 'n', 'f', 6, 4, 'bem');
insert into paciente values(13, 'Pac 13', 00000000013, '04/01/1978', (20), 49992111213, 49992111213, 's', 'm', 1, 1, 'internado');
insert into paciente values(14, 'Pac 14', 00000000014, '26/07/1972', (15), 49992111214, 49992111214, 'n', 'f', 2, 2, 'bem');
insert into paciente values(15, 'Pac 15', 00000000015, '13/04/1974', (87), 49992111215, 49992111215, 's', 'm', 3, 3, 'bem');
insert into paciente values(16, 'Pac 16', 00000000016, '17/12/1971', (45), 49992111216, 49992111216, 'n', 'f', 4, 4, 'bem');
insert into paciente values(17, 'Pac 17', 00000000017, '11/09/1972', (18), 49992111217, 49992111217, 'n', 'm', 5, 1, 'bem');
insert into paciente values(18, 'Pac 18', 00000000018, '20/01/1972', (80), 49992111218, 49992111218, 's', 'f', 6, 2, 'bem');
insert into paciente values(19, 'Pac 19', 00000000019, '18/08/1978', (110.1), 49992111219, 49992111219, 'n', 'm', 1, 3, 'bem');
insert into paciente values(20, 'Pac 20', 00000000020, '28/01/1979', (210.2), 49992111220, 49992111220, 's', 'f', 2, 4, 'bem');
insert into paciente values(21, 'Pac 21', 00000000021, '08/12/1971', (160.3), 49992111221, null, 'n', 'm', 3, 1, 'bem');
insert into paciente values(22, 'Pac 22', 00000000022, '20/02/1979', (180.4), 49992111223, null, 's', 'f', 4, 2, 'curado');
insert into paciente values(23, 'Pac 23', 00000000023, '14/07/1976', (120.5), 49992111224, null, 'n', 'm', 5, 3, 'bem');
insert into paciente values(24, 'Pac 24', 00000000024, '28/12/1978', (110.6), 49992111225, null, 's', 'f', 6, 4, 'bem');
insert into paciente values(25, 'Pac 25', 00000000025, '18/10/1976', (10.7), 49992111226, null, 'n', 'm', 1, 1, 'bem');
insert into paciente values(26, 'Pac 26', 00000000026, '26/01/2001', (10.8), 49992111227, null, 's', 'f', 2, 2, 'isolamento');
insert into paciente values(27, 'Pac 27', 00000000027, '27/01/2001', (10.9), 49992111228, null, 'n', 'm', 3, 3, 'bem');
insert into paciente values(28, 'Pac 28', 00000000028, '28/01/2001', (20.1), 49992111229, null, 's', 'f', 4, 4, 'bem');
insert into paciente values(29, 'Pac 29', 00000000029, '29/01/2001', (20.2), 49992111230, null, 'n', 'f', 5, 1, 'bem');
insert into paciente values(30, 'Pac 30', 00000000030, '30/01/2001', (20.3), 49992111231, null, 's', 'm', 6, 2, 'internado');
insert into paciente values(31, 'Pac 31', 00000000031, '31/01/2001', (20.4), 49992111232, null, 'n', 'f', 1, 3, 'bem');
insert into paciente values(32, 'Pac 32', 00000000032, '01/02/2001', (20.5), 49992111233, null, 's', 'm', 3, 4, 'bem');
insert into paciente values(33, 'Pac 33', 00000000033, '02/02/2001', (20.6), 49992111234, null, 'n', 'f', 4, 1, 'bem');
insert into paciente values(34, 'Pac 34', 00000000034, '03/02/2001', (20.7), 49992111235, null, 's', 'm', 5, 2, 'bem');
insert into paciente values(35, 'Pac 35', 00000000035, '04/02/2001', (20.8), 49992111236, null, 'n', 'f', 6, 3, 'bem');
insert into paciente values(36, 'Pac 36', 00000000036, '05/02/2001', (20.9), 49992111237, null, 's', 'm', 1, 4, 'bem');
insert into paciente values(37, 'Pac 37', 00000000037, '06/02/2001', (30.1), 49992111238, null, 'n', 'f', 2, 1, 'bem');
insert into paciente values(38, 'Pac 38', 00000000038, '07/02/2001', (30.2), 49992111239, null, 's', 'm', 3, 2, 'bem');
insert into paciente values(39, 'Pac 39', 00000000039, '08/02/2001', (30.3), 49992111240, null, 'n', 'f', 4, 3, 'bem');
insert into paciente values(40, 'Pac 40', 00000000040, '09/02/2001', (30.4), 49992111241, null, 's', 'm', 5, 4, 'bem');


--ENDEREÇO DOS PACIENTES
insert into endereco_paciente values(1, 11111111, 'Rua pac 1', '11', 1, 1);
insert into endereco_paciente values(2, 22222222, 'Rua pac 2', '22', 2, 2);
insert into endereco_paciente values(3, 33333333, 'Rua pac 3', '33', 3, 3);
insert into endereco_paciente values(4, 44444444, 'Rua pac 4', '44', 4, 4);
insert into endereco_paciente values(5, 55555555, 'Rua pac 5', '55', 5, 1);
insert into endereco_paciente values(6, 66666666, 'Rua pac 6', '66', 6, 2);
insert into endereco_paciente values(7, 77777777, 'Rua pac 7', '77', 7, 3);
insert into endereco_paciente values(8, 88888888, 'Rua pac 8', '88', 8, 4);
insert into endereco_paciente values(9, 99999999, 'Rua pac 9', '99', 9, 1);
insert into endereco_paciente values(10, 10000000, 'Rua pac 10', '111', 10, 5);
insert into endereco_paciente values(11, 10000001, 'Rua pac 11', '112', 11, 6);
insert into endereco_paciente values(12, 10000002, 'Rua pac 12', '113', 12, 7);
insert into endereco_paciente values(13, 10000003, 'Rua pac 13', '114', 13, 8);
insert into endereco_paciente values(14, 10000004, 'Rua pac 14', '115', 14, 9);
insert into endereco_paciente values(15, 10000005, 'Rua pac 15', '116', 15, 5);
insert into endereco_paciente values(16, 10000006, 'Rua pac 16', '117', 16, 6);
insert into endereco_paciente values(17, 10000007, 'Rua pac 17', '118', 17, 7);
insert into endereco_paciente values(18, 10000008, 'Rua pac 18', '119', 18, 8);
insert into endereco_paciente values(19, 10000009, 'Rua pac 19', '120', 19, 9);
insert into endereco_paciente values(20, 10000010, 'Rua pac 20', '121', 20, 5);
insert into endereco_paciente values(21, 10000021, 'Rua pac 21', '122', 21, 6);
insert into endereco_paciente values(22, 10000022, 'Rua pac 22', '123', 22, 7);
insert into endereco_paciente values(23, 10000023, 'Rua pac 23', '124', 23, 8);
insert into endereco_paciente values(24, 10000024, 'Rua pac 24', '125', 24, 9);
insert into endereco_paciente values(25, 10000025, 'Rua pac 25', '126', 25, 5);
insert into endereco_paciente values(26, 10000026, 'Rua pac 26', '127', 26, 2);
insert into endereco_paciente values(27, 10000027, 'Rua pac 27', '128', 27, 3);
insert into endereco_paciente values(28, 10000028, 'Rua pac 28', '129', 28, 4);
insert into endereco_paciente values(29, 10000029, 'Rua pac 29', '130', 29, 1);
insert into endereco_paciente values(30, 10000030, 'Rua pac 30', '131', 30, 2);
insert into endereco_paciente values(31, 10000031, 'Rua pac 31', '132', 31, 3);
insert into endereco_paciente values(32, 10000032, 'Rua pac 32', '133', 32, 4);
insert into endereco_paciente values(33, 10000033, 'Rua pac 33', '134', 33, 1);
insert into endereco_paciente values(34, 10000034, 'Rua pac 34', '135', 34, 2);
insert into endereco_paciente values(35, 10000035, 'Rua pac 35', '136', 35, 3);
insert into endereco_paciente values(36, 10000036, 'Rua pac 36', '137', 36, 4);
insert into endereco_paciente values(37, 10000037, 'Rua pac 37', '138', 37, 1);
insert into endereco_paciente values(38, 10000038, 'Rua pac 38', '139', 38, 2);
insert into endereco_paciente values(39, 10000039, 'Rua pac 39', '140', 39, 3);
insert into endereco_paciente values(40, 10000040, 'Rua pac 40', '141', 40, 4);


--PACIENTE COMORBIDADE
insert into paciente_comorbidade values(1, 1);
insert into paciente_comorbidade values(1, 3);
insert into paciente_comorbidade values(1, 7);
insert into paciente_comorbidade values(1, 9);
insert into paciente_comorbidade values(1, 40);
insert into paciente_comorbidade values(1, 21);
insert into paciente_comorbidade values(1, 17);
insert into paciente_comorbidade values(2, 1);
insert into paciente_comorbidade values(2, 2);
insert into paciente_comorbidade values(2, 6);
insert into paciente_comorbidade values(2, 15);
insert into paciente_comorbidade values(2, 23);
insert into paciente_comorbidade values(2, 32);
insert into paciente_comorbidade values(3, 1);
insert into paciente_comorbidade values(3, 5);
insert into paciente_comorbidade values(3, 37);
insert into paciente_comorbidade values(3, 28);
insert into paciente_comorbidade values(4, 1);
insert into paciente_comorbidade values(4, 12);
insert into paciente_comorbidade values(4, 8);
insert into paciente_comorbidade values(4, 19);
insert into paciente_comorbidade values(4, 33);
insert into paciente_comorbidade values(5, 1);
insert into paciente_comorbidade values(5, 9);
insert into paciente_comorbidade values(5, 24);
insert into paciente_comorbidade values(5, 17);
insert into paciente_comorbidade values(5, 36);
insert into paciente_comorbidade values(6, 21);
insert into paciente_comorbidade values(6, 1);
insert into paciente_comorbidade values(6, 23);
insert into paciente_comorbidade values(6, 29);
insert into paciente_comorbidade values(7, 34);
insert into paciente_comorbidade values(7, 3);
insert into paciente_comorbidade values(7, 2);
insert into paciente_comorbidade values(7, 1);
insert into paciente_comorbidade values(8, 1);
insert into paciente_comorbidade values(8, 16);
insert into paciente_comorbidade values(8, 2);
insert into paciente_comorbidade values(8, 30);
insert into paciente_comorbidade values(9, 8);
insert into paciente_comorbidade values(9, 7);
insert into paciente_comorbidade values(9, 32);
insert into paciente_comorbidade values(9, 1);
insert into paciente_comorbidade values(10, 1);
insert into paciente_comorbidade values(10, 26);
insert into paciente_comorbidade values(10, 36);
insert into paciente_comorbidade values(10, 11);
insert into paciente_comorbidade values(11, 1);
insert into paciente_comorbidade values(11, 38);
insert into paciente_comorbidade values(11, 5);
insert into paciente_comorbidade values(11, 33);
insert into paciente_comorbidade values(12, 1);
insert into paciente_comorbidade values(12, 24);
insert into paciente_comorbidade values(12, 36);
insert into paciente_comorbidade values(12, 34);
insert into paciente_comorbidade values(13, 1);
insert into paciente_comorbidade values(13, 33);
insert into paciente_comorbidade values(13, 6);
insert into paciente_comorbidade values(13, 5);


--TESTE DE COVID
insert into test_covid values(1, current_timestamp, 'p', 1);
insert into test_covid values(2, '30/05/2021', 'n', 1);
insert into test_covid values(3, '20/03/2012', 'n', 32);
insert into test_covid values(4, '20/02/2013', 'p', 35);
insert into test_covid values(5, current_timestamp, 'n', 21);
insert into test_covid values(6, '20/05/2012', 'p', 32);
insert into test_covid values(7, current_timestamp, 'n', 10);
insert into test_covid values(8, current_timestamp, 'p', 26);
insert into test_covid values(9, '20/09/2012', 'p', 32);
insert into test_covid values(10, current_timestamp, 'n', 30);
insert into test_covid values(11, '20/02/2013', 'p', 38);
insert into test_covid values(12, '15/06/1989', 'n', 6);
insert into test_covid values(13, current_timestamp, 'p', 12);
insert into test_covid values(14, '17/11/2015', 'n', 24);
insert into test_covid values(15, current_timestamp, 'p', 11);
insert into test_covid values(16, '02/02/1937', 'n', 35);
insert into test_covid values(17, current_timestamp, 'p', 14);
insert into test_covid values(18, '07/12/1963', 'n', 18);
insert into test_covid values(19, current_timestamp, 'p', 2);
insert into test_covid values(20, '28/01/1943', 'p', 18);
insert into test_covid values(21, current_timestamp, 'n', 20);
insert into test_covid values(22, current_timestamp, 'p', 29);
insert into test_covid values(23, current_timestamp, 'n', 7);
insert into test_covid values(24, '01/09/1922', 'p', 34);
insert into test_covid values(25, '22/05/1952', 'n', 34);
insert into test_covid values(26, '08/10/1912', 'p', 4);
insert into test_covid values(27, '22/08/1906', 'n', 25);

--MONITORAMENTO PACIENTE
insert into monitoramento_paciente values(1, current_timestamp, 'c', 1, 1);
insert into monitoramento_paciente values(2, current_timestamp, 'c', 1, 2);
insert into monitoramento_paciente values(3, current_timestamp, 'c', 1, 3);
insert into monitoramento_paciente values(4, current_timestamp, 'c', 1, 4);
insert into monitoramento_paciente values(5, current_timestamp, 'c', 1, 5);
insert into monitoramento_paciente values(6, current_timestamp, 'c', 1, 6);
insert into monitoramento_paciente values(7, current_timestamp, 'c', 1, 7);
insert into monitoramento_paciente values(8, current_timestamp, 'c', 1, 8);
insert into monitoramento_paciente values(9, current_timestamp, 'c', 1, 9);
insert into monitoramento_paciente values(10, current_timestamp, 'c', 1, 10);
insert into monitoramento_paciente values(11, current_timestamp, 'c', 1, 11);
insert into monitoramento_paciente values(12, current_timestamp, 'c', 2, 1);
insert into monitoramento_paciente values(13, current_timestamp, 'c', 39, 3);
insert into monitoramento_paciente values(14, current_timestamp, 'c', 6, 8);
insert into monitoramento_paciente values(15, current_timestamp, 'c', 26, 4);
insert into monitoramento_paciente values(16, current_timestamp, 'c', 23, 9);
insert into monitoramento_paciente values(17, current_timestamp, 'c', 11, 8);
insert into monitoramento_paciente values(18, current_timestamp, 'c', 3, 11);
insert into monitoramento_paciente values(19, current_timestamp, 'c', 33, 2);
insert into monitoramento_paciente values(20, current_timestamp, 'c', 3, 6);
insert into monitoramento_paciente values(21, current_timestamp, 'c', 28, 7);
insert into monitoramento_paciente values(22, current_timestamp, 'c', 23, 3);
insert into monitoramento_paciente values(23, current_timestamp, 'c', 26, 6);
insert into monitoramento_paciente values(24, current_timestamp, 'c', 20, 6);
insert into monitoramento_paciente values(25, current_timestamp, 'c', 13, 1);
insert into monitoramento_paciente values(26, current_timestamp, 'c', 35, 9);
insert into monitoramento_paciente values(27, current_timestamp, 'c', 29, 5);
insert into monitoramento_paciente values(28, current_timestamp, 'c', 32, 7);
insert into monitoramento_paciente values(29, current_timestamp, 'c', 27, 10);
insert into monitoramento_paciente values(30, current_timestamp, 'c', 4, 7);
insert into monitoramento_paciente values(31, current_timestamp, 'c', 19, 10);
insert into monitoramento_paciente values(32, current_timestamp, 'c', 32, 11);
insert into monitoramento_paciente values(33, current_timestamp, 'c', 8, 4);

--USUÁRIOS
insert into usuario values(1, 'Eduardo', 'admin', 'admin', 'a', null, null);
insert into usuario values(2, 'Denis', 'admin', 'admin', 'a', null, null);
insert into usuario values(3, 'Cesar', 'admin', 'admin', 'a', null, null);
insert into usuario values(4, 'Pac 1', 'admin', 'admin', 'p', null, 1);
insert into usuario values(5, 'Pac 2', 'admin', 'admin', 'p', null, 2);
insert into usuario values(6, 'Pac 3', 'admin', 'admin', 'p', null, 3);
insert into usuario values(7, 'Pac 4', 'admin', 'admin', 'p', null, 4);
insert into usuario values(8, 'Pac 5', 'admin', 'admin', 'p', null, 5);
insert into usuario values(9, 'Pac 6', 'admin', 'admin', 'p', null, 6);
insert into usuario values(10, 'Pac 7', 'admin', 'admin', 'p', null, 7);
insert into usuario values(11, 'Pac 8', 'admin', 'admin', 'p', null, 8);
insert into usuario values(12, 'Pac 9', 'admin', 'admin', 'p', null, 9);
insert into usuario values(13, 'Pac 10', 'admin', 'admin', 'p', null, 10);
insert into usuario values(14, 'Pac 11', 'admin', 'admin', 'p', null, 11);
insert into usuario values(15, 'Pac 12', 'admin', 'admin', 'p', null, 12);
insert into usuario values(16, 'Pac 13', 'admin', 'admin', 'p', null, 13);
insert into usuario values(17, 'Pac 14', 'admin', 'admin', 'p', null, 14);
insert into usuario values(18, 'Pac 15', 'admin', 'admin', 'p', null, 15);
insert into usuario values(19, 'Pac 16', 'admin', 'admin', 'p', null, 16);
insert into usuario values(20, 'Pac 17', 'admin', 'admin', 'p', null, 17);
insert into usuario values(21, 'Pac 18', 'admin', 'admin', 'p', null, 18);
insert into usuario values(22, 'Pac 19', 'admin', 'admin', 'p', null, 19);
insert into usuario values(23, 'Pac 20', 'admin', 'admin', 'p', null, 20);
insert into usuario values(24, 'Pac 21', 'admin', 'admin', 'p', null, 21);
insert into usuario values(25, 'Pac 22', 'admin', 'admin', 'p', null, 22);
insert into usuario values(26, 'Pac 23', 'admin', 'admin', 'p', null, 23);
insert into usuario values(27, 'Pac 24', 'admin', 'admin', 'p', null, 24);
insert into usuario values(28, 'Pac 25', 'admin', 'admin', 'p', null, 25);
insert into usuario values(29, 'Pac 26', 'admin', 'admin', 'p', null, 26);
insert into usuario values(30, 'Pac 27', 'admin', 'admin', 'p', null, 27);
insert into usuario values(31, 'Pac 28', 'admin', 'admin', 'p', null, 28);
insert into usuario values(32, 'Pac 29', 'admin', 'admin', 'p', null, 29);
insert into usuario values(33, 'Pac 30', 'admin', 'admin', 'p', null, 30);
insert into usuario values(34, 'Pac 31', 'admin', 'admin', 'p', null, 31);
insert into usuario values(35, 'Pac 32', 'admin', 'admin', 'p', null, 32);
insert into usuario values(36, 'Pac 33', 'admin', 'admin', 'p', null, 33);
insert into usuario values(37, 'Pac 34', 'admin', 'admin', 'p', null, 34);
insert into usuario values(38, 'Pac 35', 'admin', 'admin', 'p', null, 35);
insert into usuario values(39, 'Pac 36', 'admin', 'admin', 'p', null, 36);
insert into usuario values(40, 'Pac 37', 'admin', 'admin', 'p', null, 37);
insert into usuario values(41, 'Pac 38', 'admin', 'admin', 'p', null, 38);
insert into usuario values(42, 'Pac 39', 'admin', 'admin', 'p', null, 39);
insert into usuario values(43, 'Pac 40', 'admin', 'admin', 'p', null, 40);
insert into usuario values(44, 'Chefe 1', 'admin', 'admin', 'a', 1, null);
insert into usuario values(45, 'Chefe 2', 'admin', 'admin', 'a', 2, null);
insert into usuario values(46, 'Chefe 3', 'admin', 'admin', 'a', 3, null);
insert into usuario values(47, 'Chefe 4', 'admin', 'admin', 'a', 4, null);
insert into usuario values(48, 'Chefe 5', 'admin', 'admin', 'a', 5, null);
insert into usuario values(49, 'Chefe 6', 'admin', 'admin', 'a', 6, null);