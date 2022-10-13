CREATE TABLE cliente
(
    id          BIGINT AUTO_INCREMENT NOT NULL,
    nome        VARCHAR(255)          NOT NULL,
    sobrenome   VARCHAR(255)          NOT NULL,
    email       VARCHAR(255)          NOT NULL,
    cpf_cnpj    VARCHAR(50),
    endereco    VARCHAR(255)          NOT NULL,
    complemento VARCHAR(255)          NOT NULL,
    telefone    VARCHAR(255)          NOT NULL,
    cep         VARCHAR(20)          NOT NULL,
    cidade      VARCHAR(20),
    pais_id     BIGINT,
    estado_id   BIGINT,
    CONSTRAINT pk_cliente PRIMARY KEY (id)
);

ALTER TABLE cliente
    ADD CONSTRAINT UK_CLIENTE_DOCUMENTO UNIQUE (cpf_cnpj);

ALTER TABLE cliente
    ADD CONSTRAINT UK_CLIENTE_EMAIL UNIQUE (email);

ALTER TABLE cliente
    ADD CONSTRAINT FK_CLIENTE_ON_ESTADO FOREIGN KEY (estado_id) REFERENCES estado (id);

ALTER TABLE cliente
    ADD CONSTRAINT FK_CLIENTE_ON_PAIS FOREIGN KEY (pais_id) REFERENCES pais (id);
