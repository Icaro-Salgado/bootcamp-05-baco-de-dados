INSERT INTO autor (nome, nacionalidade)
VALUES ('J. K. Rowling', 'Britânica'),
       ('George R. R Martin', 'Norte-Americana'),
       ('Affonso Solano', 'Brasileira'),
       ('Robert C. Martin', 'Norte-Americana'),
       ('Jean Pierre', 'Francesa'),
       ('Filipo Cibron', 'Argentina'),
       ('Niotele Nli', 'Italiana');

INSERT INTO livro (titulo, editora, area)
VALUES ('Harry Potter e a pedra filosofal', 'Bloomsbury Publishing', 'Fantasia'),
       ('Harry Potter e a camara secreta', 'Bloomsbury Publishing', 'Fantasia'),
       ('As crônicas de gelo e fogo: A guerra dos tronos', 'Bantam Spectra', 'Fantasia'),
       ('O espadachim de carvão', 'Fantasy - Casa da Palavra', 'Fantasia'),
       ('Código Limpo', 'Pearson Education', 'Programação'),
       ('Le petit le grand', 'Salamandra', 'Internet'),
       ('O Universo: Guia de Viagem', 'Salamandra', 'Banco de dados');

INSERT INTO livro_autor (idlivro, idautor)
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (5, 4),
       (6, 5),
       (7, 6),
       (7, 7);

INSERT INTO aluno (nome, sobrenome, endereco, carreira, idade)
VALUES ('Seth', 'Preston', '315-5512 Dictum Av.', 'Informática', 24),
       ('Zachary', 'Mcleod', '9626 Nec Rd.', 'Informática', 26),
       ('Trevor', 'Berry', '8472 Diam Avenue', 'Medicina', 44),
       ('Galvin', 'Hyde', '218-2328 Lacinia Street', 'Mecânica', 26),
       ('Briar', 'Hutchinson', '3046 Enim Road', 'Cinema', 52),
       ('Filippo', 'Galli', '3050 Enim Road', 'Gastronomia', 22);

INSERT INTO emprestimo (idleitor, idlivro, data_emprestimo, data_devolucao, retornou)
VALUES (1, 1, '2021-6-10', '2021-07-10', true),
       (2, 2, '2022-03-15', '2022-04-15', false),
       (3, 3, '2021-10-02', '2021-11-02', true),
       (4, 4, '2022-04-01', '2022-04-01', true),
       (5, 5, '2022-02-26', '2022-02-26', false),
       (6, 6, '2022-03-26', '2022-04-26', false),
       (6, 7, '2022-03-26', '2022-04-26', true);
