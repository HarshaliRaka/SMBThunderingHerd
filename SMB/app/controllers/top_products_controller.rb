class TopProductsController < ApplicationController

  def get_product
    @topProducts = TopProduct.getTop10Products
    render :top_product
  end

end
