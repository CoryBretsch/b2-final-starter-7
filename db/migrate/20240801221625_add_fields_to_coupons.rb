class AddFieldsToCoupons < ActiveRecord::Migration[7.1]
  def change
    add_column :coupons, :category, :integer, default: 0
    add_column :coupons, :active, :boolean, default: false
  end
end