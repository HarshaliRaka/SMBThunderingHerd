class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
    	t.integer :basic ,:default => 0
      t.integer :hra ,:default => 0
      t.integer :special ,:default => 0
      t.integer :conveyance ,:default => 0
      t.integer :bonus ,:default => 0

      t.integer :income_others ,:default => 0

			t.integer :hra_exempt ,:default => 0
			t.integer :prof_tax ,:default => 2400

			t.integer :pf ,:default => 0
			t.integer :ppf ,:default => 0
			t.integer :vpf ,:default => 0
			t.integer :lic ,:default => 0
			t.integer :hlpr ,:default => 0
			t.integer :ulip ,:default => 0
			t.integer :elss ,:default => 0
			t.integer :nsc ,:default => 0
			t.integer :infrastructure ,:default => 0
			t.integer :nss ,:default => 0
			t.integer :mutual_fund ,:default => 0
			t.integer :child_edu ,:default => 0
			t.integer :fixed_deposit ,:default => 0
			t.integer :pension ,:default => 0
			t.integer :national_pension ,:default => 0

			t.integer :rgess ,:default => 0
			t.integer :mediclaim ,:default => 0
			t.integer :education_loan ,:default => 0
			t.integer :housing_loan ,:default => 0
			t.integer :handicap_self ,:default => 0
			t.integer :handicap_dependent ,:default => 0
			t.integer :donations ,:default => 0

			t.integer :sal ,:default => 0

			t.integer :income_tax ,:default => 0
			t.integer :education_cess ,:default => 0
			t.integer :surcharge ,:default => 0
			t.integer :rebate ,:default => 0
			t.integer :taxable_income ,:default => 0
			t.integer :total_tax ,:default => 0
      t.integer :tax_month ,:default => 0

			t.integer :sec80c ,:default => 0
			t.integer :sec80cg ,:default => 0
			t.integer :rent ,:default => 0


      t.references :employee

      t.timestamps

    end
  end
end
