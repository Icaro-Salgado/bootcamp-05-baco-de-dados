-- 1. Listar os dados dos autores.
SELECT *
FROM autor;

-- 2. Listar nome e idade dos alunos
SELECT nome, idade
FROM aluno;

-- 3. Quais alunos pertencem à carreira de informática?
SELECT nome
FROM aluno
WHERE carreira LIKE 'Informática';

-- 4. Quais autores são de nacionalidade francesa ou italiana?
SELECT *
FROM autor
WHERE nacionalidade
    LIKE 'Francesa'
   OR nacionalidade LIKE 'Italiana';

-- 5. Que livros não são da área da internet?
SELECT *
FROM livro
WHERE area LIKE 'Internet';

-- 6. Listar os livros da editora Salamandra.
SELECT *
FROM livro
WHERE editora LIKE 'Salamandra';

-- 7. Listar os dados dos alunos cuja idade é maior que a média.
SELECT *
FROM aluno
WHERE idade > (SELECT AVG(idade) FROM aluno);

-- 8. Listar os nomes dos alunos cujo sobrenome começa com a letra G.
SELECT *
FROM aluno
WHERE sobrenome LIKE 'G%';

-- 9. Listar os autores do livro "O Universo: Guia de Viagem". (Apenas nomes devem ser listados.)
SELECT a.nome
FROM livro_autor
         JOIN autor a on a.idautor = livro_autor.idautor
         JOIN livro l on l.idlivro = livro_autor.idlivro
WHERE l.titulo LIKE 'O Universo: Guia de Viagem';

-- 10. Listar autores que tenham nacionalidade italiana ou argentina.
SELECT *
FROM autor
WHERE nacionalidade LIKE 'Italiana'
   OR nacionalidade LIKE 'Argentina';

-- 11. Que livros foram emprestados ao leitor “Filippo Galli”?
SELECT *
FROM emprestimo
         INNER JOIN aluno a on a.idaluno = emprestimo.idleitor
         INNER JOIN livro l on l.idlivro = emprestimo.idlivro
WHERE a.nome LIKE 'Filippo'
  AND a.sobrenome LIKE 'Galli';

-- 12. Listar o nome do aluno mais novo.
SELECT nome
FROM aluno
WHERE idade = (SELECT MIN(idade) FROM aluno);

-- 13. Listar os nomes dos alunos a quem os livros de Banco de Dados foram emprestados.
SELECT a.nome
FROM emprestimo
         JOIN aluno a on a.idaluno = emprestimo.idleitor
         JOIN livro l on l.idlivro = emprestimo.idlivro
WHERE l.area LIKE 'Banco de dados';

-- 14. Listar os livros que pertencem ao autor J.K. Rowling.
SELECT l.*
FROM livro_autor
         JOIN autor a ON a.idautor = livro_autor.idautor
         JOIN livro l on l.idlivro = livro_autor.idlivro
WHERE a.nome LIKE 'J. K. Rowling';

-- 15. Listar os títulos dos livros que deveriam ser devolvidos até 16/07/2021.
SELECT l.titulo
FROM emprestimo
         INNER JOIN livro l on l.idlivro = emprestimo.idlivro
WHERE data_devolucao < '20210716';