class AddGlobalSettingToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :global_setting, foreign_key: true
  end
end
