link criacao http://github.com/GuiMedeirox/repotaciano1aun/blob/main/tarefas/t01/tarefa01-create.sql

link insert https://github.com/GuiMedeirox/repotaciano1aun/blob/main/tarefas/t01/tarefa01-inserts.sql

link tarefas

https://github.com/GuiMedeirox/repotaciano1aun/blob/tarefa1/tarefas/t01/tarefa01-q01.sql
https://github.com/GuiMedeirox/repotaciano1aun/blob/tarefa1/tarefas/t01/tarefa01-q04.sql
https://github.com/GuiMedeirox/repotaciano1aun/blob/tarefa1/tarefas/t01/tarefa01-q07.sql
https://github.com/GuiMedeirox/repotaciano1aun/blob/tarefa1/tarefas/t01/tarefa01-q13.sql
https://github.com/GuiMedeirox/repotaciano1aun/blob/tarefa1/tarefas/t01/tarefa01-q16.sqls


# SQL JOINs e Funções Avançadas no PostgreSQL

## NATURAL JOIN

O `NATURAL JOIN` realiza a junção automática entre duas tabelas usando todas as colunas com **mesmo nome** e tipo. Ele evita a necessidade de especificar a cláusula `ON`, mas deve ser usado com cautela pois depende dos nomes das colunas coincidirem corretamente.

### Exemplo:
```sql
SELECT *
FROM funcionario
NATURAL JOIN departamento;
```

---

## CROSS JOIN

O `CROSS JOIN` (ou produto cartesiano) combina **todas as linhas da primeira tabela com todas as linhas da segunda**. Pode ser útil para gerar combinações, mas deve ser usado com cuidado por gerar muitos resultados.

### Exemplo:
```sql
SELECT f.nome, d.descricao
FROM funcionario f
CROSS JOIN departamento d;
```

---

## Window Functions no PostgreSQL

As `Window Functions` permitem aplicar funções agregadas **sem agrupar os dados**, mantendo o contexto linha a linha. São ideais para calcular rankings, totais acumulados, comparações dentro de grupos, etc.

### Exemplo 1: Ranking de salários
```sql
SELECT nome, salario,
       RANK() OVER (ORDER BY salario DESC) AS ranking
FROM funcionario;
```

### Exemplo 2: Maior salário por departamento
```sql
SELECT nome, salario, cod_depto,
       MAX(salario) OVER (PARTITION BY cod_depto) AS max_salario_no_depto
FROM funcionario;
```

Essas funções são altamente poderosas para análises avançadas em SQL.