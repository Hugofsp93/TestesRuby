class AddExtraFieldsToUser < ActiveRecord::Migration[4.2]
  def change
  	add_column :users, :name, :string
  	add_column :users, :phone, :string
  end
end
