class AddSkuToProduct < ActiveRecord::Migration[5.1]
  def change
      add_column :products, :Sku, :integer
  end
end
