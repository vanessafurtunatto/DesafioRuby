require_relative 'produto'
require_relative 'mercado'
 
produto = Produto.new
produto.nome = 'Maçã'
produto.preco = 4.80
 
Mercado.new(produto.nome, produto.preco).comprar