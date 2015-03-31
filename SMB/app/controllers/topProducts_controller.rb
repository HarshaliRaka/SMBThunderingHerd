class TopProductsController < ApplicationController

  def getProducts
    @topProducts = TopProducts.getTop10Products
  end

end
