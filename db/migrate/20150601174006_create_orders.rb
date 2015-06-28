class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.text :landmark
      t.string :city
      t.string :state
      t.string :pincode
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
