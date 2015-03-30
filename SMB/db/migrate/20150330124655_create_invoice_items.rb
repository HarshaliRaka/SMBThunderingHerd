class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.references :invoice
      t.integer  :item
      t.integer :qtity
      t.integer :amount

      t.timestamps
    end
  end
end
