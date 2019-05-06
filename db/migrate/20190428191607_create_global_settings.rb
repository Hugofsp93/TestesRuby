class CreateGlobalSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :global_settings do |t|
      t.boolean :single_list

      t.timestamps
    end
  end
end
