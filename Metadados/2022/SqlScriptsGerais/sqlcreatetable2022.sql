------------------------
-- sqlcreatetable2022 --
------------------------

------------------------------------------------------------
-- Comando para habilitar o uso do banco de dados "bdpuc" --
------------------------------------------------------------

USE bdpuc;

------------------------------------------------------------------------------
-- Dando continuidade, vamos criar as tabelas dos microdados do ano de 2022 --
------------------------------------------------------------------------------

-----------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_2022_ITENS_PROVA" --
-----------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_2022_ITENS_PROVA (
TP_PROVA varchar (15), CO_POSICAO varchar (15), SG_AREA varchar (15), 
CO_ITEM varchar (15), TX_GABARITO varchar (15), CO_HABILIDADE varchar (15), 
CO_PROVA varchar (15), IN_ITEM_ABAN varchar (15), TX_MOTIVO_ABAN varchar (15), 
NU_PARAM_A varchar (15), NU_PARAM_B varchar (15), NU_PARAM_C varchar (15), 
TX_COR varchar (15), TP_CERTIFICACAO varchar (15), IN_ITEM_ADAPTADO varchar (15)
);

RENAME TABLE MICRODADOS_ENCCEJA_2022_ITENS_PROVA TO 2022_itens_da_prova_microdados_encceja;

-------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_2022_PPL_NAC" --
-------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_2022_PPL_NAC (
NU_INSCRICAO varchar (50), NU_ANO varchar (50), TP_CERTIFICACAO varchar (50),
TP_FAIXA_ETARIA varchar (50), TP_SEXO varchar (50), CO_UF_PROVA varchar (50),
SG_UF_PROVA varchar (50), NO_ENTIDADE_CERTIFICADORA varchar (50), IN_PROVA_LC varchar (50),
IN_PROVA_MT varchar (50), IN_PROVA_CN varchar (50), IN_PROVA_CH varchar (50), 
TP_PRESENCA_LC varchar (50), TP_PRESENCA_MT varchar (50), TP_PRESENCA_CN varchar (50), 
TP_PRESENCA_CH varchar (50), CO_PROVA_LC varchar (50), CO_PROVA_MT varchar (50),
CO_PROVA_CN varchar (50), CO_PROVA_CH varchar (50), NU_NOTA_LC varchar (50), 
NU_NOTA_MT varchar (50), NU_NOTA_CN varchar (50), NU_NOTA_CH varchar (50),
IN_APROVADO_LC varchar (50), IN_APROVADO_MT varchar (50), IN_APROVADO_CN varchar (50), 
IN_APROVADO_CH varchar (50), TX_RESPOSTAS_LC varchar (50), TX_RESPOSTAS_MT varchar (50), 
TX_RESPOSTAS_CN varchar (50), TX_RESPOSTAS_CH varchar (50),
TX_GABARITO_LC varchar (50), TX_GABARITO_MT varchar (50), TX_GABARITO_CN varchar (50), 
TX_GABARITO_CH varchar (50), TP_STATUS_REDACAO varchar (50), NU_NOTA_COMP1 varchar (50), 
NU_NOTA_COMP2 varchar (50), NU_NOTA_COMP3 varchar (50), NU_NOTA_COMP4 varchar (50), 
NU_NOTA_COMP5 varchar (50), NU_NOTA_REDACAO varchar (50)
);

RENAME TABLE MICRODADOS_ENCCEJA_2022_PPL_NAC TO 2022_ppl_nacional_microdados_encceja;

-----------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE" --
-----------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE (
Q001 varchar (1), Q002 varchar (1), Q003 varchar (1), Q004 varchar (1), Q005A varchar (1), 
Q005B varchar (1), Q005C varchar (1), Q005D varchar (1), Q005E varchar (1), Q005F varchar (1), 
Q005G varchar (1), Q006 varchar (1), Q007 varchar (1), Q008 varchar (1), 
Q009 varchar (1), Q010 varchar (1), Q011A varchar (1), Q011B varchar (1),
Q011C varchar (1), Q011D varchar (1), Q011E varchar (1), Q011F varchar (1), 
Q011G varchar (1), Q012 varchar (1), Q013 varchar (1), Q014 varchar (1),
Q015 varchar (1), Q016 varchar (1), Q017 varchar (1), Q018 varchar (1), 
Q019 varchar (1), Q020 varchar (1), Q021 varchar (1), Q022A varchar (1), Q022B varchar (1), 
Q022C varchar (1), Q022D varchar (1), Q022E varchar (1), Q022F varchar (1), Q022G varchar (1), 
Q022H varchar (1), Q023A varchar (1), Q023B varchar (1), Q023C varchar (1), Q023D varchar (1), 
Q023E varchar (1), Q023F varchar (1), Q023G varchar (1), Q024 varchar (1), 
Q025 varchar (1), Q026 varchar (1), Q027 varchar (1), Q028A varchar (1), 
Q028B varchar (1), Q028C varchar (1), Q028D varchar (1), Q028E varchar (1), 
Q029 varchar (1), Q030_1 varchar (1), Q030_2 varchar (1), Q030_3 varchar (1), 
Q030_4 varchar (1), Q030_5 varchar (1), Q030_6 varchar (1), Q030_7 varchar (1), 
Q031A varchar (1), Q031B varchar (1), Q031C varchar (1), Q031D varchar (1), 
Q031E varchar (1), Q031F varchar (1), Q032A varchar (1), Q032B varchar (1), 
Q032C varchar (1), Q032D varchar (1), Q032E varchar (1), 
Q032F varchar (1), Q032G varchar (1), Q032H varchar (1), 
Q033 varchar (1), Q034A varchar (1), Q034B varchar (1), Q034C varchar (1), 
Q034D varchar (1), Q034E varchar (1), Q034F varchar (1),
Q035 varchar (1), Q036 varchar (1), Q037A varchar (1), 
Q037B varchar (1), Q037C varchar (1), Q037D varchar (1), Q037E varchar (1), 
Q037F varchar (1), Q037G varchar (1), Q037H varchar (1), 
Q037I varchar (1), Q037J varchar (1), Q037K varchar (1), Q038A varchar (1),
Q038B varchar (1), Q038C varchar (1), Q038D varchar (1), Q038E varchar (1), 
Q039_1 varchar (1), Q039_2 varchar (1), Q039_3 varchar (1), Q039_4 varchar (1),
Q039_5 varchar (1), Q039_6 varchar (1), Q039_7 varchar (1) 
);

RENAME TABLE MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE TO 2022_ppl_qse_nacional_microdados_encceja

-------------------------------------------------------------------
-- Comando para criar a tabela "MICRODADOS_ENCCEJA_2022_REG_NAC" --
-------------------------------------------------------------------

create table MICRODADOS_ENCCEJA_2022_REG_NAC (
NU_INSCRICAO varchar (100), NU_ANO varchar (100), TP_CERTIFICACAO varchar (100),
TP_FAIXA_ETARIA varchar (100),TP_SEXO varchar (100), CO_UF_PROVA varchar (100),
SG_UF_PROVA varchar (100), NO_ENTIDADE_CERTIFICADORA varchar (100),IN_PROVA_LC varchar (100),
IN_PROVA_MT varchar (100), IN_PROVA_CN varchar (100), IN_PROVA_CH varchar (100),
TP_PRESENCA_LC varchar (100), TP_PRESENCA_MT varchar (100), TP_PRESENCA_CN varchar (100),
TP_PRESENCA_CH varchar (100), CO_PROVA_LC varchar (100), CO_PROVA_MT varchar (100),
CO_PROVA_CN varchar (100), CO_PROVA_CH varchar (100), NU_NOTA_LC varchar (100),
NU_NOTA_MT varchar (100), NU_NOTA_CN varchar (100), NU_NOTA_CH varchar (100),
IN_APROVADO_LC varchar (100), IN_APROVADO_MT varchar (100), IN_APROVADO_CN varchar (100),
IN_APROVADO_CH varchar (100), TX_RESPOSTAS_LC varchar (100),TX_RESPOSTAS_MT varchar (100),
TX_RESPOSTAS_CN varchar (100), TX_RESPOSTAS_CH varchar (100), TX_GABARITO_LC varchar (100), 
TX_GABARITO_MT varchar (100), TX_GABARITO_CN varchar (100), TX_GABARITO_CH varchar (100),
TP_STATUS_REDACAO varchar (100), NU_NOTA_COMP1 varchar (100), NU_NOTA_COMP2 varchar (100),
NU_NOTA_COMP3 varchar (100), NU_NOTA_COMP4 varchar (100), NU_NOTA_COMP5 varchar (100), NU_NOTA_REDACAO varchar (100),
Q01 varchar (1), Q02 varchar (1), Q03 varchar (1), Q04 varchar (1),
Q05 varchar (1), Q06 varchar (1), Q07 varchar (1), Q08 varchar (1), 
Q09 varchar (1), Q10 varchar (1), Q11 varchar (1), Q12 varchar (1), 
Q13 varchar (1), Q14 varchar (1), Q15 varchar (1), Q16 varchar (1), 
Q17 varchar (1), Q18 varchar (1), Q19 varchar (1), Q20 varchar (1), 
Q21 varchar (1), Q22 varchar (1), Q23 varchar (1), Q24 varchar (1), 
Q25 varchar (1), Q26 varchar (1), Q27 varchar (1), Q28 varchar (1), 
Q29 varchar (1), Q30 varchar (1), Q31 varchar (1), Q32 varchar (1), 
Q33 varchar (1), Q34 varchar (1), Q35 varchar (1), Q36 varchar (1), 
Q37 varchar (1), Q38 varchar (1), Q39 varchar (1), Q40 varchar (1), 
Q41 varchar (1), Q42 varchar (1), Q43 varchar (1), Q44 varchar (1), 
Q45 varchar (1), Q46 varchar (1), Q47 varchar (1), Q48 varchar (1), 
Q49 varchar (1), Q50 varchar (1), Q51 varchar (1), Q52 varchar (1), 
Q53 varchar (1), Q54 varchar (1), Q55 varchar (1), Q56 varchar (1),
Q57 varchar (1), Q58 varchar (1), Q59 varchar (1), Q60 varchar (1), 
Q61 varchar (1), Q62 varchar (1)
);

RENAME TABLE MICRODADOS_ENCCEJA_2022_REG_NAC TO 2022_regular_nacional_microdados_encceja;
