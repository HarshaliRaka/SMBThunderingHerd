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



    @employee = Employee.create(name: name,
                                age: age,
                                gender: gender,
                                phone_number: phone_number,
                                email: email,
                                pancard: pancard,
                                payroll: @payroll)

   @payroll = Payroll.calculate_tax(@employee.payroll)
   p @payroll

   @savetax = SaveTax.generate_savetax(@payroll)
   p "savetax in emp"
   p @savetax
  @employee.update_attributes(save_taxes: @savetax)
    p @employee.save_taxes


    redirect_to(home_path)


  end

  def send_email_savetax
    @topProducts = TopProduct.getTop10Products
    @employees = Employee.all
    @employees.each do |emp|
      @save_taxes = emp.save_taxes
      @savetax =[]
      @save_taxes.each do |s|
        s1 = OpenStruct.new
        s1.act_name = s.act_name
        s1.description = s.description
        @savetax << s1
      end
      p "{{{{{{{{{{{{{{{{{{{{{{{{{}}}}}}}}}}}}}}}}}}}}}}}}}"
      p @savetax
      NotificationService.new.send_notification_savetax(emp,@savetax)
    end
    redirect_to(home_path)
  end

  def send_email_payslip
    @topProducts = TopProduct.getTop10Products
    @employees = Employee.all
    @employees.each do |emp|
      NotificationService.new.send_notification_payslip(emp)
    end
    redirect_to(home_path)
  end

  def send_email_taxslip
    @topProducts = TopProduct.getTop10Products
    @employees = Employee.all
    @employees.each do |emp|
      NotificationService.new.send_notification_taxslip(emp)
    end
    redirect_to(home_path)
  end

end
