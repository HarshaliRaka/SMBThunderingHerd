class CreateSaveTaxes < ActiveRecord::Migration
  def change
    create_table :save_taxes do |t|
      t.references :employee
      t.string :act_name
      t.string :description

      t.timestamps
    end
  end
end
