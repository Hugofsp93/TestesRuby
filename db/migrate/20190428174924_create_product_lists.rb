class CreateProductLists < ActiveRecord::Migration[5.1]
  def change
    create_table :product_lists do |t|
      t.string :product_name
      t.string :quantity
      t.string :measure

      t.timestamps
    end
  end
end
