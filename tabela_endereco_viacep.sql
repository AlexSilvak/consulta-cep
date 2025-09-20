CREATE TABLE enderecos_viacep (
  cep           VARCHAR2(10),
  state         VARCHAR2(2),
  city          VARCHAR2(100),
  neighborhood  VARCHAR2(100),
  street        VARCHAR2(150),
  service       VARCHAR2(20)
);


INSERT INTO enderecos_viacep (
  cep, state, city, neighborhood, street, service
) VALUES (
  '89010025', 'SC', 'Blumenau', 'Centro', 'Rua Doutor Luiz de Freitas Melro', 'viacep'
);
