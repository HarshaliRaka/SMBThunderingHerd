class NotificationService

  #  Send mail for tax saving
  def send_notification_savetax(employee)
    begin
      @employee = employee

      if (@employee.payroll.total_tax > 0)
        p "...inside save tax mail"
        subject = "Save your money, pay less taxes "
        hash = {:template_name => "send_notification_savetax", :employee => @employee, :savetax => @employee.save_taxes, :subject => subject, :to => employee.email}
        p hash.to_json
        if employee.email.present?
          p "==========this"
          HTTParty.post(SEND_MAIL_URL, :body => hash.to_json)
        end
      end
    rescue Exception => e
      Rails.logger.info e.inspect
    end
    ""
  end

   #Send Payslip
  def send_notification_payslip(employee)
    begin
      @employee = employee

      @date = Date.today
      @month = @date.strftime("%B")
     subject = "Payslip for " + @month
     hash = {:template_name => "send_notification_payslip", :month => @month,:employee => @employee,:payroll =>@employee.payroll,   :subject => subject, :to => employee.email}
     if employee.email.present?
       HTTParty.post(SEND_MAIL_URL, :body => hash.to_json)
     end
   rescue Exception => e
     Rails.logger.info e.inspect
   end
   ""
  end

  def send_notification_taxslip(employee)
    begin
      @employee = employee

     subject = "Taxslip for year 2014-15"
     hash = {:template_name => "send_notification_taxslip", :employee => @employee,:payroll =>@employee.payroll,  :subject => subject, :to => employee.email}
     if employee.email.present?
       HTTParty.post(SEND_MAIL_URL, :body => hash.to_json)
     end
   rescue Exception => e
     Rails.logger.info e.inspect
   end
   ""
  end

end
