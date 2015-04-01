class SaveTax < ActiveRecord::Base

  self.table_name ="save_taxes"
  # attr_accessible :title, :body
  belongs_to :employee

  attr_accessible :employee_id, :act_name, :description

  def self.generate_savetax(payroll)
    @payroll = payroll
    @save_taxes = []
    if(@payroll.total_tax > 0)
      if(@payroll.sec80c < SEC80C_LIMIT)
        tx = SaveTax.new
        tx.act_name = "1"
        tx.description = (SEC80C_LIMIT - @payroll.sec80c).to_s
        @save_taxes << tx
      end
      if(@payroll.sec80cg < 25000 && @payroll.taxable_income < 1200000)
        tx = SaveTax.new
        tx.act_name = "2"
        tx.description = ""
        @save_taxes << tx
      end
      if @payroll.hra ==0
        tx = SaveTax.new
        tx.act_name = "3"
        tx.description = ""
        @save_taxes << tx
      end
      if (@payroll.hra !=0 && @payroll.hra_exempt==0)
        tx = SaveTax.new
        tx.act_name = "4"
        tx.description = ""
        @save_taxes << tx
      end
      if (@payroll.education_loan == 0)
        tx = SaveTax.new
        tx.act_name = "5"
        tx.description = ""
        @save_taxes << tx
      end
      if (@payroll.housing_loan == 0)
        tx = SaveTax.new
        tx.act_name = "6"
        tx.description = " "
        @save_taxes << tx
      end
      if (@payroll.mediclaim == 0)
        tx = SaveTax.new
        tx.act_name = "7"
        tx.description = ""
        @save_taxes << tx
      end
      if (@payroll.handicap_self == 0 && @payroll.handicap_dependent)
        tx = SaveTax.new
        tx.act_name = "8"
        tx.description = ""
        @save_taxes << tx
      end

      if (@payroll.donations == 0)
        tx = SaveTax.new
        tx.act_name = "9"
        tx.description = ""
        @save_taxes << tx
      end

      if(@payroll.income_others > 0)
        tx = SaveTax.new
        tx.act_name = "10"
        tx.description = ""
        @save_taxes << tx
      end
    end
    @save_taxes
  end

end
