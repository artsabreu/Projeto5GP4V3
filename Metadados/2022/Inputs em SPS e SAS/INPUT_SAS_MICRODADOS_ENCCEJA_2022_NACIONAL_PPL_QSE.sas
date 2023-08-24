/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica             					   */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2022_NACIONAL_PPL_QSE                	   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO QUESTIONÁRIO SOCIOECONÔMICO DO   */
/* ENCCEJA 2022 - PARTICIPANTES PPL NACIONAIS										   */
/*																					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o					   */
/* arquivo "MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv" do ENCCEJA no diretório C:\  	   */
/* do computador                                                                       */
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
'A' = 'Prisional (maiores de 18 anos de idade).'
'B' = 'Socioeducativa (menores de 18 anos de idade).';

VALUE $Q002_  
'A' = 'Masculino.'
'B' = 'Feminino.';

VALUE $Q003_  
'A' = '15 a 17;'
'B' = '18 a 20;'
'C' = '21 a 25;'
'D' = '26 a 30;'
'E' = '31 a 35;'
'F' = '36 a 40;'
'G' = '41 a 45;'
'H' = '46 a 60;'
'I' = 'A partir de 61.';

VALUE $Q004_  
'A' = 'Branco(a).'
'B' = 'Pardo(a).'
'C' = 'Preto(a).'
'D' = 'Amarelo(a).'
'E' = 'Indígena.';

VALUE $Q005A_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q005B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q005C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q005D_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q005E_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q005F_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q005G_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q006_  
'A' = 'Solteiro(a)'
'B' = 'Casado(a)'
'C' = 'Possui relação estável com um(a) companheiro(a)/amasiado(a)'
'D' = 'Separado(a) / divorciado(a) / desquitado(a).'
'E' = 'Viúvo(a)';

VALUE $Q007_  
'A' = 'Própria.'
'B' = 'Alugada.'
'C' = 'Financiada.'
'D' = 'Eu morava de favor.'
'E' = 'Eu morava na rua.'
'F' = 'Eu morava em uma unidade de acolhimento temporário.';

VALUE $Q008_  
'A' = 'Zona rural;'
'B' = 'Zona urbana.';

VALUE $Q009_  
'A' = 'Sim, fazia parte de comunidade indígena;'
'B' = 'Sim, fazia parte de comunidade remanescente de quilombo;'
'C' = 'Não fazia parte de uma comunidade étnico-racial.';

VALUE $Q010_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011A_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011D_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011E_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011F_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q011G_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q012_  
'A' = 'Com uma pessoa.'
'B' = 'Com 2 a 3 pessoas.'
'C' = 'Com 4 a 5 pessoas.'
'D' = 'Com 6 a 7 pessoas.'
'E' = 'Com mais de 7 pessoas.';

VALUE $Q013_  
'A' = 'Sim.'
'B' = 'Não tenho filho(s) menor(es) de idade.'
'C' = 'Não tenho filhos(as).';

VALUE $Q014_  
'A' = 'Um(a).'
'B' = 'Dois(duas).'
'C' = 'Três.'
'D' = 'Quatro ou mais.';

VALUE $Q015_  
'A' = 'Com a mãe biológica / o pai biológico.'
'B' = 'Com a mãe adotiva / o pai adotivo.'
'C' = 'Com a avó materna / o avô materno.'
'D' = 'Com a avó paterna / o avô paterno.'
'E' = 'Com outro parente.'
'F' = 'Em uma instituição do Estado.'
'G' = 'Não sei.';

VALUE $Q016_  
'A' = 'Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau).'
'B' = 'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'C' = 'Ensino Médio (antigo 2º grau).'
'D' = 'Ensino Superior.'
'E' = 'Especialização.'
'F' = 'Mestrado.'
'G' = 'Doutorado.'
'H' = 'Não estudou.'
'I' = 'Não sei.';

VALUE $Q017_  
'A' = 'Da 1ª à 4ª série do Ensino Fundamental (antigo primário, 1º grau).'
'B' = 'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'C' = 'Ensino Médio (antigo 2º grau).'
'D' = 'Ensino Superior.'
'E' = 'Especialização.'
'F' = 'Mestrado.'
'G' = 'Doutorado.'
'H' = 'Não estudou.'
'I' = 'Não sei.';

VALUE $Q018_  
'A' = 'Sim, já frequentei escola regular.'
'B' = 'Sim, estou frequentando escolar regular na Unidade em que estou inserido(a).'
'C' = 'Não, nunca frequentei escola regular.';

VALUE $Q019_  
'A' = 'Em escola pública.'
'B' = 'Em escola particular.'
'C' = 'Em escola indígena.'
'D' = 'Em escola situada em comunidade quilombola.'
'E' = 'Em escola da Unidade Prisional/ Socioeducativa.';

VALUE $Q020_ 
'A' = '1º ano do Ensino Fundamental.'
'B' = '2º ano do Ensino Fundamental (antiga 1ª série, antigo primário, 1º grau).'
'C' = '3º ano do Ensino Fundamental (antiga 2ª série, antigo primário, 1º grau).'
'D' = '4º ano do Ensino Fundamental (antiga 3ª série, antigo primário, 1º grau).'
'E' = '5º ano do Ensino Fundamental (antiga 4ª série, antigo primário, 1° grau).'
'F' = '6º ano do Ensino Fundamental (antiga 5ª série, antigo ginásio, 1° grau).'
'G' = '7º ano do Ensino Fundamental (antiga 6ª série, antigo ginásio, 1º grau).'
'H' = '8º ano do Ensino Fundamental (antiga 7ª série, antigo ginásio, 1º grau).'
'I' = '9º ano do Ensino Fundamental (antiga 8ª série, antigo ginásio, 1º grau).'
'J' = '1ª série do Ensino Médio (antigo 2º grau).'
'K' = '2ª série do Ensino Médio (antigo 2º grau).'
'L' = '3ª série do Ensino Médio (antigo 2º grau).'
'M' = 'Não sei.';

VALUE $Q021_  
'A' = 'Com menos de 10 anos de idade.'
'B' = 'Entre 10 e 14 anos de idade.'
'C' = 'Entre 15 e 17 anos de idade.'
'D' = 'Com mais de 17 anos de idade.';

VALUE $Q022A_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022D_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022E_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022F_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022G_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q022H_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023A_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023D_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023E_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023F_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q023G_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q024_  
'A' = 'Sim'
'B' = 'Não';

VALUE $Q025_  
'A' = 'Com menos de 10 anos de idade.'
'B' = 'Entre 10 e 14 anos de idade.'
'C' = 'Entre 15 e 18 anos de idade.'
'D' = 'Após 18 anos de idade.';

VALUE $Q026_  
'A' = 'Sim'
'B' = 'Não';

VALUE $Q027_  
'A' = 'De 3/4 até 1 salário mínimo (De R$ 909,00 até R$ 1.212,00);'
'B' = 'De 1 a 2 salários mínimos (de R$ 1.212,01 até R$ 2.424,00);'
'C' = 'De 2 a 3 salários mínimos (de R$ 2.424,01 até R$ 3.636,00).'
'D' = 'Não sou remunerado(a) pelo trabalho que exerço na Unidade em que estou inserido(a).';

VALUE $Q028A_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q028B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q028C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q028D_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q028E_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q029_  
'A' = 'Menos de seis horas diárias.'
'B' = 'Seis horas diárias.'
'C' = 'Sete horas diárias.'
'D' = 'Oito horas diárias.'
'E' = 'Sem jornada fixa, até 8 horas semanais.';

VALUE $Q031A_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q031B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q031C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q031D_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q031E_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q031F_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032A_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032B_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032C_ 
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032D_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032E_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032F_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032G_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q032H_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q033_
'A' = 'Sim, frequento o Ensino Médio regular.'
'B' = 'Sim, frequento aulas de alfabetização em turma de EJA.'
'C' = 'Sim, frequento o Ensino Fundamental em turma de EJA.'
'D' = 'Sim, frequento o Ensino Médio em turma de EJA.'
'E' = 'Não estudo regularmente.';

VALUE $Q034A_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q034B_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q034C_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q034D_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q034E_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q034F_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q035_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q036_
'A' = 'Uma vez por semana.'
'B' = 'Duas a três vezes por semana.'
'C' = 'De quatro a cinco vezes por semana.'
'D' = 'Diariamente.';

VALUE $Q037A_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037B_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037C_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037D_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037E_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037F_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037G_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037H_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037I_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037J_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q037K_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q038A_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q038B_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q038C_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q038D_
'A' = 'Sim'
'B' = 'Não';

VALUE $Q038E_ 
'A' = 'Sim'
'B' = 'Não';

DATA ENCCEJA_2022_PPL_NAC_QSE;

INFILE 'C:\MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=250
		FIRSTOBS=2
        DLM=';'
		MISSOVER
        DSD ;
    INPUT
        Q001             : $CHAR1.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005A            : $CHAR1.
        Q005B            : $CHAR1.
        Q005C            : $CHAR1.
        Q005D            : $CHAR1.
        Q005E            : $CHAR1.
        Q005F            : $CHAR1.
        Q005G            : $CHAR1.
        Q006             : $CHAR1.
        Q007             : $CHAR1.
        Q008             : $CHAR1.
        Q009             : $CHAR1.
        Q010             : $CHAR1.
        Q011A            : $CHAR1.
        Q011B            : $CHAR1.
        Q011C            : $CHAR1.
        Q011D            : $CHAR1.
        Q011E            : $CHAR1.
        Q011F            : $CHAR1.
        Q011G            : $CHAR1.
        Q012             : $CHAR1.
        Q013             : $CHAR1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019             : $CHAR1.
        Q020             : $CHAR1.
        Q021             : $CHAR1.
        Q022A            : $CHAR1.
        Q022B            : $CHAR1.
        Q022C            : $CHAR1.
        Q022D            : $CHAR1.
        Q022E            : $CHAR1.
        Q022F            : $CHAR1.
        Q022G            : $CHAR1.
        Q022H            : $CHAR1.
        Q023A            : $CHAR1.
        Q023B            : $CHAR1.
        Q023C            : $CHAR1.
        Q023D            : $CHAR1.
        Q023E            : $CHAR1.
        Q023F            : $CHAR1.
        Q023G            : $CHAR1.
        Q024             : $CHAR1.
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027             : $CHAR1.
        Q028A            : $CHAR1.
        Q028B            : $CHAR1.
        Q028C            : $CHAR1.
        Q028D            : $CHAR1.
        Q028E            : $CHAR1.
        Q029             : $CHAR1.
        Q030_1           : ?? BEST1.
        Q030_2           : ?? BEST1.
        Q030_3           : ?? BEST1.
        Q030_4           : ?? BEST1.
        Q030_5           : ?? BEST1.
        Q030_6           : ?? BEST1.
        Q030_7           : ?? BEST1.
        Q031A            : $CHAR1.
        Q031B            : $CHAR1.
        Q031C            : $CHAR1.
        Q031D            : $CHAR1.
        Q031E            : $CHAR1.
        Q031F            : $CHAR1.
        Q032A            : $CHAR1.
        Q032B            : $CHAR1.
        Q032C            : $CHAR1.
        Q032D            : $CHAR1.
        Q032E            : $CHAR1.
        Q032F            : $CHAR1.
        Q032G            : $CHAR1.
        Q032H            : $CHAR1.
        Q033             : $CHAR1.
        Q034A            : $CHAR1.
        Q034B            : $CHAR1.
        Q034C            : $CHAR1.
        Q034D            : $CHAR1.
        Q034E            : $CHAR1.
        Q034F            : $CHAR1.
        Q035             : $CHAR1.
        Q036             : $CHAR1.
        Q037A            : $CHAR1.
        Q037B            : $CHAR1.
        Q037C            : $CHAR1.
        Q037D            : $CHAR1.
        Q037E            : $CHAR1.
        Q037F            : $CHAR1.
        Q037G            : $CHAR1.
        Q037H            : $CHAR1.
        Q037I            : $CHAR1.
        Q037J            : $CHAR1.
        Q037K            : $CHAR1.
        Q038A            : $CHAR1.
        Q038B            : $CHAR1.
        Q038C            : $CHAR1.
        Q038D            : $CHAR1.
        Q038E            : $CHAR1.
        Q039_1           : ?? BEST1.
        Q039_2           : ?? BEST1.
        Q039_3           : ?? BEST1.
        Q039_4           : ?? BEST1.
        Q039_5           : ?? BEST1.
        Q039_6           : ?? BEST1.
        Q039_7           : ?? BEST1. ;

ATTRIB	Q001   FORMAT=$Q001_.; 
ATTRIB	Q002   FORMAT=$Q002_.; 
ATTRIB	Q003   FORMAT=$Q003_.; 
ATTRIB	Q004   FORMAT=$Q004_.; 
ATTRIB	Q005A  FORMAT=$Q005A_.;
ATTRIB	Q005B  FORMAT=$Q005B_.;
ATTRIB	Q005C  FORMAT=$Q005C_.;
ATTRIB	Q005D  FORMAT=$Q005D_.;
ATTRIB	Q005E  FORMAT=$Q005E_.;
ATTRIB	Q005F  FORMAT=$Q005F_.;
ATTRIB	Q005G  FORMAT=$Q005G_.;
ATTRIB	Q006   FORMAT=$Q006_.; 
ATTRIB	Q007   FORMAT=$Q007_.; 
ATTRIB	Q008   FORMAT=$Q008_.; 
ATTRIB	Q009   FORMAT=$Q009_.; 
ATTRIB	Q010   FORMAT=$Q010_.; 
ATTRIB	Q011A  FORMAT=$Q011A_.;
ATTRIB	Q011B  FORMAT=$Q011B_.;
ATTRIB	Q011C  FORMAT=$Q011C_.;
ATTRIB	Q011D  FORMAT=$Q011D_.;
ATTRIB	Q011E  FORMAT=$Q011E_.;
ATTRIB	Q011F  FORMAT=$Q011F_.;
ATTRIB	Q011G  FORMAT=$Q011G_.;
ATTRIB	Q012   FORMAT=$Q012_.; 
ATTRIB	Q013   FORMAT=$Q013_.; 
ATTRIB	Q014   FORMAT=$Q014_.; 
ATTRIB	Q015   FORMAT=$Q015_.; 
ATTRIB	Q016   FORMAT=$Q016_.; 
ATTRIB	Q017   FORMAT=$Q017_.; 
ATTRIB	Q018   FORMAT=$Q018_.; 
ATTRIB	Q019   FORMAT=$Q019_.; 
ATTRIB	Q020   FORMAT=$Q020_.; 
ATTRIB	Q021   FORMAT=$Q021_.; 
ATTRIB	Q022A  FORMAT=$Q022A_.;
ATTRIB	Q022B  FORMAT=$Q022B_.;
ATTRIB	Q022C  FORMAT=$Q022C_.;
ATTRIB	Q022D  FORMAT=$Q022D_.;
ATTRIB	Q022E  FORMAT=$Q022E_.;
ATTRIB	Q022F  FORMAT=$Q022F_.;
ATTRIB	Q022G  FORMAT=$Q022G_.;
ATTRIB	Q022H  FORMAT=$Q022H_.;
ATTRIB	Q023A  FORMAT=$Q023A_.;
ATTRIB	Q023B  FORMAT=$Q023B_.;
ATTRIB	Q023C  FORMAT=$Q023C_.;
ATTRIB	Q023D  FORMAT=$Q023D_.;
ATTRIB	Q023E  FORMAT=$Q023E_.;
ATTRIB	Q023F  FORMAT=$Q023F_.;
ATTRIB	Q023G  FORMAT=$Q023G_.;
ATTRIB	Q024   FORMAT=$Q024_.; 
ATTRIB	Q025   FORMAT=$Q025_.; 
ATTRIB	Q026   FORMAT=$Q026_.; 
ATTRIB	Q027   FORMAT=$Q027_.; 
ATTRIB	Q028A  FORMAT=$Q028A_.;
ATTRIB	Q028B  FORMAT=$Q028B_.;
ATTRIB	Q028C  FORMAT=$Q028C_.;
ATTRIB	Q028D  FORMAT=$Q028D_.;
ATTRIB	Q028E  FORMAT=$Q028E_.;
ATTRIB	Q029   FORMAT=$Q029_.;
ATTRIB	Q031A  FORMAT=$Q031A_.;
ATTRIB	Q031B  FORMAT=$Q031B_.;
ATTRIB	Q031C  FORMAT=$Q031C_.;
ATTRIB	Q031D  FORMAT=$Q031D_.;
ATTRIB	Q031E  FORMAT=$Q031E_.;
ATTRIB	Q031F  FORMAT=$Q031F_.;
ATTRIB	Q032A  FORMAT=$Q032A_.;
ATTRIB	Q032B  FORMAT=$Q032B_.;
ATTRIB	Q032C  FORMAT=$Q032C_.;
ATTRIB	Q032D  FORMAT=$Q032D_.;
ATTRIB	Q032E  FORMAT=$Q032E_.;
ATTRIB	Q032F  FORMAT=$Q032F_.;
ATTRIB	Q032G  FORMAT=$Q032G_.;
ATTRIB	Q032H  FORMAT=$Q032H_.;
ATTRIB	Q033   FORMAT=$Q033_.;
ATTRIB	Q034A  FORMAT=$Q034A_.;
ATTRIB	Q034B  FORMAT=$Q034B_.;
ATTRIB	Q034C  FORMAT=$Q034C_.;
ATTRIB	Q034D  FORMAT=$Q034D_.;
ATTRIB	Q034E  FORMAT=$Q034E_.;
ATTRIB	Q034F  FORMAT=$Q034F_.;
ATTRIB	Q035   FORMAT=$Q035_.; 
ATTRIB	Q036   FORMAT=$Q036_.; 
ATTRIB	Q037A  FORMAT=$Q037A_.;
ATTRIB	Q037B  FORMAT=$Q037B_.;
ATTRIB	Q037C  FORMAT=$Q037C_.;
ATTRIB	Q037D  FORMAT=$Q037D_.;
ATTRIB	Q037E  FORMAT=$Q037E_.;
ATTRIB	Q037F  FORMAT=$Q037F_.;
ATTRIB	Q037G  FORMAT=$Q037G_.;
ATTRIB	Q037H  FORMAT=$Q037H_.;
ATTRIB	Q037I  FORMAT=$Q037I_.;
ATTRIB	Q037J  FORMAT=$Q037J_.;
ATTRIB	Q037K  FORMAT=$Q037K_.;
ATTRIB	Q038A  FORMAT=$Q038A_.;
ATTRIB	Q038B  FORMAT=$Q038B_.;
ATTRIB	Q038C  FORMAT=$Q038C_.;
ATTRIB	Q038D  FORMAT=$Q038D_.;
ATTRIB	Q038E  FORMAT=$Q038E_.;

LABEL
Q001  ='Você está inserido em que tipo de Unidade?'
Q002  ='Qual o seu sexo?'
Q003  ='Quantos anos de idade você possui?'
Q004  ='Como você se considera?'
Q005A ='Qual(is) documento(s) abaixo você possui? Certidão de nascimento.'
Q005B ='Qual(is) documento(s) abaixo você possui? Carteira de Identidade.'
Q005C ='Qual(is) documento(s) abaixo você possui? CPF.'
Q005D ='Qual(is) documento(s) abaixo você possui? Carteira de Trabalho.'
Q005E ='Qual(is) documento(s) abaixo você possui? Carteira de Motorista.'
Q005F ='Qual(is) documento(s) abaixo você possui? Título de Eleitor.'
Q005G ='Qual(is) documento(s) abaixo você possui? Não tenho nenhum dos documentos acima mencionados.'
Q006  ='Qual o seu estado civil? (Marque apenas uma resposta)'
Q007  ='Como era a sua moradia antes de ser privado(a) de liberdade?'
Q008  ='Onde se situava o local onde você morava antes de ser privado(a) de liberdade?'
Q009  ='O local onde você morava antes de ser privado(a) de liberdade fazia parte de alguma comunidade étnicoracial?'
Q010  ='Você morava sozinho(a) antes de ser privado(a) de liberdade?'
Q011A ='Quem morava com você antes de ser privado(a) de liberdade? Pai/Mãe.'
Q011B ='Quem morava com você antes de ser privado(a) de liberdade?Cônjuge/companheiro(a).'
Q011C ='Quem morava com você antes de ser privado(a) de liberdade? Filho(s) ou filha(s).'
Q011D ='Quem morava com você antes de ser privado(a) de liberdade? Irmão(s) ou irmã(s).'
Q011E ='Quem morava com você antes de ser privado(a) de liberdade? Outros parentes.'
Q011F ='Quem morava com você antes de ser privado(a) de liberdade? Amigos, colegas ou conhecidos.'
Q011G ='Quem morava com você antes de ser privado(a) de liberdade? Pessoas abrigadas/institucionalizadas.'
Q012  ='No local onde você morava antes de ser privado(a) de liberdade, com quantas pessoas você dividia o mesmo ambiente para dormir?'
Q013  ='Você tem filho(s) menor(es) de 18 anos de idade?'
Q014  ='Quantos filhos menores de 18 anos de idade você tem?'
Q015  ='Com quem está ou estão seu(s) filho(s) menor(es) de idade?'
Q016  ='Qual é o nível de escolaridade do seu pai?'
Q017  ='Qual é o nível de escolaridade da sua mãe?'
Q018  ='Você já frequentou alguma vez a escola regular?'
Q019  ='Em que tipo de escola você cursou a maior parte do Ensino Fundamental ou Ensino Médio?'
Q020  ='Em que ano/série você deixou de frequentar a escola?'
Q021  ='Com quantos anos de idade você deixou de frequentar a escola regular?'
Q022A ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Faltava escola perto de casa.'
Q022B ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Vivi situações de maus tratos na família.'
Q022C ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Faltava apoio familiar.'
Q022D ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Tive filho(s) na adolescência.'
Q022E ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Precisei ajudar nas tarefas de casa.'
Q022F ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Precisei trabalhar.'
Q022G ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Mudei repetidas vezes de endereço.'
Q022H ='Qual dos seguintes motivos pessoais influenciou você a deixar de frequentar a escola regular? Eu não gostava de estudar.'
Q023A ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Não havia vaga em escola pública.'
Q023B ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Faltavam professores em minha escola.'
Q023C ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Era difícil me relacionar com os professores.'
Q023D ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? Era difícil me relacionar com os meus colegas.'
Q023E ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? A escola era insegura e mal conservada.'
Q023F ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? As formas de ensino e de avaliação eram desestimulantes.'
Q023G ='Qual desses outros motivos influenciou você a deixar de frequentar a escola regular? O conteúdo das aulas não servia para a vida.'
Q024  ='Antes de ter sua liberdade privada, você trabalhava?'
Q025  ='Com que idade você começou a trabalhar?'
Q026  ='Você realiza algum trabalho na Unidade em que está inserido(a)?'
Q027  ='Qual é a sua renda mensal aproximadamente?'
Q028A ='O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: compor uma caderneta de poupança.'
Q028B ='O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: custear despesas pessoais.'
Q028C ='O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: pagar indenização determinada judicialmente.'
Q028D ='O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: prestar assistência à família.'
Q028E ='O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: ressarcir o Estado.'
Q029  ='Quantas horas você trabalha na Unidade em que você está inserido(a)?'
Q030_1='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Adquirir experiência para reinserção social.'
Q030_2='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Aprender uma profissão.'
Q030_3='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ganhar meu próprio dinheiro.'
Q030_4='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Pagar uma indenização.'
Q030_5='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Remir a pena.'
Q030_6='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ressarcir o Estado.'
Q030_7='Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Sustentar minha família.'
Q031A ='Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso profissionalizante.'
Q031B ='Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso de língua estrangeira.'
Q031C ='Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso de computação ou informática.'
Q031D ='Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Curso preparatório para testes, exames ou provas.'
Q031E ='Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Outro curso.'
Q031F ='Qual dos cursos abaixo você já concluiu desde sua privação de liberdade? Não realizei nenhum curso.'
Q032A ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso profissionalizante.'
Q032B ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de língua estrangeira.'
Q032C ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de computação ou informática.'
Q032D ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de oficinas culturais.'
Q032E ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de grupos religiosos/de estudo bíblico.'
Q032F ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, realizo atividade regular de leitura.'
Q032G ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, pratico atividades de esporte/lazer.'
Q032H ='Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Não realizo nenhuma dessas atividades regularmente.'
Q033  ='Você estuda regularmente na Unidade em que você está inserido(a)?'
Q034A ='Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado.'
Q034B ='Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Atender à expectativa de meus familiares.'
Q034C ='Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir entrar na faculdade.'
Q034D ='Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir um emprego.'
Q034E ='Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Desenvolver novas habilidades.'
Q034F ='Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Remir a pena.'
Q035  ='Você tem acesso a biblioteca ou sala de leitura na Unidade em que você está inserido(a)?'
Q036  ='Com que frequência você visita a biblioteca ou a sala de leitura na Unidade em que você está inserido(a)?'
Q037A ='Que gênero de livros você tem o hábito de ler em sua Unidade? Artes/música.'
Q037B ='Que gênero de livros você tem o hábito de ler em sua Unidade? Autoajuda.'
Q037C ='Que gênero de livros você tem o hábito de ler em sua Unidade? Biografias.'
Q037D ='Que gênero de livros você tem o hábito de ler em sua Unidade? Didáticos escolares.'
Q037E ='Que gênero de livros você tem o hábito de ler em sua Unidade? Infanto-juvenil.'
Q037F ='Que gênero de livros você tem o hábito de ler em sua Unidade? Literatura brasileira/estrangeira.'
Q037G ='Que gênero de livros você tem o hábito de ler em sua Unidade? Poesia/poemas.'
Q037H ='Que gênero de livros você tem o hábito de ler em sua Unidade? Religião.'
Q037I ='Que gênero de livros você tem o hábito de ler em sua Unidade? Revistas/gibis.'
Q037J ='Que gênero de livros você tem o hábito de ler em sua Unidade? Técnico-científico, jurídicos.'
Q037K ='Que gênero de livros você tem o hábito de ler em sua Unidade? Não tenho hábito de leitura.'
Q038A ='Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado.'
Q038B ='Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Desenvolver autoconhecimento.'
Q038C ='Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Relaxar, me distrair.'
Q038D ='Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Melhorar minhas habilidades de comunicação.'
Q038E ='Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Remir a pena.'
Q039_1='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Atender à expectativa dos meus familiares.'
Q039_2='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conquistar reconhecimento profissional.'
Q039_3='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conseguir entrar na faculdade.'
Q039_4='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Conseguir um emprego.'
Q039_5='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Obter a certificação do Ensino Fundamental/Médio.'
Q039_6='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Remir a pena.'
Q039_7='Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA. Testar meus conhecimentos.';

RUN;QUIT;
