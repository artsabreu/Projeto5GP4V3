# Projeto5GP4V3
## 'Essa é uma nova versão do "Projeto 5-II-PUC-II-GP4", criada por Arthur dos Santos Abreu.

Esse arquivo sera destinado a catalogar cada etapa do projeto, todas as **tomadas de decisões, procedimentos, ferramentas, explicação de metadados e como navegar por todas as pastas e arquivos pelo projeto.**

### Base de dados: 

Sera utilizada a as bases de dados em **CSV** disponiveis no link: [Microdados Encceja](https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/encceja)
É uma estrutura padrão do INEP, chamada de *MicroDados* os dados são separados pro ano vai conter: os dados, o dicionario dos dados, os inputs em Saas, uma pasta Leia-me, que vai comportar todas as normas, regras e categorizações de leitura dos dados das provas e uma matriz de referencia, que sera responsavel por armazenar informações sobre cada matriz de conhecimento cobrada nas provas.

### Plataforma: 

Sera utilizada a plataforma de computação em nuvem da microsoft, a **Azure**.

### Contextualização: 

Com base na análise prescritiva realizada no Eixo 4, a continuidade do projeto será direcionada a uma **análise preditiva, com o intuito de mensurar o desempenho dos candidatos dentro de seus seguintes segmentos: estado, faixa etária, grupo socioeconômico e tipo de certificação.**

### Ferramentas e recursos a serem utilizados: 

Para armazenar as bases de dados e fazer todos os processos de ETL e análise, será utilizada os recursos de plataforma de nuvem Azure. Por esse projeto ser a continuidade de um projeto já desenvolvido, os recursos do azure seguem sendo os mesmos, são eles:

*Um servidor em SQL chamado *enccejaplus2*, um servidor para banco de dados no formato SQL.

*Um Banco de dados em SQL chamado *MicrodadosPlus2*, que armazena no formato SQL todas as bases de dados do projeto, tanto o projeto interior quanto a atual continuidade.

*Uma conta de armazenamento chamada *datapuc*, que armazena todos os microdados d projeto em contêiners, vamos utilizar um contêiner chamado “datapucfiles”. Essa pasta é a responsável por armazenar todas as documentações das bases de dados, normas de todas as matrizes de conhecimento.

