class InvoiceItem < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :invoice
  has_one :item

  attr_accessible  :invoice_id,  :item, :qtity, :amount


end
