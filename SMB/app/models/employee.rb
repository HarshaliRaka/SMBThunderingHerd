class Employee < ActiveRecord::Base
  # attr_accessible :title, :body

  has_one :payroll
  has_one :save_tax

  attr_accessible  :name, :age, :gender, :phone_number, :email, :pancard, :joined, :left
  


end
