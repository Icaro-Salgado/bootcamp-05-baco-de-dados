DROP TABLE IF EXISTS autor CASCADE;
CREATE TABLE autor
(
    idAutor       serial,
    Nome          varchar(255) NOT NULL,
    Nacionalidade varchar(64)  NOT NULL,

    PRIMARY KEY (idAutor)
);

DROP TABLE IF EXISTS livro CASCADE;
CREATE TABLE livro
(
    idLivro SERIAL PRIMARY KEY,
    titulo  varchar(255),
    editora varchar(64),
    area    varchar(64)
);


DROP TABLE IF EXISTS livro_autor CASCADE;
CREATE TABLE livro_autor
(
    idLivro int NOT NULL,
    idAutor int NOT NULL,

    FOREIGN KEY (idLivro) REFERENCES livro (idLivro),
    FOREIGN KEY (idAutor) REFERENCES autor (idAutor)
);

DROP TABLE IF EXISTS aluno CASCADE;
CREATE TABLE aluno
(
    idAluno   serial PRIMARY KEY,
    nome      varchar(255) NOT NULL,
    sobrenome varchar(255) NOT NULL,
    endereco  varchar(255) NOT NULL,
    carreira  varchar(255) NOT NULL,
    idade     smallint     NOT NULL
);

DROP TABLE IF EXISTS emprestimo CASCADE;
CREATE TABLE emprestimo
(
    idLeitor        int       NOT NULL,
    idLivro         int       NOT NULL,
    data_emprestimo timestamp DEFAULT CURRENT_TIMESTAMP,
    data_devolucao  timestamp NOT NULL,
    retornou        BOOLEAN,

    FOREIGN KEY (idLeitor) REFERENCES aluno (idAluno),
    FOREIGN KEY (idLivro) REFERENCES livro (idLivro)
);