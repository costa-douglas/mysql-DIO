INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Jos� da Silva', '212.345.032-00', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('J�ssica Maria dos Santos', '146.654.543-32', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Maria Regina Lopez', '111.126.765-90', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Casemiro de Abreu', '222.071.750-67', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Osvaldo Oliveira Mota LTDA.', '43.897.137/0004-24', 'PJ');

INSERT INTO StatusPedido (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM PAUSA');
INSERT INTO StatusPedido (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusPedido (Identificacao) VALUES ('CONCLU�DO');

INSERT INTO TipoPagamento (Identificacao) VALUES ('Dinheiro');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Debito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Credito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Boleto');

INSERT INTO StatusEntrega (Identificacao) VALUES ('Aguardando separa��o');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Retirado pela transportadora');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Em transito para entrega');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Entregue');

INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (1, '1234567890', '00000000', 'RUA..', 'S/N', NULL);

INSERT INTO Estoque (Identificacao) VALUES ('Setor A');
INSERT INTO Estoque (Identificacao) VALUES ('Setor B');
INSERT INTO Estoque (Identificacao) VALUES ('Setor C');
-INSERT INTO Estoque (Identificacao) VALUES ('Setor D');

INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Ant�nio Filho Ltda.', '22.866.136/0001-11');
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Ronaldo Groto', '92.813.647/0001-50');

INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Ant�nio Filho Ltda', '22.866.136/0001-11');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Ronaldo Groto', '92.813.647/0001-50');

INSERT INTO Categoria (Identificacao) VALUES ('Informatica');
INSERT INTO Categoria (Identificacao) VALUES ('Escritorio');
INSERT INTO Categoria (Identificacao) VALUES ('Papelaria');
INSERT INTO Categoria (Identificacao) VALUES ('Decoracao');

INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Teclado', 'Teclado ABNT2 USB', 89.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Mouse', 'Mouse USB', 49.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (2, 'Caderno', 'Caderno 500fl', 29.90);

INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (2, 1);
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (3, 2);

INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (2, 1);
INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (3, 2);

INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (2, 1, 10);
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (3, 2, 15);

INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES (1, 1, 1, '0000000001', '2022-09-09', 0, 10, 10);

INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (2, 2);
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (2, 3);

INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (2, 1, 5.75);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (2, 2, 4.25);