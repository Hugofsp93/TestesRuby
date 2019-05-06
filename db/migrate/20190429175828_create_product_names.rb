class CreateProductNames < ActiveRecord::Migration[5.1]
  def change
    create_table :product_names do |t|
      t.string :product_name
      t.string :quantity
      t.string :measure
      t.references :product_list, foreign_key: true
      t.timestamps
    end
  end
end
