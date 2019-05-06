class AddFieldToProductLists < ActiveRecord::Migration[5.1]
  def change
    add_column :product_lists, :list_name, :string
  end
end
