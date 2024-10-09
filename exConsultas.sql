-- 1. Listar todas as obras e as construtoras responsáveis
SELECT 
    o.nome AS nome_obra, 
    c.nome AS nome_construtora
FROM 
    Obra o
JOIN 
    Construtora c ON o.construtora_codigo = c.codigo;

-- 2. Listar todos os trabalhadores, mostrando o nome da obra (se houver)
SELECT 
    t.nome AS nome_trabalhador, 
    o.nome AS nome_obra
FROM 
    Trabalhador t
LEFT JOIN 
    Obra o ON t.obra_codigo = o.codigo;

-- 3. Listar equipamentos alocados na obra com código 1
SELECT 
    e.nome AS nome_equipamento, 
    a.data_inicio, 
    a.data_fim
FROM 
    AlocacaoEquipamento a
JOIN 
    Equipamento e ON a.equipamento_codigo = e.codigo
WHERE 
    a.obra_codigo = 1;

-- 4. Listar todas as construtoras e seus respectivos telefones
SELECT 
    nome, telefone 
FROM 
    Construtora;
