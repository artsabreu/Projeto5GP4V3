## Aprendizado de Máquina:

O aprendizado de máquina, é o uso de algoritmos para organizar dados, reconhecer padrões e fazer com que computadores aprendam com esses modelos para gerar insights inteligentes sem a necessidade de pré-programação.

Fonte: [Sales Force Brasil](https://www.salesforce.com/br/blog/machine-learning-vs-deep-learning/?d=7013y000002ek9zaac&nc=7013y000002eki3aak&utm_source=google&utm_medium=paid_search&utm_campaign=latam_br_alllobaw&utm_content=pg-pt-mash_7013y000002ek9zaac&utm_term=machinelearning&ef_id=cjwkcajwknopbhbeeiwab3mvvdh1vktzgdg7p2g68ufulwgifg3xidvbp4tlsk42-m52di3xt0zwaxocdpcqavd_bwe:g:s&gclsrc=aw.ds&pcrid=672278065834&pdv=c&gad=1)

Essa pasta tem como objetivo, catalogar todo o processo de escolha dos algoritmos de machine learning, juntamente das ferramentas, práticas, metodos, linguagens e os demais recursos necessarios para nossas analises preditivas.

---

Para a contrução do nosso aprendizade de máquina, o norte sera a busca por uma forma de fazer uma analise preditiva da quantidade de aprovados para a proxima edição da prova, utilizando como atributos, todas as colunas que aramazenam dados referentes a aprovação de cada candidato, são elas:

- As colunas/features de notas por matriz de conhecimento, que podem ir de 0 até 199 pontos, onde dentro de cada matriz de conhecimento, o aluno precisa alcançar pelo menos 100 pontos para ser considerado aprovado, Fature de categoria quantitativa continua. 

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a01bbfc1-e7b1-4040-a4ed-42629effefa4)

Juntamente da coluna nota da redação, feature de cateogoria quantitativa numerica.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/ff66d3e0-b6a6-42b4-a7db-5bdfc4f5b2f0)

- As questoes do questiocnario socioeconomicao dos anos de 2018, 2019, 2020 e 2022, questões essas disponiveis no [Pré-Processamento de dados](https://github.com/artabreupuc/Projeto5GP4V3/tree/d90d8402430c0799c9de75540d12ebf842f97209/Pr%C3%A9-Processamento%20de%20dados) feature de catagoria categorica numerica.
  
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

Iniciamos com a contagem de candidatos com o valo "F" no atributo TP_SEXO

```Ruby
count_female = (data['TP_SEXO'] == 'F').sum() #Uma variavel é declarado junto do termo count e em seguida é feito um filtro de um valor de uma variavel

print("Quantidade de linhas com valor 'F' na coluna TP_SEXO:", count_female) #Em seguida, é feito a impressão desse resultado

```

```Ruby

missing_data = data.isna()
missing_data_count = missing_data.sum()
print("Valores ausentes por coluna:")
print(missing_data_count)

```

```Ruby

count_female = (data['TP_SEXO'] == 'M').sum()
print("Quantidade de linhas com valor 'M' na coluna TP_SEXO:", count_female)

```

```Ruby

# Crie uma coluna para verificar se o aluno passou em todas as disciplinas
data['APROVADO'] = (data['IN_APROVADO_LC'] + data['IN_APROVADO_MT'] + data['IN_APROVADO_CN'] + data['IN_APROVADO_CH'] == 4) & (data['NU_NOTA_REDACAO'] >= 5)
data['REPROVADO'] = ~data['APROVADO']

# Separe os recursos (features) e o alvo (target)
X = data[['NU_NOTA_LC', 'NU_NOTA_MT', 'NU_NOTA_CN', 'NU_NOTA_CH']]
y = data['APROVADO']

# Crie o modelo
model = RandomForestClassifier(random_state=42)

# Realize a validação cruzada com 5 partições (k=5) e use a métrica de acurácia
scores = cross_val_score(model, X, y, cv=5, scoring='accuracy')

# Imprima os resultados da validação cruzada
print("Acurácia em cada partição:", scores)
print("Acurácia média: {:.2f}".format(scores.mean()))

```

```Ruby

from sklearn.model_selection import train_test_split

# Divida o conjunto de dados em conjuntos de treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Treine o modelo
model.fit(X_train, y_train)

# Faça previsões no conjunto de teste
y_pred = model.predict(X_test)

# Compare as previsões com os valores reais para identificar os erros
errors = (y_pred != y_test)
misclassified_data = X_test[errors]

# Imprima as linhas em que o modelo errou
print("Linhas em que o modelo errou:")
print(misclassified_data)

```

```Ruby

from sklearn.model_selection import cross_val_predict

# Realize a validação cruzada com 5 partições e obtenha as previsões
predicted = cross_val_predict(model, X, y, cv=5)

# Compare as previsões com os valores reais para identificar os erros
errors = (predicted != y)
misclassified_indices = [i for i, error in enumerate(errors) if error]
misclassified_data = data.iloc[misclassified_indices]

# Imprima as linhas em que o modelo errou, incluindo as colunas desejadas
print("Linhas em que o modelo errou:")
print(misclassified_data[['NU_NOTA_LC', 'NU_NOTA_MT', 'NU_NOTA_CN', 'NU_NOTA_CH', 'IN_APROVADO_LC', 'IN_APROVADO_MT', 'IN_APROVADO_CN', 'IN_APROVADO_CH', 'NU_NOTA_REDACAO']])


```

```Ruby

# Suponhamos que 'data' seja o seu DataFrame
data_da_linha_0 = data.iloc[0]

# Agora você pode imprimir todos os dados da linha 0
print(data_da_linha_0)

```

```Ruby

from sklearn.model_selection import cross_val_predict

# Realize a validação cruzada com 5 partições e obtenha as previsões
predicted = cross_val_predict(model, X, y, cv=5)

# Compare as previsões com os valores reais para identificar os erros
errors = (predicted != y)
misclassified_indices = [i for i, error in enumerate(errors) if error]
misclassified_data = data.iloc[misclassified_indices]

# Imprima as linhas em que o modelo errou, incluindo as colunas desejadas
print("Linhas em que o modelo errou:")
print(misclassified_data[['NU_NOTA_LC', 'NU_NOTA_MT', 'NU_NOTA_CN', 'NU_NOTA_CH', 'IN_APROVADO_LC', 'IN_APROVADO_MT', 'IN_APROVADO_CN', 'IN_APROVADO_CH', 'NU_NOTA_REDACAO', 'APROVADO']])


```

```Ruby

from sklearn.metrics import confusion_matrix

# Treine o modelo em um conjunto de treinamento
model.fit(X_train, y_train)

# Faça previsões no conjunto de teste
y_pred = model.predict(X_test)

# Crie a matriz de confusão
confusion = confusion_matrix(y_test, y_pred)

# Exiba a matriz de confusão
print("Matriz de Confusão:")
print(confusion)


```

```Ruby

from sklearn.metrics import precision_score, recall_score, f1_score

# Suponhamos que você já tenha a matriz de confusão 'confusion'
TP = confusion[1, 1]  # Verdadeiras Positivas
FP = confusion[0, 1]  # Falsas Positivas
FN = confusion[1, 0]  # Falsas Negativas

# Cálculo de Precisão, Recall e F1-Score
precisao = precision_score(y_test, y_pred)
recall = recall_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)

print("Precisão:", precisao)
print("Recall:", recall)
print("F1-Score:", f1)


```

```Ruby

from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

# Suponhamos que você já tenha a matriz de confusão 'confusion'
TP = confusion[1, 1]  # Verdadeiras Positivas
FP = confusion[0, 1]  # Falsas Positivas
FN = confusion[1, 0]  # Falsas Negativas

# Cálculo de Acurácia, Precisão, Recall e F1-Score
acuracia = accuracy_score(y_test, y_pred)
precisao = precision_score(y_test, y_pred)
recall = recall_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)

print("Acurácia:", acuracia)
print("Precisão:", precisao)
print("Recall:", recall)
print("F1-Score:", f1)


```

```Ruby

import seaborn as sns
import matplotlib.pyplot as plt

# Suponhamos que você já tenha a matriz de confusão 'confusion'

# Crie uma tabela visual da matriz de confusão
sns.heatmap(confusion, annot=True, fmt="d", cmap="Blues")

# Defina rótulos dos eixos
plt.xlabel("Classe Real")
plt.ylabel("Predição")

# Mostre a tabela visual da matriz de confusão
plt.show()


```

```Ruby

import seaborn as sns
import matplotlib.pyplot as plt

# Suponhamos que você já tenha a matriz de confusão 'confusion' (de dimensão 2x2)
labels = ['Aprovada', 'Reprovada']  # Substitua pelos rótulos das suas classes
sns.heatmap(confusion, annot=True, fmt="d", cmap="Blues", xticklabels=labels, yticklabels=labels)

# Defina rótulos dos eixos
plt.xlabel("Detectada")
plt.ylabel("Real")

# Mostre a tabela visual da matriz de confusão
plt.show()



```
