# Projeto de Banco de Dados de Obras e Construtoras

Este projeto visa criar e gerenciar um banco de dados que armazena informações sobre construtoras, obras, trabalhadores e equipamentos utilizados nas obras. A aplicação foi desenvolvida utilizando SQL para estruturar e manipular as informações necessárias, facilitando o controle e consulta de dados relacionados à construção civil.

## Estrutura do Projeto

O projeto está dividido nos seguintes arquivos:

### 1. `criacaoDeTabelas.sql`
Este arquivo contém o script responsável por criar as tabelas no banco de dados, de acordo com o modelo lógico relacional gerado. As principais tabelas criadas são:

- **`Construtora`**: Armazena dados das construtoras (código, nome, telefone, nome fantasia).
- **`Trabalhador`**: Contém informações dos trabalhadores (CPF, nome, salário, obra alocada).
- **`Obra`**: Registra os dados das obras (código, nome, endereço, construtora responsável).
- **`Telefones`**: Tabela de telefones, mas com uma estrutura que pode ser aprimorada para relacionar-se melhor com outras tabelas.
- **`Equipamento`**: Armazena dados dos equipamentos usados nas obras (nome, valor do uso diário, categoria).
- **`Categoria`**: Define as categorias dos equipamentos.
- **`AlocacaoEquipamento`**: Registra a alocação dos equipamentos em uma obra, com data de início e término do uso.

### 2. `populacaoDetabelas.sql`
Este arquivo contém o script para popular as tabelas criadas com dados iniciais. As principais funcionalidades deste script incluem:

- Inserção de dados em **Construtora**, **Obra**, **Trabalhador**, **Categoria**, **Equipamento**, e **AlocacaoEquipamento**.
- Criação de relações entre construtoras e suas obras, trabalhadores e suas respectivas obras, além da alocação de equipamentos nas obras.

### 3. `exConsultas.sql`
Este arquivo contém exemplos de consultas SQL úteis para extrair informações do banco de dados. Algumas funcionalidades implementadas:

- **Listar obras e suas construtoras responsáveis**: Relaciona cada obra com a construtora que a executa.
- **Listar trabalhadores e suas obras**: Exibe o nome dos trabalhadores e, se aplicável, a obra à qual estão alocados.
- **Listar equipamentos alocados em uma obra específica**: Detalha os equipamentos utilizados em uma obra, com suas respectivas datas de alocação.
- **Listar todas as construtoras e seus telefones**.

## Funcionalidades do Projeto

### Criação e Estruturação de Tabelas
- O projeto cria e estrutura diversas tabelas relacionadas à construção civil, estabelecendo relacionamentos entre as diferentes entidades como obras, construtoras, trabalhadores, e equipamentos.

### Consulta e Manipulação de Dados
- Com o arquivo de consultas, é possível extrair informações específicas, como a relação entre obras e construtoras, listar os trabalhadores envolvidos nas obras, e verificar os equipamentos utilizados em cada obra e suas datas de alocação.
  
### População Inicial de Dados
- O projeto inclui um conjunto de dados de exemplo para popular as tabelas criadas, facilitando a visualização e a execução de consultas sobre dados reais.

## Melhorias Sugeridas
- **Tabela Telefones**: A estrutura desta tabela pode ser melhorada para que tenha uma relação mais clara com a tabela de **Construtora**, utilizando uma chave estrangeira adequada.
- **Normalização**: O banco de dados pode ser otimizado com a aplicação de técnicas de normalização, eliminando redundâncias e otimizando a estrutura das tabelas.

## Como Utilizar
1. Execute o script `criacaoDeTabelas.sql` para criar as tabelas no banco de dados.
2. Popule as tabelas utilizando o script `populacaoDetabelas.sql`.
3. Realize consultas e manipulações no banco utilizando os exemplos fornecidos no arquivo `exConsultas.sql`.

## Requisitos
- Um banco de dados relacional compatível com SQL.
- Ferramenta para executar scripts SQL (como Oracle SQL Developer, MySQL Workbench, ou psql).

