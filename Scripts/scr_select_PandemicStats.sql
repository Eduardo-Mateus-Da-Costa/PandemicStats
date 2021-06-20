/*1) Relacione o código e nome de
pacientes com idades entre 40 e 50
anos, que apresentaram tosse.
Relacione a consulta em ordem
descendente de código; OK
2) Relacione o nome do paciente,
nome da cidade de residência de
pacientes do sexo masculino,
residentes nos municípios de
Maravilha, Descanso, Pinhalzinho,
Chapecó e Itapiranga que
apresentaram sintomas e não foram
positivados com covid. Relacione o
relatório pelo nome da cidade
descendente e o nome do paciente
ascendente;  OK
3) Relacione o código da cidade,
nome da cidade, quantidade de casos
suspeitos de covid para todas as
cidades. Ordene o relatório da cidade
com menos casos suspeitos para a
cidade com mais casos suspeitos; OK
4) Relacione a idade do paciente e
quantidade de casos positivos de
covid por idade, registrados em dias
pares de 2020. Ordene o relatório pela
idade com mais casos para a idade
com menos casos.*/



create view vw_select1 as 
select p.codpac, p.nompac from paciente p 
inner join monitoramento_paciente mp on mp.codpac=p.codpac 
inner join sintoma s on mp.codsin = s.codsin 
where s.nomsin ilike '%tosse%' and 
(extract(year from current_timestamp) - extract(year from p.datnaspac)>=40) and 
(extract(year from current_timestamp) - extract(year from p.datnaspac)<=50);

select * from vw_select1;

create view vw_select2 as
select p.nompac, c.nomcid from paciente p 
inner join endereco_paciente ep on ep.codpac = p.codpac 
inner join cidade c on c.codcid = ep.codcid 
inner join test_covid tc on tc.codpac = p.codpac 
inner join monitoramento_paciente mp on mp.codpac = p.codpac 
where tc.covpactes = 'n' and mp.codsin notnull and p.sexpac='m' and c.nomcid in('Maravilha', 'Descanso', 'Pinhalzinho', 'Chapecó', 'Itapiranga')
order by c.nomcid desc, p.nompac;

/*(tc.covpactes = 'n' and 
mp.codsin not null and c.nomcid ='Maravilha') or
(tc.covpactes = 'n' and 
mp.codsin not null and c.nomcid = 'Descanso') or 
(tc.covpactes = 'n' and 
mp.codsin not null and c.nomcid = 'Pinhalzinho') or 
(tc.covpactes = 'n' and  
mp.codsin not null and c.nomcid = 'Chapecó') or 
(tc.covpactes = 'n' and  
mp.codsin not null and c.nomcid = 'Itapiranga')*/

select * from vw_select2;

create view vw_select3 as 
select c.codcid, c.nomcid, count(distinct(mp.codpac)) as conta from cidade c 
left join endereco_paciente ep on ep.codcid=c.codcid 
left join paciente p on p.codpac=ep.codpac 
left join monitoramento_paciente mp on mp.codpac=p.codpac 
group by c.codcid
order by conta;

select * from vw_select3;

create view vw_select4 as
select to_char(age(p.datnaspac),'YY') as idade, count(*) as casos from paciente p
inner join test_covid tc on tc.codpac = p.codpac 
where tc.covpactes ='p' and ((extract(DAY from tc.dattes)::Integer)%2)=0
group by idade
order by casos desc;

select * from vw_select4;

drop view vw_select2;
