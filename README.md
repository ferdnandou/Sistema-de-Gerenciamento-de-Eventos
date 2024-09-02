Claro! Aqui está a explicação resumida do código SQL:

```markdown
# Projeto 4: Sistema de Gerenciamento de Eventos

## Descrição

Este projeto cria um sistema SQL para gerenciar eventos, participantes e inscrições. O sistema armazena e permite manipular dados sobre eventos, participantes e suas inscrições.

## Comandos Utilizados

- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`
- `JOIN`

## Desafio Técnico

### Descrição do Projeto

Desenvolver um sistema SQL para gerenciar eventos e inscrições, incluindo a criação de banco de dados e tabelas, inserção, consulta, atualização e exclusão de dados.

### Requisitos do Sistema

#### 1. Criar o Banco de Dados

- **`CREATE DATABASE GerenciamentoEventos;`**: Cria o banco de dados.

#### 2. Criar as Tabelas

- **Eventos**: Armazena ID, nome, data, local e descrição dos eventos.
- **Participantes**: Armazena ID, nome, e-mail e telefone dos participantes.
- **Inscrições**: Relaciona eventos e participantes com IDs e data de inscrição.

```sql
CREATE TABLE Eventos (...);
CREATE TABLE Participantes (...);
CREATE TABLE Inscricoes (...);
```

#### 3. Inserir Dados

- **`INSERT INTO`**: Adiciona eventos, participantes e inscrições nas respectivas tabelas.

```sql
INSERT INTO Eventos (...);
INSERT INTO Participantes (...);
INSERT INTO Inscricoes (...);
```

#### 4. Consultar Dados

- **`SELECT`**: Visualiza todos os eventos, participantes de eventos específicos e eventos de participantes.

```sql
SELECT * FROM Eventos;
SELECT p.NomeParticipante, p.Email, p.Telefone FROM Inscricoes i JOIN Participantes p ON i.ParticipanteID = p.ParticipanteID WHERE i.EventoID = 1;
SELECT e.NomeEvento, e.DataEvento, e.LocalEvento FROM Inscricoes i JOIN Eventos e ON i.EventoID = e.EventoID WHERE i.ParticipanteID = 1;
```

#### 5. Atualizar Dados

- **`UPDATE`**: Modifica detalhes de eventos e participantes.

```sql
UPDATE Eventos SET LocalEvento = 'Novo Local', DataEvento = 'Nova Data' WHERE EventoID = 1;
```

#### 6. Deletar Dados

- **`DELETE`**: Remove eventos passados e inscrições específicas.

```sql
DELETE FROM Eventos WHERE EventoID = 2;
```

### Tarefas Adicionais

- Liste participantes em mais de um evento e crie uma interface simples em SQL.
