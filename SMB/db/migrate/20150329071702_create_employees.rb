class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
			t.string :name
      t.integer :age
      t.string :gender
      t.string :phone_number
      t.string :email
      t.string :pancard
      t.date :joined
      t.boolean :left

      t.timestamps

      # add_index :employees, :email,   :unique => true
    end
  end
end
