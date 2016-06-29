class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|

      t.timestamps null: false
      t.string :name
      t.integer :phone_number
      t.string :address
      t.string  :email_address
    end
  end
end
