 

Base de dados: ENNCEJA / INEP 

Plataforma: Azure 

Contextualização: Com base na análise prescritiva realizada no Eixo 4, a continuidade do projeto será direcionada a uma análise preditiva, com o intuito de mensurar o desempenho dos candidatos dentro de seus seguintes segmentos: estado, faixa etária, grupo socioeconômico e tipo de certificação. 

Ferramentas e recursos a serem utilizados: Para armazenar as bases de dados e fazer todos os processos de ETL e análise, será utilizada a plataforma de nuvem Azure da Microsoft. Por esse projeto ser a continuidade de um projeto já desenvolvido, os recursos do azure seguem sendo os mesmos, são eles: 

Um servidor em SQL chamado “enccejaplus2”, um servidor para banco de dados no formato SQL. 

Um Banco de dados em SQL chamado “MicrodadosPlus2”, que armazena no formato SQL todas as bases de dados do projeto, tanto o projeto interior quanto a atual continuidade. 

Uma conta de armazenamento chamada “datapuc”, que armazena todos os microdados d projeto em contêiners, vamos utilizar um contêiner chamado “datapucfiles”. Essa pasta é a responsável por armazenar todas as documentações das bases de dados, normas de todas as matrizes de conhecimento.  
