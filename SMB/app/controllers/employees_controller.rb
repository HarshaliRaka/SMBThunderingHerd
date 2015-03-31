class EmployeesController < ApplicationController

  def all
    @employees = Employee.all
  end

  def add_employee
    render ('employees')
  end

  def create
    name =  params[:employee][:name]
    age = params[:employee][:age]
    gender = params[:employee][:multiple_classes] == "0" ? "Female" : "Male"
    phone_number =   params[:employee][:phone_number]
    email = params[:employee][:email]
    pancard = params[:employee][:pancard]

    @payroll = Payroll.create(params[:employee])

    p "payrool in emp"
    p @payroll

    @savetax = SaveTax.generate_savetax(@payroll)
    p "savetax in emp"
    p @savetax

    @employee = Employee.create(name: name,
                                age: age,
                                gender: gender,
                                phone_number: phone_number,
                                email: email,
                                pancard: pancard,
                                save_taxes: @savetax,
                                payroll: @payroll)
    p @employee.save_taxes
  # @employee = @employee.update_attributes(save_taxes: @savetax)

    redirect_to(home_path)


  end

  def self.send_email_savetax
    @employees = Employee.all
    @employees.each do |emp|
      NotificationService.new.send_notification_savetax(emp)
    end
  end

  def self.send_email_payslip
    @employees = Employee.all
    @employees.each do |emp|
      NotificationService.new.send_notification_payslip(emp)
    end
  end

  def self.send_email_taxslip
    @employees = Employee.all
    @employees.each do |emp|
      NotificationService.new.send_notification_taxslip(emp)
    end
  end

end
