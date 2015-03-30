class CreateSaveTaxes < ActiveRecord::Migration
  def change
    create_table :save_taxes do |t|

      t.timestamps
    end
  end
end
