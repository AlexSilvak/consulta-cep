# 📌 Projeto Oracle APEX + ORDS + REST Data Source (Consulta CEP)

Este projeto tem como objetivo demonstrar a integração do **Oracle APEX** com a **API Brasil (ViaCEP)** utilizando **REST Data Source via ORDS**, permitindo a consulta automática de endereços válidos a partir de um CEP informado.  

O projeto inclui:
- Formulário APEX para cadastro e consulta de CEP.  
- Integração com a API ViaCEP (https://viacep.com.br).  
- Armazenamento dos endereços retornados em tabela Oracle (`enderecos_viacep`).  

---

## 🚀 Tecnologias Utilizadas
- **Oracle APEX** (Frontend e Backend PL/SQL).  
- **Oracle ORDS (Oracle REST Data Services)**.  
- **REST Data Source** para consumo da API.  
- **Banco de Dados Oracle**.  

---

## 📂 Estrutura da Tabela

```sql
CREATE TABLE enderecos_viacep (
  cep           VARCHAR2(10),
  state         VARCHAR2(2),
  city          VARCHAR2(100),
  neighborhood  VARCHAR2(100),
  street        VARCHAR2(150),
  service       VARCHAR2(20)
);

-- Exemplo de inserção manual
INSERT INTO enderecos_viacep (
  cep, state, city, neighborhood, street, service
) VALUES (
  '89010025', 'SC', 'Blumenau', 'Centro', 'Rua Doutor Luiz de Freitas Melro', 'viacep'
);
