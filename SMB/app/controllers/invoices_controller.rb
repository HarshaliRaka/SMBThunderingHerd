class InvoicesController < ApplicationController


  def new
    @items = Item.all
    render :item
  end

end
