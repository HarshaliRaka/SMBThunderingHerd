class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :invoice_items, :class_name => "::InvoiceItem"
  has_many :items, :class_name => "::Item" ,through: :invoice_items

  attr_accessible :customer_name, :paid, :mode, :customer_email, :total_amount

  def create
    @invoice = Invoice.new
    @invoice.customer_name = params[:customer_name]
    @invoice.mode = "Offline"
    @invoice.customer_email = params[:customer_email]
  end
end
