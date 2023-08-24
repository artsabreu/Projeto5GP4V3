/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_INPUT_SAS_ITENS_PROVA_2019                                         */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* ITENS_PROVA_2019		   				*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* ITENS_PROVA_2019.csv no diretório C:\ do computador.		                  */
/*							 */ 
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							   */
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\MICRODADOS_ENCCEJA_ITENS_PROVA_2019.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
CO_POSICAO F2.0
SG_AREA A2
CO_ITEM F5.0
TX_GABARITO A1
CO_HABILIDADE F2.0
CO_PROVA F6.0
IN_ITEM_ABAN F1.0
TX_MOTIVO_ABAN  A40
NU_PARAM_A COMMA8.5
NU_PARAM_B COMMA8.5
NU_PARAM_C COMMA8.5
TX_COR A7
TP_CERTIFICACAO F1.0       
IN_ITEM_ADAPTADO F1.0.
CACHE.
EXECUTE.
DATASET NAME ITENS_19 WINDOW=FRONT.

VARIABLE LABELS	CO_POSICAO	'Posição do Item na Prova'.
VARIABLE LABELS	SG_AREA		'Área de Conhecimento do Item'.

VALUE LABELS SG_AREA
		'HG'	'História e Geografia(EF)'
		'CI'	'Ciências Naturais(EF)'
		'LP'	'Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação(EF)'
		'MA'	'Matemática(EF)'
		'CH'	'Ciências Humanas(EM)'
		'CN'	'Ciências da Natureza(EM)'
		'LC'	'Linguagens e Códigos(EM)'
		'MT'	'Matemática(EM)'.


VARIABLE LABELS	CO_ITEM		"Código do Item".
VARIABLE LABELS	TX_GABARITO	"Gabarito do Item".
VARIABLE LABELS	CO_HABILIDADE	"Habilidade do Item".
VARIABLE LABELS	CO_PROVA	"Identificador da Prova".
VALUE LABELS IN_ITEM_ABAN
		0	"Não"
		1	"Sim".
VARIABLE LABELS	TX_MOTIVO_ABAN  	"Motivo para o abandono do item".
VARIABLE LABELS	NU_PARAM_A	"Parâmetro de discriminação (a)".	
VARIABLE LABELS	NU_PARAM_B	"Parâmetro de dificuldade (b)".
VARIABLE LABELS	NU_PARAM_C	"Parâmetro de acerto ao acaso (c)".

VARIABLE LABELS	TX_COR		"Cor da Prova".
VARIABLE LABELS	TP_CERTIFICACAO	"Tipo de Certificação".
VARIABLE LABELS	IN_ITEM_ADAPTADO	"Item pertencente à prova adaptada".

VALUE LABELS TP_CERTIFICACAO
		1	"Ensino Fundamental"
		2	"Ensino Médio".

VALUE LABELS IN_ITEM_ADAPTADO
		0	"Não"
		1	"Sim".

