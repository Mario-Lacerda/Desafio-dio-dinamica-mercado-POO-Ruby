# Classe Produto
class Produto
    attr_accessor :nome, :preco
  
    def initialize(nome, preco)
      @nome = nome
      @preco = preco
    end
  
    def detalhes
      "#{@nome} - R$ #{@preco.round(2)}"
    end
  end
  
  # Classe Mercado
  class Mercado
    def initialize
      @produtos = []
    end
  
    def adicionar_produto(produto)
      @produtos << produto
      puts "#{produto.nome} adicionado ao mercado."
    end
  
    def listar_produtos
      puts "Produtos disponíveis no mercado:"
      @produtos.each_with_index do |produto, index|
        puts "#{index + 1}. #{produto.detalhes}"
      end
    end
  
    def vender_produto(index)
      if index >= 0 && index < @produtos.length
        produto = @produtos.delete_at(index)
        puts "Você comprou: #{produto.detalhes}"
      else
        puts "Produto não encontrado."
      end
    end
  end
  
  # Exemplo de uso
  mercado = Mercado.new
  
  # Adicionando produtos ao mercado
  mercado.adicionar_produto(Produto.new("Maçã", 2.50))
  mercado.adicionar_produto(Produto.new("Banana", 1.50))
  mercado.adicionar_produto(Produto.new("Laranja", 3.00))
  
  # Listando produtos disponíveis
  mercado.listar_produtos
  
  # Simulando a compra de um produto
  puts "Digite o número do produto que deseja comprar:"
  numero_produto = gets.chomp.to_i - 1
  
  mercado.vender_produto(numero_produto)
  