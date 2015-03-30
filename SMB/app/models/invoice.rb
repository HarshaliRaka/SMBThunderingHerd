class Invoice < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :invoice_items

  attr_accessible :customer_name, :paid, :mode, :customer_email, :total_amount
end
