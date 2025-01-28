class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :phone_number

      t.timestamps
    end
 
  end
end
