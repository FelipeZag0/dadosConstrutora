REM   Script: População tabelas
REM   inserindo dados

INSERT INTO Construtora (codigo, nome, telefone, nome_fantasia) VALUES (1, 'Seu Nome', '123456789', 'Construtora XYZ');

INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, construtora_codigo) VALUES (1, 'Obra 1', 'Rua A', '123', 'Apto 1', 1);

INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, construtora_codigo) VALUES (2, 'Obra 2', 'Rua B', '456', 'Apto 2', 1);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('11111111111', 'Trabalhador 1', 3000, 1);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('22222222222', 'Trabalhador 2', 2500, 1);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('33333333333', 'Trabalhador 3', 2000, 1);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('44444444444', 'Trabalhador 4', 3500, 1);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('55555555555', 'Trabalhador 5', 4000, 1);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('66666666666', 'Trabalhador 6', 3200, 2);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('77777777777', 'Trabalhador 7', 2200, 2);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('88888888888', 'Trabalhador 8', 2700, 2);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('99999999999', 'Trabalhador 9', 2900, 2);

INSERT INTO Trabalhador (cpf, nome, salario, obra_codigo) VALUES ('10101010101', 'Trabalhador 10', 3300, 2);

INSERT INTO Categoria (codigo, descricao) VALUES (1, 'Categ A');

INSERT INTO Categoria (codigo, descricao) VALUES (2, 'Categ B');

INSERT INTO Categoria (codigo, descricao) VALUES (3, 'Categ C');

INSERT INTO Categoria (codigo, descricao) VALUES (4, 'Categ D');

INSERT INTO Equipamento (codigo, nome, valor_uso_diario, categoria_codigo) VALUES (1, 'Equipamento 1', 100, 1);

INSERT INTO Equipamento (codigo, nome, valor_uso_diario, categoria_codigo) VALUES (2, 'Equipamento 2', 150, 2);

INSERT INTO Equipamento (codigo, nome, valor_uso_diario, categoria_codigo) VALUES (3, 'Equipamento 3', 200, 3);

INSERT INTO Equipamento (codigo, nome, valor_uso_diario, categoria_codigo) VALUES (4, 'Equipamento 4', 250, 4);

INSERT INTO AlocacaoEquipamento (obra_codigo, equipamento_codigo, data_inicio, data_fim) VALUES (1, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'));

INSERT INTO AlocacaoEquipamento (obra_codigo, equipamento_codigo, data_inicio, data_fim) VALUES (1, 2, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD'));

INSERT INTO AlocacaoEquipamento (obra_codigo, equipamento_codigo, data_inicio, data_fim) VALUES (1, 3, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-03-10', 'YYYY-MM-DD'));

INSERT INTO AlocacaoEquipamento (obra_codigo, equipamento_codigo, data_inicio, data_fim) VALUES (1, 4, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-10', 'YYYY-MM-DD'));

