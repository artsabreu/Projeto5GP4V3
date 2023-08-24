/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral de Medidas da Educação Básica              		     		    */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2022_NACIONAL_REGULAR	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2022- REGULAR NACIONAL    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTIONÁRIO SOCIOECONÔMICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e o				     */
/*arquivo "MICRODADOS_ENCCEJA_2022_REG_NAC.csv" do ENCCEJA no diretório C:\ do computador	     */
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
  /FILE="C:\MICRODADOS_ENCCEJA_2022_REG_NAC.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";"
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
  Q10 A1
  Q11 A1 
  Q12 A1 
  Q13 A1 
  Q14 A1 
  Q15 A1 
  Q16 A1 
  Q17 A1 
  Q18 A1 
  Q19 A1 
  Q20 A1 
  Q21 A1 
  Q22 A1 
  Q23 A1 
  Q24 A1 
  Q25 A1 
  Q26 A1 
  Q27 A1 
  Q28 A1 
  Q29 A1 
  Q30 A1 
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
  Q41 A1 
  Q42 A1 
  Q43 A1 
  Q44 A1 
  Q45 A1 
  Q46 A1 
  Q47 A1 
  Q48 A1
  Q49 A1
  Q50 A1
  Q51 A1
  Q52 A1
  Q53 A1
  Q54 A1
  Q55 A1
  Q56 A1
  Q57 A1
  Q58 A1
  Q59 A1
  Q60 A1
  Q61 A1
  Q62 A1. 
CACHE. 
EXECUTE.
DATASET NAME ENCCEJA_2022_REG_NAC WINDOW=FRONT.

VARIABLE LABELS NU_INSCRICAO 'Campo com máscara no número de inscrição do candidato.'.
VARIABLE LABELS NU_ANO 'Ano do Exame Encceja que está em análise.'.    
VARIABLE LABELS TP_CERTIFICACAO 'Indicador do tipo de certificação pedida pelo participante.'.
VALUE LABELS TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino Médio'.
VARIABLE LABELS TP_FAIXA_ETARIA 'Faixa etária do participante'.
VALUE LABELS TP_FAIXA_ETARIA
1   'Menor de 17 anos'
2   '17 anos'
3   '18 anos'
4   '19 anos'
5   '20 anos'
6   '21 anos'
7   '22 anos'
8   '23 anos'
9   '24 anos'
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
2	'Eliminado na prova'.
VARIABLE LABELS TP_PRESENCA_MT 'Indica a presença do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_MT
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'.
VARIABLE LABELS TP_PRESENCA_CN 'Indica a presença do participante na prova de: Ciências Naturais para Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_CN
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'.
VARIABLE LABELS TP_PRESENCA_CH 'Indica a presença do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS TP_PRESENCA_CH
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'.
VARIABLE LABELS CO_PROVA_LC 'Código da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação para Ensino Médio.'.      
VALUE LABELS CO_PROVA_LC
202051	'Cinza (Ensino Fundamental)'
202055	'Cinza - Ledor (Ensino Fundamental)'
202059	'Branca (Ensino Médio)'
202063	'Branca - Ledor (Ensino Médio)'.
VARIABLE LABELS CO_PROVA_MT 'Código da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_MT
202050	'Amarela (Ensino Fundamental)'
202054	'Amarela - Ledor  (Ensino Fundamental)'
202058	'Amarela (Ensino Médio)'
202062	'Amarela - Ledor (Ensino Médio)'.
VARIABLE LABELS CO_PROVA_CN 'Código da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_CN
202049	'Rosa (Ensino Fundamental)'
202053	'Rosa - Ledor (Ensino Fundamental)'
202057	'Rosa (Ensino Médio)'
202061	'Rosa - Ledor (Ensino Médio)'.
VARIABLE LABELS CO_PROVA_CH 'Código da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'.
VALUE LABELS CO_PROVA_CH
202052	'Azul (Ensino Fundamental)'
202056	'Azul  - Ledor (Ensino Fundamental)'
202060	'Azul (Ensino Médio)'
202064	'Azul - Ledor (Ensino Médio)'.
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
8	'Texto insuficiente'
9	'Parte desconectada'.
VARIABLE LABELS NU_NOTA_COMP1 'Nota da competência 1 - Demonstrar domínio da modalidade escrita formal da Língua Portuguesa.'. 
VARIABLE LABELS NU_NOTA_COMP2 'Nota da competência 2 - Compreender a proposta de redação e aplicar conceitos das várias áreas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'.
VARIABLE LABELS NU_NOTA_COMP3 'Nota da competência 3 - Selecionar, relacionar, organizar e interpretar informações, fatos, opiniões e argumentos em defesa de um ponto de vista.'.
VARIABLE LABELS NU_NOTA_COMP4 'Nota da competência 4 - Demonstrar conhecimento dos mecanismos linguísticos necessários para a construção da argumentação.'.   
VARIABLE LABELS NU_NOTA_COMP5 'Nota da competência 5 - Elaborar proposta de intervenção para o problema abordado, respeitando os direitos humanos. Essa nota será atribuída apenas para os participantes que solicitaram certificação de Ensino Médio.'.
VARIABLE LABELS NU_NOTA_REDACAO 'Nota da prova de redação.'.
VARIABLE LABELS Q01 'Qual o seu estado civil?'.
VALUE LABELS Q01
'A'  'Casado(a)'
'B'  'Divorciado(a)'
'C'  'Em união estável'
'D'  'Solteiro(a)'
'E'  'Viúvo(a)'.
VARIABLE LABELS Q02 'Você tem filho(s) menor(es) de 18 anos de idade?'.
VALUE LABELS Q02
'A'  'Sim'
'B'  'Não tenho filho(s) menor(es) de 18 anos de idade.'
'C'  'Não'.
VARIABLE LABELS Q03 'Quantos filhos menores de 18 anos de idade você tem? (Marque apenas uma resposta)'.
VALUE LABELS Q03
'A'  'Um'
'B'  'Dois'
'C'  'Três'
'D'  'Quatro ou mais'.
VARIABLE LABELS Q04 'Você já frequentou alguma vez a escola regular?'.
VALUE LABELS Q04
'A'  'Sim, já frequentei escola regular.'
'B'  'Sim, estou frequentando escolar regular.'
'C'  'Não, nunca frequentei.'.
VARIABLE LABELS Q05 'Em que série você parou de estudar? (Marque apenas uma resposta)'.
VALUE LABELS Q05
'A'  '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B'  '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C'  '3ª série do ensino fundamental (antigo primário, 1ºgrau)'
'D'  '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E'  '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F'  '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G'  '7ª série do ensino fundamental (antigo ginásio, 1ºgrau)'
'H'  '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I'  '1ª série do ensino médio (antigo 2º grau)'
'J'  '2ª série do ensino médio (antigo 2º grau)'
'K'  '3ª série do ensino médio (antigo 2º grau)'.
VARIABLE LABELS Q06 'Com quantos anos de idade você tinha quando deixou de frequentar a escola?'.
VALUE LABELS Q06
'A'  'Menos de 10 anos de idade'
'B'  'Entre 10 e 14 anos de idade'
'C'  'Entre 15 e 17 anos de idade'
'D'  'Mais de 17 anos de idade'.
VARIABLE LABELS Q07 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Exposição a situação de maus tratos na família.'.
VALUE LABELS Q07
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q08 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de apoio familiar.'.
VALUE LABELS Q08
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q09 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de escola perto de casa.'.
VALUE LABELS Q09
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q10 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de tempo para estudar.'.
VALUE LABELS Q10
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q11 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Maternidade/paternidade na adolescência.'.
VALUE LABELS Q11
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q12 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Necessidade de ajudar nas tarefas de casa.'.
VALUE LABELS Q12
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q13 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Necessidade de trabalhar para ajudar a família.'.
VALUE LABELS Q13
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q14 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Repetidas mudanças de domicílio.'.
VALUE LABELS Q14
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q15 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Constante falta de professores.'.
VALUE LABELS Q15
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q16 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Dificuldade de relacionamento com os professores.'.
VALUE LABELS Q16
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q17 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Escola mal conservada e insegura.'.
VALUE LABELS Q17
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q18 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Formas de ensino/avaliação desestimulantes.'.
VALUE LABELS Q18
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q19 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Inexistência de vaga em escola pública.'.
VALUE LABELS Q19
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q20 'Assinale  Sim ou Não se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Percepção de que os conteúdos das aulas não serviam para a vida.'.
VALUE LABELS Q20
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q21 'Assinale a seguir se você faz parte de uma comunidade étnico-racial:'.
VALUE LABELS Q21
'A'  'Comunidade indígena.'
'B'  'Comunidade remanescente de quilombo.'
'C'  'Não faço parte de uma comunidade étnico-racial.'.
VARIABLE LABELS Q22 'Assinale Sim ou  Não  se os seguintes  motivos te influenciaram a participar do Encceja: Acelerar os estudos.'.
VALUE LABELS Q22
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q23 'Assinale Sim ou  Não  se os seguintes  motivos te influenciaram a participar do Encceja: Conquistar reconhecimento profissional.'.
VALUE LABELS Q23
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q24 'Assinale Sim ou  Não  se os seguintes  motivos te influenciaram a participar do Encceja: Conseguir uma vaga melhor no trabalho atual.'.
VALUE LABELS Q24
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q25 'Assinale Sim ou  Não  se os seguintes  motivos te influenciaram a participar do Encceja: Dar continuidade aos estudos.'.
VALUE LABELS Q25
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q26 'Assinale Sim ou  Não  se os seguintes  motivos te influenciaram a participar do Encceja: Obter um certificado oficial.'.
VALUE LABELS Q26
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q27 'Assinale Sim ou  Não  se os seguintes  motivos te influenciaram a participar do Encceja: Ter acesso ao mercado de trabalho formal.'.
VALUE LABELS Q27
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q28 'Assinale  Sim  ou  Não  se você realizou as seguintes atividades para participar do Encceja: Estudei sozinho sem suporte.'.
VALUE LABELS Q28
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q29 'Assinale  Sim  ou  Não  se você realizou as seguintes atividades para participar do Encceja: Fiz um curso com aulas online.'.
VALUE LABELS Q29
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q30 'Assinale  Sim  ou  Não  se você realizou as seguintes atividades para participar do Encceja: Frequentei uma turma de EJA.'.
VALUE LABELS Q30
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q31 'Assinale  Sim  ou  Não  se você realizou as seguintes atividades para participar do Encceja: Recebi ajuda de familiares e/ou amigos.'.
VALUE LABELS Q31
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q32 'Indique o maior nível de escolaridade do seu pai:'.
VALUE LABELS Q32
'A'	'1ª série do ensino fundamental (antigo primário, 1º grau)'
'B'	'2ª série do ensino fundamental (antigo primário, 1º grau)'
'C'	'3ª série do ensino fundamental (antigo primário, 1ºgrau)'
'D'	'4ª série do ensino fundamental (antigo primário, 1º grau)'
'E'	'5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F'	'6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G'	'7ª série do ensino fundamental (antigo ginásio, 1ºgrau)'
'H'	'8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I'	'1ª série do ensino médio (antigo 2º grau)'
'J'	'2ª série do ensino médio (antigo 2º grau)'
'K'	'3ª série do ensino médio (antigo 2º grau)'
'L'	'Ensino Superior'
'M'	'Pós-Graduação'
'N'	'Ele nunca estudou.'
'O'	'Não sei.'.
VARIABLE LABELS Q33 'Assinale o tipo de atividade do trabalho principal do seu pai:'.
VALUE LABELS Q33
'A'  'Agricultura, pecuária, produção florestal, pesca ou aquicultura'
'B'  'Banco, financeira ou imobiliária'
'C'  'Comércio, reparação de veículos automotores e motocicletas'
'D'  'Construção civil'
'E'  'Hotelaria ou alimentação'
'F'  'Indústria'
'G'  'No lar (sem remuneração)'
'H'  'Profissional da defesa ou segurança'
'I'   'Profissional da educação, saúde, seguridade social ou serviços sociais'
'J'  'Serviço administrativo ou secretariado'
'K'  'Serviços domésticos em casa de outras pessoas'
'L'  'Tecnologia, informação e comunicação'
'M'  'Trabalhador autônomo(pintor(a), eletricista, encanador(a) (Cf. Dic.)'
'N'  'Transporte, armazenagem e correio'
'O'  'Outros serviços'
'P'  'Não sei.'.
VARIABLE LABELS Q34 'Indique o maior nível de escolaridade da sua mãe:'.
VALUE LABELS Q34
'A'	'1ª série do ensino fundamental (antigo primário, 1º grau)'
'B'	'2ª série do ensino fundamental (antigo primário, 1º grau)'
'C'	'3ª série do ensino fundamental (antigo primário, 1ºgrau)'
'D'	'4ª série do ensino fundamental (antigo primário, 1º grau)'
'E'	'5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F'	'6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G'	'7ª série do ensino fundamental (antigo ginásio, 1ºgrau)'
'H'	'8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I'	'1ª série do ensino médio (antigo 2º grau)'
'J'	'2ª série do ensino médio (antigo 2º grau)'
'K'	'3ª série do ensino médio (antigo 2º grau)'
'L'	'Ensino Superior'
'M'	'Pós-Graduação'
'N'	'Ele nunca estudou.'
'O'	'Não sei.'.
VARIABLE LABELS Q35 'Assinale o tipo de atividade do trabalho principal da sua mãe:'.
VALUE LABELS Q35
'A'  'Agricultura, pecuária, produção florestal, pesca ou aquicultura'
'B'  'Banco, financeira ou imobiliária'
'C'  'Comércio, reparação de veículos automotores e motocicletas'
'D'  'Construção civil'
'E'  'Hotelaria ou alimentação'
'F'  'Indústria'
'G'  'No lar (sem remuneração)'
'H'  'Profissional da defesa ou segurança'
'I'   'Profissional da educação, saúde, seguridade social ou serviços sociais'
'J'  'Serviço administrativo ou secretariado'
'K'  'Serviços domésticos em casa de outras pessoas'
'L'  'Tecnologia, informação e comunicação'
'M'  'Trabalhador autônomo(pintor(a), eletricista, encanador(a) (Cf. Dic.)'
'N'  'Transporte, armazenagem e correio'
'O'  'Outros serviços'
'P'  'Não sei.'.
VARIABLE LABELS Q36 'Você exerce um trabalho remunerado?'.
VALUE LABELS Q36
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q37 'Assinale o tipo de vínculo em seu trabalho principal:'.
VALUE LABELS Q37
'A'  'Formal (carteira assinada).'
'B'  'Informal (sem carteira assinada).'
'C'  'Militar ou funcionário público estatutário.'
'D'  'Sem vínculo, mas com relação de estágio.'.
VARIABLE LABELS Q38 'Qual o setor do seu trabalho principal?'.
VALUE LABELS Q38
'A'  'Setor Privado'
'B'  'Setor Público'
'C'  'Trabalho Doméstico'
'D'  'Trabalho em empresa familiar'
'E'  'Profissional Autônomo'
'F'  'Estágio Profissionalizante'.
VARIABLE LABELS Q39 'Em que tipo de atividade é o seu trabalho principal?'.
VALUE LABELS Q39
'A'  'Agricultura, pecuária, produção florestal, pesca ou aquicultura'
'B'  'Banco, financeira ou imobiliária'
'C'  'Comércio, reparação de veículos automotores e motocicletas'
'D'  'Construção civil'
'E'  'Hotelaria ou alimentação'
'F'  'Indústria'
'G'  'No lar (sem remuneração)'
'H'  'Profissional da defesa ou segurança'
'I'  'Profissional da educação, saúde, seguridade social ou serviços sociais'
'J'  'Serviço administrativo ou secretariado'
'K'  'Serviços domésticos em casa de outras pessoas'
'L'  'Tecnologia, informação e comunicação'
'M'  'Trabalhador autônomo(pintor(a), eletricista, encanador(a) (Cf. Dic.)'
'N'  'Transporte, armazenagem e correio'
'O'  'Outros serviços'.
VARIABLE LABELS Q40 'Quantas horas semanais você trabalha?'.
VALUE LABELS Q40
'A'  'Sem jornada fixa.'
'B'  'Até 10 horas semanais'
'C'  'De 11 a 20 horas semanais'
'D'  'De 21 a 30 horas semanais'
'E'  'De 31 a 40 horas semanais'
'F'  'Até 44 horas semanais'
'G'  'Acima de 44 horas semanais'.
VARIABLE LABELS Q41 'Qual a sua renda mensal, aproximadamente?'.
VALUE LABELS Q41
'A'	'Nenhuma renda.'
'B'	'Até 1 salário mínimo (até R$ 1.212,00).'
'C'	'De 1 a 3 salários mínimos (de R$ 1.212,01 até R$ 3.636,00).'
'D'	'De 3 a 6 salários mínimos (de R$ 3.636,01 até R$7.272,00).'
'E'	'De 6 a 9 salários mínimos (de R$ 7.272,01 até R$ 10.908,00).'
'F'	'De 9 a 12 salários mínimos (de R$ 10.908,01 até R$ 14.544,00).'
'G'	'De 12 a 15 salários mínimos (de R$ 14.544,01 até R$ 18.180,00).'
'H'	'Mais de 15 salários mínimos (mais de R$ 18.180,01).'.
VARIABLE LABELS Q42 'Somando a sua renda com a renda das pessoas que moram com você, quanto é, aproximadamente, a renda familiar mensal?'.
VALUE LABELS Q42
'A'	'Nenhuma renda.'
'B'	'Até 1 salário mínimo (até R$ 1.212,00).'
'C'	'De 1 a 3 salários mínimos (de R$ 1.212,01 até R$ 3.636,00).'
'D'	'De 3 a 6 salários mínimos (de R$ 3.636,01 até R$7.272,00).'
'E'	'De 6 a 9 salários mínimos (de R$ 7.272,01 até R$ 10.908,00).'
'F'	'De 9 a 12 salários mínimos (de R$ 10.908,01 até R$ 14.544,00).'
'G'	'De 12 a 15 salários mínimos (de R$ 14.544,01 até R$ 18.180,00).'
'H'	'Mais de 15 salários mínimos (mais de R$ 18.180,01).'.
VARIABLE LABELS Q43 'Você mora sozinho(a)?'.
VALUE LABELS Q43
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q44 'No local em que você mora, quantas pessoas compartilham o mesmo ambiente para dormir?'.
VALUE LABELS Q44
'A'  'Uma pessoa por dormitório'
'B'  '2 a 3 pessoas'
'C'  '4 a 5 pessoas'
'D'  '6 a 7 pessoas'
'E'  'Mais de 7 pessoas'.
VARIABLE LABELS Q45 'O local onde você mora situa-se em:'.
VALUE LABELS Q45
'A'  'Zona rural.'
'B'  'Zona urbana.'.
VARIABLE LABELS Q46 'O local onde você mora é:'.
VALUE LABELS Q46
'A'  'Casa alugada.'
'B'  'Casa cedida.'
'C'  'Casa financiada.'
'D'  'Casa própria.'
'E'  'Logradouro público.'
'F'  'Unidade de acolhimento temporário.'.
VARIABLE LABELS Q47 'Você é responsável por pagar o aluguel ou financiamento de sua casa?'.
VALUE LABELS Q47
'A'  'Sim, pago parte do valor'
'B'  'Sim, pago todo o valor'
'C'  'Não'.
VARIABLE LABELS Q48 'Quanto da renda familiar é comprometido com o custeio da moradia?'.
VALUE LABELS Q48
'A'  '10% a 20%'
'B'  '21% a 30%'
'C'  'Mais de 30%'
'D'  'A renda familiar não é destinada ao custeio de moradia.'.
VARIABLE LABELS Q49 'Qual desses dispositivos eletrônicos você usa mais em seu dia-a-dia?'.
VALUE LABELS Q49
'A'	'Aparelho celular.'
'B'	'Computador em casa.'
'C'	'Computador no trabalho.'
'D'	'Tablet.'
'E'	'Nenhum.'.
VARIABLE LABELS Q50 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Escrever e editar textos.'.
VALUE LABELS Q50
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q51 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Elaborar apresentações.'.
VALUE LABELS Q51
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q52 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Enviar e receber e-mails.'.
VALUE LABELS Q52
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q53 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Editar fotos e/ou vídeos.'.
VALUE LABELS Q53
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q54 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Fazer planilhas e tabelas.'.
VALUE LABELS Q54
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q55 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Aprender novas habilidades.'.
VALUE LABELS Q55
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q56 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Ouvir músicas e/ou assistir filmes.'.
VALUE LABELS Q56
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q57 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Conhecer novas pessoas.'.
VALUE LABELS Q57
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q58 'Assinale  Sim  ou  Não  se você costuma realizar as seguintes atividades ao usar seu dispositivo eletrônico: Buscar informações e notícias atuais.'.
VALUE LABELS Q58
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q59 'Com que frequência você acessa e-mails?'.
VALUE LABELS Q59
'A'  'De 1 a 2 vezes por semana'
'B'  'De 3 a 4  vezes por semana'
'C'  'Cinco vezes por semana'
'D'  'Diariamente'
'E'  'Raramente'.
VARIABLE LABELS Q60 'Você sabe usar computador?'.
VALUE LABELS Q60
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q61 'Não saber usar o computador já prejudicou suas oportunidades profissionais?'.
VALUE LABELS Q61
'A'  'Sim'
'B'  'Não'.
VARIABLE LABELS Q62 'Quais dessas oportunidades foram prejudicadas por você não saber usar o computador?'.
VALUE LABELS Q62
'A'  'Ganhar um aumento salarial'
'B'  'Participar de treinamentos na área.'
'C'  'Ser contratado'
'D'  'Ser promovido no trabalho'.