START TRANSACTION;
CREATE TABLE IF NOT EXISTS LOCALIZACOES(
  id               BIGINT  NOT NULL,
  titulo           VARCHAR(28) NOT NULL,
  conteudo          VARCHAR(166),
  aberto           BOOLEAN NOT NULL,
  mascara            VARCHAR(11) NOT NULL,
  toalha             VARCHAR(11) NOT NULL,
  bebedouro         VARCHAR(11) NOT NULL,
  vestiario         VARCHAR(7) NOT NULL,
  PRIMARY KEY(id)
);
COMMIT;