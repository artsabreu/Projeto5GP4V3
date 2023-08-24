/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral do Sistema Nacional de Avaliação da Educação Básica              */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2019_QUESTIONARIO_PPL                	   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO QUESTIONÁRIO SOCIOECONÔMICO DO   */
/* ENCCEJA 2019 - PARTICIPANTES PPL NACIONAIS										   */
/*																					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o					   */
/* arquivo "QUESTIONARIO_ENCCEJA_PPL_NAC.csv" do ENCCEJA no diretório C:\ do computador*/
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

VALUE $Q001_
'A'=	'Prisional (maiores de 18 anos)'
'B'=	'Socioeducativa (menores de 18 anos)';

VALUE $Q002_
'A'=	'Branco(a)'
'B'=	'Pardo(a)'
'C'=	'Preto(a)'
'D'=	'Amarelo(a)'
'E'=	'Indígena';

VALUE $Q003_
'A'=	'Solteiro(a)'
'B'=	'Casado(a)'
'C'=	'Possui relação estável com um(a) companheiro(a)/amasiado(a)'
'D'=	'Separado(a) / divorciado(a) / desquitado(a).'
'E'=	'Viúvo(a)';

VALUE $Q004_
'A'=	'Em casa ou apartamento, com minha família'
'B'=	'Em casa ou apartamento, sozinho(a)'
'C'=	'Em quarto ou cômodo alugado, sozinho(a)'
'D'=	'Em habitação coletiva: albergue, hotel, hospedaria, quartel, pensionato, república etc.'
'E'=	'Na rua'
'F'=	'Não tinha moradia fixa';

VALUE $Q005_
'A'=	'Própria'
'B'=	'Alugada'
'C'=	'Cedida'
'D'=	'Eu morava na rua';

VALUE $Q006_
'A'=	'Zona rural'
'B'=	'Zona urbana'
'C'=	'Comunidade indígena'
'D'=	'Comunidade quilombola';

VALUE $Q007A_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q007B_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q007C_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q007D_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q007E_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q007F_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q007G_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q008_
'A'=	'Morava sozinho'
'B'=	'Uma a três'
'C'=	'Quatro a sete'
'D'=	'Oito a dez'
'E'=	'Mais de dez';

VALUE $Q009_
'A'=	'Um(a)'
'B'=	'Dois(duas)'
'C'=	'Três ou mais'
'D'=	'Não tenho filhos(as). (Passe para a questão 11)';

VALUE $Q010_ 
'A'=	'Com a mãe deles / com o pai deles'
'B'=	'Com minha família ou com parentes'
'C'=	'Estão em uma instituição'
'D'=	'Não sei';

VALUE $Q011_ 
'A'=	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau)'
'B'=	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'C'=	'Ensino Médio (antigo 2º grau)'
'D'=	'Ensino Superior'
'E'=	'Especialização'
'F'=	'Mestrado'
'G'=	'Doutorado'
'H'=	'Não estudou'
'I'=	'Não sei';

VALUE $Q012_ 
'A'=	'Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau)'
'B'=	'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'C'=	'Ensino Médio (antigo 2º grau)'
'D'=	'Ensino Superior'
'E'=	'Especialização'
'F'=	'Mestrado'
'G'=	'Doutorado'
'H'=	'Não estudou'
'I'=	'Não sei';

VALUE $Q013_ 
'A'=	'Sim'
'B'=	'Não (passe para a pergunta 15)';

VALUE $Q014_ 
'A'=	'Até 1 salário mínimo (até R$ 954,00).'
'B'=	'De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00).'
'C'=	'De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00).'
'D'=	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00).'
'E'=	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00).'
'F'=	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00).'
'G'=	'Mais de 15 salários mínimos (mais de R$ 14.310,01).';

VALUE $Q015_ 
'A'=	'Nenhuma renda.'
'B'=	'Até 1 salário mínimo (até R$ 954,00).'
'C'=	'De 1 a 3 salários mínimos (de R$ 954,01 até R$ 2.862,00).'
'D'=	'De 3 a 6 salários mínimos (de R$ 2.862,01 até R$ 5.724,00).'
'E'=	'De 6 a 9 salários mínimos (de R$ 5.724,01 até R$ 8.586,00).'
'F'=	'De 9 a 12 salários mínimos (de R$ 8.586,01 até R$ 11.448,00).'
'G'=	'De 12 a 15 salários mínimos (de R$ 11.448,01 até R$ 14.310,00).'
'H'=	'Mais de 15 salários mínimos (mais de R$ 14.310,01).';


VALUE $Q016_
'A'=	'Sim'
'B'=	'Não';

VALUE $Q017_
'A'=	'Sim'
'B'=	'Não, não trabalhei enquanto estudava. (passe para a pergunta 22)'
'C'=	'Não, nunca estudei. (passe para a pergunta 22)';

VALUE $Q018_
'A'=	'Antes dos 14 anos'
'B'=	'Entre 14 e 16 anos'
'C'=	'Entre 17 e 18 anos'
'D'=	'Após 18 anos';

VALUE $Q019A_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q019B_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q019C_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q019D_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q020_
'A'=	'Sem jornada fixa, até 10 horas semanais'
'B'=	'De 11 a 20 horas semanais'
'C'=	'De 21 a 30 horas semanais'
'D'=	'De 31 a 40 horas semanais'
'E'=	'Mais de 40 horas semanais';

VALUE $Q023A_
'B'=	'Não'
'A'=	'Sim';

VALUE $Q023B_
'B'=	'Não'
'A'=	'Sim';
 
VALUE $Q023C_
'B'=	'Não'
'A'=	'Sim';
 
VALUE $Q023D_
'B'=	'Não'
'A'=	'Sim';
 
VALUE $Q023E_
'B'=	'Não'
'A'=	'Sim';
 
VALUE $Q024_ 
'A'=	'Sim'
'B'=	'Não (passe para a pergunta 29)';

VALUE $Q025_ 
'A'=	'Não, nunca'
'B'=	'Sim, uma vez'
'C'=	'Sim, duas vezes'
'D'=	'Sim, três vezes ou mais';

VALUE $Q026_ 
'A'=	'Não deixei de estudar'
'B'=	'1ª série do Ensino Fundamental (antigo primário, 1º grau)'
'C'=	'2ª série do Ensino Fundamental (antigo primário, 1º grau)'
'D'=	'3ª série do Ensino Fundamental (antigo primário, 1º grau)'
'E'=	'4ª série do Ensino Fundamental (antigo primário, 1° grau)'
'F'=	'5ª série do Ensino Fundamental (antigo ginásio, 1° grau)'
'G'=	'6ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'H'=	'7ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'I'=	'8ª série do Ensino Fundamental (antigo ginásio, 1º grau)'
'J'=	'1ª série do Ensino Médio (antigo 2º grau)'
'K'=	'2ª série do Ensino Médio (antigo 2º grau)'
'L'=	'3ª série do Ensino Médio (antigo 2º grau)';

VALUE $Q027_ 
'A'=	'Em escola pública'
'B'=	'Em escola particular'
'C'=	'Em escola indígena'
'D'=	'Em escola situada em comunidade quilombola'
'E'=	'Em escola da Unidade Prisional/ Socioeducativa';

VALUE $Q028_
'A'=	'Não.'
'B'=	'Sim, por um ano'
'C'=	'Sim, por dois anos'
'D'=	'Sim, por três anos'
'E'=	'Sim, por quatro anos ou mais';
 
VALUE $Q029_ 
'A'=	'Eu me considero preparado(a) para entrar no mercado de trabalho'
'B'=	'Apesar de ter frequentado uma boa escola, eu me considero despreparado(a) para conseguir um bom emprego'
'C'=	'Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola'
'D'=	'Eu me considero preparado, mas não sei se o mercado de trabalho me aceitará'
'E'=	'Não sei';

VALUE $Q031_ 
'A'=	'Menos de 10 anos'
'B'=	'Entre 10 e 14 anos'
'C'=	'Entre 15 e 18 anos'
'D'=	'Entre 19 e 24 anos'
'E'=	'Entre 25 e 30 anos'
'F'=	'Mais de 30 anos'
'G'=	'Não deixei de frequentar'
'H'=	'Não frequentei';

VALUE $Q032_ 
'A'=	'Conseguir um emprego'
'B'=	'Retomar os estudos'
'C'=	'Adquirir mais conhecimento, ficar atualizado'
'D'=	'Atender à expectativa de meus familiares'
'E'=	'Não pretendo voltar a estudar';

VALUE $Q033_ 
'A'=	'Curso profissionalizante'
'B'=	'Curso de língua estrangeira'
'C'=	'Curso de computação ou informática'
'D'=	'Curso preparatório para outros concursos públicos'
'E'=	'Outro curso'
'F'=	'Não frequentei cursos';

VALUE $Q034_ 
'A'=	'Curso profissionalizante'
'B'=	'Curso de língua estrangeira'
'C'=	'Curso de computação ou informática'
'D'=	'Não faltou nenhum desses';

VALUE $Q035_ 
'A'=	'Sim'
'B'=	'Não (passe para a pergunta 38)';

VALUE $Q036_ 
'A'=	'Curso presencial em escola pública'
'B'=	'Curso presencial em escola particular'
'C'=	'Curso presencial na empresa em que trabalhava'
'D'=	'Curso em tele-sala'
'E'=	'Curso promovido por instituição religiosa ou filantrópica'
'F'=	'Curso a distância (via rádio, televisão, internet, correio, com apostilas)'
'G'=	'Curso na Unidade prisional/ Socioeducativa'
'H'=	'Não frequento/ frequentei';

VALUE $Q037_ 
'A'=	'Diurno.'
'B'=	'Noturno.'
'C'=	'Não cursei';

VALUE $Q038_ 
'A'=	'Sim'
'B'=	'Não';

VALUE $Q039A_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039B_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039C_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039D_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039E_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039F_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039G_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039H_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039I_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039J_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039K_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q039L_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040A_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040B_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040C_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040D_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040E_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040F_ 
'B'=	'Não'
'A'=	'Sim';

VALUE $Q040G_
'B'=	'Não'
'A'=	'Sim';

DATA QUESTIONARIO_ENCCEJA_PPL;

INFILE 'C:\MICRODADOS_ENCCEJA_NACIONAL_PPL_QSE_2019.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=169
		FIRSTOBS=2
        DLM=','
		MISSOVER
        DSD ;
    INPUT
        Q001             : $CHAR1.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005             : $CHAR1.
        Q006             : $CHAR1.
        Q007A            : $CHAR1.
        Q007B            : $CHAR1.
        Q007C            : $CHAR1.
        Q007D            : $CHAR1.
        Q007E            : $CHAR1.
        Q007F            : $CHAR1.
        Q007G            : $CHAR1.
        Q008             : $CHAR1.
        Q009             : $CHAR1.
        Q010             : $CHAR1.
        Q011             : $CHAR1.
        Q012             : $CHAR1.
        Q013             : $CHAR1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019A            : $CHAR1.
        Q019B            : $CHAR1.
        Q019C            : $CHAR1.
        Q019D            : $CHAR1.
        Q020             : $CHAR1.
		Q021_1			 : $CHAR1.
		Q021_2			 : $CHAR1.
		Q021_3			 : $CHAR1.
		Q021_4			 : $CHAR1.
		Q021_5			 : $CHAR1.
		Q022_1			 : $CHAR1.
		Q022_2			 : $CHAR1.
		Q022_3			 : $CHAR1.
		Q022_4			 : $CHAR1.
		Q022_5			 : $CHAR1.
        Q023A            : $CHAR1.
        Q023B            : $CHAR1.
        Q023C            : $CHAR1.
        Q023D            : $CHAR1.
        Q023E            : $CHAR1.
        Q024             : $CHAR1.
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027             : $CHAR1.
        Q028             : $CHAR1.
        Q029             : $CHAR1.
		Q030_1           : $CHAR1.
		Q030_2           : $CHAR1.
		Q030_3           : $CHAR1.
		Q030_4           : $CHAR1.
		Q030_5           : $CHAR1.
		Q030_6           : $CHAR1.
		Q030_7           : $CHAR1.
		Q030_8           : $CHAR1.
        Q031             : $CHAR1.
        Q032             : $CHAR1.
        Q033             : $CHAR1.
        Q034             : $CHAR1.
        Q035             : $CHAR1.
        Q036             : $CHAR1.
        Q037             : $CHAR1.
        Q038             : $CHAR1.
        Q039A            : $CHAR1.
        Q039B            : $CHAR1.
        Q039C            : $CHAR1.
        Q039D            : $CHAR1.
        Q039E            : $CHAR1.
        Q039F            : $CHAR1.
        Q039G            : $CHAR1.
        Q039H            : $CHAR1.
        Q039I            : $CHAR1.
        Q039J            : $CHAR1.
        Q039K            : $CHAR1.
        Q039L            : $CHAR1.
        Q040A            : $CHAR1.
        Q040B            : $CHAR1.
        Q040C            : $CHAR1.
        Q040D            : $CHAR1.
        Q040E            : $CHAR1.
        Q040F            : $CHAR1.
        Q040G            : $CHAR1.;

ATTRIB	  Q001      FORMAT=$Q001_.; 
ATTRIB	  Q002      FORMAT=$Q002_.;
ATTRIB	  Q003      FORMAT=$Q003_.; 
ATTRIB	  Q004      FORMAT=$Q004_.; 
ATTRIB	  Q005      FORMAT=$Q005_.; 
ATTRIB	  Q006      FORMAT=$Q006_.; 
ATTRIB	  Q007A     FORMAT=$Q007A_.; 
ATTRIB	  Q007B     FORMAT=$Q007B_.; 
ATTRIB	  Q007C     FORMAT=$Q007C_.; 
ATTRIB	  Q007D     FORMAT=$Q007D_.; 
ATTRIB	  Q007E     FORMAT=$Q007E_.; 
ATTRIB	  Q007F     FORMAT=$Q007F_.; 
ATTRIB	  Q007G     FORMAT=$Q007G_.; 
ATTRIB	  Q008      FORMAT=$Q008_.;
ATTRIB	  Q009      FORMAT=$Q009_.;
ATTRIB	  Q010      FORMAT=$Q010_.; 
ATTRIB	  Q011      FORMAT=$Q011_.; 
ATTRIB	  Q012      FORMAT=$Q012_.; 
ATTRIB	  Q013      FORMAT=$Q013_.; 
ATTRIB	  Q014      FORMAT=$Q014_.; 
ATTRIB	  Q015      FORMAT=$Q015_.; 
ATTRIB	  Q016      FORMAT=$Q016_.;
ATTRIB	  Q017      FORMAT=$Q017_.;
ATTRIB	  Q018      FORMAT=$Q018_.;
ATTRIB	  Q019A     FORMAT=$Q019A_.;
ATTRIB	  Q019B     FORMAT=$Q019B_.;
ATTRIB	  Q019C     FORMAT=$Q019C_.;
ATTRIB	  Q019D     FORMAT=$Q019D_.; 
ATTRIB	  Q020      FORMAT=$Q020_.; 
ATTRIB	  Q023A     FORMAT=$Q023A_.;
ATTRIB	  Q023B     FORMAT=$Q023B_.; 
ATTRIB	  Q023C     FORMAT=$Q023C_.; 
ATTRIB	  Q023D     FORMAT=$Q023D_.; 
ATTRIB	  Q023E     FORMAT=$Q023E_.; 
ATTRIB	  Q024      FORMAT=$Q024_.; 
ATTRIB	  Q025      FORMAT=$Q025_.; 
ATTRIB	  Q026      FORMAT=$Q026_.; 
ATTRIB	  Q027      FORMAT=$Q027_.; 
ATTRIB	  Q028      FORMAT=$Q028_.; 
ATTRIB	  Q029      FORMAT=$Q029_.; 
ATTRIB	  Q031      FORMAT=$Q031_.; 
ATTRIB	  Q032      FORMAT=$Q032_.; 
ATTRIB	  Q033      FORMAT=$Q033_.; 
ATTRIB	  Q034      FORMAT=$Q034_.; 
ATTRIB	  Q035      FORMAT=$Q035_.; 
ATTRIB	  Q036      FORMAT=$Q036_.; 
ATTRIB	  Q037      FORMAT=$Q037_.; 
ATTRIB	  Q038      FORMAT=$Q038_.; 
ATTRIB	  Q039A     FORMAT=$Q039A_.; 
ATTRIB	  Q039B     FORMAT=$Q039B_.; 
ATTRIB	  Q039C     FORMAT=$Q039C_.; 
ATTRIB	  Q039D     FORMAT=$Q039D_.; 
ATTRIB	  Q039E     FORMAT=$Q039E_.; 
ATTRIB	  Q039F     FORMAT=$Q039F_.; 
ATTRIB	  Q039G     FORMAT=$Q039G_.; 
ATTRIB	  Q039H     FORMAT=$Q039H_.; 
ATTRIB	  Q039I     FORMAT=$Q039I_.; 
ATTRIB	  Q039J     FORMAT=$Q039J_.; 
ATTRIB	  Q039K     FORMAT=$Q039K_.; 
ATTRIB	  Q039L     FORMAT=$Q039L_.; 
ATTRIB	  Q040A     FORMAT=$Q040A_.; 
ATTRIB	  Q040B     FORMAT=$Q040B_.; 
ATTRIB	  Q040C     FORMAT=$Q040C_.; 
ATTRIB	  Q040D     FORMAT=$Q040D_.; 
ATTRIB	  Q040E     FORMAT=$Q040E_.; 
ATTRIB	  Q040F     FORMAT=$Q040F_.; 
ATTRIB	  Q040G     FORMAT=$Q040G_.;


LABEL

Q001='Você está inserido em que tipo de Unidade?'
Q002='Como você se considera? (Marque apenas uma resposta)'
Q003='Qual o seu estado civil? (Marque apenas uma resposta)'
Q004='Onde você morava antes de ser privado de sua liberdade? (Marque apenas uma resposta)'
Q005='Como era a sua moradia? (Marque apenas uma resposta)'
Q006='A sua moradia estava localizada em: (Marque apenas uma resposta)'
Q007A='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Morava sozinho(a)'
Q007B='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Pai'
Q007C='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Mãe'
Q007D='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Esposo(a) / companheiro(a)'
Q007E='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Filhos(as)'
Q007F='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Irmãos(ãs)'
Q007G='Quem morava com você? (Marque mais de uma resposta, se for o caso) - Outros parentes, amigos(as) ou colegas'
Q008='Quantas pessoas moravam com você? (incluindo filhos, irmãos, parentes e amigos - Marque apenas uma resposta)'
Q009='Quantos(as) filhos(as) você tem? (Marque apenas uma resposta)'
Q010='Com quem estão seus filhos? (Marque apenas uma resposta)'
Q011='Qual é o nível de escolaridade do seu pai? (Marque apenas uma resposta)'
Q012='Qual é o nível de escolaridade da sua mãe? (Marque apenas uma resposta)'
Q013='Você tinha alguma renda antes de estar privado de liberdade? (Marque apenas uma resposta)'
Q014='Qual era a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'
Q015='Somando a sua renda com a renda das pessoas que moravam com você, quanto era, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'
Q016='Você realiza algum trabalho na Unidade em que está inserido? (Marque apenas uma resposta)'
Q017='Antes de ter sua liberdade privada, você trabalhou ou teve alguma atividade remunerada durante seus estudos? (Marque apenas uma resposta)'
Q018='Com que idade você começou a trabalhar? (Marque apenas uma resposta)'
Q019A='Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Atrapalhou meus estudos'
Q019B='Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meus estudos'
Q019C='Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meu crescimento pessoal'
Q019D='Como você avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Não atrapalhou meus estudos'
Q020='Quantas horas você trabalhava? (Marque apenas uma resposta)'
Q021_1='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Ajudar meus pais nas despesas com a casa.'
Q021_2='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Sustentar minha família (esposo/a, companheiro /a, filhos/as etc.).'
Q021_3='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Ser independente (ganhar meu próprio dinheiro).'
Q021_4='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Adquirir experiência.'
Q021_5='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar. Custear/ pagar meus estudos.'
Q022_1='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Testar meus conhecimentos.'
Q022_2='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Prosseguir os estudos.'
Q022_3='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Acelerar meus estudos.'
Q022_4='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conseguir um emprego.'
Q022_5='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Obter a certificação do Ensino Fundamental ou Ensino Médio.'
Q023A='Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Obtenção de um certificado de conclusão do Ensino Fundamental ou Médio'
Q023B='Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Formação básica necessária para obter um emprego melhor'
Q023C='Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Ampliação de minha formação pessoal'
Q023D='Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Formação básica necessária para continuar os estudos'
Q023E='Quais as três principais contribuições ao concluir o Ensino Fundamental ou Médio? (Atenção: indique apenas as três principais alternativas) - Atender à expectativa de meus pais sobre meus estudos'
Q024='Você já frequentou alguma vez a escola regular? (Marque apenas uma resposta)'
Q025='Você já reprovou alguma vez? (Marque apenas uma resposta)'
Q026='Se você já frequentou a escola regular, em que série você deixou de estudar? (Marque apenas uma resposta)'
Q027='Em que tipo de escola você cursou maior parte do Ensino Fundamental ou Ensino Médio? (Marque apenas uma resposta)'
Q028='Você deixou de estudar durante o Ensino Fundamental ou Ensino Médio? (Marque apenas uma resposta)'
Q029='Pensando nos seus conhecimentos, como você considera o seu preparo para conseguir um emprego ou exercer alguma atividade profissional? (Marque apenas uma resposta)'
Q030_1='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Inexistência de vaga em escola pública'
Q030_2='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Ausência de escola perto de casa'
Q030_3='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de interesse em estudar'
Q030_4='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Trabalho: falta de tempo para estudar'
Q030_5='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Motivos pessoais: casamentos/ filhos(as)'
Q030_6='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de apoio familiar'
Q030_7='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Problemas de saúde ou acidente comigo ou familiares'
Q030_8='Se você não frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Discriminação de raça, sexo, cor idade ou econômica.'
Q031='Quantos anos de idade você tinha quando deixou de frequentar a escola regular? (Marque apenas uma resposta)'
Q032='Qual principal motivo faria você estudar ou continuar estudando? (Marque apenas uma resposta)'
Q033='Quais dos cursos abaixo você frequentou ou frequenta? (Marque apenas uma resposta)'
Q034='Qual curso ou formação fez mais falta para a sua vida? (Marque apenas uma resposta)'
Q035='Você frequentou curso de Educação de Jovens e Adultos - EJA? (Marque apenas uma resposta)'
Q036='Como você realiza ou realizou o curso de EJA? (Marque apenas uma resposta)'
Q037='Em que período você cursou a EJA? (Marque apenas uma resposta)'
Q038='Você, hoje, tem acesso a livros em biblioteca ou sala de leitura em sua Unidade?'
Q039A='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Discriminação econômica'
Q039B='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Discriminação étnica, racial ou de cor'
Q039C='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Discriminação de gênero (por ser mulher ou por ser homem'
Q039D='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por ser ou ter sido identificado como homossexual / gay, lésbica, bissexual, travesti ou transexual'
Q039E='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa de sua religião'
Q039F='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por não ter religião'
Q039G='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa do local de seu nascimento (em outra cidade, no interior, em outra região, em outro país, etc.)' 
Q039H='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa da sua idade'
Q039I='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por ser pessoa com deficiência física ou intelectual'
Q039J='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa de sua aparência física (gordo/a, magro/a, alto/ a, baixo/a etc.)'
Q039K='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Por causa do lugar de sua moradia'
Q039L='Você já sofreu algum tipo de discriminação? (Marque mais de uma resposta, se for o caso) - Nunca sofri os tipos de discriminação acima mencionados'
Q040A='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Certidão de nascimento'
Q040B='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Carteira de Identidade'
Q040C='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - CPF'
Q040D='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Carteira de Trabalho'
Q040E='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Carteira de Motorista'
Q040F='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Titulo de Eleitor'
Q040G='Qual(is) o(s) documento(s) abaixo você possui? (Marque mais de uma resposta, se for o caso) - Não tenho nenhum dos documentos acima mencionados';
RUN;
