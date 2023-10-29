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

Com o tipo de aprendizado definido, vamos montar o ambiente de trabalho, linguagens de programação e softwares que serão utilizados no aprendizado. 




