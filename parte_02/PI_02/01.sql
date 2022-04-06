-- Selecione o nome, cargo e localização dos departamentos onde os vendedores
-- trabalham.

SELECT f.nome, f.cargo, d.localizacao
FROM funcionario f
         INNER JOIN departamento d on d.depto_nro = f.depto_nro;