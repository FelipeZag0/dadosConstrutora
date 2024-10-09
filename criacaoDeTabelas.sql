REM   Script: Criação das tabelas
REM   Script SQL para criar as tabelas conforme o modelo lógico relacional gerado no BR Modelo.

-- Criação da tabela Construtora, que armazena os dados das construtoras.
CREATE TABLE Construtora (
    codigo NUMBER PRIMARY KEY,  -- Código único identificador da construtora.
    nome VARCHAR2(100),  -- Nome da construtora.
    telefone VARCHAR2(15),  -- Número de telefone da construtora.
    nome_fantasia VARCHAR2(100)  -- Nome fantasia da construtora.
);

-- Criação da tabela Trabalhador, que armazena os dados dos trabalhadores.
CREATE TABLE Trabalhador (
    cpf VARCHAR2(11) PRIMARY KEY,  -- CPF do trabalhador, utilizado como chave primária.
    nome VARCHAR2(100),  -- Nome do trabalhador.
    salario NUMBER,  -- Salário do trabalhador.
    obra_codigo NUMBER,  -- Código da obra em que o trabalhador está alocado.
    FOREIGN KEY (obra_codigo) REFERENCES Obra(codigo)  -- Chave estrangeira referenciando a tabela Obra.
);

-- Criação da tabela Obra, que armazena os dados das obras.
CREATE TABLE Obra (
    codigo NUMBER PRIMARY KEY,  -- Código único identificador da obra.
    nome VARCHAR2(100),  -- Nome da obra.
    logradouro VARCHAR2(100),  -- Endereço da obra.
    numero VARCHAR2(10),  -- Número do endereço da obra.
    complemento VARCHAR2(50),  -- Complemento do endereço da obra.
    construtora_codigo NUMBER,  -- Código da construtora responsável pela obra.
    FOREIGN KEY (construtora_codigo) REFERENCES Construtora(codigo)  -- Chave estrangeira referenciando a tabela Construtora.
);

-- Criação da tabela Telefones, que aparentemente não está bem estruturada, pois não há uma relação clara com as outras tabelas.
CREATE TABLE Telefones (
    telefone NUMBER(10),  -- Número de telefone.
    construtora VARCHAR2(2)  -- Código que parece representar uma construtora, mas o tamanho é inadequado.
);

-- Criação da tabela Equipamento, que armazena os dados dos equipamentos usados nas obras.
CREATE TABLE Equipamento (
    codigo NUMBER PRIMARY KEY,  -- Código único identificador do equipamento.
    nome VARCHAR2(100),  -- Nome do equipamento.
    valor_uso_diario NUMBER,  -- Valor do uso diário do equipamento.
    categoria_codigo NUMBER,  -- Código da categoria do equipamento.
    FOREIGN KEY (categoria_codigo) REFERENCES Categoria(codigo)  -- Chave estrangeira referenciando a tabela Categoria.
);

-- Criação da tabela Categoria, que armazena as categorias de equipamentos.
CREATE TABLE Categoria (
    codigo NUMBER PRIMARY KEY,  -- Código único identificador da categoria.
    descricao VARCHAR2(100)  -- Descrição da categoria do equipamento.
);

-- Criação da tabela AlocacaoEquipamento, que armazena a alocação dos equipamentos em obras, incluindo o período de uso.
CREATE TABLE AlocacaoEquipamento (
    obra_codigo NUMBER,  -- Código da obra onde o equipamento foi alocado.
    equipamento_codigo NUMBER,  -- Código do equipamento alocado.
    data_inicio DATE,  -- Data de início da alocação.
    data_fim DATE,  -- Data de fim da alocação.
    PRIMARY KEY (obra_codigo, equipamento_codigo, data_inicio),  -- Chave primária composta pelos códigos da obra, do equipamento e a data de início.
    FOREIGN KEY (obra_codigo) REFERENCES Obra(codigo),  -- Chave estrangeira referenciando a tabela Obra.
    FOREIGN KEY (equipamento_codigo) REFERENCES Equipamento(codigo)  -- Chave estrangeira referenciando a tabela Equipamento.
);
