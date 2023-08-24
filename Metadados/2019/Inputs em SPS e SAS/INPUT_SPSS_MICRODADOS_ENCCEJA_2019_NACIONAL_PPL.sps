/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral do Sistema Nacional de Avaliação da Educação Básica              		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2019_PPL_NACIONAL 	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2019- PPL NACIONAL	     */
/* COM DADOS DE CADASTRO E RESPOSTAS						     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e 				     */
/* o arquivo "MICRODADOS_ENCCEJA_2019_PPL_NAC.csv" do ENCCEJA no diretório C:\ do computador.      	     */
/*							                                         */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                                                             */
/* as variáveis de interesse.                                                                                                                                */
/**************************************************************************************************************************************/
/*                                  ATENÇÃO                                                                                                                    */ 
/**************************************************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               			     */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir                                                          */
/* os dados sem os rótulos, basta importar diretamente no SPSS.                                                                        */
/* 							                                         */                                                           
/* Os Rótulos de algumas variáveis não estão completos em virtude do tamanho           		     */
/* das opções questões. Tais enunciados foram resumidos e indicados com o      		                       */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem consulta ao Dicionário de      			     */
/* Variáveis para conhecer o enunciado completo.                                       			     */
/* 							                                         */                                                            
/**************************************************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\MICRODADOS_ENCCEJA_NACIONAL_PPL_2019.csv"
  /DELCASE=LINE
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  NU_INSCRICAO F12.0
  NU_ANO F4.0
  TP_CERTIFICACAO F1.0
  TP_FAIXA_ETARIA F2.0
  TP_SEXO A1
  CO_UF_PROVA F2.0
  SG_UF_PROVA A2
  NO_ENTIDADE_CERTIFICADORA A111
  IN_PROVA_LC F1.0
  IN_PROVA_MT F1.0
  IN_PROVA_CN F1.0
  IN_PROVA_CH F1.0
  TP_PRESENCA_LC F1.0
  TP_PRESENCA_MT F1.0
  TP_PRESENCA_CN F1.0
  TP_PRESENCA_CH F1.0
  CO_PROVA_LC F6.0
  CO_PROVA_MT F6.0
  CO_PROVA_CN F6.0
  CO_PROVA_CH F6.0
  NU_NOTA_LC F3.0
  NU_NOTA_MT F3.0
  NU_NOTA_CN F3.0
  NU_NOTA_CH F3.0
  IN_APROVADO_LC F1.0
  IN_APROVADO_MT F1.0
  IN_APROVADO_CN F1.0
  IN_APROVADO_CH F1.0
  TX_RESPOSTAS_LC A30
  TX_RESPOSTAS_MT A30
  TX_RESPOSTAS_CN A30
  TX_RESPOSTAS_CH A30
  TX_GABARITO_LC A30
  TX_GABARITO_MT A30
  TX_GABARITO_CN A30
  TX_GABARITO_CH A30
  TP_STATUS_REDACAO F1.0
  NU_NOTA_COMP1 COMMA4.2 
  NU_NOTA_COMP2 COMMA4.2 
  NU_NOTA_COMP3 COMMA4.2 
  NU_NOTA_COMP4 COMMA4.2 
  NU_NOTA_COMP5 COMMA4.2 
  NU_NOTA_REDACAO COMMA4.2.
CACHE.
EXECUTE.
DATASET NAME ENCCEJA_PPL_NACIONAL WINDOW=FRONT.

VARIABLE LABELS	NU_INSCRICAO 'Campo com máscara no número de inscrição do candidato.'.
VARIABLE LABELS	NU_ANO 'Ano do Exame Encceja que está em análise.'.    
VARIABLE LABELS	TP_CERTIFICACAO 'Indicador do tipo de certificação pedida pelo participante.'.
VALUE LABELS TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino Médio'.
VARIABLE LABELS	TP_FAIXA_ETARIA 'Faixa etária do participante conforme idade em 31 de dezembro do ano do exame.'. 
VALUE LABELS TP_FAIXA_ETARIA
1    'Menor de 17 anos'
2    '17 anos'
3    '18 anos'
4    '19 anos'
5    '20 anos'
6    '21 anos'
7    '22 anos'
8    '23 anos'
9    '24 anos'
10  '25 anos'
11  'Entre 26 e 30 anos'
12  'Entre 31 e 35 anos'
13  'Entre 36 e 40 anos'
14  'Entre 41 e 45 anos'
15  'Entre 46 e 50 anos'
16  'Entre 51 e 55 anos'
17  'Entre 56 e 60 anos'
18  'Entre 61 e 65 anos'
19  'Entre 66 e 70 anos'
20  'Maior de 70 anos'.

VARIABLE LABELS	TP_SEXO 'Sexo do participante.'. 
VALUE LABELS TP_SEXO
'F'  'Feminino'
'M'  'Masculino'.
VARIABLE LABELS	CO_UF_PROVA 'Código da Unidade da Federação da aplicação da prova'.
VARIABLE LABELS	SG_UF_PROVA 'Sigla da Unidade da Federação da aplicação da prova'.
VARIABLE LABELS	NO_ENTIDADE_CERTIFICADORA 'Nome da Unidade Participante responsável pela certificação do exame.'.
VARIABLE LABELS	IN_PROVA_LC 'Indica solicitação de inscrição em: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.  
VALUE LABELS  IN_PROVA_LC
0 'Não'
1 'Sim'.
VARIABLE LABELS	IN_PROVA_MT 'Indica solicitação de inscrição do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_PROVA_MT
0 'Não'
1 'Sim'.
VARIABLE LABELS	IN_PROVA_CN 'Indica solicitação de inscrição em: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_PROVA_CN
0 'Não'
1 'Sim'.
VARIABLE LABELS	IN_PROVA_CH 'Indica solicitação de inscrição em: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_PROVA_CH
0 'Não'
1 'Sim'.
VARIABLE LABELS	TP_PRESENCA_LC 'Indica a presença em: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'. 
VALUE LABELS TP_PRESENCA_LC
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS	TP_PRESENCA_MT 'Indica a presença em: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_MT
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS	TP_PRESENCA_CN 'Indica a presença em: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_CN
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS	TP_PRESENCA_CH 'Indica a presença do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_CH
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS	CO_PROVA_LC 'Código da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.' .     
VALUE LABELS CO_PROVA_LC
201919	'Cinza (Ensino Fundamental)'
201923	'Branca (Ensino Médio)'.
VARIABLE LABELS	CO_PROVA_MT 'Código da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_MT
201918	'Amarela (Ensino Fundamental)'
201922	'Amarela (Ensino Médio)'.
VARIABLE LABELS	CO_PROVA_CN 'Código da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_CN
201917	'Rosa (Ensino Fundamental)'
201921	'Rosa (Ensino Médio)'.
VARIABLE LABELS	CO_PROVA_CH 'Código da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_CH
201920	'Azul (Ensino Fundamental)'
201924	'Azul (Ensino Médio)'.
VARIABLE LABELS	NU_NOTA_LC 'Nota da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VARIABLE LABELS	NU_NOTA_MT 'Nota da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	NU_NOTA_CN 'Nota da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	NU_NOTA_CH 'Nota da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	IN_APROVADO_LC 'Indica se o participante foi aprovado em: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio'.
VALUE LABELS IN_APROVADO_LC
0 'Não'
1 'Sim'.
VARIABLE LABELS	IN_APROVADO_MT 'Indica se o participante foi aprovado na prova de: Matemática para Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_APROVADO_MT
0 'Não'
1 'Sim'.
VARIABLE LABELS	IN_APROVADO_CN 'Indica se o participante foi aprovado na prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio'.  
VALUE LABELS IN_APROVADO_CN
0 'Não'
1 'Sim'.
VARIABLE LABELS	IN_APROVADO_CH 'Indica se o participante foi aprovado na prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_APROVADO_CH
0 'Não'
1 'Sim'.
VARIABLE LABELS	TX_RESPOSTAS_LC 'Vetor com as respostas da parte objetiva: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Ed. Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VARIABLE LABELS	TX_RESPOSTAS_MT 'Vetor com as respostas da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	TX_RESPOSTAS_CN 'Vetor com as respostas da parte objetiva da prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	TX_RESPOSTAS_CH 'Vetor com as respostas da parte objetiva da prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	TX_GABARITO_LC 'Vetor com o gabarito da parte objetiva: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VARIABLE LABELS	TX_GABARITO_MT 'Vetor com o gabarito da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.  
VARIABLE LABELS	TX_GABARITO_CN 'Vetor com o gabarito da parte objetiva da prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS	TX_GABARITO_CH 'Vetor com o gabarito da parte objetiva da prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.' . 
VARIABLE LABELS	TP_STATUS_REDACAO 'Situação da redação do participante'.
VALUE LABELS TP_STATUS_REDACAO
1 	'Sem problemas'
2	'Anulada'
3	'Cópia Texto Motivador'
4	'Em Branco'
6	'Fuga ao tema'
7	'Não atendimento ao tipo textual'
8	'Texto insuficiente'.
VARIABLE LABELS	NU_NOTA_COMP1 'Nota da competência 1 - Demonstrar domínio da modalidade escrita formal da Língua Portuguesa.'. 
VARIABLE LABELS	NU_NOTA_COMP2 'Nota da competência 2 - Compreender a proposta de redação e aplicar conceitos das várias áreas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'.
VARIABLE LABELS	NU_NOTA_COMP3 'Nota da competência 3 - Selecionar, relacionar, organizar e interpretar informações, fatos, opiniões e argumentos em defesa de um ponto de vista.'.
VARIABLE LABELS	NU_NOTA_COMP4 'Nota da competência 4 - Demonstrar conhecimento dos mecanismos linguísticos necessários para a construção da argumentação.'.   
VARIABLE LABELS	NU_NOTA_COMP5 'Nota da competência 5 - Elaborar proposta de intervenção para o problema abordado, respeitando os direitos humanos. Essa nota será atribuída apenas para os participantes que solicitaram certificação de Ensino Médio.'.
VARIABLE LABELS	NU_NOTA_REDACAO 'Nota da prova de redação.'.
.