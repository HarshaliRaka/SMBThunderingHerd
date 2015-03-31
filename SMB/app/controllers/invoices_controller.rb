class InvoicesController < ApplicationController


  def new
    @items = Item.all
    render :new
  end

end
