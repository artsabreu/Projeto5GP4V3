**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral de Medidas da Educação Básica              		    		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2018_QUESTIONARIO_PPL	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2018- REGULAR EXTERIOR    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTIONÁRIO SOCIOECONÔMICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e 				     */
/* o arquivo "QUESTIONARIO_ENCCEJA_PPL_NAC.csv" do ENCCEJA no diretório C:\ do computador.	     */
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
  /FILE="C:\QUESTIONARIO_ENCCEJA_PPL_NAC.csv" 
  /DELCASE=LINE 
  /DELIMITERS="," 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  Q001 A1 
  Q002 A1 
  Q003 A1 
  Q004 A1 
  Q005 A1 
  Q006 A1 
  Q007A A1
  Q007B A1 
  Q007C A1 
  Q007D A1 
  Q007E A1 
  Q007F A1 
  Q007G A1
  Q008 A1 
  Q009 A1 
  Q010 A1 
  Q011 A1 
  Q012 A1 
  Q013 A1 
  Q014 A1 
  Q015 A1 
  Q016 A1 
  Q017 A1 
  Q018 A1 
  Q019A A1 
  Q019B A1 
  Q019C A1 
  Q019D A1 
  Q020 A1 
  Q021.1 F1.0
  Q021.2 F1.0
  Q021.3 F1.0
  Q021.4 F1.0
  Q021.5 F1.0
  Q022.1 F1.0
  Q022.2 F1.0
  Q022.3 F1.0
  Q022.4 F1.0
  Q022.5 F1.0
  Q023A A1 
  Q023B A1 
  Q023C A1 
  Q023D A1 
  Q023E A1 
  Q024 A1 
  Q025 A1 
  Q026 A1 
  Q027 A1 
  Q028 A1 
  Q029 A1 
  Q030.1 F1.0
  Q030.2 F1.0
  Q030.3 F1.0
  Q030.4 F1.0
  Q030.5 F1.0
  Q030.6 F1.0
  Q030.7 F1.0
  Q030.8 F1.0
  Q031 A1 
  Q032 A1 
  Q033 A1 
  Q034 A1 
  Q035 A1 
  Q036 A1 
  Q037 A1 
  Q038 A1 
  Q039A A1 
  Q039B A1 
  Q039C A1 
  Q039D A1 
  Q039E A1 
  Q039F A1 
  Q039G A1 
  Q039H A1 
  Q039I A1 
  Q039J A1 
  Q039K A1 
  Q039L A1 
  Q040A A1 
  Q040B A1 
  Q040C A1 
  Q040D A1 
  Q040E A1 
  Q040F A1 
  Q040G A1. 
CACHE. 
EXECUTE. 
DATASET NAME QUESTIONARIO_ENCCEJA_PPL_NAC WINDOW=FRONT.


VARIABLE LABELS	Q001 'Você está inserido em que tipo de Unidade?'.
VALUE LABELS Q001
'A'	'Prisional (maiores de 18 anos)'
'B'	'Socioeducativa (menores de 18 anos)'.
VARIABLE LABELS	Q002 'Como você se considera? (Marque apenas uma resposta)'.
VALUE LABELS Q002
'A'	'Branco(a)'
'B'	'Pardo(a)'
'C'	'Preto(a)'
'D'	'Amarelo(a)'
'E'	'Indígena'.
VARIABLE LABELS	Q003 'Qual o seu estado civil? (Marque apenas uma resposta)'.
VALUE LABELS Q003
'A'	'Solteiro(a)'
'B'	'Casado(a)'
'C'	'Possui relação estável com um(a) companheiro(a)/amasiado(a)'
'D'	'Separado(a) / divorciado(a) / desquitado(a).'
'E'	'Viúvo(a)'.
VARIABLE LABELS	Q004 'Onde você morava antes de ser privado de sua liberdade? (Marque apenas uma resposta)'.
VALUE LABELS Q004
'A'	'Em casa ou apartamento, com minha família'
'B'	'Em casa ou apartamento, sozinho(a)'
'C'	'Em quarto ou cômodo alugado, sozinho(a)'
'D'	'Em habitação coletiva: albergue, hotel, hospedaria, quartel, pensionato, república etc.'
'E'	'Na rua'
'F'	'Não tinha moradia fixa'.
VARIABLE LABELS	Q005 'Como era a sua moradia? (Marque apenas uma resposta)'.
VALUE LABELS Q005
'A'	'Própria'
'B'	'Alugada'
'C'	'Cedida'
'D'	'Eu morava na rua'.
VARIABLE LABELS	Q006 'A sua moradia estava localizada em: (Marque apenas uma resposta)'.
VALUE LABELS Q006
'A'	'Zona rural'
'B'	'Zona urbana'
'C'	'Comunidade indígena'
'D'	'Comunidade quilombola'.
VARIABLE LABELS	Q007A 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Morava sozinho(a)'.
VALUE LABELS Q007A
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q007B 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Pai'.
VALUE LABELS Q007B
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q007C 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Mãe'.
VALUE LABELS Q007C
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q007D 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Esposo(a) / companheiro(a)'.
VALUE LABELS Q007D
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q007E 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Filhos(as)'.
VALUE LABELS Q007E
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q007F 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Irmãos(ãs)'.
VALUE LABELS Q007F
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q007G 'Quem morava com você? (Marque mais de uma resposta, se for o caso) - Outros parentes, amigos(as) ou colegas'.
VALUE LABELS Q007G
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q008 'Quantas pessoas moravam com você? (incluindo filhos, irmãos, parentes e amigos - Marque apenas uma resposta)'.
VALUE LABELS Q008
'A'	'Morava sozinho'
'B'	'Uma a três'
'C'	'Quatro a sete'
'D'	'Oito a dez'
'E'	'Mais de dez'.
VARIABLE LABELS	Q009 'Quantos(as) filhos(as) você tem? (Marque apenas uma resposta)'.
VALUE LABELS Q009
'A'	'Um(a)'
'B'	'Dois(duas)'
'C'	'Três ou mais'
'D'	'Não tenho filhos(as). (Passe para a questão 11)'.
VARIABLE LABELS	Q010 'Com quem estão seus filhos? (Marque apenas uma resposta)'.
VALUE LABELS Q010
'A'	'Com a mãe deles / com o pai deles'
'B'	'Com minha família ou com parentes'
'C'	'Estão em uma instituição'
'D'	'Não sei'.
VARIABLE LABELS	Q011 'Qual é o nível de escolaridade do seu pai? (Marque apenas uma resposta)'.
VALUE LABELS Q011
'A'	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau)'
'B'	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'C'	'Ensino Médio (antigo 2º grau)'
'D'	'Ensino Superior'
'E'	'Especialização'
'F'	'Mestrado'
'G'	'Doutorado'
'H'	'Não estudou'
'I'	'Não sei'.
VARIABLE LABELS	Q012 'Qual é o nível de escolaridade da sua mãe? (Marque apenas uma resposta)'.
VALUE LABELS Q012
'A'	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau)'
'B'	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'C'	'Ensino Médio (antigo 2º grau)'
'D'	'Ensino Superior'
'E'	'Especialização'
'F'	'Mestrado'
'G'	'Doutorado'
'H'	'Não estudou'
'I'	'Não sei'.
VARIABLE LABELS	Q013 'Você tinha alguma renda antes de estar privado de liberdade? (Marque apenas uma resposta)'.
VALUE LABELS Q013
'A'	'Sim'
'B'	'Não (passe para a pergunta 15)'.
VARIABLE LABELS	Q014 'Qual era a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'.
VALUE LABELS Q014
'A'	'Até 1 salário mínimo (até R$ 954,00)'
'B'	'De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00)'
'C'	'De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00)'
'D'	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00)'
'E'	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00)'
'F'	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00)'
'G'	'Mais de 15 salários mínimos (mais de R$ 14.310,01)'.
VARIABLE LABELS	Q015 'Somando a sua renda com a renda das pessoas que moravam com você, quanto era, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'.
VALUE LABELS Q015
'A'	'Nenhuma renda'
'B'	'Até 1 salário mínimo (até R$ 954,00)'
'C'	'De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00)'
'D'	'De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00)'
'E'	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00)'
'F'	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00)'
'G'	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00)'
'H'	'Mais de 15 salários mínimos (mais de R$ 14.310,01)'.
VARIABLE LABELS	Q016 'Você realiza algum trabalho na Unidade em que está inserido? (Marque apenas uma resposta)'.
VALUE LABELS Q016
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q017 'Antes de ter sua liberdade privada, você trabalhou ou teve alguma atividade remunerada durante seus estudos? (Marque apenas uma resposta)'.
VALUE LABELS Q017
'A'	'Sim'
'B'	'Não, não trabalhei enquanto estudava. (passe para a pergunta 22)'
'C'	'Não, nunca estudei. (passe para a pergunta 22)'.
VARIABLE LABELS	Q018 'Com que idade você começou a trabalhar? (Marque apenas uma resposta)'.
VALUE LABELS Q018
'A'	'Antes dos 14 anos'
'B'	'Entre 14 e 16 anos'
'C'	'Entre 17 e 18 anos'
'D'	'Após 18 anos'.
VARIABLE LABELS	Q019A 'Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Atrapalhou meus estudos'.
VALUE LABELS Q019A
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q019B 'Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meus estudos'.
VALUE LABELS Q019B
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q019C 'Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meu crescimento pessoal'.
VALUE LABELS Q019C
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q019D 'Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Não atrapalhou meus estudos'.
VALUE LABELS Q019D
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q020 'Quantas horas você trabalhava? (Marque apenas uma resposta)'.
VALUE LABELS Q020
'A'	'Sem jornada fixa, até 10 horas semanais'
'B'	'De 11 a 20 horas semanais'
'C'	'De 21 a 30 horas semanais'
'D'	'De 31 a 40 horas semanais'
'E'	'Mais de 40 horas semanais'.
VARIABLE LABELS	Q021.1 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Ajudar meus pais nas despesas com a casa.'.
VARIABLE LABELS	Q021.2 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Sustentar minha família (esposo/a, companheiro /a, filhos/as etc.).'.
VARIABLE LABELS	Q021.3 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Ser independente (ganhar meu próprio dinheiro).'.
VARIABLE LABELS	Q021.4 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Adquirir experiência.'.
VARIABLE LABELS	Q021.5 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Custear/ pagar meus estudos.'.
VARIABLE LABELS	Q022.1 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Testar meus conhecimentos.'.
VARIABLE LABELS	Q022.2 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Prosseguir os estudos.'.
VARIABLE LABELS	Q022.3 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Acelerar meus estudos.'.
VARIABLE LABELS	Q022.4 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conseguir um emprego.'.
VARIABLE LABELS	Q022.5 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Obter a certificação do Ensino Fundamental ou Ensino Médio.'.
VARIABLE LABELS	Q023A 'Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Obtenção de um certificado de conclusão do Ensino Fundamental ou Médio'.
VALUE LABELS Q023A
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q023B 'Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Formação básica necessária para obter um emprego melhor'.
VALUE LABELS Q023B
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q023C 'Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Ampliação de minha formação pessoal'.
VALUE LABELS Q023C
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q023D'Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Formação básica necessária para continuar os estudos'.
VALUE LABELS Q023D
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q023E'Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Atender à expectativa de meus pais sobre meus estudos'.
VALUE LABELS Q023E
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q024 'Você já frequentou alguma vez a escola regular? (Marque apenas uma resposta)'.
VALUE LABELS Q024
'A'	'Sim'
'B'	'Não (passe para a pergunta 29)'.
VARIABLE LABELS	Q025 'Você já reprovou alguma vez? (Marque apenas uma resposta)'.
VALUE LABELS Q025
'A'	'Não, nunca'
'B'	'Sim, uma vez'
'C'	'Sim, duas vezes'
'D'	'Sim, três vezes ou mais'.
VARIABLE LABELS	Q026 'Se você já frequentou a escola regular, em que série você deixou de estudar? (Marque apenas uma resposta)'.
VALUE LABELS Q026
'A'	'Não deixei de estudar'
'B'	'1ª série do Ensino Fundamental (antigo primário, 1º grau)'
'C'	'2ª série do Ensino Fundamental (antigo primário, 1º grau)'
'D'	'3ª série do Ensino Fundamental (antigo primário, 1º grau)'
'E'	'4ª série do Ensino Fundamental (antigo primário, 1° grau)'
'F'	'5ª série do Ensino Fundamental (antigo ginásio, 1° grau)'
'G'	'6ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'H'	'7ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'I'	'8ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'J'	'1ª série do Ensino Médio (antigo 2º grau)'
'K'	'2ª série do Ensino Médio (antigo 2º grau)'
'L'	'3ª série do Ensino Médio (antigo 2º grau)'.
VARIABLE LABELS	Q027 'Em que tipo de escola você cursou maior parte do Ensino Fundamental ou Ensino Médio? (Marque apenas uma resposta)'.
VALUE LABELS Q027
'A'	'Em escola pública'
'B'	'Em escola particular'
'C'	'Em escola indígena'
'D'	'Em escola situada em comunidade quilombola'
'E'	'Em escola da Unidade Prisional/ Socioeducativa'.
VARIABLE LABELS	Q028 'Você deixou de estudar durante o Ensino Fundamental ou Ensino Médio? (Marque apenas uma resposta)'.
VALUE LABELS Q028
'A'	'Não.'
'B'	'Sim, por um ano'
'C'	'Sim, por dois anos'
'D'	'Sim, por três anos'
'E'	'Sim, por quatro anos ou mais'.
VARIABLE LABELS	Q029 'Pensando nos seus conhecimentos, como você considera o seu preparo para conseguir um emprego ou exercer alguma atividade profissional? (Marque apenas uma resposta)'.
VALUE LABELS Q029
'A'	'Eu me considero preparado(a) para entrar no mercado de trabalho'
'B'	'Apesar de ter frequentado uma boa escola, eu me considero despreparado(a) para conseguir um bom emprego'
'C'	'Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola'
'D'	'Eu me considero preparado, mas não sei se o mercado de trabalho me aceitará'
'E'	'Não sei'.
VARIABLE LABELS Q030.1 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Inexistência de vaga em escola pública'.
VARIABLE LABELS Q030.2 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Ausência de escola perto de casa'.
VARIABLE LABELS Q030.3 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de interesse em estudar'.
VARIABLE LABELS Q030.4 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Trabalho: falta de tempo para estudar'.
VARIABLE LABELS Q030.5 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Motivos pessoais: casamentos/ filhos(as)'.
VARIABLE LABELS Q030.6 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de apoio familiar'.
VARIABLE LABELS Q030.7 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Problemas de saúde ou acidente comigo ou familiares'.
VARIABLE LABELS Q030.8 'Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Discriminação de raça, sexo, cor idade ou econômica.'.
VARIABLE LABELS	Q031 'Quantos anos de idade você tinha quando deixou de frequentar a escola regular? (Marque apenas uma resposta)'.
VALUE LABELS Q031
'A'	'Menos de 10 anos'
'B'	'Entre 10 e 14 anos'
'C'	'Entre 15 e 18 anos'
'D'	'Entre 19 e 24 anos'
'E'	'Entre 25 e 30 anos'
'F'	'Mais de 30 anos'
'G'	'Não deixei de frequentar'
'H'	'Não frequentei'.
VARIABLE LABELS	Q032 'Qual principal motivo faria você estudar ou continuar estudando? (Marque apenas uma resposta)'.
VALUE LABELS Q032
'A'	'Conseguir um emprego'
'B'	'Retomar os estudos'
'C'	'Adquirir mais conhecimento, ficar atualizado'
'D'	'Atender à expectativa de meus familiares'
'E'	'Não pretendo voltar a estudar'.
VARIABLE LABELS	Q033 'Quais dos cursos abaixo você frequentou ou frequenta? (Marque apenas uma resposta)'.
VALUE LABELS Q033
'A'	'Curso profissionalizante'
'B'	'Curso de língua estrangeira'
'C'	'Curso de computação ou informática'
'D'	'Curso preparatório para outros concursos públicos'
'E'	'Outro curso'
'F'	'Não frequentei cursos'.
VARIABLE LABELS	Q034 'Qual curso ou formação fez mais falta para a sua vida? (Marque apenas uma resposta)'.
VALUE LABELS Q034
'A'	'Curso profissionalizante'
'B'	'Curso de língua estrangeira'
'C'	'Curso de computação ou informática'
'D'	'Não faltou nenhum desses'.
VARIABLE LABELS	Q035 'Você frequentou curso de Educação de Jovens e Adultos - EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q035
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q036 'Como você realiza ou realizou o curso de EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q036
'A'	'Curso presencial em escola pública'
'B'	'Curso presencial em escola particular'
'C'	'Curso presencial na empresa em que trabalhava'
'D'	'Curso em tele-sala'
'E'	'Curso promovido por instituição religiosa ou filantrópica'
'F'	'Curso a distância (via rádio, televisão, internet, correio, com apostilas)'
'G'	'Curso na Unidade prisional/ Socioeducativa'
'H'	'Não frequento/ frequentei'.
VARIABLE LABELS	Q037 'Em que período você cursou a EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q037
'A'	'Diurno.'
'B'	'Noturno.'
'C'	'Não cursei'.
VARIABLE LABELS	Q038 'Você, hoje, tem acesso a livros em biblioteca ou sala de leitura em sua Unidade?'.
VALUE LABELS Q038
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039A 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Discriminação econômica'.
VALUE LABELS Q039A
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039B 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Discriminação étnica, racial ou de cor'.
VALUE LABELS Q039B
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039C 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Discriminação de gênero (por ser mulher ou por ser homem'.
VALUE LABELS Q039C
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039D 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por ser ou ter sido identificado como homossexual / gay, lésbica, bissexual, travesti ou transexual'.
VALUE LABELS Q039D
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039E 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa de sua religião'.
VALUE LABELS Q039E
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039F 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por não ter religião'.
VALUE LABELS Q039F
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039G 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa do local de seu nascimento (em outra cidade, no interior, em outra região, em outro país, etc.)'.
VALUE LABELS Q039G
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039H 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa da sua idade'.
VALUE LABELS Q039H
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039I 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por ser pessoa com deficiência física ou intelectual'.
VALUE LABELS Q039I
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039J 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa de sua aparência física (gordo/a, magro/a, alto/ a, baixo/a etc.)'.
VALUE LABELS Q039J
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039K 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa do lugar de sua moradia'.
VALUE LABELS Q039K
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q039L 'Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Nunca sofri os tipos de discriminação acima mencionados'.
VALUE LABELS Q039L
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040A 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Certidão de nascimento'.
VALUE LABELS Q040A
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040B 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Carteira de Identidade'.
VALUE LABELS Q040B
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040C 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - CPF'.
VALUE LABELS Q040C
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040D 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Carteira de Trabalho'.
VALUE LABELS Q040D
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040E 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Carteira de Motorista'.
VALUE LABELS Q040E
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040F 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Titulo de Eleitor'.
VALUE LABELS Q040F
'A'	'Sim'
'B'	'Não'.
VARIABLE LABELS	Q040G 'Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Não tenho nenhum dos documentos acima mencionados'.
VALUE LABELS Q040G
'A'	'Sim'
'B'	'Não'.



