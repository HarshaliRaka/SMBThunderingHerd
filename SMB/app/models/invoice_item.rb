class InvoiceItem < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :invoice, :class_name => "::Invoice"
  belongs_to :item, :class_name => "::Item"

  attr_accessible  :invoice_id,  :item_id, :quantity, :amount


end
