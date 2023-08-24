/* --- Nome do indicador: Notas por região X.

-- O que esse indicador vai apresentar? A nota das matrizes de conhecimento abaixo por ordem decrescente ou crescente usando como métrica a alguma região do Brasil: 

- LC (NU_NOTA_LC, que diz respeito a Língua Portuguesa, Língua Estrangeira Moderna, Artes, 
Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; 
ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.).

- CH (NU_NOTA_CH, que diz respeito a História e Geografia para os que solicitaram certificação de Ensino Fundamental; 
ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.).

- MT (NU_NOTA_MT, que diz respeito a Matemática para os que solicitaram certificação do Ensino Fundamental; 
ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.).

- CN (NU_NOTA_CN, que diz respeito a Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; 
ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.). 

-- A métrica das regiões corresponde a:

- CO_UF_PROVA, que diz respeito a Código da Unidade da Federação da aplicação da prova.

- SG_UF_PROVA, que diz respeito a Sigla da Unidade da Federação da aplicação da prova.

- NO_ENTIDADE_CERTIFICACAO, que diz respeito a Nome da Unidade Participante responsável pela certificação do exame. 


-- Podemos adicionar também a métrica que diz se o candidato foi ou não aprovado, elas estão logo abaixo. 
Um fato sobre essa métrica é que o candidato é considerado aprovado ao atingir minino 100 pontos:

- IN_APROVADO_LC, que diz respeito a Indica se o participante foi aprovado na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; 
ou Linguagens e Códigos e suas Tecnologias e Redação para os que solicitaram certificação do Ensino Médio.

- IN_APROVADO_CH, que diz respeito a Indica se o participante foi aprovado na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; 
ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.

- IN_APROVADO_MT, que diz respeito a Indica se o participante foi aprovado na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; 
ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.

- IN_APROVADO_CN, que diz respeito a Indica se o participante foi aprovado na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; 
ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.

*/

------------------------------------------------------------------------------------------------------
-- Scripts que retornam comandos em select para apresentar alguns testes dos indicadores anteriores:--
------------------------------------------------------------------------------------------------------

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA 
FROM ENCCEJA_REG_2018 where NU_NOTA_CH > 100 ORDER BY NU_NOTA_CH DESC; 

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA 
FROM ENCCEJA_REG_2018 ORDER BY NU_NOTA_CH DESC; 

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA 
FROM ENCCEJA_REG_2018 WHERE NU_NOTA_CH IS NOT NULL AND NU_NOTA_CH > 150 ORDER BY NU_NOTA_CH DESC; 
 
SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA 
FROM ENCCEJA_REG_2018 WHERE NU_NOTA_CH > 150 AND SG_UF_PROVA = 'MG' ORDER BY NU_NOTA_CH DESC; -- Retornou 701 linhas --

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA 
FROM ENCCEJA_REG_2018 WHERE NU_NOTA_CH > 150 AND SG_UF_PROVA = 'SP' ORDER BY NU_NOTA_CH DESC; -- Retornou 1324 linhas --

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA 
FROM ENCCEJA_REG_2018 WHERE NU_NOTA_CH > 150 AND SG_UF_PROVA = 'RJ' ORDER BY NU_NOTA_CH DESC; -- Retornou 1041 linhas --

-- Logo abaixo eu decidi coloar junto a metrica "IN_APROVADO_CH"

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, IN_APROVADO_CH
FROM ENCCEJA_REG_2018 where NU_NOTA_CH > 100 ORDER BY NU_NOTA_CH DESC;

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, IN_APROVADO_CH 
FROM ENCCEJA_REG_2018 ORDER BY NU_NOTA_CH DESC;

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, IN_APROVADO_CH
FROM ENCCEJA_REG_2018 WHERE NU_NOTA_CH IS NOT NULL AND NU_NOTA_CH > 150 ORDER BY NU_NOTA_CH DESC; 

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, IN_APROVADO_CH
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 1 ORDER BY NU_NOTA_CH; 
/* Retorna 517.280 linhas no select acima, ou seja 517.380 candidatos
foram aprovados em CH */

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, IN_APROVADO_CH
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 0 ORDER BY NU_NOTA_CH;
/* Retorna 127.214 linhas no select acima, ou seja 127.214 candidatos
foram reprovados em CH */

/*Eu decidi colocar as outras demais colunas que contem a aprovação ou reprovação do candidato nas matrizes de 
conhecimento restante no select abaixo*/

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, 
IN_APROVADO_CH, IN_APROVADO_CN, IN_APROVADO_LC, IN_APROVADO_MT
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 1 ORDER BY NU_NOTA_CH; 

/* Após fazer o select acima, eu percebi que não necessariamente a aprovação em uma matriz (IN_APROVADO_CH = 1 por exemplo)
quer dizer que o candidato foi aprovado nas demais matrizes, isso eu já tinha alguma ideia, mas fiz para testar*/

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, 
IN_APROVADO_CH, IN_APROVADO_CN, IN_APROVADO_LC, IN_APROVADO_MT
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 1 AND SG_UF_PROVA = 'MG' ORDER BY NU_NOTA_CH; /*Retornou 45.746 linhas, ou seja
45.746 candidatos foram aprovado na matriz CH no estado de Minas Gerais*/

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, 
IN_APROVADO_CH, IN_APROVADO_CN, IN_APROVADO_LC, IN_APROVADO_MT
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 0 AND SG_UF_PROVA = 'MG' ORDER BY NU_NOTA_CH; /*Retornou 10.061 linhas, ou seja
10.061 candidatos foram reprovados na matriz CH no estado de Minas Gerais*/

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, 
IN_APROVADO_CH, IN_APROVADO_CN, IN_APROVADO_LC, IN_APROVADO_MT
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 1 AND SG_UF_PROVA = 'SP' ORDER BY NU_NOTA_CH; /*Retornou 83.819 linhas, ou seja
83.819 candidatos foram aprovado na matriz CH no estado de São Paulo*/

SELECT NU_NOTA_CH, CO_UF_PROVA, SG_UF_PROVA, NO_ENTIDADE_CERTIFICADORA, 
IN_APROVADO_CH, IN_APROVADO_CN, IN_APROVADO_LC, IN_APROVADO_MT
FROM ENCCEJA_REG_2018 WHERE IN_APROVADO_CH = 0 AND SG_UF_PROVA = 'SP' ORDER BY NU_NOTA_CH; /*Retornou 13.955 linhas, ou seja
13.955 candidatos foram reprovados na matriz CH no estado de São Paulo*/