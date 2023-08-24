------------------------------------------------------------
-- Comando para habilitar o uso do banco de dados "bdpuc" --
------------------------------------------------------------

USE bdpuc;

------------------------
-- sqlcreatetable2019 --
------------------------

------------------------------------------------------------------------------
-- Dando continuidade, vamos criar as tabelas dos microdados do ano de 2019 --
------------------------------------------------------------------------------

------------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_ITENS_PROVA_2019" --
------------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_ITENS_PROVA_2019 (
CO_POSICAO varchar (15),
SG_AREA varchar (15), 
CO_ITEM varchar (15),
TX_GABARITO varchar (15),
CO_HABILIDADE varchar (15),
CO_PROVA varchar (15),
IN_ITEM_ABAN varchar (15),
TX_MOTIVO_ABAN varchar (15),
NU_PARAM_A varchar (15),
NU_PARAM_B varchar (15),
NU_PARAM_C varchar (15),
TX_COR varchar (15),
TP_CERTIFICACAO varchar (15),
IN_ITEM_ADAPTADO varchar (15)

);

RENAME TABLE MICRODADOS_ENCCEJA_ITENS_PROVA_2019 TO 2019_ITENS_DA_PROVA_MICRODADOS_ENCCEJA;

------------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_NACIONAL_PPL_2019" --
------------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_NACIONAL_PPL_2019 (

NU_INSCRICAO varchar (50),
NU_ANO varchar (50),
TP_CERTIFICACAO varchar (50),
TP_FAIXA_ETARIA varchar (50),
TP_SEXO varchar (50),
CO_UF_PROVA varchar (50),
SG_UF_PROVA varchar (50),
NO_ENTIDADE_CERTIFICADORA varchar (50),
IN_PROVA_LC varchar (50),
IN_PROVA_MT varchar (50),
IN_PROVA_CN varchar (50),
IN_PROVA_CH varchar (50),
TP_PRESENCA_LC varchar (50),
TP_PRESENCA_MT varchar (50),
TP_PRESENCA_CN varchar (50),
TP_PRESENCA_CH varchar (50),
CO_PROVA_LC varchar (50),
CO_PROVA_MT varchar (50),
CO_PROVA_CN varchar (50),
CO_PROVA_CH varchar (50),
NU_NOTA_LC varchar (50),
NU_NOTA_MT varchar (50),
NU_NOTA_CN varchar (50),
NU_NOTA_CH varchar (50),
IN_APROVADO_LC varchar (50),
IN_APROVADO_MT varchar (50),
IN_APROVADO_CN varchar (50),
IN_APROVADO_CH varchar (50),
TX_RESPOSTAS_LC varchar (50),
TX_RESPOSTAS_MT varchar (50),
TX_RESPOSTAS_CN varchar (50),
TX_RESPOSTAS_CH varchar (50),
TX_GABARITO_LC varchar (50),
TX_GABARITO_MT varchar (50),
TX_GABARITO_CN varchar (50),
TX_GABARITO_CH varchar (50),
TP_STATUS_REDACAO varchar (50),
NU_NOTA_COMP1 varchar (50),
NU_NOTA_COMP2 varchar (50),
NU_NOTA_COMP3 varchar (50),
NU_NOTA_COMP4 varchar (50),
NU_NOTA_COMP5 varchar (50),
NU_NOTA_REDACAO varchar (50)
);

RENAME TABLE MICRODADOS_ENCCEJA_NACIONAL_PPL_2019 TO 2019_PPL_NACIONAL_MICRODADOS_ENCCEJA;

----------------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_NACIONAL_PPL_QSE_2019" --
----------------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_NACIONAL_PPL_QSE_2019 (
Q001 varchar (1), Q002 varchar (1),Q003 varchar (1),Q004 varchar (1),Q005 varchar (1),Q006 varchar (1),
Q007A varchar (1), Q007B varchar (1),Q007C varchar (1),Q007D varchar (1),Q007E varchar (1),
Q007F varchar (1), Q007G varchar (1), Q008 varchar (1),Q009 varchar (1),Q010 varchar (1),Q011 varchar (1),
Q012 varchar (1), Q013 varchar (1), Q014 varchar (1),
Q015 varchar (1), Q016 varchar (1), Q017 varchar (1), Q018 varchar (1), Q019A varchar (1), Q019B varchar (1), Q019C varchar (1),
Q019D varchar (1), Q020 varchar (1), Q021_1 varchar (1), Q021_2 varchar (1), Q021_3 varchar (1), Q021_4 varchar (1),
Q021_5 varchar (1), Q022_1 varchar (1), Q022_2 varchar (1), Q022_3 varchar (1), Q022_4 varchar (1),
Q022_5 varchar (1), Q023A varchar (1), Q023B varchar (1), Q023C varchar (1), Q023D varchar (1), Q023E varchar (1),
Q024 varchar (1), Q025 varchar (1), Q026 varchar (1), Q027 varchar (1), Q028 varchar (1), Q029 varchar (1),
Q030_1 varchar (1), Q030_2 varchar (1), Q030_3 varchar (1), Q030_4 varchar (1), Q030_5 varchar (1),
Q030_6 varchar (1), Q030_7 varchar (1), Q030_8 varchar (1), Q031 varchar (1), Q032 varchar (1), Q033 varchar (1),
Q034 varchar (1), Q035 varchar (1), Q036 varchar (1), Q037 varchar (1),
Q038 varchar (1), Q039A varchar (1), Q039B varchar (1), Q039C varchar (1), Q039D varchar (1),
Q039E varchar (1), Q039F varchar (1), Q039G varchar (1), Q039H varchar (1), Q039I varchar (1), Q039J varchar (1), Q039K varchar (1), Q039L varchar (1),
Q040A varchar (1), Q040B varchar (1), Q040C varchar (1), Q040D varchar (1), Q040E varchar (1),
Q040F varchar (1), Q040G varchar (1)

);

RENAME TABLE MICRODADOS_ENCCEJA_NACIONAL_PPL_QSE_2019 TO 2019_PPL_QSE_NACIONAL_MICRODADOS_ENCCEJA;

-----------------------------------------------------------------------------
-- Comando para criar a tabela " MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019" --
-----------------------------------------------------------------------------

create table microdados_encceja_nacional_regular_2019 (
NU_INSCRICAO varchar (100), NU_ANO varchar (100), TP_CERTIFICACAO varchar (100), TP_FAIXA_ETARIA varchar (100), TP_SEXO varchar (100), CO_UF_PROVA varchar (100),
SG_UF_PROVA varchar (100), NO_ENTIDADE_CERTIFICADORA varchar (100), IN_PROVA_LC varchar (100), IN_PROVA_MT varchar (100),
IN_PROVA_CN varchar (100), IN_PROVA_CH varchar (100), TP_PRESENCA_LC varchar (100), TP_PRESENCA_MT varchar (100),
TP_PRESENCA_CN varchar (100), TP_PRESENCA_CH varchar (100), CO_PROVA_LC varchar (100), CO_PROVA_MT varchar (100), CO_PROVA_CN varchar (100),
CO_PROVA_CH varchar (100), NU_NOTA_LC varchar (100), NU_NOTA_MT varchar (100), NU_NOTA_CN varchar (100), NU_NOTA_CH varchar (100), IN_APROVADO_LC varchar (100),
IN_APROVADO_MT varchar (100), IN_APROVADO_CN varchar (100), IN_APROVADO_CH varchar (100), TX_RESPOSTAS_LC varchar (100),
TX_RESPOSTAS_MT varchar (100), TX_RESPOSTAS_CN varchar (100), TX_RESPOSTAS_CH varchar (100), TX_GABARITO_LC varchar (100),
TX_GABARITO_MT varchar (100), TX_GABARITO_CN varchar (100), TX_GABARITO_CH varchar (100), TP_STATUS_REDACAO varchar (100),
NU_NOTA_COMP1 varchar (100), NU_NOTA_COMP2 varchar (100), NU_NOTA_COMP3 varchar (100), NU_NOTA_COMP4 varchar (100),
NU_NOTA_COMP5 varchar (100), NU_NOTA_REDACAO varchar (100),Q01  varchar (1), Q02  varchar (1),
Q03 varchar (1), Q04  varchar (1), Q05  varchar (1), Q06  varchar (1), Q07  varchar (1),
Q08 varchar (1), Q09 varchar (1), Q10 varchar (1), Q11 varchar (1), Q12 varchar (1),
Q13 varchar (1), Q14 varchar (1), Q15 varchar (1), Q16 varchar (1), Q17 varchar (1), 
Q18 varchar (1), Q19 varchar (1), Q20 varchar (1), Q21 varchar (1),
Q22 varchar (1), Q23 varchar (1), Q24 varchar (1), Q25 varchar (1), Q26 varchar (1),
Q27 varchar (1), Q28 varchar (1), Q29 varchar (1), Q30 varchar (1), Q31 varchar (1),
Q32 varchar (1), Q33 varchar (1), Q34 varchar (1), Q35 varchar (1),
Q36 varchar (1), Q37 varchar (1), Q38 varchar (1), Q39 varchar (1),
Q40 varchar (1), Q41 varchar (1), Q42 varchar (1), Q43 varchar (1),
Q44 varchar (1), Q45 varchar (1), Q46 varchar (1), Q47 varchar (1), Q48 varchar (1)
);
 
RENAME TABLE microdados_encceja_nacional_regular_2019 TO 2019_REGULAR_NACIONAL_MICRODADOS_ENCCEJA;
