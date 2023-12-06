## Otimização e conclusão:


Durante nossa caminhada do projeto, tivemnos como foco principal o aprendizado da equipe à luz dos conteúdos acadêmico. Vamos voltar ao passado e repassar alguns pontos de nossa historia.

Iniciamos catalogando nossos dados e todos os seus [Metadados](https://github.com/artabreupuc/Projeto5GP4V3/tree/dd3ce8ec65092e25db12d28a51c0c09049ea6394/Metadados) Levando a uma breve instrução de navegação pelas pastas, onde os metadados ficam separados por ano. Dentro de cada ano, a seguinte coleção de pastas separa os metadados: DADOS,  DICIONÁRIO DE DADOS, MATRIZ DE REFERENCIA, SQLSCRIPTSGERAIS, INPUTS EM SPS E SAS. E a navegação pelas branchs do git. 

Em seguida, iniciamos nosso pré processamento de dados [Pré Procesamento de dados](https://github.com/artabreupuc/Projeto5GP4V3/tree/dd3ce8ec65092e25db12d28a51c0c09049ea6394/Pr%C3%A9-Processamento%20de%20dados) Detalhamos nossa jornada por todas as tecnicas e e procedimentos para o pré-processamentos dos dados do projeto antes da etapa de criação dos algoritmos de Machine Learning. Começamos definindo o que seria buscado na analise preditiva, a equipe entrou em acordo com o seguinte:

**Utilizaremos as respostas dos questionarios socioeconomicos dos participantes para inicialmente realizar uma analise prescritiva, a fim de entender tudo que já aconteceu em relação a situação socioeconomica dos participantes e como determinadas respostas impactam a nota final do candidato. Para em seguida, aplicarmos uma vissão preditiva, a fim de prever as proximas notas finais dos participantes que fizeram uma declaração socioecomica especifica na prova**

Com base nos questionarios, utilizamos a ferramenta excel para fazermos algumas alterações nos mesmos. Logo sem seguida, importamos o dicionario de cada ano para cada base de dado utilizada no projeto, no caso a ENCCEJA_REG_2018, ENCCEJA_REG_2019, ENCCEJA_REG_2020 e ENCCEJA_REG_2022.

Após a importação, a equipe a equipe buscou alguma forma de mapear as questões socioeconômicas com maior influencia na aprovação dos candidatos. Com base em sinopses estatisticas desenvolvidas pelo INEP, criação de tabelas temporarias no Azure data studio, seleção de questões via conversação de equipe, chegamos em uma conclusão. A escolha das questões socioeconomicas para analise preditiva.

A análise foi realizada utilizando o **Jupyter** como ambiente de trabalho e o **Pyhton** como linguagem de programação.
Optamos em fazer todo o processo de tratamento e aprendizado de máquina com apenas 1 base, como teste, para posteriormente, ampliar para todas as 4 bases.

Aplicamos tratamento para remoção de arquivos/ dados nulos nas bases e foi escolhido o modelo **Classificador Folrestal Ramdom** como método de aprendizado de máquina. Obtivemos ótimos valores de **acurácia**, com **médoa de 0,94**.

Para avaliar o desempenho do modelo, também criamos uma **matriz de confusão** contendo 4 valores: **Verdadeiros Positivos, Verdadeiros Negativos, Falsos Positivos, Falsos Negativos**. Esta matriz foi utilizada como base para calculos métricas como **Resultado**, **Recall** e **F1-score** com respectivamnente os seguintes valores: ( 0,9150809976857804 , 0,9831630969464887, 0,9479011368302671 )
