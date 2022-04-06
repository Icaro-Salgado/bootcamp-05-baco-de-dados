CREATE TABLE IF NOT EXISTS departamento
(
    "depto_nro"   VARCHAR,
    "nome_depto"  VARCHAR,
    "localizacao" VARCHAR,

    PRIMARY KEY ("depto_nro")
);

CREATE TABLE IF NOT EXISTS funcionario
(
    "cod_fuc"   VARCHAR,
    "nome"      VARCHAR,
    "sobrenome" VARCHAR,
    "cargo"     VARCHAR,
    "data_alta" DATE,
    "salario"   MONEY,
    "comissao"  MONEY,
    "depto_nro" VARCHAR,

    PRIMARY KEY ("cod_fuc"),

    CONSTRAINT "series_genre_id_foreign" FOREIGN KEY ("depto_nro") REFERENCES "departamento" ("depto_nro")
);
