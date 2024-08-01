class AddStatusToCoupons < ActiveRecord::Migration[7.1]
  def change
    add_column :coupons, :activated, :boolean, default: false
  end
end
