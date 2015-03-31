class EmployeesController < ApplicationController
  def all
  end
  def create
    render ('employees')
  end
  def getpay
    render ('payslip')
  end
end
