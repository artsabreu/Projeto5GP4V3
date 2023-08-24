# Projeto5GP4V3

### Essa é uma nova versão do "Projeto 5-II-PUC-II-GP4", criada por Arthur dos Santos Abreu.

Esse arquivo sera destinado a catalogar cada etapa do projeto, todas as **tomadas de decisões, procedimentos, ferramentas, explicação de metadados e como navegar por todas as pastas e arquivos pelo projeto.**

---

### Contextualização: 

Com base na análise prescritiva realizada no Eixo 4, a continuidade do projeto será direcionada a uma **análise preditiva, com o intuito de mensurar o desempenho dos candidatos dentro de seus seguintes segmentos: estado, faixa etária, grupo socioeconômico e tipo de certificação.** essa analise tem como objetivo, fazer a predição de quantidade de notas nas provas realizadas pelos proximos anos.

---

### Base de dados: 

Sera utilizada a as bases de dados em **CSV** disponiveis no link: [Microdados Encceja](https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/encceja)
É uma estrutura padrão do INEP, chamada de ***MicroDados*** os dados são separados pro ano vai conter: os ***dados***, o ***dicionario dos dados***, os ***inputs em Saas***, uma pasta ***Leia-me***, que vai comportar todas as normas, regras e categorizações de leitura dos dados das provas e po ultimo uma ***matriz de referencia***, que sera responsavel por armazenar informações sobre cada matriz de conhecimento cobrada nas provas.

<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/012bb205-ce41-4630-892d-455109d49966)

</div>

---

### Navegação pelo repositorio:

Para navegar pelo projetos, o projeto foi dividido em pastas, esse atual arquivo é a documentação completa que esta na pagina inicial do repositorio. A abaixo temos o nome de cada pasta do repositorio, sua devida contextualização e arquivos ali presentes:

1. **Meta dados**: Pasta destinada a armazenar os itens mencionados no paragrafo base de dados. Dentro dessa pasta, existe um arquivo readme.md, que contextualiza e explicada cada campo e arquivo ali presente.

---

### Ferramentas e recursos a serem utilizados: 

Para armazenar as bases de dados e fazer todos os processos de ETL e análise, será utilizada os recursos de plataforma de nuvem Azure. Por esse projeto ser a continuidade de um projeto já desenvolvido, os recursos do azure seguem sendo os mesmos, alguns recursos podem ser adicionadas:

* Um servidor em SQL chamado ***enccejaplus2***, um servidor para banco de dados no formato SQL.
  
<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/dab8e83a-6228-431d-86fc-808f6b88d06d)

* Um Banco de dados em SQL chamado ***MicrodadosPlus2***, que armazena no formato SQL todas as bases de dados do projeto, tanto o projeto interior quanto a atual continuidade.

<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/b6ab1a17-f062-4fd2-a658-37b5633c9b57)

* Uma conta de armazenamento chamada ***datapuc***, que armazena todos os microdados do projeto em contêiners.

<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/fda26a41-290a-40d0-8747-251113f9ce6d)

  * Vamos utilizar um contêiner chamado ***datapucfiles***. Essa pasta é a responsável por armazenar todas as documentações das bases de dados, normas de todas as matrizes de conhecimento.

<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/8088e27d-7e59-49ba-b0e9-dffef8dcf8e5)

* Um Data Factory chamado ***projetoencceja***, o datafactory é o responsavel por todos os processos de ETL e magejamento de dados entre conteiners e ou pastas.

<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/623dbd8a-f1f0-4958-81b9-00775e15fbc2)

* Um Data lake Storage Gen 1 chamado ***datalakeencceja***, é um data lake é uma pasta que foi utilizada na etapa anterior para servir de ponte para migrar bases de dados para uma ferramenta e outra no Azure

<div align="center">

![MicroDados](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/e29522c1-a67c-478b-9b4c-fb77f347cba6)
