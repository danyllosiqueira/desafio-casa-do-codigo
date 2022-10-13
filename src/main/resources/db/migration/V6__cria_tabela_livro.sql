CREATE TABLE livro
(
    id                BIGINT AUTO_INCREMENT NOT NULL,
    titulo            VARCHAR(255)          NOT NULL,
    resumo            VARCHAR(500)          NOT NULL,
    sumario           VARCHAR(255),
    preco             DECIMAL               NOT NULL,
    isbn              VARCHAR(255),
    data_publicacao   date,
    categoria_id      BIGINT,
    autor_id          BIGINT,
    numero_de_paginas INT,
    CONSTRAINT pk_livro PRIMARY KEY (id)
);

ALTER TABLE livro
    ADD CONSTRAINT UK_LIVRO_ISBN UNIQUE (isbn);

ALTER TABLE livro
    ADD CONSTRAINT UK_LIVRO_TITULO UNIQUE (titulo);

ALTER TABLE livro
    ADD CONSTRAINT FK_LIVRO_ON_AUTOR FOREIGN KEY (autor_id) REFERENCES autor (id);

ALTER TABLE livro
    ADD CONSTRAINT FK_LIVRO_ON_CATEGORIA FOREIGN KEY (categoria_id) REFERENCES categoria (id);
