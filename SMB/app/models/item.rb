class Item < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :name, :category, :quantity, :price
  has_many :invoice_items, :class_name => "::InvoiceItem"
  has_many :items, :class_name => "::Item", through: :invoice_items, :class_name => "::InvoiceItem"


end
