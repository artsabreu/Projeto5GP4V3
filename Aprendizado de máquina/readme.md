## Aprendizado de Máquina:

O aprendizado de máquina, é o uso de algoritmos para organizar dados, reconhecer padrões e fazer com que computadores aprendam com esses modelos para gerar insights inteligentes sem a necessidade de pré-programação.

Fonte: [Sales Force Brasil](https://www.salesforce.com/br/blog/machine-learning-vs-deep-learning/?d=7013y000002ek9zaac&nc=7013y000002eki3aak&utm_source=google&utm_medium=paid_search&utm_campaign=latam_br_alllobaw&utm_content=pg-pt-mash_7013y000002ek9zaac&utm_term=machinelearning&ef_id=cjwkcajwknopbhbeeiwab3mvvdh1vktzgdg7p2g68ufulwgifg3xidvbp4tlsk42-m52di3xt0zwaxocdpcqavd_bwe:g:s&gclsrc=aw.ds&pcrid=672278065834&pdv=c&gad=1)

Essa pasta tem como objetivo, catalogar todo o processo de escolha dos algoritmos de machine learning, juntamente das ferramentas, práticas, metodos, linguagens e os demais recursos necessarios para nossas analises preditivas.

---

Para a contrução do nosso aprendizade de máquina, o norte sera a busca por uma forma de fazer uma analise preditiva da quantidade de aprovados para a proxima edição da prova, utilizando como atributos, todas as colunas que armazenam dados referentes a aprovação de cada candidato, são elas:

- As colunas/features de notas por matriz de conhecimento, que podem ir de 0 até 199 pontos, onde dentro de cada matriz de conhecimento, o aluno precisa alcançar pelo menos 100 pontos para ser considerado aprovado, Fature de categoria quantitativa continua. 

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a01bbfc1-e7b1-4040-a4ed-42629effefa4)

Juntamente da coluna nota da redação, feature de cateogoria quantitativa numérica.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/ff66d3e0-b6a6-42b4-a7db-5bdfc4f5b2f0)

- As questoes do questionário socioeconômico dos anos de 2018, 2019, 2020 e 2022, questões essas disponíveis no [Pré-Processamento de dados](https://github.com/artabreupuc/Projeto5GP4V3/tree/d90d8402430c0799c9de75540d12ebf842f97209/Pr%C3%A9-Processamento%20de%20dados) feature de categoria numérica.
  
- As colunas que que armazenam se o candidato foi aprovado ou não por matriz de conhecimento, onde a combinação de (Inserir a combinação de pontuação para o candidato ser aprovado por completo na prova) feature de categoria numerica binária.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/f943e5aa-3010-4a1a-9f98-e42ba09b4957)

Com base nas features escolhidas, podemos concluir que a informação de aprovação geral ainda não esta definida (Apenas a aprovação por matriz de conhecimento de redação de forma independente), é necessario definirmos uma coluna que nos informe se o candidato foi aprovado  de forma completa. Para alcarmos tal informação, a nossa analise seguira o modelo não supervisionado, já que o rotulo de aprovação total não se encontra disponivel.

Com o tipo de aprendizado definido, vamos para a linguagens de programação, ambiente de trabalho e softwares que serão utilizados no aprendizado. 

Para linguagem de programação, a linguagem de programação de alto nivel com extreama relevancia no mercado de machine learning e ciencia de dados.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/40ae6e61-8b46-4cbe-849e-5a21fc0ab56c)

Para o ambiente de trabalho foi escolhido o Jupyter juntamente do azure data studio, jupyter sera utilizado para a criação e documentação dos comandos em python e o Azure data Studio vai prosseguir em nosso projeto como o sistema de armazenamento em nuvem da microsoft que armazena nosso banco de dados em SQL.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/30cd2b7f-e7a7-4b5b-9ca1-06eb676757da)

Com alguns pré requisitos definidos, vamos em busca das bases de dados necessarias para executamos nossos modelos. As principal base de dados, é a ENCEEJA_REG_2018, ENCEEJA_REG_2019, ENCEEJA_REG_2020 e ENCEEJA_REG_2022. Atraves de reuniões via teams, a equipe decidiu, que apenas algumas colunas seriam utilizadas nas analises preditivas, são elas:

Questões | 
--------- | 
NU_ANO             
TP_CERTIFICACAO    
TP_SEXO           
CO_UF_PROVA        
SG_UF_PROVA        
TP_PRESENCA_LC     
TP_PRESENCA_MT     
TP_PRESENCA_CN     
TP_PRESENCA_CH     
NU_NOTA_LC         
NU_NOTA_MT         
NU_NOTA_CN         
NU_NOTA_CH         
IN_APROVADO_LC     
IN_APROVADO_MT     
IN_APROVADO_CN     
IN_APROVADO_CH     
NU_NOTA_REDACAO    

Tbm foram utilizadas as questões do questionario socioeconomicos disponiveis nas ultimas linhas do arquivo [Pré-Processamento de dados](https://github.com/artabreupuc/Projeto5GP4V3/tree/d90d8402430c0799c9de75540d12ebf842f97209/Pr%C3%A9-Processamento%20de%20dados) feature de catagoria categorica numerica.

Para coletar todos esses dados, utilizamos o Azure Data Studio, e a query para tal atividade é responsavel por criar uma tabela temporaria e em seguida é feito um select para filtrar a base apenas com as colunas necessarias, segue o script:

```Ruby

select *

INTO #TEMP_ENCCEJA_REG_2022

FROM ENCCEJA_REG_2022

SELECT[NU_ANO]
      ,[TP_CERTIFICACAO]
      ,[TP_SEXO]
      ,[CO_UF_PROVA]
      ,[SG_UF_PROVA]
      ,[TP_PRESENCA_LC]
      ,[TP_PRESENCA_MT]
      ,[TP_PRESENCA_CN]
      ,[TP_PRESENCA_CH]
      ,[NU_NOTA_LC]
      ,[NU_NOTA_MT]
      ,[NU_NOTA_CN]
      ,[NU_NOTA_CH]
      ,[IN_APROVADO_LC]
      ,[IN_APROVADO_MT]
      ,[IN_APROVADO_CN]
      ,[IN_APROVADO_CH]
      ,[NU_NOTA_REDACAO]
      ,[Q04]
      ,[Q05]
      ,[Q10]
      ,[Q11]
      ,[Q13]
      ,[Q24]
      ,[Q26]
      ,[Q27]
      ,[Q32]
      ,[Q47]
      ,[Q48]


      FROM [dbo].[ENCCEJA_REG_2022]

```

Esse script corresponde ao ano de 2022, segue abaixo os scripts dos outros anos:

2020:

```Ruby

select *

INTO #TEMP_ENCCEJA_REG_2020

FROM ENCCEJA_REG_2020

SELECT[NU_ANO]
      ,[TP_CERTIFICACAO]
      ,[TP_SEXO]
      ,[CO_UF_PROVA]
      ,[SG_UF_PROVA]
      ,[TP_PRESENCA_LC]
      ,[TP_PRESENCA_MT]
      ,[TP_PRESENCA_CN]
      ,[TP_PRESENCA_CH]
      ,[NU_NOTA_LC]
      ,[NU_NOTA_MT]
      ,[NU_NOTA_CN]
      ,[NU_NOTA_CH]
      ,[IN_APROVADO_LC]
      ,[IN_APROVADO_MT]
      ,[IN_APROVADO_CN]
      ,[IN_APROVADO_CH]
      ,[NU_NOTA_REDACAO]
      ,[Q04]
      ,[Q05]
      ,[Q08]
      ,[Q10]
      ,[Q11]
      ,[Q13]
      ,[Q24]
      ,[Q26]
      ,[Q27]
      ,[Q33]
      ,[Q34]
      ,[Q35]
      ,[Q36]
      ,[Q37]
      ,[Q39]
      ,[Q40]
      ,[Q41]
      ,[Q42]
      ,[Q43]
      ,[Q56]

      FROM [dbo].[ENCCEJA_REG_2020]

```

2019:

```Ruby

select *

INTO #TEMP_ENCCEJA_REG_2019

FROM ENCCEJA_REG_2019

SELECT [NU_ANO]
      ,[TP_CERTIFICACAO]
      ,[TP_SEXO]
      ,[CO_UF_PROVA]
      ,[SG_UF_PROVA]
      ,[TP_PRESENCA_LC]
      ,[TP_PRESENCA_MT]
      ,[TP_PRESENCA_CN]
      ,[TP_PRESENCA_CH]
      ,[NU_NOTA_LC]
      ,[NU_NOTA_MT]
      ,[NU_NOTA_CN]
      ,[NU_NOTA_CH]
      ,[IN_APROVADO_LC]
      ,[IN_APROVADO_MT]
      ,[IN_APROVADO_CN]
      ,[IN_APROVADO_CH]
      ,[NU_NOTA_REDACAO]
      ,[Q04]
      ,[Q05]
      ,[Q08]
      ,[Q10]
      ,[Q11]
      ,[Q14]
      ,[Q16]
      ,[Q17]
      ,[Q22]
      ,[Q23]
      ,[Q44]
  FROM [dbo].[ENCCEJA_REG_2019]

```

2018:

```Ruby

select *

INTO #TEMP_ENCCEJA_REG_2018

FROM ENCCEJA_REG_2018 

SELECT[NU_ANO]
      ,[TP_CERTIFICACAO]
      ,[TP_SEXO]
      ,[CO_UF_PROVA]
      ,[SG_UF_PROVA]
      ,[TP_PRESENCA_LC]
      ,[TP_PRESENCA_MT]
      ,[TP_PRESENCA_CN]
      ,[TP_PRESENCA_CH]
      ,[NU_NOTA_LC]
      ,[NU_NOTA_MT]
      ,[NU_NOTA_CN]
      ,[NU_NOTA_CH]
      ,[IN_APROVADO_LC]
      ,[IN_APROVADO_MT]
      ,[IN_APROVADO_CN]
      ,[IN_APROVADO_CH]
      ,[NU_NOTA_REDACAO]
      ,[Q04]
      ,[Q05]
      ,[Q08]
      ,[Q10]
      ,[Q11]
      ,[Q14]
      ,[Q16]
      ,[Q17]
      ,[Q22]
      ,[Q23]
      ,[Q43]
      ,[Q47]
  FROM [dbo].[ENCCEJA_REG_2018]

```

Após a execução de todas essas querys, é feito o donwload dos arquivos em csv e armazenado em uma pasta para melhor localização e futuro uso.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/25d22673-fae8-4a26-959a-3609dfa4cd89)

---

Dados disponiveis para trabalho!! Agora vamos para o Jupyter para começar a contrução do Notebook em Python. Começando com a criação de um arquivo em python e escolhendo as bibliotecas para o analise, vão ser elas: NumpY, Pandas e scikit-learn. 

```Ruby

import numpy as np #Utilizada para funções matematicas dos mais diversos tipos
import pandas as pd #Utilizada para análise e manipulação de dados
import skickitlearn as sklearn #Utilizada para Machine Learning
print("Imports feitos com sucesso")

```

Em seguida, é feita a importação dos modelos da bibliteca sklearn Machine Learning, são eles:

```Ruby

from sklearn.model_selection import train_test_split #Utilizado para dividir dados de um arquivo CSV em train (treino) e test (teste)

from sklearn.preprocessing import StandardScaler # Utilizado para calcular a média e o desvio padrão em um conjunto de treinamento, de modo a poder reaplicar posteriormente a mesma transformação no conjunto de teste.

from sklearn.metrics import accuracy_score #Utilizado para medir a acuracia de uma classificação,
classification_report #Utilizado para fazer o report de metricas de desemepenho do modelo,
confusion_matrix #Utilizada para ver uma frequencia de classificação para cada classe de um modelo 

from sklearn.model_selection import cross_val_score #Utilizado para retornar uma lista com o resultado dos teste de acuracia de modelos de classificação 

from sklearn.model_selection import GridSearchCV #Utilizado para automatizar o processo de ajuste dos parametros de um algoritmo

from sklearn.ensemble import RandomForestClassifier # Modelo enseble Utilizado para estabelever um connjunto de regras de decisão atraves da união arvores de decisão 

print("Imports feitos com sucesso")

```

Com os modelos e bibliotecas prontos, podemos carregar um arquivo csv para fazer a modelagem, vamos iniciar com o arquivo de 2022 e futuramente fazer a modelagem para os demais arquivos em CSV.

```Ruby
data = pd.read_csv(r"C:\Users\arthu\OneDrive\Área de Trabalho\AP Encceja\csv files\2022.csv") # Usando a biblioteca pandas para ler um arquivo CSV.

print("Leitura feita com sucesso")

```

Para otimizar o nosso tempo de trabalho, utilizamos a função data drop para remover todos os arquivos nulos da base de dados

```Ruby
data.dropna(inplace=True)

print ("Drop feito com sucesso")

```

Iniciamos com a contagem de candidatos com o valo "F" no atributo TP_SEXO:

```Ruby
count_female = (data['TP_SEXO'] == 'F').sum() #Uma variavel é declarada junto do termo "Count" e é feito um filtro de um determinado valor de uma variavel

print("Quantidade de linhas com valor 'F' na coluna TP_SEXO:", count_female) #Em seguida, é feito a impressão desse resultado

```
Fazendo a contagem de valores ausentes dentro da base de dados

```Ruby

missing_data = data.isna()
missing_data_count = missing_data.sum()
print("Valores ausentes por coluna:")
print(missing_data_count)

```

Iniciamos com a contagem de candidatos com o valo "M" no atributo TP_SEXO:

```Ruby

count_female = (data['TP_SEXO'] == 'M').sum() #Uma variavel é declarada junto do termo "Count" e é feito um filtro de um determinado valor de uma variavel
print("Quantidade de linhas com valor 'M' na coluna TP_SEXO:", count_female)

```
A baixo damos inicio ao uso do modelo escolhido, o Randon Forest Classifier. As florestas aleatórias são um método de aprendizagem de maquina para classificar algoritmos. Compreende várias árvores de decisão individuais que dependem características aleatórias e formação de dados para alcançar uma predição, garantindo uma maior credibilidade do que uma única árvore de decisão.

```Ruby

# Criação de uma coluna para verificar se o aluno foi aprovado baseado nos valores das colunas onde contém a informação de aprovado ou não em cada uma das 4 disciplinas
data['APROVADO'] = (data['IN_APROVADO_LC'] + data['IN_APROVADO_MT'] + data['IN_APROVADO_CN'] + data['IN_APROVADO_CH'] == 4) & (data['NU_NOTA_REDACAO'] >= 5)
data['REPROVADO'] = ~data['APROVADO'] 

# Separação dos recursos (features) e o alvo (target)
X = data[['NU_NOTA_LC', 'NU_NOTA_MT', 'NU_NOTA_CN', 'NU_NOTA_CH']]
y = data['APROVADO']

# Utilizando o modelo escolhido Random Forest
model = RandomForestClassifier(random_state=42)

# Utilizando a validação cruzada com 5 partições (k=5) e métrica de acurácia
scores = cross_val_score(model, X, y, cv=5, scoring='accuracy')

# Imprimindo os resultados da validação cruzada e acurácia do nosso modelo
print("Acurácia em cada partição:", scores)
print("Acurácia média: {:.2f}".format(scores.mean()))

```
**Acurácia em cada partição:** [0.9042627  0.90541895 0.90946232 0.90102139 0.8973598 ] <br/>
**Acurácia média:** 0.90  <br/>

A acurácia mede a proporção de previsões corretas em relação ao total de previsões feitas pelo modelo. 
Após essa etapa, criamos uma matriz de confusão que é uma ferramenta fundamental para avaliarmos o desempenho de um modelo de classificação além da acurácia, permitindo a quantificação de acertos e erros em relação às classes detectadas e reais.

```Ruby

from sklearn.metrics import confusion_matrix

model.fit(X_train, y_train)

y_pred = model.predict(X_test)

confusion = confusion_matrix(y_test, y_pred)

print("Matriz de Confusão:")
print(confusion)


```
**Matriz de Confusão:  <br/>
[[ 9548  2081] <br/>
[  398 13919]]**  <br/> 

Ao todo temos 4 valores que representam:  <br/>

**Verdadeiros Positivos (True Positives - TP):** O número de instâncias positivas que o modelo classificou corretamente como positivas, por exemplo, quando o aluno foi aprovado e o modelo previu que ele foi aprovado.  <br/>
**Verdadeiros Negativos (True Negatives - TN):** O número de instâncias negativas que o modelo classificou corretamente como negativas, por exemplo, quando o modelo não previu que o aluno foi aprovado e ele foi reprovado.  <br/>
**Falsos Positivos (False Positives - FP:** O número de instâncias negativas que o modelo classificou incorretamente como positivas, por exemplo, quando o modelo previu que o aluno foi aprovado, mas ele foi reprovado.  <br/>
**Falsos Negativos (False Negatives - FN):** O número de instâncias positivas que o modelo classificou incorretamente como negativas, por exemplo, quando o aluno foi aprovado, mas o modelo não previu que ele foi aprovado.  <br/>

Com base na nossa matriz de confusão criada, também calculamos outras métricas, como **precisão, recall e F1-score**. 
 
```Ruby

from sklearn.metrics import precision_score, recall_score, f1_score

TP = confusion[1, 1]  # Verdadeiras Positivas
FP = confusion[0, 1]  # Falsas Positivas
FN = confusion[1, 0]  # Falsas Negativas

precisao = precision_score(y_test, y_pred)
recall = recall_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)

print("Precisão:", precisao)
print("Recall:", recall)
print("F1-Score:", f1)


```
**Precisão:** 0.8699375 (Mede a proporção de instâncias classificadas como positivas que são verdadeiramente positivas, enfatizando a capacidade de evitar falsos positivos.) <br />
**Recall:** 0.9722008800726409 (Mede a proporção de instâncias positivas corretamente identificadas pelo modelo, enfatizando a capacidade de evitar falsos negativos.) <br />
**F1-Score:** 0.9182306956493057 (Combina Precisão e Recall em um único valor, fornecendo um equilíbrio entre a capacidade de encontrar todas as instâncias positivas e a capacidade de evitar classificações incorretas.) <br />

Para finalizarmos esta etapa, criamos um gráfico para representar a matriz de confusão. 

```Ruby

import seaborn as sns
import matplotlib.pyplot as plt

labels = ['Aprovada', 'Reprovada'] 
sns.heatmap(confusion, annot=True, fmt="d", cmap="Blues", xticklabels=labels, yticklabels=labels)

plt.xlabel("Detectada")
plt.ylabel("Real")

plt.show()

```
![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/60244987/38eb2d59-e7cf-40d0-9057-fc42931b22aa)

Agora, vamos carregar as 3 bases de dados restantes, 2018, 2019 e 2022. A fim de fazermos a união delas e executarmos o treinamento.

``` Ruby

# Fazendo a leitura das bases de dados de cada ano em csv
BD2022 = pd.read_csv("2022.csv")
BD2020 = pd.read_csv("2020.csv")
BD2019 = pd.read_csv("2019.csv")
BD2018 = pd.read_csv("2018.csv")

print("Leituras feitas com sucesso")

```

```Ruby

# Fazendo a concatenação dos arquivos e removendo os index de cada uma das bases de dados, deixando um unico index para todo o dataframe
  
DBFULL = pd.concat([BD2018, BD2019, BD2020, BD2022], ignore_index=True)

print("Concat feito com sucesso")

```

```Ruby

# Visualizando o novo dataframe
display(DBFULL)

```

```Ruby

#Removendo os valores nulos do dataframe
DBFULL.dropna(inplace=True)

print ("Drop feito com sucesso")

```

```Ruby

missing_DBFULL = DBFULL.isna()
missing_DBFULL_count = missing_DBFULL.sum()
print("Valores ausentes por coluna:")
print(missing_DBFULL_count)

```

```Ruby


# Crie uma coluna para verificar se o aluno passou em todas as disciplinas utilizando do criterio de aprovação de candidato definido pelo INEP
DBFULL['APROVADO'] = (DBFULL['IN_APROVADO_LC'] + DBFULL['IN_APROVADO_MT'] + DBFULL['IN_APROVADO_CN'] + DBFULL['IN_APROVADO_CH'] == 4) & (DBFULL['NU_NOTA_REDACAO'] >= 5)
DBFULL['REPROVADO'] = ~DBFULL['APROVADO'] 

# Separe os recursos (features) e o alvo (target)
X = DBFULL[['NU_NOTA_LC', 'NU_NOTA_MT', 'NU_NOTA_CN', 'NU_NOTA_CH']]
y = DBFULL['APROVADO']

# Crie o modelo
model = RandomForestClassifier(random_state=42)

# Realize a validação cruzada com 5 partições (k=5) e use a métrica de acurácia
scores = cross_val_score(model, X, y, cv=5, scoring='accuracy')

# Imprima os resultados da validação cruzada
print("Acurácia em cada partição:", scores)
print("Acurácia média: {:.2f}".format(scores.mean()))


```

Durante esse processo de iniciar esse aprendizado de maquina, a equipe notou que o contaste da função:

```Ruby
DBFULL = pd.concat([BD2018, BD2019, BD2020, BD2022], ignore_index=True) 
```

Estava gerando uma sobrecarga no Jupyter, levando em torno de 10 minutos para carregar as bases de dados no notebook e mais 10 para concatenar as mesmas.

Com esse contratempo no caminho, optamos por unir os arquivos em csv previamente para depois carregar para o notebook. Para tal feito, analisamos se a quantidade de colunas estava de acordo com o que estava sendo buscado nos algoritmos e adicionamos a coluna NU_INSCRICAO, sendo considerado um caractere de chave unica, evitando possiveis duplicidades. Alteramos o Script em sql e executamoso mesmo novamente.


Com os arquivos csv em mãos, utilizamos um metodo relativamente simples para executar essa união. Utilizando prompt de comando. Definimos o endereço dos arquivos em csv que devem ser unidos, depois usamos a função copy para arquivos csv com a função *csv e definimos um nome para o novo arquivo, para fins de demonstração, o novo arquivo vai se chamar DBFULL.csv.

```Ruby
Microsoft Windows [versão XX.X.XXXXX.XXXX]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\arthu>cd OneDrive

C:\Users\arthu\OneDrive>cd Área de Trabalho

C:\Users\arthu\OneDrive\Área de Trabalho>cd AP Encceja

C:\Users\arthu\OneDrive\Área de Trabalho\AP Encceja>cd csv files

C:\Users\arthu\OneDrive\Área de Trabalho\AP Encceja\csv files>dir
 O volume na unidade C não tem nome.
 O Número de Série do Volume é 7838-16A9

 Pasta de C:\Users\arthu\OneDrive\Área de Trabalho\AP Encceja\csv files

13/11/2023  21:17    <DIR>          .
13/11/2023  21:17    <DIR>          ..
07/11/2023  23:20       182.697.841 2018.csv
08/11/2023  00:13       309.189.740 2019.csv
08/11/2023  05:22       263.290.059 2020.csv
08/11/2023  19:39       180.172.495 2022.csv
               4 arquivo(s)    935.350.135 bytes
               2 pasta(s)   111.486.144.512 bytes disponíveis

C:\Users\arthu\OneDrive\Área de Trabalho\AP Encceja\csv files>copy *.csv DBFULL.csv
2018.csv
2019.csv
2020.csv
2022.csv
        1 arquivo(s) copiado(s).

C:\Users\arthu\OneDrive\Área de Trabalho\AP Encceja\csv files>
```

Após essa união, temos um arquivo completo com aproximadamente 9 milhoes de registros. Com base no que foi dito, vamos seguir para a criação do algoritmos. Segue o print do arquivo de teste de união, o que foi usado se encontra disponivel no repositorio do Jupyter.

Após a união dos arquivos, começamos o algoritmo subindo as bibliotecas necessárias para o nosso projeto, como pode ser visto na imagem abaixo: 

```Ruby
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import GridSearchCV
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import cross_val_score
from sklearn.ensemble import RandomForestClassifier

print("Imports feitos com sucesso")
```
Depois da importação da biblioteca, seguimos para a leitura da base de dados e também fizemos a limpeza das linhas que não continham dados. 

```Ruby
data = pd.read_csv("DBFULL.csv", sep='\t')

print("Imports feitos com sucesso")
```

```Ruby
data.dropna(inplace=True)

print("Drop feitos com sucesso")
```

Em seguida, rodamos o script do modelo de Random Forest que realizará a análise dos dados baseado na aprovação nas 4 áreas do conhecimento mais a nota de redação e realizará a predição baseado nas notas das 4 áreas. 

```Ruby
# Crie uma coluna para verificar se o aluno passou em todas as disciplinas
DBFULL['APROVADO'] = (DBFULL['IN_APROVADO_LC'] + DBFULL['IN_APROVADO_MT'] + DBFULL['IN_APROVADO_CN'] + DBFULL['IN_APROVADO_CH'] == 4) & (DBFULL['NU_NOTA_REDACAO'] >= 5)
DBFULL['REPROVADO'] = ~DBFULL['APROVADO']

# Separe os recursos (features) e o alvo (target)
X = DBFULL[['NU_NOTA_LC', 'NU_NOTA_MT', 'NU_NOTA_CN', 'NU_NOTA_CH']]
y = DBFULL['APROVADO']

# Crie o modelo
model = RandomForestClassifier(random_state=42)

# Realize a validação cruzada com 5 partições (k=5) e use a métrica de acurácia
scores = cross_val_score(model, X, y, cv=5, scoring='accuracy')

# Imprima os resultados da validação cruzada
print("Acurácia em cada partição:", scores)
print("Acurácia média: {:.2f}".format(scores.mean()))
```
Ao tentar rodar esse script, recebemos a seguiguente mensagem de erro:

Com base no erro que foi ocorrido, a equipe uniu esforços para tentar combater tal erro, não encontramos sucesso. Agora a equipe busca uma forma de reverter esse impecilio. 
