class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.integer :user_id
      t.string :base 
      t.timestamps null: false
    end
  end
end
