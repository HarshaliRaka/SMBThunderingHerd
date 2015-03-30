class Payroll < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name="payrolls"

  belongs_to :employee

  attr_accessible :basic,:hra, :special, :conveyance, :bonus, :income_others, :hra_exempt, :prof_tax ,
   :pf, :ppf, :vpf, :lic, :hlpr, :ulip, :elss, :nsc, :infrastructure, :nss, :mutual_fund, :child_edu,
   :fixed_deposit,:pension, :national_pension, :rgess, :mediclaim, :education_loan, :housing_loan,
   :handicap_self, :handicap_dependent, :donations, :jan_sal, :feb_sal, :mar_sal, :apr_sal, :may_sal,
   :jun_sal, :jul_sal,:aug_sal, :sep_sal, :oct_sal, :nov_sal, :dec_sal,
   :income_tax, :education_cess, :surcharge, :rebate, :taxable_income, :total_tax,
   :sec80c, :sec80cg, :rent


  def self.calculate_tax(payroll)
  	@payroll = payroll
  	
  	total_income = @payroll.basic + @payroll.hra + @payroll.special + @payroll.conveyance + @payroll.bonus +@payroll.income_others
  	
  	sec80c = @payroll.pf +@payroll.ppf + @payroll.vpf +@payroll.lic +@payroll.hlpr + @payroll.ulip +@payrol.elss + @payroll.nsc 
  			+@payroll.infrastructure +@payroll.nss +@payroll.mutual_fund +@payroll.child_edu +@payroll.fixed_deposit
  			+@payroll.pension + @payroll.national_pension

  	sec80cg = @payroll.rgess

  	sec80d = @payroll.mediclaim

  	sec80e = @payroll.education_loan

  	sec80ee = @payroll.housing_loan

  	sec80dd = @payroll.handicap_dependent

  	sec80u =@payroll.handicap_self

  	if sec80c > SEC80C_LIMIT
  		@payroll.sec80c = SEC80C_LIMIT
  	end

  	if sec80cg > 50000
  		@payroll.sec80cg = 25000
  	else
  		@payroll.sec80cg = sec80cg/2
  	end

  	@payroll.hra_exempt = [@payroll.hra, @payroll.basic*.4 , @payroll.rent-@payroll.basic*.4].min

  	if @payroll.hra_exempt < 0
  		@payroll.hra_exempt = 0
  	end 

  	@payroll




  end


end
