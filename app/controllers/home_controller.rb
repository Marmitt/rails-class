class HomeController < ApplicationController
  def index
    @product = Product.last
  end
  
  def about
    #render html: 'teste'
  end
end
