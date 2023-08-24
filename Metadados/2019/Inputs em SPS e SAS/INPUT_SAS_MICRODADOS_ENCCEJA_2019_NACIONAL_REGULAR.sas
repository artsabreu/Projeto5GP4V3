/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos e Medidas							               */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2019_REGULAR_NACIONAL	                   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2019- NACIONAL LIBERTOS  */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTIONÁRIO SOCIOECONÔMICO					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e 					   */
/* o arquivo com os dados do ENCCEJA REGULAR NACIONAL		                           */
/* no diretório C:\ do computador.		                                   			   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                           
/* Os Rótulos de algumas variáveis não estão completos em virtude do tamanho           */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o      */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem consulta ao Dicionário de      */
/* Variáveis para conhecer o enunciado completo.                                       */
/* 							                                                           */                                                            
/***************************************************************************************/

PROC FORMAT;

VALUE  TP_FAIXA_ETARIA
1  = 'Menor de 17 anos'
2  = '17 anos'
3  = '18 anos'
4  = '19 anos'
5  = '20 anos'
6  = '21 anos'
7  = '22 anos'
8  = '23 anos'
9  = '24 anos'
10 = '25 anos'
11 = 'Entre 26 e 30 anos'
12 = 'Entre 31 e 35 anos'
13 = 'Entre 36 e 40 anos'
14 = 'Entre 41 e 45 anos'
15 = 'Entre 46 e 50 anos'
16 = 'Entre 51 e 55 anos'
17 = 'Entre 56 e 60 anos'
18 = 'Entre 61 e 65 anos'
19 = 'Entre 66 e 70 anos'
20 = 'Maior de 70 anos';

VALUE TP_CERTIFICACAO

1= 'Ensino Fundamental'
2= 'Ensino Médio';

VALUE $TP_SEXO

F = 'Feminino'
M = 'Masculino';

VALUE IN_PROVA_LC

0= 'Não'
1= 'Sim';

VALUE IN_PROVA_MT

0= 'Não'
1= 'Sim';

VALUE IN_PROVA_CN

0= 'Não'
1= 'Sim';

VALUE IN_PROVA_CH

0= 'Não'
1= 'Sim';

VALUE TP_PRESENCA_LC

0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova'
3=	'Aplicação não realizada';

VALUE TP_PRESENCA_MT

0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova'
3=	'Aplicação não realizada';

VALUE TP_PRESENCA_CN

0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova'
3=	'Aplicação não realizada';

VALUE TP_PRESENCA_CH

0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova'
3=	'Aplicação não realizada';

VALUE CO_PROVA_LC

201903=	'Cinza (Ensino Fundamental)'
201907=	'Cinza - Ledor (Ensino Fundamental)'
201911=	'Branca (Ensino Médio)'
201915=	'Branca - Ledor (Ensino Médio)'
201947=	'Branca (Ensino Médio - Reaplicação)';

VALUE CO_PROVA_MT

201902=	'Amarela (Ensino Fundamental)'
201906=	'Amarela - Ledor  (Ensino Fundamental)'
201910=	'Amarela (Ensino Médio)'
201914=	'Amarela - Ledor (Ensino Médio)'
201946=	'Amarela (Ensino Médio - Reaplicação)';

VALUE CO_PROVA_CN

201901=	'Rosa (Ensino Fundamental)'
201905=	'Rosa - Ledor (Ensino Fundamental)'
201909=	'Rosa (Ensino Médio)'
201913=	'Rosa - Ledor (Ensino Médio)'
201941=	'Rosa (Ensino Fundamental - Reaplicação)'
201945=	'Rosa (Ensino Médio - Reaplicação)';

VALUE CO_PROVA_CH

201904=	'Azul (Ensino Fundamental)'
201908=	'Azul  - Ledor (Ensino Fundamental)'
201912=	'Azul (Ensino Médio)'
201916=	'Azul - Ledor (Ensino Médio)'
201948=	'Azul (Ensino Médio - Reaplicação)';

VALUE IN_APROVADO_LC

0= 'Não'
1= 'Sim';

VALUE IN_APROVADO_MT

0= 'Não'
1= 'Sim';

VALUE IN_APROVADO_CN

0= 'Não'
1= 'Sim';

VALUE IN_APROVADO_CH

0= 'Não'
1= 'Sim';

VALUE TP_STATUS_REDACAO

1= 	'Sem problemas'
2=	'Anulada'
3=	'Cópia Texto Motivador'
4=	'Em Branco'
6=	'Fuga ao tema'
7=	'Não atendimento ao tipo textual'
8=	'Texto insuficiente';

VALUE $Q01_

'A'=	'Moro sozinho'
'B'=	'Uma a três'
'C'=	'Quatro a sete'
'D'=	'Oito a dez'
'E'=	'Mais de dez';

VALUE $Q02_

'A'=	'Própria'
'B'=	'Alugada'
'C'=	'Cedida';

VALUE $Q03_

'A'=	'Zona rural'
'B'=	'Zona urbana'
'C'=	'Comunidade indígena'
'D'=	'Comunidade quilombola';

VALUE $Q04_

'A'=	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
'B'=	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
'C'=	'Ensino Médio (antigo 2º grau)'
'D'=	'Ensino Superior'
'E'=	'Especialização'
'F'=	'Não estudou'
'G'=	'Não sei';

VALUE $Q05_

'A'=	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
'B'=	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
'C'=	'Ensino Médio (antigo 2º grau)'
'D'=	'Ensino Superior'
'E'=	'Especialização'
'F'=	'Não estudou'
'G'=	'Não sei';

VALUE $Q06_

'A'=	'Nenhuma renda.'
'B'=	'Até 1 salário mínimo (até R$ 954,00).'
'C'=	'(De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00).'
'D'=	'(De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00).'
'E'=	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00).'
'F'=	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00).'
'G'=	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00).'
'H'=	'Mais de 15 salários mínimos (mais de R$ 14.310,01).';

VALUE $Q07_

'A'=	'Nenhuma renda.'
'B'=	'Até 1 salário mínimo (até R$ 954,00).'
'C'=	'(De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00).'
'D'=	'(De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00).'
'E'=	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00).'
'F'=	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00).'
'G'=	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00).'
'H'=	'Mais de 15 salários mínimos (mais de R$ 14.310,01).';

VALUE $Q08_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q09_

'A'=	'Na agricultura, no campo, na fazenda ou na pesca'
'B'=	'Na indústria'
'C'=	'Na construção civil'
'D'=	'No comércio, banco, transporte, hotelaria ou outros serviços'
'E'=	'Como funcionário(a) do governo federal, estadual ou municipal'
'F'=	'Como profissional liberal, professora ou técnica de nível superior'
'G'=	'Trabalho fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador/a de carros, catador/a de lixo)'
'H'=	'Trabalho em minha casa informalmente (costura, aulas particulares, cozinha, artesanato, carpintaria etc.)'
'I'=	'Faço trabalho doméstico em casa de outras pessoas (cozinheiro/a, mordomo/governanta, jardineiro, babá, lavadeira, faxineiro/a, acompanhante de idosos/as etc.)'
'J'=	'No lar (sem remuneração)'
'K'=	'Outro'
'L'=	'Não trabalho';

VALUE $Q15_

'A'=	'Sem jornada fixa, até 10 horas semanais'
'B'=	'De 11 a 20 horas semanais'
'C'=	'De 21 a 30 horas semanais'
'D'=	'De 31 a 40 horas semanais'
'E'=	'Mais de 40 horas semanais';

VALUE $Q16_

'A'=	'Antes dos 14 anos'
'B'=	'Entre 14 e 16 anos'
'C'=	'Entre 17 e 18 anos'
'D'=	'Após 18 anos';

VALUE $Q17_

'A'=	'Atrapalhou meus estudos'
'B'=	'Possibilitou meus estudos'
'C'=	'Possibilitou meu crescimento pessoal'
'D'=	'Não atrapalhou meus estudos';

VALUE $Q18_

'A'=	'Não, nunca'
'B'=	'Sim, uma vez'
'C'=	'Sim, duas vezes'
'D'=	'Sim, três vezes ou mais';

VALUE $Q19_

'A'=	'Conseguir um emprego'
'B'=	'Progredir no emprego atual'
'C'=	'Conseguir um emprego melhor'
'D'=	'Adquirir mais conhecimento, ficar atualizado'
'E'=	'Atender à expectativa de meus familiares sobre meus estudos'
'F'=	'Não pretendo voltar a estudar';

VALUE $Q20_

'A'=	'Não frequentei'
'B'=	'1ª série do ensino fundamental (antigo primário, 1º grau)'
'C'=	'2ª série do ensino fundamental (antigo primário, 1º grau)'
'D'=	'3ª série do ensino fundamental (antigo primário, 1º grau)'
'E'=	'4ª série do ensino fundamental (antigo primário, 1º grau)'
'F'=	'5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G'=	'6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H'=	'7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I'=	'8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'J'=	'1ª série do ensino médio (antigo 2º grau)'
'K'=	'2ª série do ensino médio (antigo 2º grau)'
'L'=	'3ª série do ensino médio (antigo 2º grau)';

VALUE $Q21_

'A'=	'Nunca frequentei a escola'
'B'=	'Estou frequentando a escola'
'C'=	'Menos de 10 anos'
'D'=	'Entre 10 e 14 anos (inclusive)'
'E'=	'Entre 15 e 18 anos (inclusive)'
'F'=	'Entre 19 e 24 anos (inclusive)'
'G'=	'Entre 25 e 30 anos (inclusive)'
'H'=	'Mais de 30 anos';


VALUE $Q31_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q32_

'A'=	'Curso presencial em escola pública'
'B'=	'Curso presencial em escola privada'
'C'=	'Curso presencial na empresa em que trabalha, instituição filantrópica ou religiosa'
'D'=	'Curso a distância (via rádio, televisão, internet, correio, com apostilas)'
'E'=	'Curso semipresencial em escola pública'
'F'=	'Curso semipresencial em escola privada';

VALUE $Q33_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q34_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q35_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q36_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q37_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q38_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q39_

'A'=	'Sim'
'B'=	'Não';

VALUE $Q40_

'A'=	'Sim'
'B'=	'Não';

;
DATA ENCCEJA_REGULAR_NACIONAL;

INFILE 'C:\MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=586
        FIRSTOBS=2
        DLM=','
        MISSOVER
        DSD ;
    INPUT
        NU_INSCRICAO     : ?? BEST12.
		NU_ANO		     : ?? BEST4.
        TP_CERTIFICACAO  : ?? BEST1.
        TP_FAIXA_ETARIA  : ?? BEST2.
        TP_SEXO          : $CHAR1.
        CO_UF_PROVA      : ?? BEST2.
        SG_UF_PROVA      : $CHAR2.
        NO_ENTIDADE_CERTIFICADORA : $CHAR111.
        IN_PROVA_LC      : ?? BEST1.
        IN_PROVA_MT      : ?? BEST1.
        IN_PROVA_CN      : ?? BEST1.
        IN_PROVA_CH      : ?? BEST1.
        TP_PRESENCA_LC   : ?? BEST1.
        TP_PRESENCA_MT   : ?? BEST1.
        TP_PRESENCA_CN   : ?? BEST1.
        TP_PRESENCA_CH   : ?? BEST1.
        CO_PROVA_LC      : ?? BEST6.
        CO_PROVA_MT      : ?? BEST6.
        CO_PROVA_CN      : ?? BEST6.
        CO_PROVA_CH      : ?? BEST6.
        NU_NOTA_LC       : ?? BEST3.
        NU_NOTA_MT       : ?? BEST3.
        NU_NOTA_CN       : ?? BEST3.
        NU_NOTA_CH       : ?? BEST3.
        IN_APROVADO_LC   : ?? BEST1.
        IN_APROVADO_MT   : ?? BEST1.
        IN_APROVADO_CN   : ?? BEST1.
        IN_APROVADO_CH   : ?? BEST1.
        TX_RESPOSTAS_LC  : $CHAR30.
        TX_RESPOSTAS_MT  : $CHAR30.
        TX_RESPOSTAS_CN  : $CHAR30.
        TX_RESPOSTAS_CH  : $CHAR30.
        TX_GABARITO_LC   : $CHAR30.
        TX_GABARITO_MT   : $CHAR30.
        TX_GABARITO_CN   : $CHAR30.
        TX_GABARITO_CH   : $CHAR30.
        TP_STATUS_REDACAO : ?? BEST1.
        NU_NOTA_COMP1    : ?? COMMA4.
        NU_NOTA_COMP2    : ?? COMMA4.
        NU_NOTA_COMP3    : ?? COMMA4.
        NU_NOTA_COMP4    : ?? COMMA4.
        NU_NOTA_COMP5    : ?? COMMA3.
        NU_NOTA_REDACAO  : ?? COMMA4.
        Q01              : $CHAR1.
        Q02              : $CHAR1.
        Q03              : $CHAR1.
        Q04              : $CHAR1.
        Q05              : $CHAR1.
        Q06              : $CHAR1.
        Q07              : $CHAR1.
        Q08              : $CHAR1.
        Q09              : $CHAR1.
        Q10              : $CHAR1.
        Q11              : $CHAR1.
        Q12              : $CHAR1.
        Q13              : $CHAR1.
        Q14              : $CHAR1.
        Q15              : $CHAR1.
        Q16              : $CHAR1.
        Q17              : $CHAR1.
        Q18              : $CHAR1.
        Q19              : $CHAR1.
        Q20              : $CHAR1.
        Q21              : $CHAR1.
        Q22              : $CHAR1.
        Q23              : $CHAR1.
        Q24              : $CHAR1.
        Q25              : $CHAR1.
        Q26              : $CHAR1.
        Q27              : $CHAR1.
        Q28              : $CHAR1.
        Q29              : $CHAR1.
        Q30              : $CHAR1.
        Q31              : $CHAR1.
        Q32              : $CHAR1.
        Q33              : $CHAR1.
        Q34              : $CHAR1.
        Q35              : $CHAR1.
        Q36              : $CHAR1.
        Q37              : $CHAR1.
        Q38              : $CHAR1.
        Q39              : $CHAR1.
        Q40              : $CHAR1.
        Q41              : $CHAR1.
        Q42              : $CHAR1.
        Q43              : $CHAR1.
        Q44              : $CHAR1.
        Q45              : $CHAR1.
        Q46              : $CHAR1.
        Q47              : $CHAR1.
        Q48              : $CHAR1.;


ATTRIB TP_CERTIFICACAO FORMAT=TP_CERTIFICACAO.;
ATTRIB TP_FAIXA_ETARIA FORMAT=TP_FAIXA_ETARIA.;    
ATTRIB TP_SEXO        FORMAT=$TP_SEXO.;        
ATTRIB IN_PROVA_LC     FORMAT=IN_PROVA_LC.;     
ATTRIB IN_PROVA_MT     FORMAT=IN_PROVA_MT.;     
ATTRIB IN_PROVA_CN     FORMAT=IN_PROVA_CN.;     
ATTRIB IN_PROVA_CH     FORMAT=IN_PROVA_CH.;     
ATTRIB TP_PRESENCA_LC  FORMAT=TP_PRESENCA_LC.;  
ATTRIB	TP_PRESENCA_MT FORMAT=TP_PRESENCA_MT.; 
ATTRIB	TP_PRESENCA_CN FORMAT=TP_PRESENCA_CN.; 
ATTRIB	TP_PRESENCA_CH FORMAT=TP_PRESENCA_CH.; 
ATTRIB	CO_PROVA_LC    FORMAT=CO_PROVA_LC.;    
ATTRIB	CO_PROVA_MT    FORMAT=CO_PROVA_MT.;    
ATTRIB	CO_PROVA_CN    FORMAT=CO_PROVA_CN.;    
ATTRIB	CO_PROVA_CH    FORMAT=CO_PROVA_CH.;       
ATTRIB	IN_APROVADO_LC FORMAT=IN_APROVADO_LC.; 
ATTRIB	IN_APROVADO_MT FORMAT=IN_APROVADO_MT.; 
ATTRIB	IN_APROVADO_CN FORMAT=IN_APROVADO_CN.; 
ATTRIB	IN_APROVADO_CH FORMAT=IN_APROVADO_CH.; 
ATTRIB	TP_STATUS_REDACAO FORMAT=TP_STATUS_REDACAO.;
ATTRIB	Q01           FORMAT=$Q01_.; 
ATTRIB	Q02           FORMAT=$Q02_.;
ATTRIB	Q03           FORMAT=$Q03_.; 
ATTRIB	Q04           FORMAT=$Q04_.; 
ATTRIB	Q05           FORMAT=$Q05_.; 
ATTRIB	Q06           FORMAT=$Q06_.; 
ATTRIB	Q07           FORMAT=$Q07_.; 
ATTRIB	Q08           FORMAT=$Q08_.; 
ATTRIB	Q09           FORMAT=$Q09_.; 
ATTRIB	Q15           FORMAT=$Q15_.;
ATTRIB	Q16           FORMAT=$Q16_.; 
ATTRIB	Q17           FORMAT=$Q17_.; 
ATTRIB	Q18           FORMAT=$Q18_.; 
ATTRIB	Q19           FORMAT=$Q19_.; 
ATTRIB	Q20           FORMAT=$Q20_.; 
ATTRIB	Q21           FORMAT=$Q21_.; 
ATTRIB	Q31           FORMAT=$Q31_.; 
ATTRIB	Q32           FORMAT=$Q32_.; 
ATTRIB	Q33           FORMAT=$Q33_.; 
ATTRIB	Q34           FORMAT=$Q34_.; 
ATTRIB	Q35           FORMAT=$Q35_.; 
ATTRIB	Q36           FORMAT=$Q36_.; 
ATTRIB	Q37           FORMAT=$Q37_.; 
ATTRIB	Q38           FORMAT=$Q38_.; 
ATTRIB	Q39           FORMAT=$Q39_.; 
ATTRIB	Q40           FORMAT=$Q40_.; 

LABEL

NU_INSCRICAO= 'Campo com máscara no número de inscrição do candidato.'
NU_ANO= 'Ano do Exame Encceja que está em análise.'    
TP_CERTIFICACAO= 'Indicador do tipo de certificação pedida pelo participante.'
TP_FAIXA_ETARIA= 'Faixa etária do participante conforme idade em 31 de dezembro do ano do exame.'         
TP_SEXO= 'Sexo do participante.'          
CO_UF_PROVA= 'Código da Unidade da Federação da aplicação da prova'
SG_UF_PROVA= 'Sigla da Unidade da Federação da aplicação da prova'
NO_ENTIDADE_CERTIFICADORA= 'Nome da Unidade Participante responsável pela certificação do exame.'
IN_PROVA_LC= 'Indica solicitação de inscrição do participante na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.'     
IN_PROVA_MT= 'Indica solicitação de inscrição do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_PROVA_CN= 'Indica solicitação de inscrição do participante na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_PROVA_CH= 'Indica solicitação de inscrição do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TP_PRESENCA_LC= 'Indica a presença do participante na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.' 
TP_PRESENCA_MT= 'Indica a presença do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TP_PRESENCA_CN= 'Indica a presença do participante na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TP_PRESENCA_CH= 'Indica a presença do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
CO_PROVA_LC= 'Código da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.'      
CO_PROVA_MT= 'Código da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
CO_PROVA_CN= 'Código da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
CO_PROVA_CH= 'Código da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
NU_NOTA_LC= 'Nota da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.'
NU_NOTA_MT= 'Nota da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
NU_NOTA_CN= 'Nota da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'     
NU_NOTA_CH= 'Nota da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
IN_APROVADO_LC= 'Indica se o participante foi aprovado na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.'
IN_APROVADO_MT= 'Indica se o participante foi aprovado na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_APROVADO_CN= 'Indica se o participante foi aprovado na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'   
IN_APROVADO_CH= 'Indica se o participante foi aprovado na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_LC= 'Vetor com as respostas da parte objetiva da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_MT= 'Vetor com as respostas da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_CN= 'Vetor com as respostas da parte objetiva da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_CH= 'Vetor com as respostas da parte objetiva da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TX_GABARITO_LC= 'Vetor com o gabarito da parte objetiva da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.'
TX_GABARITO_MT= 'Vetor com o gabarito da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'  
TX_GABARITO_CN= 'Vetor com o gabarito da parte objetiva da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_GABARITO_CH= 'Vetor com o gabarito da parte objetiva da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'  
TP_STATUS_REDACAO= 'Situação da redação do participante'
NU_NOTA_COMP1= 'Nota da competência 1 - Demonstrar domínio da modalidade escrita formal da Língua Portuguesa.' 
NU_NOTA_COMP2= 'Nota da competência 2 - Compreender a proposta de redação e aplicar conceitos das várias áreas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'
NU_NOTA_COMP3= 'Nota da competência 3 - Selecionar, relacionar, organizar e interpretar informações, fatos, opiniões e argumentos em defesa de um ponto de vista.'
NU_NOTA_COMP4= 'Nota da competência 4 - Demonstrar conhecimento dos mecanismos linguísticos necessários para a construção da argumentação.'   
NU_NOTA_COMP5= 'Nota da competência 5 - Elaborar proposta de intervenção para o problema abordado, respeitando os direitos humanos. Essa nota será atribuída apenas para os participantes que solicitaram certificação de Ensino Médio.'
NU_NOTA_REDACAO= 'Nota da prova de redação.'
Q01= 'Quantas pessoas moram com você? (incluindo filhos, irmãos, parentes e amigos)'
Q02= 'A casa onde você mora é? (Marque apenas uma resposta)'
Q03= 'Sua casa está localizada em? (Marque apenas uma resposta)'
Q04= 'Qual é o nível de escolaridade do seu pai? (Marque apenas uma resposta)'
Q05= 'Qual é o nível de escolaridade da sua mãe? (Marque apenas uma resposta)'
Q06= 'Somando a sua renda com a renda das pessoas que moram com você, quanto é, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'
Q07= 'Qual a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'
Q08= 'Você trabalha ou já trabalhou? (Marque apenas uma resposta)'
Q09= ' Em que você trabalha atualmente? (Marque apenas uma resposta)'
Q10= ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ajudar nas despesas com a casa'
Q11= ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Sustentar minha família (esposo/a, filhos/as etc.)'
Q12= ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ser independente (ganhar meu próprio dinheiro)'
Q13= ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Adquirir experiência'
Q14= ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Custear/ pagar meus estudos'
Q15= ' Quantas horas semanais você trabalha? (Marque apenas uma resposta)'
Q16= ' Com que idade você começou a trabalhar? (Marque apenas uma resposta)'
Q17= ' Como você avalia ter estudado e trabalhado durante seus estudos? (Marque apenas uma resposta)'
Q18= ' Você já reprovou alguma vez? (Marque apenas uma resposta)'
Q19= ' Qual principal motivo faria você voltar a estudar ou continuar estudando? (Marque apenas uma resposta)'
Q20= ' Se você já frequentou a escola regular, em que série você deixou de estudar? (Marque apenas uma resposta)'
Q21= ' Se você deixou de frequentar a escola regular, quantos anos você tinha? (Marque apenas uma resposta)'
Q22= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para conseguir o certificado de conclusão do Ensino Fundamental ou Médio'
Q23= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Porque parentes, amigos(as) e professores(as) me recomendaram'
Q24= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para continuar meus estudos'
Q25= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Porque não posso estudar'
Q26= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Porque não quero ou não gosto de estudar'
Q27= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Por que é a melhor maneira para conciliar meus estudos e trabalho'
Q28= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para conseguir um emprego'
Q29= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para fazer curso profissionalizante e me preparar para o trabalho'
Q30= ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para progredir no emprego atual'
Q31= ' Você cursa ou já cursou a Educação de Jovens e Adultos ¿ EJA? (Marque apenas uma resposta)'
Q32= ' Como é ou era o curso de EJA que você frequenta ou frequentou? (Marque apenas uma resposta)'
Q33= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Não se aplica'
Q34= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Trabalho/ não tinha tempo de estudar'
Q35= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Estudava no curso da empresa e foi interrompido'
Q36= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Problemas de saúde ou acidentes comigo ou familiares'
Q37= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Mudança de estado, município ou cidade'
Q38= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Motivos pessoais: casamento / filhos'
Q39= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Não tinha interesse / desisti'
Q40= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Senti-me discriminado(a) / Sofri agressão (física ou verbal)'
Q41= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Inexistência de vaga em escola pública'
Q42= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Ausência de escola perto de casa'
Q43= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Falta de interesse em estudar'
Q44= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular:  Trabalho - falta de tempo para estudar'
Q45= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular:  Motivos pessoais - casamento / filhos'
Q46= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Falta de apoio familiar'
Q47= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Problemas de saúde ou acidente comigo ou familiares'
Q48= ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Discriminação/preconceitos de raça, sexo, cor, idade ou socioeconômico'
;
RUN;QUIT;