-- Query SQL usando o modelo relacional

-- Objetivo:
-- Mostrar cliente, número do pedido, produto, quantidade e valor total por item

SELECT
    c.nome AS cliente,
    p.id_pedido,
    pr.nome AS produto,
    i.quantidade,
    (i.quantidade * pr.preco) AS valor_total
FROM itens_pedido i
INNER JOIN pedidos p ON i.id_pedido = p.id_pedido
INNER JOIN clientes c ON p.id_cliente = c.id_cliente
INNER JOIN produtos pr ON i.id_produto = pr.id_produto;

-- Por que isso é um bom exemplo de modelo relacional?

-- Usa normalização
-- Tem chaves primárias e estrangeiras
-- Evita redundância de dados
-- Reflete um sistema real (e-commerce, loja, vendas)