-- Mostre os dados dos funcionários que trabalham no departamento de contabilidade, ordenados por nome.

SELECT f.*
FROM funcionario f
         INNER JOIN departamento d on f.depto_nro = d.depto_nro
WHERE f.depto_nro = (SELECT depto_nro FROM departamento WHERE nome_depto LIKE 'Contabilidade')
ORDER BY f.nome;