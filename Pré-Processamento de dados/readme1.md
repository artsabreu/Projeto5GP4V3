A atual fase do trabalho, tem como objetivo, fazer uma analise exploratória dos dados para coletar informações relevantes para futuras analises preditiva. De forma mais objetiva, estamos buscando uma forma de escolher as questões socioeconômicas com maior peso na aprovação dos candidatos, para isso, utilizamos uma consulta em sql na plataforma azure data studio para contar a quantidade de candidatos que marcou cada alternativa, de cada questão e de cada ano. Para em seguida, um outro comando retornasse a quantidade de aprovados dentro de cada contagem de marcação. 
Segue a baixo a consulta, a primeira vista é mais difícil de entender:

```
select
ert.SG_UF_PROVA,
ert.Q04,
ed.Desc_alternatva,
COUNT(ert.Q04) as contar
-- ,CAST(100.* COUNT(er.q05)/SUM(COUNT(*)) OVER () AS decimal(10,2)) AS Porcentagem_04
into #t2018
    FROM ENCCEJA_REG_2018 as ert
        join ENCCEJA_DICI_REG_2018 as ed
            on ed.ID_Q = 'q04'
            and ed.Alternativa = ert.Q04
    WHERE IN_APROVADO_CH = 1 AND  IN_APROVADO_CN = 1 AND IN_APROVADO_LC= 1 AND IN_APROVADO_MT = 1 AND
    try_convert(numeric(38, 12),NU_NOTA_REDACAO) >= 5.0 AND SG_UF_PROVA = 'AC'
group by ert.SG_UF_PROVA,ert.Q04,ed.Desc_alternatva
order by 1,2

select #t2018.SG_UF_PROVA,
#t2018.Q04,
#t2018.Desc_alternatva,
#t2018.contar as Contador_2018,
#t2019.contar as Contador_2019
from #t2018
join #t2019 on #t2019.Q04 = #t2018.Q04
}
```

E justamente após esse resultado que se encontra a dificuldade no projeto. A azure permite o usuário ver relatórios de consumo de **cpu** e **dtu** (unidade de transação do banco de dados) de seus processos em diferentes intervalos, podendo ser de uma hora, 24 horas ou até uma semana, com base nessa informação a equipe estava sentindo um demora considerável na execução para a execução da query acima, com um tempo em média de 10 minutos. Ao perceber tal lentidao Esse tempo parece curto, mas se colocado em uma escala de 50 questões para mapearmos por ano, temos 200 querys para realizar, os 10 minutos viraram 2000 minutos ou 33 horas. Ao perceber essa demora nas consultas, fomos conferir o consumo de dtu, do dia 2 ao dia 5, o pico de 100% foi alcançado 10 vezes. Tornado o esse mapeamento demorado e de alta sobrecarga para o servidor e o projeto como um todo, já que demanda paciencia da equipe e provoca estresse.

Para tentar seguir com o processo, tentamos utilizar o POwerBi para de alguma forma criar uma consulta que retornasse a nossa resposta desejada, e só no periodo de conexao da ferramenta com o azure sql server, foram mais de 3 horas e o proprio PBI emite uma alerta quanto alguama atividade demora muito tempo para ser concluida, pausando a mesma rapidamente. Cortando o PBI da nossa lista de possibilidades.

Por utimo, tentamos utilizar uma conexão com o Jupyter notebook para rodar a consulta em python, mas a mesma demora ocorre, dessa uma mensagem de erro é disparada no painel, levanco mais uma frutração para a equipe.

Com base em tudo que foi dito, a quipe pensou em investir no aumento das capacidades do servidor, talvez aumento a capacidade do DTU do mesmo, que atualmente esta em 10, o nivel standard (cargas de trabalho mais curtas).

Ou repartindo as tabelas em outros bancos de dados para "aliviar" o unico banco que operamos.


