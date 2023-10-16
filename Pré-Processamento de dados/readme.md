# Ciclo de Pré-Processameto de dados

## Essa pasta sera utilizada para contextualizar e armazear todas as tecnicas e e procedimentos para o pré-processamentos dos dados do projeto antes da etapa de criação dos algoritmos de Machine Learning.

Dando inicio a e esse Pré-Processamento, a equipe alinhou atraves de reunioes via teams, o que seria analisado com os algoritimos de Machine Learning, e a seguinte conclusão foi encontrada: 

***Utilizaremos as respostas dos questionarios socioeconomicos dos participantes para inicialmente realizar uma analise prescritiva, a fim de entender tudo que já aconteceu em relação a situação socioeconomica dos participantes e como determinadas respostas impactam a nota final do candidato. Para em seguida, aplicarmos uma vissão preditiva, a fim de prever as proximas notas finais dos participantes que fizeram uma declaração socioecomica especifica na prova***

Para contextualizar, esse questionario socieconomico preechido, se encontra nas ultimas colunas da base de dados ENCCEJA_REG_2018, ENCCEJA_REG_2019, ENCCEJA_REG_2020 e ENCCEJA_REG_2022. A tabela abaixo expoe essa diferença

Base de dados por ano | Quantidade de perguntas no questionario socioeconomico
--------- | ------
ENCCEJA_REG_2018 | 47
ENCCEJA_REG_2019 | 48
ENCCEJA_REG_2020 | 66
ENCCEJA_REG_2022 | 62

A proxima imagem mostra uma pequena consulta de como é a visão dessas tabelas na base de dados, a ferramenta tulizada foi a Azure Data Studio na linguagem SQL:

ENCCEJA_REG_2018:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a03cc4c5-4d0c-4a90-8905-54c70ed2f604)

Cada linha, representa um aluno com suas determinadas escolhas no questionario. É possivel responder apenas uma alternativa, o banco de dados vai armazenar apenas a letra de tal alternativa. Para comnseguirmos ver de fato o que o candidato respondeu, foi necessario criar uma nova tabela no nosso banco dedos que servisse como dicionario para entendermos cada resposta de questionario. Com base no que foi dito, utilizamos os arquivos para criar essas tabelas:

[Dicionário de dados 2018.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2018/Dicion%C3%A1rios%20de%20dados/Dicion%C3%A1rio%20de%20dados%202018.xlsx)

[Dicionário de dados 2018.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2019/Dicion%C3%A1rio%20de%20dados/Dicion%C3%A1rio%20de%20dados%202019.xlsx)

[Dicionário de dados 2020.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2020/Dicion%C3%A1rio%20de%20dados/Dicionario%20de%20dados%202020.xlsx)

[Dicionário de dados 2022.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2022/Dicion%C3%A1rio%20de%20dados/Dicionario%20de%20dados%202022.xlsx)

Antes de tranformarmos esses arquivos em tabelas SQL, utilizamos a ferramenta EXCEL para fazer algumas algumas alterações com a Ferramenta Microsoft Excel, são elas:

- Remover as colunas "Tamanho e tipo". O campo "Dados do participante", "Dados do local de aplicação da prova", "Dados da prova objetiva" e "Dados da redação".

- Remover dos cabeçalhos com suas formatações visuais, pois o arquivo após essas alteraçõs, seria convertido para CSV e importado para o banco de dados em SQL, logo, cabeçalhos e formatações não são necessarios.

- Remover a mesclagem das das linhas presentes da coluna A e B. O questionario tem a estrutra de 4 colunas, onde as duas primeira colunas, A e B, tem a mesclagem média de 7 linhas para se tranformar em uma, armazenando o nome do questionario e o a descrição. Já as duas ultimas colunas, não tinham mesclagem, já que representavam o nome de cada alternativa e suas descrição. A imagem a baixo representa melhor essa estrutura:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a7c9a662-b200-4954-b736-f60166db82ce)

Essa formatação não é conveniente para nosso projeto, então foi necessario remover essa mesclage, ficando seguinte forma:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c0aac9bd-1b3b-4f50-ac87-784d952a90a9)

A imagem abaixo mostra o antes e o depois desse processo:

Antes: 
![1](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/569dbca5-75d6-4d1c-9c76-945173e8d8f1)

Não foi colocado junto da imagem o resto do questionario, a imagem iria ficar muito grande.

---

Depois:

![merge](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/835232f4-ecc7-4bbc-8300-1a0b386190f6)

Não foi colocado junto da imagem o resto do questionario, a imagem iria ficar muito grande.

---

Após realizar todas essas alterações em cada uma das tabelas por ano, realizamos a conversão dos arquivos de xlsx para csv e fizemos a importação de cada tabela para nosso banco de dados em sql da Azure, utilizando a ferramenta Azure Data Studio, a a função utilizada se chama import, ela é uma extensão responsavel por importar arquivos em csv para um determinado banco de dados escolhido pelo usuario, as imagens abaixo ilustram tal ação:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/4c8ca5da-b97e-4bfd-9eaf-d451c814c281)

Selecionando a função com o botão direito do mouse em cima do banco.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/456cff6e-748e-4e23-8df4-9361bc274fa2)

Escolhendo o banco de dados.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/30ee93a5-73fc-4cc9-b332-d0d320bab615)

Procurando o arquivo para importação.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/7c4e85f4-a681-474f-9d14-c9e6ed8ab300)

Definindo o nome, o padrão do mesmo será: ENCCEJA_DICI_REG_2018, mudando apenas o numero do ano no final de cada tabela.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/6e1e340c-8f93-4b2c-8fe5-efb5c2abb45e)

Revisando os dados para ver se está tudo bem dispoto.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/49346171-ea24-4faf-a0ca-0a4c0796eb1d)

Escolhendo o tipo de dado e o nome, nesse caso, sera nvarchar para todos os campos e os nomes serão: ID_Q, Desc_Quest, Alternativa e Desc_alternatva, a imagem é meramente ilustrativa, as importações corretas e datatypes coerentes já foram feitos.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a8d59571-d02c-444b-bb77-e90314606610)

Agora basta importar e testar para validar o processo.

---

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c70808f3-2f32-4531-a749-daba639ffcac)

Importação feita com sucesso!!

---

Após ser feita a importação, a equipe buscou alguma forma de mapear as questões socioeconômicas com maior influencia na aprovação dos candidatos. Onde cada questão possui uma serie de alternativas, essas series podem montar um contexto onde a aprovação do provado é mais palpável pelo mesmo. 

Algo interessantes a se destacar, é que um candidato se encontra aprovado quando (@GiovanniPuc, preciso que por gentileza você desenvolva a explicação do contexto de aprovação para nós, não me recordo muito bem)

Dando continuidade ao processo, fomos em busca de alguma informação estatística que mostre o verdadeiro peso da realidade socioeconômica do candidato em relação ao eu resultado. O primeiro resultado de tal busca, foi o site do próprio INEP, que possui uma categoria totalmente dedicada a contextualização do ENCCEJA, link para o site: https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/encceja

Dentro dessa pagina, temos a pagina Resultados (https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/encceja/resultados), e dentro de resultados, a área de sinopses Estatísticas (https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/sinopses-estatisticas/encceja), que tem como objetivo, Armazenar principais  informações coletadas  junto  aos  seus  inscritos  e   da aplicação  do exame  a cada edição. São compostas por uma coletânea de tabelas que objetiva fornecer informações passíveis de traçar os diferentes perfis dos inscritos, disponibilizar informações advindas da aplicação dos questionários socioeconômicos e fornecer um rol de dados sobre o desempenho no exame.  A Sinopse é dividida pelos tipos de exame – Nacional e Exterior – e de participantes – regulares e pessoas privadas de liberdade (PPL) e adolescentes sob medidas socioeducativas. Os dados são desagregados por região e Unidade da Federação, no Encceja Nacional; e países e cidades, no caso do Encceja Exterior, com intuito de auxiliar na formulação, monitoramento e avaliação de políticas públicas.

Cada ano, possui sua própria sinopse estatística,  para esse momento seguimos com os ano de 2018 (https://download.inep.gov.br/informacoes_estatisticas/sinopses_estatisticas/sinopses_encceja/Sinopse_ENCCEJA_2018.zip),
2019 (https://download.inep.gov.br/informacoes_estatisticas/sinopses_estatisticas/sinopses_encceja/Sinopse_ENCCEJA_2019.zip),
2020 https://download.inep.gov.br/informacoes_estatisticas/sinopses_estatisticas/sinopses_encceja/Sinopse_ENCCEJA_2020.zip) e 
2022 (https://download.inep.gov.br/informacoes_estatisticas/sinopses_estatisticas/sinopses_encceja/Sinopse_ENCCEJA_2022.zip).

![Imagem do WhatsApp de 2023-10-03 à(s) 21 14 54_cdfec552](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/969cec63-6dce-444d-a012-5a7bbbd28389)

Cada uma dos link acima, disponibiliza dois arquivos, um em Planilha Opendocument e outro em formato Planilha de Microsoft Excel. O conteúdo dos arquivos é igual, apenas o formato é alterado.

Ao abrir o arquivo, temos a seguinte estrutura:

![Imagem do WhatsApp de 2023-10-03 à(s) 21 27 47_289ad429](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/482c4f7a-02f5-4606-ab4f-ec4c1b03796c)
Uma pagina inicial com informações relevantes sobre a sinopse.

![Imagem do WhatsApp de 2023-10-03 à(s) 21 28 19_21f02ad8](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c83e09d3-f14f-46de-af0c-32b66696fbce)
Contado dos desenvolvedores da planilha.

![Imagem do WhatsApp de 2023-10-03 à(s) 21 29 26_a083b6f3](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/33b3810b-5842-47f0-95fa-fc68f6fbff4d)
Corpo técnico envolvido.

![Imagem do WhatsApp de 2023-10-03 à(s) 21 30 44_067dee8c](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/49996c29-77ab-4d90-9dcb-0eca972c997b)
Manual de citações.

![Imagem do WhatsApp de 2023-10-03 à(s) 21 44 28_f104e732](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/e11296ef-5e7e-4bfb-8497-befb3e9eb6d2)

E o sumario, cada um dos 8 itens item do sumario, será responsável por armazenar algumas informações estatísticas, e seus subitens uma analise especifica:

**Participantes Regulares:**

1. Inscritos.
2. Fatores de contexto.
3. Desempenho.

**Participantes PPL´s:**

4. Inscritos.
5. Desempenho.

**ENCCEJA EXTERIOR, Participantes Regulares:**

6. Inscritos.
7. Fatores de contexto.
8. Desempenho.

Nosso foco no momento, são as estatísticas do item 2, fatores de contexto e seus subitens, 2.1 á 2.22. Que atraves de uma estrutua de uma estrutura tabular, conta a quantidade do Numero de isncritos do ENCCEJA segundo alguma questão socioeconomica por região e federação que marcaram cada alternativa de cada questão, segue a baixo uma foto de exemplo:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/06310eae-7ed8-4476-82b4-2cb98862bbd4)

Com base no que foi dito, temos uma base para nosso processo de entender o peso de cada questão do questionario, agora podemos buscar alguma forma de contar a quantiade de aprovados em uma estrutura semelhante e essa mostrada. Para tal atividade, vamos direto para o Azure Data Studio.

Como foi reportado no arquivo: Pré-Processamento de dados/readme1.md, a equipe teve algumas dificuldades para essa atividade, mas depois de algumas pesquisas de desemepenho de consulta, vamos prosseguir com a utilização de tabelas temporarias, apenas mudando a estrutura para algo mais escalavel e prático de ser feito.

Utilizamos o seguinte raciocinio, ao inves de fazer a criação de uma tabela temporaria dentro de cada query de questão separada, como a do exemplo abaixo:

```
select 
ert.SG_UF_PROVA, 
ert.Q04,
ed.Desc_alternatva,
COUNT(ert.Q04) as contar
-- ,CAST(100.* COUNT(er.q05)/SUM(COUNT(*)) OVER () AS decimal(10,2)) AS Porcentagem_04
into #t2018
    FROM ENCCEJA_REG_2018 as ert
        join ENCCEJA_DICI_REG_2018 as ed
            on ed.ID_Q = 'q04'
            and ed.Alternativa = ert.Q04
    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 
    try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0 AND SG_UF_PROVA = 'AC'
group by ert.SG_UF_PROVA,ert.Q04,ed.Desc_alternatva
order by 1,2
```
Vamos criar um grande tabela temporaria em uma unica query, e seguida, criar as querys de cada questão, segue o exemplo abaixo:

```
---- 2018: ----

 select *

INTO #TEMP_ENCCEJA_REG_2018

FROM ENCCEJA_REG_2018 

 select *

INTO #TEMPO_ENCCEJA_DICI_REG_2018

FROM ENCCEJA_DICI_REG_2018
 
--- Questoes: ---

/* Q01 */	select	er.SG_UF_PROVA	,	er.Q01 	,	ed.Desc_alternatva	,	COUNT(er.Q01) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q01'	and ed.Alternativa = er.Q01	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0 	group by er.SG_UF_PROVA,er.Q01,ed.Desc_alternatva	order by 1,2 
/* Q02 */	select	er.SG_UF_PROVA	,	er.Q02 	,	ed.Desc_alternatva	,	COUNT(er.Q02) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q02'	and ed.Alternativa = er.Q02	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0 	group by er.SG_UF_PROVA,er.Q02,ed.Desc_alternatva	order by 1,2 
/* Q03 */	select	er.SG_UF_PROVA	,	er.Q03 	,	ed.Desc_alternatva	,	COUNT(er.Q03) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q03'	and ed.Alternativa = er.Q03	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q03,ed.Desc_alternatva	order by 1,2
/* Q04 */	select	er.SG_UF_PROVA	,	er.Q04 	,	ed.Desc_alternatva	,	COUNT(er.Q04) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q04'	and ed.Alternativa = er.Q04	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q04,ed.Desc_alternatva	order by 1,2


```

Isso torna o processo mais automatizavel. Com essa estrutura em mão, criamos uma estrutura dessa por ano de prova e com uma select e com todos os selects de questão. É importante tambem o processo de criação dessas consultas de cada questão. Por ano, são pelo menos 48 questões socioecnomicas, e para a equipe não ficar horas escrevendo as mesma consulta e mudando apenas os numeros de questão, para automatizar essa montagem, foi feita a criação de um arquivo em excel, onde dentro de cada linha, um techo da query é escrito, e atraves da formatação de formato personalizado, conseguimos criar formatos que deixam o texto do jeito que queremos, segue um exemplo abaixo:

![full](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/2cf66acb-c3be-4bfc-a650-78beb7aab33d)

As colunas formatadas foram:

---

**Coluna:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/e34cefb2-804b-4829-baf3-466f41e99ad0)

**Formatação:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a19c5db0-54b1-476b-87c5-c23ef46b8d70)

**Funcionalidade:** Basta colocar o numero da questão dentro da celula, e automaticamente o formato personalizado sera usado.

---

**Coluna:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/acce3bc1-a7d2-42b9-848b-2feec63d1f0b)

**Formatação:** 

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a651f5f7-081f-4883-86ca-7ccb78d16716)

**Funcionalidade:** Basta colocar o numero da questão dentro da celula, e automaticamente o formato personalizado sera usado.

---

**Coluna:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c682afcb-9afe-43b6-84ac-0fcd7215aecf)

**Formatação:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/780da66d-0fb9-409b-9ea1-17fc3855e185)

**Funcionalidade:** Basta colocar o numero da questão dentro da celula, e automaticamente o formato personalizado sera usado.

---

**Coluna:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/db66304a-623b-4ffe-8e32-40905cac4f67)

**Formatação:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/1301a507-2ded-48e8-b414-81205ac5f25d)

**Funcionalidade:** Basta colocar o numero da questão dentro da celula, e automaticamente o formato personalizado sera usado.

---

**Coluna:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/f8759e4a-850f-4f2d-a560-8c3602e1887b)

**Formatação:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c7d53fc2-79ab-4782-9df9-a470e4bce411)

**Funcionalidade:** Basta colocar o numero da questão dentro da celula, e automaticamente o formato personalizado sera usado.

---

**Coluna:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/8b2ccce7-3366-43ce-a8b8-653b04426f77)

**Formatação:**

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/829fdb3a-69a5-4a89-bb9d-c977085ea6ca)

**Funcionalidade:** Basta colocar o numero da questão dentro da celula, e automaticamente o formato personalizado sera usado.

---

Formatos feito, basta escolher um numero que a linha se modfiica, fazendo isso em todas as colunas, uma linha de base esta feita. Em seguida, é necessario definir a quantidade de questões, é só ir usando o preenchimento relamapgado para tal função, depois é só fazer o mesmo prrenchimento relampago com as outras colunas e nossas consultas estão prontas. Por ultimo, separar as querys por ano com as pastas do excel:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/6094e5b8-8c13-411b-9b4b-3f33db8d640d)

Voltando para as querys prontas, segue abaixo a query completa de 2018, logo mais o arquivo completo com as querys vai estar disponivel.

```
---- 2018: ----

 select *

INTO #TEMP_ENCCEJA_REG_2018

FROM ENCCEJA_REG_2018 

 select *

INTO #TEMPO_ENCCEJA_DICI_REG_2018

FROM ENCCEJA_DICI_REG_2018 

--- Questoes: ---

/* Q01 */	select	er.SG_UF_PROVA	,	er.Q01 	,	ed.Desc_alternatva	,	COUNT(er.Q01) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q01'	and ed.Alternativa = er.Q01	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0 	group by er.SG_UF_PROVA,er.Q01,ed.Desc_alternatva	order by 1,2 
/* Q02 */	select	er.SG_UF_PROVA	,	er.Q02 	,	ed.Desc_alternatva	,	COUNT(er.Q02) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q02'	and ed.Alternativa = er.Q02	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0 	group by er.SG_UF_PROVA,er.Q02,ed.Desc_alternatva	order by 1,2 
/* Q03 */	select	er.SG_UF_PROVA	,	er.Q03 	,	ed.Desc_alternatva	,	COUNT(er.Q03) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q03'	and ed.Alternativa = er.Q03	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q03,ed.Desc_alternatva	order by 1,2
/* Q04 */	select	er.SG_UF_PROVA	,	er.Q04 	,	ed.Desc_alternatva	,	COUNT(er.Q04) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q04'	and ed.Alternativa = er.Q04	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q04,ed.Desc_alternatva	order by 1,2
/* Q05 */	select	er.SG_UF_PROVA	,	er.Q05 	,	ed.Desc_alternatva	,	COUNT(er.Q05) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q05'	and ed.Alternativa = er.Q05	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q05,ed.Desc_alternatva	order by 1,2
/* Q06 */	select	er.SG_UF_PROVA	,	er.Q06 	,	ed.Desc_alternatva	,	COUNT(er.Q06) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q06'	and ed.Alternativa = er.Q06	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q06,ed.Desc_alternatva	order by 1,2
/* Q07 */	select	er.SG_UF_PROVA	,	er.Q07 	,	ed.Desc_alternatva	,	COUNT(er.Q07) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q07'	and ed.Alternativa = er.Q07	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q07,ed.Desc_alternatva	order by 1,2
/* Q08 */	select	er.SG_UF_PROVA	,	er.Q08 	,	ed.Desc_alternatva	,	COUNT(er.Q08) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q08'	and ed.Alternativa = er.Q08	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q08,ed.Desc_alternatva	order by 1,2
/* Q09 */	select	er.SG_UF_PROVA	,	er.Q09 	,	ed.Desc_alternatva	,	COUNT(er.Q09) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q09'	and ed.Alternativa = er.Q09	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q09,ed.Desc_alternatva	order by 1,2
/* Q10 */	select	er.SG_UF_PROVA	,	er.Q10 	,	ed.Desc_alternatva	,	COUNT(er.Q10) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q10'	and ed.Alternativa = er.Q10	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q10,ed.Desc_alternatva	order by 1,2
/* Q11 */	select	er.SG_UF_PROVA	,	er.Q11 	,	ed.Desc_alternatva	,	COUNT(er.Q11) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q11'	and ed.Alternativa = er.Q11	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q11,ed.Desc_alternatva	order by 1,2
/* Q12 */	select	er.SG_UF_PROVA	,	er.Q12 	,	ed.Desc_alternatva	,	COUNT(er.Q12) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q12'	and ed.Alternativa = er.Q12	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q12,ed.Desc_alternatva	order by 1,2
/* Q13 */	select	er.SG_UF_PROVA	,	er.Q13 	,	ed.Desc_alternatva	,	COUNT(er.Q13) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q13'	and ed.Alternativa = er.Q13	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q13,ed.Desc_alternatva	order by 1,2
/* Q14 */	select	er.SG_UF_PROVA	,	er.Q14 	,	ed.Desc_alternatva	,	COUNT(er.Q14) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q14'	and ed.Alternativa = er.Q14	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q14,ed.Desc_alternatva	order by 1,2
/* Q15 */	select	er.SG_UF_PROVA	,	er.Q15 	,	ed.Desc_alternatva	,	COUNT(er.Q15) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q15'	and ed.Alternativa = er.Q15	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q15,ed.Desc_alternatva	order by 1,2
/* Q16 */	select	er.SG_UF_PROVA	,	er.Q16 	,	ed.Desc_alternatva	,	COUNT(er.Q16) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q16'	and ed.Alternativa = er.Q16	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q16,ed.Desc_alternatva	order by 1,2
/* Q17 */	select	er.SG_UF_PROVA	,	er.Q17 	,	ed.Desc_alternatva	,	COUNT(er.Q17) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q17'	and ed.Alternativa = er.Q17	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q17,ed.Desc_alternatva	order by 1,2
/* Q18 */	select	er.SG_UF_PROVA	,	er.Q18 	,	ed.Desc_alternatva	,	COUNT(er.Q18) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q18'	and ed.Alternativa = er.Q18	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q18,ed.Desc_alternatva	order by 1,2
/* Q19 */	select	er.SG_UF_PROVA	,	er.Q19 	,	ed.Desc_alternatva	,	COUNT(er.Q19) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q19'	and ed.Alternativa = er.Q19	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q19,ed.Desc_alternatva	order by 1,2
/* Q20 */	select	er.SG_UF_PROVA	,	er.Q20 	,	ed.Desc_alternatva	,	COUNT(er.Q20) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q20'	and ed.Alternativa = er.Q20	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q20,ed.Desc_alternatva	order by 1,2
/* Q21 */	select	er.SG_UF_PROVA	,	er.Q21 	,	ed.Desc_alternatva	,	COUNT(er.Q21) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q21'	and ed.Alternativa = er.Q21	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q21,ed.Desc_alternatva	order by 1,2
/* Q22 */	select	er.SG_UF_PROVA	,	er.Q22 	,	ed.Desc_alternatva	,	COUNT(er.Q22) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q22'	and ed.Alternativa = er.Q22	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q22,ed.Desc_alternatva	order by 1,2
/* Q23 */	select	er.SG_UF_PROVA	,	er.Q23 	,	ed.Desc_alternatva	,	COUNT(er.Q23) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q23'	and ed.Alternativa = er.Q23	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q23,ed.Desc_alternatva	order by 1,2
/* Q24 */	select	er.SG_UF_PROVA	,	er.Q24 	,	ed.Desc_alternatva	,	COUNT(er.Q24) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q24'	and ed.Alternativa = er.Q24	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q24,ed.Desc_alternatva	order by 1,2
/* Q25 */	select	er.SG_UF_PROVA	,	er.Q25 	,	ed.Desc_alternatva	,	COUNT(er.Q25) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q25'	and ed.Alternativa = er.Q25	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q25,ed.Desc_alternatva	order by 1,2
/* Q26 */	select	er.SG_UF_PROVA	,	er.Q26 	,	ed.Desc_alternatva	,	COUNT(er.Q26) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q26'	and ed.Alternativa = er.Q26	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q26,ed.Desc_alternatva	order by 1,2
/* Q27 */	select	er.SG_UF_PROVA	,	er.Q27 	,	ed.Desc_alternatva	,	COUNT(er.Q27) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q27'	and ed.Alternativa = er.Q27	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q27,ed.Desc_alternatva	order by 1,2
/* Q28 */	select	er.SG_UF_PROVA	,	er.Q28 	,	ed.Desc_alternatva	,	COUNT(er.Q28) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q28'	and ed.Alternativa = er.Q28	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q28,ed.Desc_alternatva	order by 1,2
/* Q29 */	select	er.SG_UF_PROVA	,	er.Q29 	,	ed.Desc_alternatva	,	COUNT(er.Q29) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q29'	and ed.Alternativa = er.Q29	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q29,ed.Desc_alternatva	order by 1,2
/* Q30 */	select	er.SG_UF_PROVA	,	er.Q30 	,	ed.Desc_alternatva	,	COUNT(er.Q30) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q30'	and ed.Alternativa = er.Q30	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q30,ed.Desc_alternatva	order by 1,2
/* Q31 */	select	er.SG_UF_PROVA	,	er.Q31 	,	ed.Desc_alternatva	,	COUNT(er.Q31) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q31'	and ed.Alternativa = er.Q31	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q31,ed.Desc_alternatva	order by 1,2
/* Q32 */	select	er.SG_UF_PROVA	,	er.Q32 	,	ed.Desc_alternatva	,	COUNT(er.Q32) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q32'	and ed.Alternativa = er.Q32	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q32,ed.Desc_alternatva	order by 1,2
/* Q33 */	select	er.SG_UF_PROVA	,	er.Q33 	,	ed.Desc_alternatva	,	COUNT(er.Q33) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q33'	and ed.Alternativa = er.Q33	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q33,ed.Desc_alternatva	order by 1,2
/* Q34 */	select	er.SG_UF_PROVA	,	er.Q34 	,	ed.Desc_alternatva	,	COUNT(er.Q34) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q34'	and ed.Alternativa = er.Q34	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q34,ed.Desc_alternatva	order by 1,2
/* Q35 */	select	er.SG_UF_PROVA	,	er.Q35 	,	ed.Desc_alternatva	,	COUNT(er.Q35) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q35'	and ed.Alternativa = er.Q35	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q35,ed.Desc_alternatva	order by 1,2
/* Q36 */	select	er.SG_UF_PROVA	,	er.Q36 	,	ed.Desc_alternatva	,	COUNT(er.Q36) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q36'	and ed.Alternativa = er.Q36	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q36,ed.Desc_alternatva	order by 1,2
/* Q37 */	select	er.SG_UF_PROVA	,	er.Q37 	,	ed.Desc_alternatva	,	COUNT(er.Q37) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q37'	and ed.Alternativa = er.Q37	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q37,ed.Desc_alternatva	order by 1,2
/* Q38 */	select	er.SG_UF_PROVA	,	er.Q38 	,	ed.Desc_alternatva	,	COUNT(er.Q38) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q38'	and ed.Alternativa = er.Q38	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q38,ed.Desc_alternatva	order by 1,2
/* Q39 */	select	er.SG_UF_PROVA	,	er.Q39 	,	ed.Desc_alternatva	,	COUNT(er.Q39) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q39'	and ed.Alternativa = er.Q39	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q39,ed.Desc_alternatva	order by 1,2
/* Q40 */	select	er.SG_UF_PROVA	,	er.Q40 	,	ed.Desc_alternatva	,	COUNT(er.Q40) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q40'	and ed.Alternativa = er.Q40	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q40,ed.Desc_alternatva	order by 1,2
/* Q41 */	select	er.SG_UF_PROVA	,	er.Q41 	,	ed.Desc_alternatva	,	COUNT(er.Q41) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q41'	and ed.Alternativa = er.Q41	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q41,ed.Desc_alternatva	order by 1,2
/* Q42 */	select	er.SG_UF_PROVA	,	er.Q42 	,	ed.Desc_alternatva	,	COUNT(er.Q42) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q42'	and ed.Alternativa = er.Q42	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q42,ed.Desc_alternatva	order by 1,2
/* Q43 */	select	er.SG_UF_PROVA	,	er.Q43 	,	ed.Desc_alternatva	,	COUNT(er.Q43) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q43'	and ed.Alternativa = er.Q43	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q43,ed.Desc_alternatva	order by 1,2
/* Q44 */	select	er.SG_UF_PROVA	,	er.Q44 	,	ed.Desc_alternatva	,	COUNT(er.Q44) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q44'	and ed.Alternativa = er.Q44	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q44,ed.Desc_alternatva	order by 1,2
/* Q45 */	select	er.SG_UF_PROVA	,	er.Q45 	,	ed.Desc_alternatva	,	COUNT(er.Q45) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q45'	and ed.Alternativa = er.Q45	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q45,ed.Desc_alternatva	order by 1,2
/* Q46 */	select	er.SG_UF_PROVA	,	er.Q46 	,	ed.Desc_alternatva	,	COUNT(er.Q46) as contar	FROM #TEMP_ENCCEJA_REG_2018 as er	join #TEMPO_ENCCEJA_DICI_REG_2018 as ed	on ed.ID_Q =  'q46'	and ed.Alternativa = er.Q46	    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND 	try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0	group by er.SG_UF_PROVA,er.Q46,ed.Desc_alternatva	order by 1,2

```

Após a execução das consultas, um painel de resultado fica disponivel por select. Disponibilzando a função de exportar em csv cada tabela de resultado.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/79be37d8-6be8-43f6-8bc8-0637acd862a4)

Após executar todas as consultas, podemos unir todos os resultados de cada questão e rankear para ver qual questão possui o maior número de aprovados, entregando nossas questões com maior peso na aprovação do candidato.

Para realizar tal tarefa, primeiro é necessario reunir todos os aqruivos csv de cada resposta que foi consultada na imagem anterior.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a0bcf916-b68d-46c5-8836-7292c1065d7a)

A equipe optou por criar um arquivo em excel e agrupar todos os arquivos em csv para mapear as maiores aprovações.

Com o aqruivo chamado allresults.xlsx criado, utilizamos a função obter dados de pasta, unimos os aqruivos em csv e aplicamos uma formatação, segue uma imagem para melhor compreensão:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/b9f05719-579c-4f12-8125-eb006c41a588)

Com essa tabela pronta, fizemos tratamentos para retornar as alternativa mias marcadas e uma estrutura para tal rankeamento, segue a estrtura de rankeamento abaixo:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/2e4880e3-7c5f-4de7-8f7e-9ba3788e3889)

Com este resultado quantitativo, tivemos uma melhor visão das principais características socioeconomicas dos candidatos do país, possibilitando, futuramnete, traçar um "perfil do típico brasileiro candidato do ENCCEJA".
Tento este norte, se torna possíevel realizar analises preditivas com este teor, tanto a nível nacional ou por unidade federativa, faixa etária entre outras a serem exploradas

A baixo, temos um exemplo de uma das características a serem consideradas para análise da composição da população analizada.

Na questão Q03,

Alternativa | Respostas | Quantidade de mascações
--------- | ------ | ---------
A | Zona Rural | 19710
B | Zona urbana | 229905
C | Comunidade indígena | 351
D | Comunidade quilombola | 236



