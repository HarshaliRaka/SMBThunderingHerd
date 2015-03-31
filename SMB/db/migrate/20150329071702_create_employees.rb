class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
			t.string :name
      t.integer :age
      t.string :gender
      t.string :phone_number
      t.string :email
      t.string :pancard
      t.string :joined
      t.boolean :left ,:default => false

      t.timestamps

      # add_index :employees, :email,   :unique => true
    end
  end
end
