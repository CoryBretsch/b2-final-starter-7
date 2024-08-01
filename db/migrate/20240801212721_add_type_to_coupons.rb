class AddTypeToCoupons < ActiveRecord::Migration[7.1]
  def change
    add_column :coupons, :type, :integer, default: 0
  end
end
