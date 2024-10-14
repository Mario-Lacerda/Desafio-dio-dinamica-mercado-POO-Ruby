# Desafio Dio - Dinâmica de Mercado com Programação Orientada a Objetos (POO) em Ruby

Vamos criar uma simples dinâmica de mercado utilizando Programação Orientada a Objetos (POO) em Ruby. Este exemplo simulará um sistema de compra e venda de produtos em um mercado.

## Estrutura do Programa

### Classes Principais

1. **Produto**: Representa um item que pode ser comprado ou vendido.
2. **Mercado**: Representa o mercado onde os produtos são vendidos.

### Código do Programa

Aqui está um exemplo de como você pode implementar essa dinâmica:

ruby



```ruby
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
```

## Explicação do Código

### Classe `Produto`

- Atributos

  :

  - `nome`: o nome do produto.
  - `preco`: o preço do produto.

- Métodos

  :

  - `initialize`: inicializa um novo produto com nome e preço.
  - `detalhes`: retorna uma string formatada com as informações do produto.

### Classe `Mercado`

- Atributos

  :

  - `@produtos`: uma lista que armazena os produtos disponíveis no mercado.

- Métodos

  :

  - `initialize`: inicializa um novo mercado.
  - `adicionar_produto`: adiciona um produto à lista de produtos.
  - `listar_produtos`: exibe todos os produtos disponíveis no mercado.
  - `vender_produto`: remove um produto da lista com base no índice fornecido e exibe uma mensagem de compra.

## Como Executar o Programa

1. **Crie um arquivo Ruby** chamado `dinamica_mercado.rb`:

   bash

   

   ```bash
   touch dinamica_mercado.rb
   ```

2. **Abra o arquivo** em um editor de texto e cole o código acima.

3. **Execute o programa** no terminal:

   bash

   

   ```bash
   ruby dinamica_mercado.rb
   ```

4. **Siga as instruções** na tela para ver os produtos disponíveis e realizar uma compra.

## Exemplo de Saída

Ao rodar o programa, você verá algo como:

plaintext



```plaintext
Maçã adicionado ao mercado.
Banana adicionado ao mercado.
Laranja adicionado ao mercado.
Produtos disponíveis no mercado:
1. Maçã - R$ 2.50
2. Banana - R$ 1.50
3. Laranja - R$ 3.00
Digite o número do produto que deseja comprar:
```

Após inserir o número do produto, o programa confirmará a compra.
