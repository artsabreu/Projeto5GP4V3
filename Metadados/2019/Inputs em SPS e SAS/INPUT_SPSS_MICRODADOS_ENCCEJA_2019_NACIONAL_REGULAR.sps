/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral do Sistema Nacional de Avaliação da Educação Básica              		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2019_REGULAR_NACIONAL	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2019- REGULAR NACIONAL    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTIONÁRIO SOCIOECONÔMICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e o				     */
/*arquivo "MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019.csv" do ENCCEJA no diretório C:\ do computador*/
/*							                                         */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                                                             */
/* as variáveis de interesse.                                                                                                                               */
/************************************************************************************************************************************ */
/*                                  ATENÇÃO                                                                                                                   */ 
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
  /FILE="C:\MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019.csv" 
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
  NO_ENTIDADE_CERTIFICADORA A105 
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
  NU_NOTA_REDACAO COMMA4.2 
  Q01 A1 
  Q02 A1 
  Q03 A1 
  Q04 A1 
  Q05 A1 
  Q06 A1 
  Q07 A1 
  Q08 A1 
  Q09 A1 
  Q10 F1.0 
  Q11 F1.0 
  Q12 F1.0 
  Q13 F1.0 
  Q14 F1.0 
  Q15 A1 
  Q16 A1 
  Q17 A1 
  Q18 A1 
  Q19 A1 
  Q20 A1 
  Q21 A1 
  Q22 F1.0 
  Q23 F1.0 
  Q24 F1.0 
  Q25 F1.0 
  Q26 F1.0 
  Q27 F1.0 
  Q28 F1.0 
  Q29 F1.0 
  Q30 F1.0 
  Q31 A1 
  Q32 A1 
  Q33 A1 
  Q34 A1 
  Q35 A1 
  Q36 A1 
  Q37 A1 
  Q38 A1 
  Q39 A1 
  Q40 A1 
  Q41 F1.0 
  Q42 F1.0 
  Q43 F1.0 
  Q44 F1.0 
  Q45 F1.0 
  Q46 F1.0 
  Q47 F1.0 
  Q48 F1.0. 
CACHE. 
EXECUTE.
DATASET NAME ENCCEJA_REGULAR_NACIONAL WINDOW=FRONT.

VARIABLE LABELS NU_INSCRICAO 'Campo com máscara no número de inscrição do candidato.'.
VARIABLE LABELS NU_ANO 'Ano do Exame Encceja que está em análise.'.    
VARIABLE LABELS TP_CERTIFICACAO 'Indicador do tipo de certificação pedida pelo participante.'.
VALUE LABELS TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino Médio'.
VARIABLE LABELS TP_FAIXA_ETARIA 'Faixa etária do participante conforme idade em 31 de dezembro do ano do exame.'.   
VALUE LABELS TP_FAIXA_ETARIA
1  'Menor de 17 anos'
2   '17 anos'
3   '18 anos'
4   '19 anos'
5   '20 anos'
6   '21 anos'
7   '22 anos'
8   '23 anos'
9   '24 anos'
10 '25 anos'
11 'Entre 26 e 30 anos'
12 'Entre 31 e 35 anos'
13 'Entre 36 e 40 anos'
14 'Entre 41 e 45 anos'
15 'Entre 46 e 50 anos'
16 'Entre 51 e 55 anos'
17 'Entre 56 e 60 anos'
18 'Entre 61 e 65 anos'
19 'Entre 66 e 70 anos'
20 'Maior de 70 anos'.
VARIABLE LABELS TP_SEXO 'Sexo do participante.'.
VALUE LABELS TP_SEXO
'F'  'Feminino'
'M'  'Masculino'.
VARIABLE LABELS CO_UF_PROVA 'Código da Unidade da Federação da aplicação da prova'.
VARIABLE LABELS SG_UF_PROVA 'Sigla da Unidade da Federação da aplicação da prova'.
VARIABLE LABELS NO_ENTIDADE_CERTIFICADORA 'Nome da Unidade Participante responsável pela certificação do exame.'.
VARIABLE LABELS IN_PROVA_LC 'Indica solicitação de inscrição em: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Ed. Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.   
VALUE LABELS  IN_PROVA_LC
0 'Não'
1 'Sim'.  
VARIABLE LABELS IN_PROVA_MT 'Indica solicitação de inscrição do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_PROVA_MT
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROVA_CN 'Indica solicitação de inscrição do participante na prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_PROVA_CN
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROVA_CH 'Indica solicitação de inscrição do participante na prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_PROVA_CH
0 'Não'
1 'Sim'.
VARIABLE LABELS TP_PRESENCA_LC 'Indica a presença do participante em: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'. 
VALUE LABELS TP_PRESENCA_LC
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS TP_PRESENCA_MT 'Indica a presença do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_MT
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS TP_PRESENCA_CN 'Indica a presença do participante na prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_CN
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS TP_PRESENCA_CH 'Indica a presença do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_CH
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
3	'Aplicação não realizada'.
VARIABLE LABELS CO_PROVA_LC 'Código da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.      
VALUE LABELS CO_PROVA_LC
201903	'Cinza (Ensino Fundamental)'
201907	'Cinza - Ledor (Ensino Fundamental)'
201911	'Branca (Ensino Médio)'
201915	'Branca - Ledor (Ensino Médio)'.
VARIABLE LABELS CO_PROVA_MT 'Código da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_MT
201902	'Amarela (Ensino Fundamental)'
201906	'Amarela - Ledor  (Ensino Fundamental)'
201910	'Amarela (Ensino Médio)'
201914	'Amarela - Ledor (Ensino Médio)'.
VARIABLE LABELS CO_PROVA_CN 'Código da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_CN
201901	'Rosa (Ensino Fundamental)'
201905	'Rosa - Ledor (Ensino Fundamental)'
201909	'Rosa (Ensino Médio)'
201913	'Rosa - Ledor (Ensino Médio)'.
VARIABLE LABELS CO_PROVA_CH 'Código da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_CH
201904	'Azul (Ensino Fundamental)'
201908	'Azul  - Ledor (Ensino Fundamental)'
201912	'Azul (Ensino Médio)'
201916	'Azul - Ledor (Ensino Médio)'.
VARIABLE LABELS NU_NOTA_LC 'Nota da prova de:Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VARIABLE LABELS NU_NOTA_MT 'Nota da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS NU_NOTA_CN 'Nota da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.     
VARIABLE LABELS NU_NOTA_CH 'Nota da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS IN_APROVADO_LC 'Indica se o participante foi aprovado em:Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VALUE LABELS IN_APROVADO_LC
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_APROVADO_MT 'Indica se o participante foi aprovado na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_APROVADO_MT
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_APROVADO_CN 'Indica se o participante foi aprovado na prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.   
VALUE LABELS IN_APROVADO_CN
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_APROVADO_CH 'Indica se o participante foi aprovado na prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS IN_APROVADO_CH
0 'Não'
1 'Sim'.
VARIABLE LABELS TX_RESPOSTAS_LC 'Vetor com as respostas da parte objetiva: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VARIABLE LABELS TX_RESPOSTAS_MT 'Vetor com as respostas da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS TX_RESPOSTAS_CN 'Vetor com as respostas da parte objetiva da prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS TX_RESPOSTAS_CH 'Vetor com as respostas da parte objetiva da prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS TX_GABARITO_LC 'Vetor com o gabarito da parte objetiva: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.
VARIABLE LABELS TX_GABARITO_MT 'Vetor com o gabarito da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS TX_GABARITO_CN 'Vetor com o gabarito da parte objetiva da prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VARIABLE LABELS TX_GABARITO_CH 'Vetor com o gabarito da parte objetiva da prova de: História e Geografia para Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.  
VARIABLE LABELS TP_STATUS_REDACAO 'Situação da redação do participante'.
VALUE LABELS TP_STATUS_REDACAO
1 	'Sem problemas'
2	'Anulada'
3	'Cópia Texto Motivador'
4	'Em Branco'
6	'Fuga ao tema'
7	'Não atendimento ao tipo textual'
8	'Texto insuficiente'.
VARIABLE LABELS NU_NOTA_COMP1 'Nota da competência 1 - Demonstrar domínio da modalidade escrita formal da Língua Portuguesa.'. 
VARIABLE LABELS NU_NOTA_COMP2 'Nota da competência 2 - Compreender a proposta de redação e aplicar conceitos das várias áreas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'.
VARIABLE LABELS NU_NOTA_COMP3 'Nota da competência 3 - Selecionar, relacionar, organizar e interpretar informações, fatos, opiniões e argumentos em defesa de um ponto de vista.'.
VARIABLE LABELS NU_NOTA_COMP4 'Nota da competência 4 - Demonstrar conhecimento dos mecanismos linguísticos necessários para a construção da argumentação.'.   
VARIABLE LABELS NU_NOTA_COMP5 'Nota da competência 5 - Elaborar proposta de intervenção para o problema abordado, respeitando os direitos humanos. Essa nota será atribuída apenas para os participantes que solicitaram certificação de Ensino Médio.'.
VARIABLE LABELS NU_NOTA_REDACAO 'Nota da prova de redação.'.
VARIABLE LABELS Q01 'Quantas pessoas moram com você? (incluindo filhos, irmãos, parentes e amigos)'.
VALUE LABELS Q01
'A'	'Moro sozinho'
'B'	'Uma a três'
'C'	'Quatro a sete'
'D'	'Oito a dez'
'E'	'Mais de dez'.
VARIABLE LABELS Q02 'A casa onde você mora é? (Marque apenas uma resposta)'.
VALUE LABELS Q02
'A'	'Própria'
'B'	'Alugada'
'C'	'Cedida'.
VARIABLE LABELS Q03 'Sua casa está localizada em? (Marque apenas uma resposta)'.
VALUE LABELS Q03
'A'	'Zona rural'
'B'	'Zona urbana'
'C'	'Comunidade indígena'
'D'	'Comunidade quilombola'.
VARIABLE LABELS Q04 'Qual é o nível de escolaridade do seu pai? (Marque apenas uma resposta)'.
VALUE LABELS Q04
'A'	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
'B'	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
'C'	'Ensino Médio (antigo 2º grau)'
'D'	'Ensino Superior'
'E'	'Especialização'
'F'	'Não estudou'
'G'	'Não sei'.
VARIABLE LABELS Q05 'Qual é o nível de escolaridade da sua mãe? (Marque apenas uma resposta)'.
VALUE LABELS Q05
'A'	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
'B'	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
'C'	'Ensino Médio (antigo 2º grau)'
'D'	'Ensino Superior'
'E'	'Especialização'
'F'	'Não estudou'
'G'	'Não sei'.
VARIABLE LABELS Q06 'Somando a sua renda com a renda das pessoas que moram com você, quanto é, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'.
VALUE LABELS Q06
'A'	'Nenhuma renda'
'B'	'Até 1 salário mínimo (até R$ 954,00)'
'C'	'De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00)'
'D'	'De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00)'
'E'	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00)'
'F'	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00)'
'G'	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00)'
'H'	'Mais de 15 salários mínimos (mais de R$ 14.310,01)'.
VARIABLE LABELS Q07 'Qual a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'.
VALUE LABELS Q07
'A'	'Nenhuma renda'
'B'	'Até 1 salário mínimo (até R$ 954,00)'
'C'	'De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00)'
'D'	'De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00)'
'E'	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00)'
'F'	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00)'
'G'	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00)'
'H'	'Mais de 15 salários mínimos (mais de R$ 14.310,01)'.
VARIABLE LABELS Q08 'Você trabalha ou já trabalhou? (Marque apenas uma resposta)'.
VALUE LABELS Q08
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q09 ' Em que você trabalha atualmente? (Marque apenas uma resposta)'.
VALUE LABELS Q09
'A'	'Na agricultura, no campo, na fazenda ou na pesca'
'B'	'Na indústria'
'C'	'Na construção civil'
'D'	'No comércio, banco, transporte, hotelaria ou outros serviços'
'E'	'Como funcionário(a) do governo federal, estadual ou municipal'
'F'	'Como profissional liberal, professora ou técnica de nível superior'
'G'	'Trabalho fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador/a de carros, catador/a de lixo)'
'H'	'Trabalho em minha casa informalmente (costura, aulas particulares, cozinha, artesanato, carpintaria etc.)'
'I'	'Faço trabalho doméstico em casa de outras pessoas (cozinheiro/a, mordomo/governanta, jardineiro, babá, lavadeira, faxineiro/a, acompanhante de idosos/as etc.)'
'J'	'No lar (sem remuneração)'
'K'	'Outro'
'L'	'Não trabalho'.
VARIABLE LABELS Q10 ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ajudar nas despesas com a casa'.
VARIABLE LABELS Q11 ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Sustentar minha família (esposo/a, filhos/as etc.)'.
VARIABLE LABELS Q12 ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ser independente (ganhar meu próprio dinheiro)'.
VARIABLE LABELS Q13 ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Adquirir experiência'.
VARIABLE LABELS Q14 ' Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar: Custear/ pagar meus estudos'.
VARIABLE LABELS Q15 ' Quantas horas semanais você trabalha? (Marque apenas uma resposta)'.
VALUE LABELS Q15
'A'	'Sem jornada fixa, até 10 horas semanais'
'B'	'De 11 a 20 horas semanais'
'C'	'De 21 a 30 horas semanais'
'D'	'De 31 a 40 horas semanais'
'E'	'Mais de 40 horas semanais'.
VARIABLE LABELS Q16 ' Com que idade você começou a trabalhar? (Marque apenas uma resposta)'.
VALUE LABELS Q16
'A'	'Antes dos 14 anos'
'B'	'Entre 14 e 16 anos'
'C'	'Entre 17 e 18 anos'
'D'	'Após 18 anos'.
VARIABLE LABELS Q17 ' Como você avalia ter estudado e trabalhado durante seus estudos? (Marque apenas uma resposta)'.
VALUE LABELS Q17
'A'	'Atrapalhou meus estudos'
'B'	'Possibilitou meus estudos'
'C'	'Possibilitou meu crescimento pessoal'
'D'	'Não atrapalhou meus estudos'
'E'	'Não trabalhei durante meus estudos'.
VARIABLE LABELS Q18 ' Você já reprovou alguma vez? (Marque apenas uma resposta)'.
VALUE LABELS Q18
'A'	'Não, nunca'
'B'	'Sim, uma vez'
'C'	'Sim, duas vezes'
'D'	'Sim, três vezes ou mais'.
VARIABLE LABELS Q19 ' Qual principal motivo faria você voltar a estudar ou continuar estudando? (Marque apenas uma resposta)'.
VALUE LABELS Q19
'A'	'Conseguir um emprego'
'B'	'Progredir no emprego atual'
'C'	'Conseguir um emprego melhor'
'D'	'Adquirir mais conhecimento, ficar atualizado'
'E'	'Atender à expectativa de meus familiares sobre meus estudos'
'F'	'Não pretendo voltar a estudar'.
VARIABLE LABELS Q20 ' Se você já frequentou a escola regular, em que série você deixou de estudar? (Marque apenas uma resposta)'.
VALUE LABELS Q20
'A'	'Não frequentei'
'B'	'1ª série do ensino fundamental (antigo primário, 1º grau)'
'C'	'2ª série do ensino fundamental (antigo primário, 1º grau)'
'D'	'3ª série do ensino fundamental (antigo primário, 1º grau)'
'E'	'4ª série do ensino fundamental (antigo primário, 1º grau)'
'F'	'5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G'	'6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H'	'7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I'	'8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'J'	'1ª série do ensino médio (antigo 2º grau)'
'K'	'2ª série do ensino médio (antigo 2º grau)'
'L'	'3ª série do ensino médio (antigo 2º grau)'.
VARIABLE LABELS Q21 ' Se você deixou de frequentar a escola regular, quantos anos você tinha? (Marque apenas uma resposta)'.
VALUE LABELS Q21
'A'	'Nunca frequentei a escola'
'B'	'Estou frequentando a escola'
'C'	'Menos de 10 anos'
'D'	'Entre 10 e 14 anos (inclusive)'
'E'	'Entre 15 e 18 anos (inclusive)'
'F'	'Entre 19 e 24 anos (inclusive)'
'G'	'Entre 25 e 30 anos (inclusive)'
'H'	'Mais de 30 anos'.
VARIABLE LABELS Q22 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para conseguir o certificado de conclusão do Ensino Fundamental ou Médio'.
VARIABLE LABELS Q23 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Porque parentes, amigos(as) e professores(as) me recomendaram'.
VARIABLE LABELS Q24 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para continuar meus estudos'.
VARIABLE LABELS Q25 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Porque não posso estudar'.
VARIABLE LABELS Q26 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Porque não quero ou não gosto de estudar'.
VARIABLE LABELS Q27 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Por que é a melhor maneira para conciliar meus estudos e trabalho'.
VARIABLE LABELS Q28 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para conseguir um emprego'.
VARIABLE LABELS Q29 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para fazer curso profissionalizante e me preparar para o trabalho'.
VARIABLE LABELS Q30 ' Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Para progredir no emprego atual'.
VARIABLE LABELS Q31 ' Você cursa ou já cursou a Educação de Jovens e Adultos ¿ EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q31
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q32 ' Como é ou era o curso de EJA que você frequenta ou frequentou? (Marque apenas uma resposta)'.
VALUE LABELS Q32
'A'	'Curso presencial em escola pública'
'B'	'Curso presencial em escola privada'
'C'	'Curso presencial na empresa em que trabalha, instituição filantrópica ou religiosa'
'D'	'Curso a distância (via rádio, televisão, internet, correio, com apostilas)'
'E'	'Curso semi-presencial em escola pública'
'F'	'Curso semi-presencial em escola privada'.
VARIABLE LABELS Q33 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Não se aplica'.
VALUE LABELS Q33
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q34 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Trabalho/ não tinha tempo de estudar'.
VALUE LABELS Q34
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q35' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Estudava no curso da empresa e foi interrompido'.
VALUE LABELS Q35
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q36 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Problemas de saúde ou acidentes comigo ou familiares'.
VALUE LABELS Q36
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q37 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Mudança de estado, município ou cidade'.
VALUE LABELS Q37
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q38 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Motivos pessoais: casamento / filhos'.
VALUE LABELS Q38
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q39 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Não tinha interesse / desisti'.
VALUE LABELS Q39
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q40 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Senti-me discriminado(a) / Sofri agressão (física ou verbal)'.
VALUE LABELS Q40
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS Q41 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Inexistência de vaga em escola pública'.
VARIABLE LABELS Q42 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Ausência de escola perto de casa'.
VARIABLE LABELS Q43 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Falta de interesse em estudar'.
VARIABLE LABELS Q44 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular:  Trabalho - falta de tempo para estudar'.
VARIABLE LABELS Q45 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular:  Motivos pessoais - casamento / filhos'.
VARIABLE LABELS Q46 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Falta de apoio familiar'.
VARIABLE LABELS Q47 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Problemas de saúde ou acidente comigo ou familiares'.
VARIABLE LABELS Q48 ' Em que medida os motivos a seguir influenciaram no fato de você não ter frequentado ou ter abandonado a escola regular: Discriminação/preconceitos de raça, sexo, cor, idade ou socioeconômico'.
.