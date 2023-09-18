
## Governança de dados:
A governança de dados é um conjunto de práticas, políticas, processos e controles que garantem a qualidade, a segurança, a integridade e o uso adequado dos dados em uma organização. Ela envolve a definição de responsabilidades claras, a implementação de políticas e procedimentos, a adoção de padrões e a criação de uma cultura que valorize e promova a governança dos dados.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/53d1a8da-fdd3-4cf9-b843-c9de655fcb79)

Com base no que foi dito, é necessario alguma documentação ou referencia para fazer a aplicação da governança de dados, a aplicação utilizada em questão sera o **DAMA-DMBOK**, que se divide em 8 areas patricas para gerenciar os dados, são elas:

---

### Gerenciamento de arquitetura de dados: 

Trata do planejamento, do projeto e da implementação de uma arquitetura de dados eficiente, que suporte as necessidades de negócio e garanta a integridade e a qualidade dos dados. Com base no que foi dito, a equipe desenvolveu uma modelagem de dados Star Schema, modelo proposto por Ralph Kimball, que preve uma tabela **FATO** o ponto central do schema, e varias tabelas nas pontas da estrela, cada ponta representa uma **DIMENSÃO**. Garantindo uma menor redundancia de dados.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/1f1849c2-5c68-4212-85b9-3fb604949daf)

Onde A tabela **FATOS** contem as chaves de ligação com as tabelas **DIMENSÕES**, dimensões essas que contem os atributos descritivos, modulando o nivel de granulidade dos dados, podendo ser interpretados como os filtros na hora de analisar os dados com alguma ferramenta de BI.


---

### Desenvolvimento de dados:

Envolve os processos e as atividades relacionadas à criação, modificação e melhoria contínua dos dados, incluindo o desenvolvimento de modelos de dados, a captura de dados e a integração de sistemas. Com base no que foi dito, ao decorrer do projeto, processos de ETL com o a ferramenta Azure Data Studio com a linguagem SQL e DataFactory para criação piepeline serão utilizados para fazer modificações e ou aprimoramentos conforme o necessario. Para a etapa 2 do projeto, nenhuma alteração foi feita, futuramente pode ser necessario.

---

### Gerenciamento de operações de banco de dados:

Diz respeito à administração e ao gerenciamento dos bancos de dados, incluindo o monitoramento, o desempenho, a segurança e a manutenção dos dados armazenados. Com base no que foi dito, nosso banco de dados esta armazenado no serviço de banco de dados SQL da Microsoft Azure. Utilizamos a plataforma Azure Data Studio para fazer o processo ETL nos dados e todas importações e exportações para outros serviços envolvidos no projeto.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/964ece31-1cdd-4460-a82d-5bcee91c6626)

Essa interface comprende mais o eixo de desenvolvimento de dados, graças a possibilidade de alterar os dados de fato. Então vamos voltar para a interface da azure, na aba de visão geral, temos os campos: Introdução, Monitoramento, Propriedades, recursos, notificações, integrações e tutoriais:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/b4c01fa6-e4b8-4e20-b2bc-bbe353df4e51)

A introdução basicamente passa a as ferramentas e conexões externas para o banco de dados SQL do azure:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/12a1c180-6560-4e19-b218-6c8f247c881e)

O monitoramento serve como o proprio nome diz, um monitor das atividade do banco de dados SQL com base em metricas já definidas pela plataforma ou definidas pela equipe. Existem 4 indicadores relacionados a armazenamento de dados no servidor, são eles:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/129fec62-17dd-4d44-aded-159f2590c2b4)

Na aba de monitoramento, temos um gráfico que nos permite visualizar de forma grafica o desempenho de diversas metricas de desempenho a nivel temporal. Podendo ser observado no intervalo de 30 minutos até 30 dias.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c02a07d3-5db3-4d80-b785-964b5a94cb96)

Podemos escolher as seguintes métricas: Blocked by firewall, CPU percentage, Data IO percentage, Data Space allocated, Data space allocated, Data space used, Data space used percent, Deadlocks, DTU limit, DTU percentage, DTU used, Failed Connections :  System Errors, Failed Connctions: System Errors, Failed Ledger Digest Uploads, In-Memory OLTP storage percent, Log IO percentage, Sessions Count, Sessions percentage, Successful Connections, Successful Ledger Digest Uploads e Workers Percentage. Porem, nosso foco é monitor o desempenho da CPU e os limites de armazenamento no banco de dados.

Para monitorar essas duas métricas, vamos usar as metricas CPU percentage e Data Space used, explorando a agregação média, maxima e minima. Podendo ver gráfico de linha, gráfico de area, gráfico de barras, gráficos de dispersão e Grade. Segue a baixo o gráfico de linhas de CPU percentage e todos os niveis de agregação:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/326346de-80ec-430b-b209-6f9472c5f0a0)

Oberve que o consumo é bem baixo, pois poucas utilizações do serviço foram feitas, logo a CPU foi pouco utilizada.

Segue a baixo o gráfico de linhas que mostra o espaço de armazenamento usado, o espeço alocado e o espaço de armazenamento usado em porcentagem, entre janeiro e setembro desse ano, ano que de origem do banco de dados:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/0aac2fb9-b4a2-4157-8175-ebd51d0156e9)

---

### Gerenciamento de segurança de dados: 

Trata da proteção dos dados contra ameaças internas e externas, garantindo a confidencialidade, a integridade e a disponibilidade dos dados, bem como o comprimento das leis e regulamentos aplicáveis à privacidade e à segurança. Com base no que foi dito,
---

### Lei Geral de Proteção de Dados Pessoais (LGPD) :

Aborda a Lei Geral de Proteção de Dados Pessoais (Lei nº 13.709, de 14/8/2018), cujo objetivo é assegurar o direito à privacidade e à proteção de dados pessoais dos usuários. 

Previsão Legal

A base de dados utilizada foi fornecida pelo Inep, que é caracterizado como pessoa jurídica de direito público. 

Tratamento de Dados

Com base no que foi dito, de acordo com o inciso I do art. 23 da LGPD, as obrigações consistem em  publicar informações sobre os tratamentos de dados pessoais  realizados de forma clara e atualizada, detalhando a previsão legal, a finalidade, as práticas e os procedimentos utilizados para a execução desses tratamentos.

Finalidade

A finalidade é o propósito legítimo da coleta e do tratamento de dados informados ao titular. De acordo com as informações fornecidas pelo Inep, o tratamento de dados realizado tem por finalidade garantir o cumprimento de obrigações legais e regulatórias e contribuir à formulação, à implementação, ao acompanhamento e à avaliação de políticas e programas na área da educação, por meio de diagnósticos, pesquisas, estudos e avaliações da educação..

Direitos do Titular

A fim de garantir a transparência e o livre acesso aos dados, o Inep disponibiliza um canal de ouvidoria para que os titulares dos dados possam solicitar as informações pessoais desejadas.

---

### Armazenamento de dados e gerenciamento de business intelligence:

Aborda as atividades de design, desenvolvimento e manutenção de data warehouses e sistemas de business intelligence, visando fornecer informações úteis e relevantes para suportar a tomada de decisões. Com base no que foi dito, 

---

### Gerenciamento de metadados:

Envolve a definição, o armazenamento, a organização e o gerenciamento dos metadados, que são informações descritivas sobre os dados, tais como sua origem, seu significado e suas relações. Com base no que foi dito, a contrução de todos os metadados do nosso projeto foram documentados na pasta **Metadados**, 

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/c72109d4-d6b1-42e7-9ab4-654e6469c93b)

Que possui um arquivo read.me que descreve os metadados do projeto dividido por ano de edição das provas do Encceja.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/4d87ee96-aace-4084-a818-53b24172a109)

Os metadados das bases de dados em CSV, que contemplam as questões, gabaritos e outras caracteristicas dos candidadatos, ficou por conta do arquivo em Excel disponivel nas pastas **Dicionarios de dados** presentes em cada ano, esse arquivo foi produzido pelo INEP.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/5ba84f3c-ff97-427d-ac4a-2d13f8fbd301)

Para ver o Dicionarios, é necessario é baixar o arquivo em xlsx:

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/901ffcd9-bb35-4e3f-bef4-defc3380eeac)

Por ultimo, o INEP desenvolveu o arquivo "Leia-me_Microdados_ENCCEJA_2018(OU ANO ESCOLHIDO).PDF", esse arquivo vai explicar todos os metadados dos arquivos, disponivel no caminho Metadados/2018/Leia-me_Microdados_ENCCEJA_2018.pdf.

![image](https://github.com/artabreupuc/Projeto5GP4V3/assets/141786256/4f2e2c69-0a57-48de-8d20-1bed3a091f5f)

---

### Gerenciamento de qualidade de dados e dados mestres de referencia:

Trata das atividades relacionadas à avaliação, ao monitoramento e à melhoria da qualidade dos dados, para garantir a precisão, a consistência e a completude das informações. Já a parte de dados mestres de referencia, se refere a padronização dos dados da organização, os dados mestres são um conjunto de identificadores que fornecem contexto sobre dados de negocio como localizaçõ, clientes, produtos, ativos e etcc.. todos os dados que regem toda e qualquer operação. Se dividindo em: **Dados Transacionais, analiticos, e mestres**.

O microdados do Inep estão disponibilizados ao publico de maneira que garantem alta uqaliadade intrínseca, sobretudo pela elevada precisão, consistência e completude de informação. A forte e padroniação dos dados em suas colunas e tuplas trazem a consistência necessária para uma análise de alta credibilidade mantendo a reputação da instituição, sendo objetiva e de fácil acessibilidade e manipulações por pesquisadores, estudantes, educadores e toda a comunicdade educacional que venha a utilizar os dados dos resultados das provas para análises.

A disposição dos dados dos resultados das provas são de facil interpretação uma vez que os dicionários existem são precisos e utilizam limguagem clara, permitendo assim uma análise racional que conduza a conclusões corretas.

Entrentando, quando analizamos os dados do questionário socioeconomico que os candidatos respondem, o instituto o modificou, em certo momento afim de englobar questões referentes ao advento da pandemia. Fator que ganhou grande relevância uma vez que interferil na metodologia de ensino e aprendizado. Com tudo, no quedito de disponibilidade, tem-se apenas 2 questionários com questões deste cunho, o que compromete a precisão de análise préditiva que pretende-se atingir com este projeto.

Um outro agravante refere-se a estrutura das questões que sao contantes nos 4 anos de aplicação. Por decisão institucional, aproveitando o acréscimo de questões, foi alterado de modo a concatenar questões em apenas uma ou dividir uma em várias, alterando assim as alternativas de resposta. Em síntese, ignorando as leves alterações que não refletem nos quesitos de qualidade, temos 2 tipos de questionparios (2018 e 2019) e (2020 e 2022).

Como resultado de análise, foi decido que, apesar dos dados terem elevada qualidade intrínseca, contextual, de acessibilidade e de representação individulamente, ao olharmos para o conjunto dos 4 anos disponibilizados a precisão para uma análise preditiva dos questionário se torna baixa uma vez que o espaço amostral é curto. Para efeito didático e objetivo acadêmico, a análise será realizado com esta resssalva.

---

Todase essas areas contempla as boas praticas da governança de dados. Com base no que foi dito, segue os procedimentos e tecnicas utilizadas de cada area dentro do projeto.


