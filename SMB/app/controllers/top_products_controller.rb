class TopProductsController

  def self.getProducts
    @topProducts = TopProducts.getTop10Products
  end

end
