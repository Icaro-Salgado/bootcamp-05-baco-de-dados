-- Mostre os dados do funcionário que tem o maior salário no departamento 'Vendas'.

SELECT *
FROM funcionario f
WHERE f.salario = (SELECT MAX(salario)
                   FROM funcionario
                   WHERE depto_nro = (SELECT depto_nro FROM departamento WHERE nome_depto LIKE 'Vendas'));