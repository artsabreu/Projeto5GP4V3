**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral de Medidas da Educação Básica              		    		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2022_NACIONAL_PPL_QSE	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2022- REGULAR NACIONAL    */
/* COM DADOS DO  QUESTIONÁRIO SOCIOECONÔMICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e 				     */
/* o arquivo "MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv" do ENCCEJA no diretório C:\ do computador.  */
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
  /FILE="C:\MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";" 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  Q001 A1 
  Q002 A1  
  Q003 A1
  Q004 A1  
  Q005A A1 
  Q005B A1 
  Q005C A1 
  Q005D A1 
  Q005E A1 
  Q005F A1 
  Q005G A1 
  Q006 A1  
  Q007 A1  
  Q008 A1  
  Q009 A1  
  Q010 A1  
  Q011A A1 
  Q011B A1 
  Q011C A1 
  Q011D A1 
  Q011E A1 
  Q011F A1 
  Q011G A1 
  Q012 A1  
  Q013 A1  
  Q014 A1  
  Q015 A1  
  Q016 A1  
  Q017 A1  
  Q018 A1  
  Q019 A1  
  Q020 A1  
  Q021 A1  
  Q022A A1 
  Q022B A1 
  Q022C A1 
  Q022D A1 
  Q022E A1 
  Q022F A1 
  Q022G A1 
  Q022H A1 
  Q023A A1 
  Q023B A1 
  Q023C A1 
  Q023D A1 
  Q023E A1 
  Q023F A1 
  Q023G A1 
  Q024 A1  
  Q025 A1  
  Q026 A1  
  Q027 A1  
  Q028A A1 
  Q028B A1 
  Q028C A1 
  Q028D A1 
  Q028E A1 
  Q029 A1  
  Q030_1 F1.0
  Q030_2 F1.0
  Q030_3 F1.0
  Q030_4 F1.0
  Q030_5 F1.0
  Q030_6 F1.0
  Q030_7 F1.0
  Q031A A1 
  Q031B A1 
  Q031C A1 
  Q031D A1 
  Q031E A1 
  Q031F A1 
  Q032A A1 
  Q032B A1 
  Q032C A1 
  Q032D A1 
  Q032E A1 
  Q032F A1 
  Q032G A1 
  Q032H A1 
  Q033 A1  
  Q034A A1 
  Q034B A1 
  Q034C A1 
  Q034D A1 
  Q034E A1 
  Q034F A1 
  Q035 A1  
  Q036 A1  
  Q037A A1 
  Q037B A1 
  Q037C A1 
  Q037D A1 
  Q037E A1 
  Q037F A1 
  Q037G A1 
  Q037H A1 
  Q037I A1 
  Q037J A1 
  Q037K A1 
  Q038A A1 
  Q038B A1 
  Q038C A1 
  Q038D A1 
  Q038E A1 
  Q039_1 F1.0
  Q039_2 F1.0
  Q039_3 F1.0
  Q039_4 F1.0
  Q039_5 F1.0
  Q039_6 F1.0
  Q039_7 F1.0. 
CACHE. 
EXECUTE. 
DATASET NAME ENCCEJA_2022_NAC_PPL_QSE WINDOW=FRONT.

VARIABLE LABELS	
Q001   "Você está inserido em que tipo de Unidade?"
Q002   "Qual o seu sexo?"
Q003   "Quantos anos de idade você possui?"
Q004   "Como você se considera?"
Q005A  "Qual(is) documento(s) abaixo você possui? Certidão de nascimento."
Q005B  "Qual(is) documento(s) abaixo você possui? Carteira de Identidade."
Q005C  "Qual(is) documento(s) abaixo você possui? CPF."
Q005D  "Qual(is) documento(s) abaixo você possui? Carteira de Trabalho."
Q005E  "Qual(is) documento(s) abaixo você possui? Carteira de Motorista."
Q005F  "Qual(is) documento(s) abaixo você possui? Título de Eleitor."
Q005G  "Qual(is) documento(s) abaixo você possui? Não tenho nenhum dos documentos acima mencionados."
Q006   "Qual o seu estado civil? (Marque apenas uma resposta)"
Q007   "Como era a sua moradia antes de ser privado(a) de liberdade?"
Q008   "Onde se situava o local onde você morava antes de ser privado(a) de liberdade?"
Q009   "O local onde você morava antes de ser privado(a) de liberdade fazia parte de alguma comunidade étnicoracial?"
Q010   "Você morava sozinho(a) antes de ser privado(a) de liberdade?"
Q011A  "Quem morava com você antes de ser privado(a) de liberdade? Pai/Mãe."
Q011B  "Quem morava com você antes de ser privado(a) de liberdade?Cônjuge/companheiro(a)."
Q011C  "Quem morava com você antes de ser privado(a) de liberdade? Filho(s) ou filha(s)."
Q011D  "Quem morava com você antes de ser privado(a) de liberdade? Irmão(s) ou irmã(s)."
Q011E  "Quem morava com você antes de ser privado(a) de liberdade? Outros parentes."
Q011F  "Quem morava com você antes de ser privado(a) de liberdade? Amigos, colegas ou conhecidos."
Q011G  "Quem morava com você antes de ser privado(a) de liberdade? Pessoas abrigadas/institucionalizadas."
Q012   "No local onde você morava antes de ser privado(a) de liberdade, com quantas pessoas você dividia o mesmo ambiente para dormir?"
Q013   "Você tem filho(s) menor(es) de 18 anos de idade?"
Q014   "Quantos filhos menores de 18 anos de idade você tem?"
Q015   "Com quem está ou estão seu(s) filho(s) menor(es) de idade?"
Q016   "Qual é o nível de escolaridade do seu pai?"
Q017   "Qual é o nível de escolaridade da sua mãe?"
Q018   "Você já frequentou alguma vez a escola regular?"
Q019   "Em que tipo de escola você cursou a maior parte do Ensino Fundamental ou Ensino Médio?"
Q020   "Em que ano/série você deixou de frequentar a escola?"
Q021   "Com quantos anos de idade você deixou de frequentar a escola regular?"
Q022A  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Faltava escola perto de casa."
Q022B  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Vivi situações de maus tratos na família."
Q022C  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Faltava apoio familiar."
Q022D  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Tive filho(s) na adolescência."
Q022E  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Precisei ajudar nas tarefas de casa."
Q022F  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Precisei trabalhar."
Q022G  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Mudei repetidas vezes de endereço."
Q022H  "Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Eu não gostava de estudar."
Q023A  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Não havia vaga em escola pública."
Q023B  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Faltavam professores em minha escola."
Q023C  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Era difícil me relacionar com os professores."
Q023D  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Era difícil me relacionar com os meus colegas."
Q023E  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? A escola era insegura e mal conservada."
Q023F  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? As formas de ensino e de avaliação eram desestimulantes."
Q023G  "Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? O conteúdo das aulas não servia para a vida."
Q024   "Antes de ter sua liberdade privada, você trabalhava?"
Q025   "Com que idade você começou a trabalhar?"
Q026   "Você realiza algum trabalho na Unidade em que está inserido(a)?"
Q027   "Qual é a sua renda mensal aproximadamente?"
Q028A  "O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: compor uma caderneta de poupança."
Q028B  "O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: custear despesas pessoais."
Q028C  "O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: pagar indenização determinada judicialmente."
Q028D  "O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: prestar assistência à família."
Q028E  "O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: ressarcir o Estado."
Q029   "Quantas horas você trabalha na Unidade em que você está inserido(a)?"
Q030_1 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Adquirir experiência para reinserção social."
Q030_2 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Aprender uma profissão."
Q030_3 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ganhar meu próprio dinheiro."
Q030_4 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Pagar uma indenização."
Q030_5 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Remir a pena."
Q030_6 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ressarcir o Estado."
Q030_7 "Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Sustentar minha família."
Q031A  "Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso profissionalizante."
Q031B  "Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso de língua estrangeira."
Q031C  "Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso de computação ou informática."
Q031D  "Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso preparatório para testes, exames ou provas."
Q031E  "Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Outro curso."
Q031F  "Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Não realizei nenhum curso."
Q032A  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso profissionalizante."
Q032B  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de língua estrangeira."
Q032C  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de computação ou informática."
Q032D  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de oficinas culturais."
Q032E  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de grupos religiosos/de estudo bíblico."
Q032F  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, realizo atividade regular de leitura."
Q032G  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, pratico atividades de esporte/lazer."
Q032H  "Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Não realizo nenhuma dessas atividades regularmente."
Q033   "Você estuda regularmente na Unidade em que você está inserido(a)?"
Q034A  "Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado."
Q034B  "Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Atender à expectativa de meus familiares."
Q034C  "Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir entrar na faculdade."
Q034D  "Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir um emprego."
Q034E  "Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Desenvolver novas habilidades."
Q034F  "Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Remir a pena."
Q035   "Você tem acesso a biblioteca ou sala de leitura na Unidade em que você está inserido(a)?"
Q036   "Com que frequência você visita a biblioteca ou a sala de leitura na Unidade em que você está inserido(a)?"
Q037A  "Que gênero de livros você tem o hábito de ler em sua Unidade? Artes/música."
Q037B  "Que gênero de livros você tem o hábito de ler em sua Unidade? Autoajuda."
Q037C  "Que gênero de livros você tem o hábito de ler em sua Unidade? Biografias."
Q037D  "Que gênero de livros você tem o hábito de ler em sua Unidade? Didáticos escolares."
Q037E  "Que gênero de livros você tem o hábito de ler em sua Unidade? Infanto-juvenil."
Q037F  "Que gênero de livros você tem o hábito de ler em sua Unidade? Literatura brasileira/estrangeira."
Q037G  "Que gênero de livros você tem o hábito de ler em sua Unidade? Poesia/poemas."
Q037H  "Que gênero de livros você tem o hábito de ler em sua Unidade? Religião."
Q037I  "Que gênero de livros você tem o hábito de ler em sua Unidade? Revistas/gibis."
Q037J  "Que gênero de livros você tem o hábito de ler em sua Unidade? Técnico-científico, jurídicos."
Q037K  "Que gênero de livros você tem o hábito de ler em sua Unidade? Não tenho hábito de leitura."
Q038A  "Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado."
Q038B  "Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Desenvolver autoconhecimento."
Q038C  "Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Relaxar, me distrair."
Q038D  "Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Melhorar minhas habilidades de comunicação."
Q038E  "Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Remir a pena."
Q039_1 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Atender à expectativa dos meus familiares."
Q039_2 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conquistar reconhecimento profissional."
Q039_3 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conseguir entrar na faculdade."
Q039_4 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conseguir um emprego."
Q039_5 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Obter a certificação do Ensino Fundamental/Médio."
Q039_6 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Remir a pena."
Q039_7 "Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Testar meus conhecimentos.".

VALUE LABELS
/Q001  
"A"  "Prisional (maiores de 18 anos de idade)."
"B"  "Socioeducativa (menores de 18 anos de idade)."
/Q002  
"A"  "Masculino."
"B"  "Feminino."
/Q003  
"A"  "15 a 17"
"B"  "18 a 20"
"C"  "21 a 25"
"D"  "26 a 30"
"E"  "31 a 35"
"F"  "36 a 40"
"G"  "41 a 45"
"H"  "46 a 60"
"I"  "A partir de 61."
/Q004  
"A"  "Branco(a)."
"B"  "Pardo(a)."
"C"  "Preto(a)."
"D"  "Amarelo(a)."
"E"  "Indígena."
/Q005A 
"A"  "Sim"
"B"  "Não"
/Q005B 
"A"  "Sim"
"B"  "Não"
/Q005C 
"A"  "Sim"
"B"  "Não"
/Q005D 
"A"  "Sim"
"B"  "Não"
/Q005E 
"A"  "Sim"
"B"  "Não"
/Q005F 
"A"  "Sim"
"B"  "Não"
/Q005G 
"A"  "Sim"
"B"  "Não"
/Q006  
"A"  "Solteiro(a)"
"B"  "Casado(a)"
"C"  "Possui relação estável com um(a) companheiro(a)/amasiado(a)"
"D"  "Separado(a) / divorciado(a) / desquitado(a)."
"E"  "Viúvo(a)"
/Q007  
"A"  "Própria."
"B"  "Alugada."
"C"  "Financiada."
"D"  "Eu morava de favor."
"E"  "Eu morava na rua."
"F"  "Eu morava em uma unidade de acolhimento temporário."
/Q008  
"A"  "Zona rural"
"B"  "Zona urbana."
/Q009  
"A"  "Sim, fazia parte de comunidade indígena"
"B"  "Sim, fazia parte de comunidade remanescente de quilombo"
"C"  "Não fazia parte de uma comunidade étnico-racial."
/Q010
"A"  "Sim"
"B"  "Não"
/Q011A 
"A"  "Sim"
"B"  "Não"
/Q011B 
"A"  "Sim"
"B"  "Não"
/Q011C 
"A"  "Sim"
"B"  "Não"
/Q011D 
"A"  "Sim"
"B"  "Não"
/Q011E 
"A"  "Sim"
"B"  "Não"
/Q011F
"A"  "Sim"
"B"  "Não"
/Q011G 
"A"  "Sim"
"B"  "Não"
/Q012  
"A"  "Com uma pessoa."
"B"  "Com 2 a 3 pessoas."
"C"  "Com 4 a 5 pessoas."
"D"  "Com 6 a 7 pessoas."
"E"  "Com mais de 7 pessoas."
/Q013  
"A"  "Sim."
"B"  "Não tenho filho(s) menor(es) de idade."
"C"  "Não tenho filhos(as)."
/Q014  
"A"  "Um(a)."
"B"  "Dois(duas)."
"C"  "Três."
"D"  "Quatro ou mais."
/Q015  
"A"  "Com a mãe biológica / o pai biológico."
"B"  "Com a mãe adotiva / o pai adotivo."
"C"  "Com a avó materna / o avô materno."
"D"  "Com a avó paterna / o avô paterno."
"E"  "Com outro parente."
"F"  "Em uma instituição do Estado."
"G"  "Não sei."
/Q016  
"A"  "Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau)."
"B"  "Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau)."
"C"  "Ensino Médio (antigo 2º grau)."
"D"  "Ensino Superior."
"E"  "Especialização."
"F"  "Mestrado."
"G"  "Doutorado."
"H"  "Não estudou."
"I"  "Não sei."
/Q017  
"A"  "Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau)."
"B"  "Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau)."
"C"  "Ensino Médio (antigo 2º grau)."
"D"  "Ensino Superior."
"E"  "Especialização."
"F"  "Mestrado."
"G"  "Doutorado."
"H"  "Não estudou."
"I"  "Não sei."
/Q018  
"A"  "Sim, já frequentei escola regular."
"B"  "Sim, estou frequentando escolar regular na Unidade em que estou inserido(a)."
"C"  "Não, nunca frequentei escola regular."
/Q019  
"A"  "Em escola pública."
"B"  "Em escola particular."
"C"  "Em escola indígena."
"D"  "Em escola situada em comunidade quilombola."
"E"  "Em escola da Unidade Prisional/ Socioeducativa."
/Q020 
"A"  "1º ano do Ensino Fundamental."
"B"  "2º ano do Ensino Fundamental (antiga 1ª série, antigo primário, 1º grau)."
"C"  "3º ano do Ensino Fundamental (antiga 2ª série, antigo primário, 1º grau)."
"D"  "4º ano do Ensino Fundamental (antiga 3ª série, antigo primário, 1º grau)."
"E"  "5º ano do Ensino Fundamental (antiga 4ª série, antigo primário, 1° grau)."
"F"  "6º ano do Ensino Fundamental (antiga 5ª série, antigo ginásio, 1° grau)."
"G"  "7º ano do Ensino Fundamental (antiga 6ª série, antigo ginásio, 1º grau)."
"H"  "8º ano do Ensino Fundamental (antiga 7ª série, antigo ginásio, 1º grau)."
"I"  "9º ano do Ensino Fundamental (antiga 8ª série, antigo ginásio, 1º grau)."
"J"  "1ª série do Ensino Médio (antigo 2º grau)."
"K"  "2ª série do Ensino Médio (antigo 2º grau)."
"L"  "3ª série do Ensino Médio (antigo 2º grau)."
"M"  "Não sei."
/Q021  
"A"  "Com menos de 10 anos de idade."
"B"  "Entre 10 e 14 anos de idade."
"C"  "Entre 15 e 17 anos de idade."
"D"  "Com mais de 17 anos de idade."
/Q022A 
"A"  "Sim"
"B"  "Não"
/Q022B 
"A"  "Sim"
"B"  "Não"
/Q022C 
"A"  "Sim"
"B"  "Não"
/Q022D 
"A"  "Sim"
"B"  "Não"
/Q022E 
"A"  "Sim"
"B"  "Não"
/Q022F 
"A"  "Sim"
"B"  "Não"
/Q022G 
"A"  "Sim"
"B"  "Não"
/Q022H 
"A"  "Sim"
"B"  "Não"
/Q023A 
"A"  "Sim"
"B"  "Não"
/Q023B 
"A"  "Sim"
"B"  "Não"
/Q023C 
"A"  "Sim"
"B"  "Não"
/Q023D 
"A"  "Sim"
"B"  "Não"
/Q023E
"A"  "Sim"
"B"  "Não"
/Q023F 
"A"  "Sim"
"B"  "Não"
/Q023G 
"A"  "Sim"
"B"  "Não"
/Q024  
"A"  "Sim"
"B"  "Não"
/Q025  
"A"  "Com menos de 10 anos de idade."
"B"  "Entre 10 e 14 anos de idade."
"C"  "Entre 15 e 18 anos de idade."
"D"  "Após 18 anos de idade."
/Q026  
"A"  "Sim"
"B"  "Não"
/Q027  
"A"  "De 3/4 até 1 salário mínimo (De R$ 909,00 até R$ 1.212,00)"
"B"  "De 1 a 2 salários mínimos (de R$ 1.212,01 até R$ 2.424,00)"
"C"  "De 2 a 3 salários mínimos (de R$ 2.424,01 até R$ 3.636,00)."
"D"  "Não sou remunerado(a) pelo trabalho que exerço na Unidade em que estou inserido(a)."
/Q028A 
"A"  "Sim"
"B"  "Não"
/Q028B 
"A"  "Sim"
"B"  "Não"
/Q028C 
"A"  "Sim"
"B"  "Não"
/Q028D 
"A"  "Sim"
"B"  "Não"
/Q028E 
"A"  "Sim"
"B"  "Não"
/Q029  
"A"  "Menos de seis horas diárias."
"B"  "Seis horas diárias."
"C"  "Sete horas diárias."
"D"  "Oito horas diárias."
"E"  "Sem jornada fixa, até 8 horas semanais."
/Q031A
"A"  "Sim"
"B"  "Não"
/Q031B 
"A"  "Sim"
"B"  "Não"
/Q031C 
"A"  "Sim"
"B"  "Não"
/Q031D 
"A"  "Sim"
"B"  "Não"
/Q031E 
"A"  "Sim"
"B"  "Não"
/Q031F 
"A"  "Sim"
"B"  "Não"
/Q032A 
"A"  "Sim"
"B"  "Não"
/Q032B 
"A"  "Sim"
"B"  "Não"
/Q032C 
"A"  "Sim"
"B"  "Não"
/Q032D
"A"  "Sim"
"B"  "Não"
/Q032E
"A"  "Sim"
"B"  "Não"
/Q032F
"A"  "Sim"
"B"  "Não"
/Q032G
"A"  "Sim"
"B"  "Não"
/Q032H
"A"  "Sim"
"B"  "Não"
/Q033
"A"  "Sim, frequento o Ensino Médio regular."
"B"  "Sim, frequento aulas de alfabetização em turma de EJA."
"C"  "Sim, frequento o Ensino Fundamental em turma de EJA."
"D"  "Sim, frequento o Ensino Médio em turma de EJA."
"E"  "Não estudo regularmente."
/Q034A
"A"  "Sim"
"B"  "Não"
/Q034B
"A"  "Sim"
"B"  "Não"
/Q034C
"A"  "Sim"
"B"  "Não"
/Q034D
"A"  "Sim"
"B"  "Não"
/Q034E
"A"  "Sim"
"B"  "Não"
/Q034F
"A"  "Sim"
"B"  "Não"
/Q035
"A"  "Sim"
"B"  "Não"
/Q036
"A"  "Uma vez por semana."
"B"  "Duas a três vezes por semana."
"C"  "De quatro a cinco vezes por semana."
"D"  "Diariamente."
/Q037A
"A"  "Sim"
"B"  "Não"
/Q037B
"A"  "Sim"
"B"  "Não"
/Q037C
"A"  "Sim"
"B"  "Não"
/Q037D
"A"  "Sim"
"B"  "Não"
/Q037E
"A"  "Sim"
"B"  "Não"
/Q037F
"A"  "Sim"
"B"  "Não"
/Q037G
"A"  "Sim"
"B"  "Não"
/Q037H
"A"  "Sim"
"B"  "Não"
/Q037I
"A"  "Sim"
"B"  "Não"
/Q037J
"A"  "Sim"
"B"  "Não"
/Q037K
"A"  "Sim"
"B"  "Não"
/Q038A
"A"  "Sim"
"B"  "Não"
/Q038B
"A"  "Sim"
"B"  "Não"
/Q038C
"A"  "Sim"
"B"  "Não"
/Q038D
"A"  "Sim"
"B"  "Não"
/Q038E 
"A"  "Sim"
"B"  "Não".