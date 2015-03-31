class Employee < ActiveRecord::Base
  # attr_accessible :title, :body

  has_one :payroll
  has_many :save_taxes, :class_name => "SaveTax"

  attr_accessible  :name, :age, :gender, :phone_number, :email, :pancard, :joined, :left, :payroll, :save_taxes, :id


end
