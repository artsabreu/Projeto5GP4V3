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

Aoós ser feita a importação, a equipe buscou alguma forma de mapear a 

