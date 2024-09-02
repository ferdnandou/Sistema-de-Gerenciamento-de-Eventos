-- Criar o banco de dados
CREATE DATABASE GerenciamentoEventos;

-- Selecionar o banco de dados
USE GerenciamentoEventos;

-- Criar tabelas
CREATE TABLE Eventos (
    EventoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeEvento VARCHAR(100),
    DataEvento DATE,
    LocalEvento VARCHAR(100),
    Descricao TEXT
);

CREATE TABLE Participantes (
    ParticipanteID INT AUTO_INCREMENT PRIMARY KEY,
    NomeParticipante VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE Inscricoes (
    InscricaoID INT AUTO_INCREMENT PRIMARY KEY,
    EventoID INT,
    ParticipanteID INT,
    DataInscricao DATE,
    FOREIGN KEY (EventoID) REFERENCES Eventos(EventoID),
    FOREIGN KEY (ParticipanteID) REFERENCES Participantes(ParticipanteID)
);

-- Inserir dados
INSERT INTO Eventos (NomeEvento, DataEvento, LocalEvento, Descricao)
VALUES ('Conferência de Tecnologia', '2024-09-15', 'Auditório Principal', 'Uma conferência sobre as últimas tendências em tecnologia.');

INSERT INTO Participantes (NomeParticipante, Email, Telefone)
VALUES ('João Silva', 'joao.silva@example.com', '123456789');

INSERT INTO Inscricoes (EventoID, ParticipanteID, DataInscricao)
VALUES (1, 1, '2024-09-01');

-- Consultar dados
-- Todos os eventos
SELECT * FROM Eventos;

-- Participantes de um evento específico
SELECT p.NomeParticipante, p.Email, p.Telefone
FROM Inscricoes i
JOIN Participantes p ON i.ParticipanteID = p.ParticipanteID
WHERE i.EventoID = 1;

-- Eventos nos quais um participante está inscrito
SELECT e.NomeEvento, e.DataEvento, e.LocalEvento
FROM Inscricoes i
JOIN Eventos e ON i.EventoID = e.EventoID
WHERE i.ParticipanteID = 1;

-- Atualizar dados
UPDATE Eventos
SET LocalEvento = 'Auditório 2', DataEvento = '2024-09-12'
WHERE EventoID = 1;

-- Deletar dados
DELETE FROM Eventos WHERE EventoID = 2;

-- Tarefas adicionais
-- Listar participantes inscritos em mais de um evento
SELECT p.NomeParticipante, COUNT(i.EventoID) AS NumeroEventos
FROM Participantes p
JOIN Inscricoes i ON p.ParticipanteID = i.ParticipanteID
GROUP BY p.ParticipanteID
HAVING COUNT(i.EventoID) > 1;
