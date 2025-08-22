# DBA Challenge 20240802 - Bike Stores Inc

## 📌 Descrição
Projeto desenvolvido como parte do **DBA Challenge 20240802**, utilizando a base de dados **Bike Stores Inc** para gerar consultas SQL que atendem métricas importantes para as áreas de Marketing e Comercial.

This is a challenge by Coodesh 🚀

---

## 🛠️ Tecnologias Utilizadas
- **Linguagem:** SQL (T-SQL no SQL Server)  
- **Banco de Dados:** Bike Stores Inc  
- **Ferramenta:** SQL Server Management Studio (SSMS)  

---

## 📂 Consultas Implementadas
### 1. Clientes que não realizaram compras
- **Objetivo:** Listar todos Clientes que não tenham realizado uma compra.  
- **Como foi feito:** `LEFT JOIN` entre `customers` e `orders`, filtrando onde `order_id IS NULL`.  
- **Arquivo:** `sql/01-clientes_sem_compras.sql`

---

### 2. Produtos não comprados
- **Objetivo:** Listar os Produtos que não tenham sido comprados.  
- **Como foi feito:** `LEFT JOIN` entre `products` e `order_items`, filtrando onde não há registros de pedidos.  
- **Arquivo:** `sql/02-produtos_nao_comprados.sql`

---

### 3. Produtos sem estoque
- **Objetivo:** Listar os Produtos sem Estoque.  
- **Ajuste feito:** além dos que têm `quantity = 0`, também traz produtos que **não possuem registro em `stocks`**.  
- **Como foi feito:** `LEFT JOIN` entre `products` e `stocks` + `COALESCE(quantity, 0)`.  
- **Arquivo:** `sql/03-produtos_sem_estoque.sql`

---

### 4. Quantidade de vendas por Marca e Loja
- **Objetivo:** Agrupar a quantidade de vendas que uma determinada **Marca** por **Loja**.  
- **Ajuste feito:** considerar também marcas e lojas que ainda **não venderam nada**, retornando `0`.  
- **Como foi feito:** `CROSS JOIN` entre `brands` e `stores` + `LEFT JOIN` nas vendas.  
- **Arquivo:** `sql/04-vendas_marca_loja.sql`

---

### 5. Funcionários sem pedidos associados
- **Objetivo:** Listar os Funcionarios que não estejam relacionados a um Pedido.  
- **Como foi feito:** `LEFT JOIN` entre `staffs` e `orders`, filtrando onde `order_id IS NULL`.  
- **Arquivo:** `sql/05-funcionarios_sem_pedidos.sql`

---

## ▶️ Como Executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/enriquecintra/TesteCoodesh.git
