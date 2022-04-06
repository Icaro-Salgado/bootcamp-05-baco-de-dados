-- Exiba o nome, salário e nome do departamento dos funcionários que têm o mesmo cargo que 'Mito Barchuk'.

SELECT f.nome, f.salario, d.nome_depto
FROM funcionario f
         INNER JOIN departamento d on d.depto_nro = f.depto_nro
WHERE f.cargo = (SELECT cargo FROM funcionario WHERE nome = 'Mito' AND sobrenome = 'Barchuk');