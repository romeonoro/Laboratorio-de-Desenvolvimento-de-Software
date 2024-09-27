-- Criar o banco de dados
CREATE DATABASE BDAula01;
USE BDAula01;

-- Criar a tabela pessoa
CREATE TABLE pessoa (
    id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(1) NOT NULL,
    idioma VARCHAR(10) NOT NULL
);

-- Criar a tabela alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    curso VARCHAR(50)
);

-- Criar a tabela professores
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    disciplina VARCHAR(50)
);

-- Criar a tabela matriculas
CREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_professor INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_professor) REFERENCES professores(id)
);

-- Inserir dados na tabela pessoa
INSERT INTO pessoa (nome, sexo, idioma) VALUES 
("Romeo", "M", "Português"),
("Anthony", "M", "Inglês"),
("Bruno", "M", "Inglês"),
("Vicenzo", "M", "Português"),
("Matheus", "F", "Mandarim"),
("Ricardo", "M", "Português");

-- Inserir dados na tabela alunos
INSERT INTO alunos (nome, idade, curso) VALUES 
("Romeo", 19, "CC"),
("Anthony", 21, "UFC"),
("Bruno", 19, "POD"),
("Gilberto", 20, "SI"),
("Ricardo", 30, "TI");

-- Inserir dados na tabela professores
INSERT INTO professores (nome, idade, disciplina) VALUES 
("Alexandre", 50, "Banco de Dados"),
("Sylvio", 50, "Redes"),
("Mirkos", 45, "Python");

-- Inserir dados na tabela matriculas
INSERT INTO matriculas (id_aluno, id_professor, data_matricula) VALUES 
(1, 1, "2024-09-17"),
(2, 2, "2024-09-16"),
(3, 3, "2024-09-15"),
(4, 1, "2024-09-14"),
(5, 2, "2024-09-13");

select * from pessoa;