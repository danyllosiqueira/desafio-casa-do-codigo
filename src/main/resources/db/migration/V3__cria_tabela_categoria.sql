CREATE TABLE categoria
(
    id   BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255)          NOT NULL,
    CONSTRAINT pk_categoria PRIMARY KEY (id)
);

ALTER TABLE categoria
    ADD CONSTRAINT UK_CATEGORIA_NOME UNIQUE (nome);
