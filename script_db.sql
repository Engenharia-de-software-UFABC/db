PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS professor (
    id_professor TEXT PRIMARY KEY,
    nome_professor TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS materia (
    codigo_turma TEXT PRIMARY KEY,
    turma TEXT NOT NULL,
    campus TEXT NOT NULL,
    turno TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS relacao_materia_horario_professor (
    codigo_turma TEXT,
    id_professor TEXT,
    dia_semana TEXT NOT NULL,
    horario TEXT NOT NULL,
    sala TEXT NOT NULL,
    tipo_semanal TEXT NOT NULL,
    FOREIGN KEY (codigo_turma) REFERENCES Materia(codigo_turma),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE IF NOT EXISTS relacao_aluno_materia (
    codigo_turma TEXT,
    ra TEXT NOT NULL,
    FOREIGN KEY (codigo_turma) REFERENCES Materia(codigo_turma)
);
