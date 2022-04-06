-- Mostre o nome do funcionário que tem o menor salário.

SELECT f.nome
FROM funcionario f
WHERE f.salario = (SELECT MIN(funcionario.salario) FROM funcionario);