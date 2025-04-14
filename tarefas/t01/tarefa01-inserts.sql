INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES
(1, 'TI', 101),
(2, 'Recursos Humanos', 102),
(3, 'Financeiro', 103),
(4, 'Marketing', 104),
(5, 'Operações', 105);

INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto) VALUES
(101, 'Ana Silva', 'F', '1985-06-12', 7500.00, 1),
(102, 'Carlos Lima', 'M', '1978-09-23', 6800.00, 2),
(103, 'Beatriz Souza', 'F', '1990-11-30', 7200.00, 3),
(104, 'João Pedro', 'M', '1982-04-18', 7000.00, 4),
(105, 'Mariana Alves', 'F', '1987-01-05', 6700.00, 5);

INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
(201, 'Sistema de Vendas', 'Desenvolvimento de sistema para vendas online', 1, 101, '2024-01-10', '2024-06-30'),
(202, 'Recrutamento 2024', 'Campanha de recrutamento para novos talentos', 2, 102, '2024-02-15', '2024-05-15'),
(203, 'Orçamento 2025', 'Planejamento orçamentário para 2025', 3, 103, '2024-03-01', '2024-08-31'),
(204, 'Campanha Publicitária', 'Criação de campanha de marketing digital', 4, 104, '2024-04-01', '2024-09-01'),
(205, 'Melhoria Operacional', 'Projeto de melhorias em processos internos', 5, 105, '2024-01-20', '2024-07-20');

INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
(301, 'Análise de Requisitos', 'Levantamento de requisitos do sistema', 101, '2024-01-15', '2024-01-31'),
(302, 'Entrevistas', 'Entrevistas com candidatos', 102, '2024-02-20', '2024-03-10'),
(303, 'Auditoria Interna', 'Revisão de gastos do trimestre', 103, '2024-03-10', '2024-04-01'),
(304, 'Criação de Banners', 'Design de materiais publicitários', 104, '2024-04-05', '2024-04-25'),
(305, 'Revisão de Processos', 'Mapeamento e otimização de processos', 105, '2024-01-25', '2024-02-20');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(201, 301),
(202, 302),
(203, 303),
(204, 304),
(205, 305);

