class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :charging
      t.integer :level
      t.decimal :lat, {:precision=>15, :scale=>13}
      t.decimal :lng, {:precision=>13, :scale=>13}
      t.timestamps null: false
    end
  end
end
