# Ciclo de Pré-Processameto de dados

## Essa pasta sera utilizada para contextualizar e armazear todas as tecnicas e e procedimentos para o pré-processamentos dos dados do projeto antes da etapa de criação dos algoritmos de Machine Learning.

Dando inicio a e esse Pré-Processamento, a equipe alinhou atraves de reunioes via teams, o que seria analisado com os algoritimos de Machine Learning, e a seguinte conclusão foi encontrada: 

***Utilizaremos as respostas dos questionarios socioeconomicos dos participantes para inicialmente realizar uma analise prescritiva, a fim de entender tudo que já aconteceu em relação a situação socioeconomica dos participantes e como determinadas respostas impactam a nota final do candidato. Para em seguida, aplicarmos uma vissão preditiva, a fim de prever as proximas notas finais dos participantes que fizeram uma declaração socioecomica especifica na prova***

Para contextualizar, esse questionario socieconomico preechido, se encontra nas ultimas colunas da base de dados ENCCEJA_REG_2018, ENCCEJA_REG_2019, ENCCEJA_REG_2020 e ENCCEJA_REG_2022. Tais repostas, ficam registradas em média nas ultimas 55 colunas, podendo variar de acordo com o ano. A tabela abaixo expoe essa diferença

Base de dados por ano | Quantidade de perguntas no questionario socioeconomico
--------- | ------
ENCCEJA_REG_2018 | 47
ENCCEJA_REG_2019 | 48
ENCCEJA_REG_2020 | 66
ENCCEJA_REG_2022 | 62

Um simples calculo de média de colunas, 66 + 62 + 48 + 47 / 4 = 55

A proxima imagem mostra uma pequena consulta de como é a visão dessas tabelas na base de dados, a ferramenta tulizada foi a Azure Data Studio na linguagem SQL:

ENCCEJA_REG_2018:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/a03cc4c5-4d0c-4a90-8905-54c70ed2f604)

Cada linha, representa um aluno com suas determinadas escolhas no questionario. É possivel responder apenas uma alternativa, o banco de dados vai armazenar apenas a letra de tal alternativa. Para comnseguirmos ver de fato o que o candidato respondeu, foi necessario criar uma nova tabela no nosso banco dedos que servisse como dicionario para entendermos cada resposta de questionario. Com base no que foi dito, utilizamos os arquivos para criar essas tabelas:

[Dicionário de dados 2018.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2018/Dicion%C3%A1rios%20de%20dados/Dicion%C3%A1rio%20de%20dados%202018.xlsx)

[Dicionário de dados 2018.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2019/Dicion%C3%A1rio%20de%20dados/Dicion%C3%A1rio%20de%20dados%202019.xlsx)

[Dicionário de dados 2020.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2020/Dicion%C3%A1rio%20de%20dados/Dicionario%20de%20dados%202020.xlsx)

[Dicionário de dados 2022.xlsx](https://github.com/artabreupuc/Projeto5GP4V3/blob/e02b0a68e89b12cd83763bc49bf51bcf25151b24/Metadados/2022/Dicion%C3%A1rio%20de%20dados/Dicionario%20de%20dados%202022.xlsx)

Antes de tranformas em tabelas, cada arquivo teve 
