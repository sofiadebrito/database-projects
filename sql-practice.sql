-- a.1
SELECT *
FROM produto;

-- a.2
SELECT nome, email, localidade, datanascimento FROM cliente;

-- b.1
SELECT nome AS 'Descricao Produto', preco AS 'Preco sem IVA', stock FROM produto;

-- b.2
SELECT nome AS 'Colaborador', cargo FROM funcionario;

-- c.1
SELECT stock, preco, (stock * preco) AS 'Valor Tolat Stock', (stock * preco - (stock * preco * 0.2)) AS 'Valor Total Stock com desconto 20%' FROM produto;

-- c.2
SELECT quantidade * Subtotal AS 'Receita', ROUND(quantidade * (Subtotal*0.7),2) AS 'Custo Estimado', ROUND(quantidade * subtotal - (quantidade * (Subtotal*0.7)),2) AS 'Lucro' FROM produtovenda;

-- d.1
SELECT nome AS 'Colaborador', TIMESTAMPDIFF(year, DataContratacao, CURDATE()) AS 'Anos de casa' FROM funcionario;

-- d.2
SELECT nome, SUBSTRING_INDEX(email, "@",-1) FROM cliente;

-- d.3
SELECT upper(nome), FORMAT(preco,1) FROM produto;

-- e.1
SELECT * from funcionario WHERE cargo = 'vendedor';

-- e.2
SELECT * from cliente WHERE timestampdiff(year, DataNascimento, CURDATE()) < 30;

-- e.3
SELECT * from venda WHERE Total > 1000;

-- f.1
SELECT * FROM produto WHERE CategoriaID IN ('1','2') AND stock > 10;

-- f.2
SELECT * from cliente WHERE (localidade = 'Lisboa' OR localidade = 'Porto') AND timestampdiff(year, DataNascimento, CURDATE()) > 30;

-- g.1
SELECT * FROM produto WHERE preco BETWEEN 100 AND 500;

-- g.2
SELECT * FROM venda WHERE DataVenda BETWEEN '2023-01-01' AND '2023-05-01';

-- g.3
SELECT * from cliente WHERE timestampdiff(year, DataNascimento, CURDATE()) BETWEEN 25 AND 40;

-- h.1
SELECT * FROM venda WHERE clienteID IN (1,5,7);

-- h.2
SELECT * FROM cliente WHERE localidade IN ('Braga', 'Viseu', 'Coimbra');

-- i.1
SELECT * FROM produto WHERE nome LIKE 'Máquina%';

-- i.2
SELECT * FROM cliente WHERE nome LIKE 'A____ %';

-- i.3
SELECT * FROM cliente WHERE EMAIL LIKE '%@gmail.com' OR EMAIL LIKE '%@hotmail.com';

-- i.4
SELECT * FROM PRODUTO WHERE nome LIKE 'AR%' OR nome LIKE 'AS%';

-- j.1
SELECT CategoriaID, MAX(Preco) AS 'Preço mais alto' FROM produto GROUP BY CategoriaID;

-- j.2
SELECT vendaID, COUNT(produtoID) FROM produtovenda GROUP BY vendaID;

-- k.1
SELECT funcionarioID, sum(total) FROM venda GROUP BY funcionarioID HAVING sum(total) > 600;

-- k.2
SELECT categoriaID, sum(stock) FROM produto GROUP BY categoriaID HAVING sum(stock) > 100;

-- l.1
SELECT * FROM produto ORDER BY preco DESC;

-- l.2
SELECT * FROM cliente ORDER BY dataNascimento desc;

-- m.1
SELECT * FROM produto ORDER BY preco asc LIMIT 5;

-- m.2
SELECT * FROM venda ORDER BY datavenda DESC LIMIT 10;

-- m.3
SELECT * FROM cliente WHERE nome LIKE 'A%';




















