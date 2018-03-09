class HomeController < ApplicationController
  def index
    @product = Product.last
    
    codigo_produto = params['numero']
    quantidade = params['quantidade'] || 0
    
    prod = Product.find_by_id(codigo_produto || 0)
    @produto_encontrado = prod && prod.name || 'Produto não encontrado'
    
    @valor_total = prod ? quantidade.to_f * prod.price  : 0
  end
  
  def about
    #render html: 'teste'
  end
end
