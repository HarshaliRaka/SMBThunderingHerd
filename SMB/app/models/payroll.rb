class Payroll < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name="payrolls"

  belongs_to :employee

  attr_accessible :basic,:hra, :special, :conveyance, :bonus, :income_others,
   :hra_exempt, :prof_tax ,
   :pf, :ppf, :vpf, :lic, :hlpr, :ulip, :elss, :nsc, :infrastructure, :nss, :mutual_fund, :child_edu,
   :fixed_deposit,:pension, :national_pension, :rgess, :mediclaim, :education_loan, :housing_loan,
   :handicap_self, :handicap_dependent, :donations,
   :sal,
   :income_tax, :education_cess, :surcharge, :rebate, :taxable_income, :total_tax, :tax_month,
   :sec80c, :sec80cg, :rent


  def self.calculate_tax payroll

    p "----here in calculate tax"
    p payroll

  	@payroll = payroll

  	total_income = @payroll.basic + @payroll.hra + @payroll.special + @payroll.conveyance + @payroll.bonus + @payroll.income_others



    sec80c = 0
    sec80cg = 0
    hra_exempt = 0
    taxable_income = 0
    income_tax = 0
    rebate = 0
    surcharge = 0
    education_cess = 0
    total_tax = 0


  	sec80c = @payroll.pf + @payroll.ppf + @payroll.vpf + @payroll.lic + @payroll.hlpr + @payroll.ulip + @payroll.elss + @payroll.nsc + @payroll.infrastructure + @payroll.nss + @payroll.mutual_fund + @payroll.child_edu + @payroll.fixed_deposit + @payroll.pension + @payroll.national_pension

  	sec80cg = @payroll.rgess

  	sec80d = @payroll.mediclaim

  	sec80e = @payroll.education_loan

  	sec80ee = @payroll.housing_loan

  	sec80dd = @payroll.handicap_dependent

  	sec80u = @payroll.handicap_self

  	if sec80c > SEC80C_LIMIT
      sec80c = SEC80C_LIMIT
  	end

  	if sec80cg > 50000
  		sec80cg = 25000
  	else
      sec80cg = sec80cg/2
  	end


  	hra_exempt = [@payroll.hra, @payroll.basic * 0.4 , (@payroll.rent - @payroll.basic * 0.1)].min

  	if hra_exempt < 0
      hra_exempt = 0
  	end

    p total_income

  	taxable_income = total_income -sec80c - sec80cg - @payroll.mediclaim - @payroll.education_loan - @payroll.housing_loan - @payroll.handicap_dependent - @payroll.handicap_self - hra_exempt - @payroll.conveyance - @payroll.prof_tax
    p taxable_income

    if taxable_income <= SLAB1
    elsif taxable_income <= SLAB2
      income_tax = (taxable_income - SLAB1)*SLAB1_RATE * 0.01
      rebate = [income_tax , 2000].min
    elsif taxable_income <= SLAB3
      income_tax = (taxable_income - SLAB2)*SLAB2_RATE * 0.01 + 25000
    else
      income_tax = 125000 + (taxable_income - SLAB3)*SLAB3_RATE* 0.01
    end

    if taxable_income >= 10000000 #1 crore
      surcharge = income_tax * 0.1
    end

    education_cess = (income_tax + surcharge) * 0.03

    total_tax = income_tax + surcharge + education_cess

    total_pay = @payroll.basic + @payroll.hra + @payroll.special + @payroll.conveyance
    deduct = @payroll.prof_tax + total_tax
    sal = (total_pay - deduct)/12

    @payroll.update_attributes(sec80c: sec80c,
                                sec80cg: sec80cg,
                                hra_exempt: hra_exempt,
                                taxable_income: taxable_income,
                                income_tax: income_tax,
                                rebate: rebate,
                                surcharge: surcharge,
                                education_cess: education_cess,
                                total_tax: total_tax,
                                sal: sal,
                                tax_month: total_tax/12)
    p @payroll

  end

  # def self.calculate_sal(payroll)
  #   @payroll = payroll
  #   total_pay = @payroll.basic + @payroll.hra + @payroll.special + @payroll.conveyance
  #   deduct = @payroll.prof_tax + @payroll.total_tax
  #   @payroll.sal = (total_pay - deduct)/12
  #
  # end

  def self.create params
    p "===here in create payroll"
    p params
    @payroll = Payroll.new
    @payroll.basic = params[:basic].to_i
    @payroll.hra = params[:hra].to_i
    @payroll.special =  params[:special].to_i
    @payroll.conveyance = params[:conveyance].to_i
    @payroll.bonus = params[:bonus].to_i
    @payroll.income_others =  params[:income_others].to_i
    @payroll.pf = params[:basic].to_i * 0.12
    @payroll.ppf =  params[:ppf].to_i
    @payroll.vpf = params[:vpf].to_i
    @payroll.lic = params[:lic].to_i
    @payroll.hlpr = params[:hlpr].to_i
    @payroll.ulip = params[:ulip].to_i
    @payroll.elss = params[:elss].to_i
    @payroll.nsc = params[:nsc].to_i
    @payroll.infrastructure =  params[:infrastructure].to_i
    @payroll.nss = params[:nss].to_i
    @payroll.mutual_fund = params[:mutual_fund].to_i
    @payroll.child_edu = params[:child_edu].to_i
    @payroll.fixed_deposit = params[:fixed_deposit].to_i
    @payroll.pension = params[:pension].to_i
    @payroll.national_pension = params[:national_pension].to_i

    payroll = @payroll
    # p payroll
    # @payroll = calculate_tax(payroll)

  end




end
