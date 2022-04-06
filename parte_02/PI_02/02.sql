-- Visualize departamentos com mais de cinco funcionários.

SELECT d.nome_depto, COUNT(f.*)
FROM funcionario f
         INNER JOIN departamento d on d.depto_nro = f.depto_nro
GROUP BY d.nome_depto
HAVING COUNT(f.*) > 5;