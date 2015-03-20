class ChangeColumnForStatuses < ActiveRecord::Migration
  def change
    change_column :statuses, :lng, :decimal, {precision: 15, scale: 13}
  end
end
