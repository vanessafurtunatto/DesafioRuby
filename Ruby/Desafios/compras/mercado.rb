class Mercado
    def initialize(produto, preco)
      @produto = produto
      @preco = preco
    end
    
    def comprar
      puts "Você comprou #{@produto} com valor de R$: #{@preco}"
    end
   end