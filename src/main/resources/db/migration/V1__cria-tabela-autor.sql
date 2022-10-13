CREATE TABLE autor
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    nome          VARCHAR(255)          NOT NULL,
    email         VARCHAR(255)          NOT NULL,
    descricao     VARCHAR(400)          NOT NULL,
    registrado_em TIMESTAMP,
    CONSTRAINT pk_autor PRIMARY KEY (id)
);

ALTER TABLE autor
    ADD CONSTRAINT UK_AUTOR_EMAIL UNIQUE (email);



