class AddColumnToPhoneNumbers < ActiveRecord::Migration
  def change
    add_column :phone_numbers, :msg, :string
  end
end
