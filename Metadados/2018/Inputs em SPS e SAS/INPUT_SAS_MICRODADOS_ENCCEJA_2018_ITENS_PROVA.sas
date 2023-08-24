/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_ITENS_PROVA_2018.sas	                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS ITENS DAS PROVAS DO ENCCEJA 2018 */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* ITENS_PROVA_2018.CSV no diretório C:\ do computador.				      */
/*															 			  */                                           
/* Ao terminar esses procedimentos execute o programa salvo utilizando    */
/* as variáveis de interesse.                                             */
/**************************************************************************/
/*				                  ATENÇÃO                                 */  
/**************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	  */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir */
/* os dados sem os rótulos basta importar diretamente no SAS.			  */
/* 																	      */ 																          
/**************************************************************************/

proc format;
Value $SG_AREA
		HG='História e Geografia(EF)'
		CI='Ciências Naturais(EF)'
		LP='Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação(EF)'
		MA='Matemática(EF)'
		CH='Ciências Humanas(EM)'
		CN='Ciências da Natureza(EM)'
		LC='Linguagens e Códigos(EM)'
		MT='Matemática(EM)';

Value IN_ITEM_ABAN
		0='Não'
		1='Sim';

Value TP_CERTIFICACAO
		1='Ensino Fundamental'
		2='Ensino Médio';

Value IN_ITEM_ADAPTADO
		0='Não'
		1='Sim';

DATA WORK.ITENS_2018;
INFILE 'C:\ITENS_PROVA_2018.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=100
        FIRSTOBS=2
        DLM=','
        MISSOVER
        DSD ;

INPUT
        CO_POSICAO       : ?? BEST2.
        SG_AREA          : $CHAR2.
        CO_ITEM          : ?? BEST5.
        TX_GABARITO      : $CHAR1.
        CO_HABILIDADE    : ?? BEST2.
        CO_PROVA         : ?? BEST6.
		IN_ITEM_ABAN	 : ?? BEST1.
		TX_MOTIVO_ABAN   : $CHAR40.
		NU_PARAM_A		 : ?? BEST8.
		NU_PARAM_B		 : ?? BEST8.
		NU_PARAM_C		 : ?? BEST8.
        TX_COR           : $CHAR7.
        TP_CERTIFICACAO  : ?? BEST1.
        IN_ITEM_ADAPTADO : ?? BEST1.;

ATTRIB  SG_AREA          FORMAT = $SG_AREA.;  
ATTRIB 	IN_ITEM_ABAN	 FORMAT = IN_ITEM_ABAN.; 
ATTRIB  TP_CERTIFICACAO  FORMAT = TP_CERTIFICACAO.;       
ATTRIB  IN_ITEM_ADAPTADO FORMAT = IN_ITEM_ADAPTADO.;

LABEL
CO_POSICAO='Posição do Item na Prova'
SG_AREA='Área de Conhecimento do Item'
CO_ITEM='Código do Item'
TX_GABARITO='Gabarito do Item'
CO_HABILIDADE='Habilidade do Item'
CO_PROVA='Identificador da Prova'
IN_ITEM_ABAN='Indicador de item abandonado'	
TX_MOTIVO_ABAN='Motivo para o abandono do item'  
NU_PARAM_A='Parâmetro de discriminação (a)'		
NU_PARAM_B='Parâmetro de dificuldade (b)'		
NU_PARAM_C='Parâmetro de acerto ao acaso (c)'
TX_COR='Cor da Prova'
TP_CERTIFICACAO='Tipo de Certificação'
IN_ITEM_ADAPTADO='Item pertencente à prova adaptada';

RUN;