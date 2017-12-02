class AddSalePriceToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :SalePrice, :integer
  end
end
