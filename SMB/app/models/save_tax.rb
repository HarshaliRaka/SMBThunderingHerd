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
        tx.act_name = "Deductions under section 80C, 80CCC and 80CCD"
        tx.description = "The total limit for this section is INR 150000. Thus, you can still save tax on INR" + (SEC80C_LIMIT - @payroll.sec80c).to_s + ". You can invest in any of these : PPF, VPF, LIC, Pension schemes, Mutual Funds, ULIPs, etc."
        @save_taxes << tx
      end
      if(@payroll.sec80cg < 25000 && @payroll.taxable_income < 1200000)
        tx = SaveTax.new
        tx.act_name = "Deductions under section 80CCG (Rajiv Gandhi Equity Saving Scheme)"
        tx.description = "Upon fulfillment of conditions laid down in the section, the deduction is lower of - 50% of amount invested in equity shares or Rs 25,000. "
        @save_taxes << tx
      end
      if @payroll.hra ==0
        tx = SaveTax.new
        tx.act_name = "Deductions under section 80GG (House Rent)"
        tx.description = "Deduction available is the least of :a) Rent paid minus 10% of total income b) Rs. 2000/- per month c) 25% of total income"
        @save_taxes << tx
      end
      if (@payroll.hra !=0 && @payroll.hra_exempt==0)
        tx = SaveTax.new
        tx.act_name = "Section 10(13A) of the Income Tax Act and Rule 2A (House Rent Allowance)"
        tx.description = "In case you stay in an rented house, submit lease agreement copy, rent receipts and pancard of the owner (in case total rent per year > 100000)"
        @save_taxes << tx
      end
      if (@payroll.education_loan == 0)
        tx = SaveTax.new
        tx.act_name = "Section 80E(Education loan interest)"
        tx.description = "Tax saving is available for interest paid for education loans taken for higher studies."
        @save_taxes << tx
      end
      if (@payroll.housing_loan == 0)
        tx = SaveTax.new
        tx.act_name = "Section 80EE(First time Housing loan)"
        tx.description = "The deduction under this section is available only to Individuals for first house purchased where the value of the house is Rs 40lakhs or less and loan taken for the house is Rs 25lakhs or less. The total deduction allowed under this section is Rs 1,00,000. "
        @save_taxes << tx
      end
      if (@payroll.mediclaim == 0)
        tx = SaveTax.new
        tx.act_name = "Section 80D(Medical Insurance)"
        tx.description = "Tax saving on premiums paid towards medical insurance and health checkup upto 15000 for self, spouse & children and 15000 for parents."
        @save_taxes << tx
      end
      if (@payroll.handicap_self == 0 && @payroll.handicap_dependent)
        tx = SaveTax.new
        tx.act_name = "Section 80DD, 80DDB and 80U (Medical Expenditure for disability)"
        tx.description = "In case any expenses are incurred towards treatment of disabled or disabilities for self or dependent, please submit proofs."
        @save_taxes << tx
      end

      if (@payroll.donations == 0)
        tx = SaveTax.new
        tx.act_name = "Section 80G(Donations towards social causes)"
        tx.description = "100%, 50% or 10% deductions based on organisation available on donations made for social causes. Submit all your donation receipts."
        @save_taxes << tx
      end

      if(@payroll.income_others > 0)
        tx = SaveTax.new
        tx.act_name = "Section 80TTA(Income from savings account)"
        tx.description = "If your income from other sources includes interest on savings account, submit appropriate proofs to avail a rebate on upto Rs.10000."
        @save_taxes << tx
      end
    end
    @save_taxes
  end

end
