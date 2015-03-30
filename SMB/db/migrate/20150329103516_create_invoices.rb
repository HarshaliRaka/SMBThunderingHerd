class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.boolean :paid
      t.string :mode
      t.string :customer_email
      t.string :total_amount

      t.timestamps
    end
  end
end
