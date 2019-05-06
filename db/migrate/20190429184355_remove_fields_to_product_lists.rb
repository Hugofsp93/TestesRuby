class RemoveFieldsToProductLists < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_lists, :product_name, :string
    remove_column :product_lists, :quantity, :string
    remove_column :product_lists, :measure, :string
  end
end
