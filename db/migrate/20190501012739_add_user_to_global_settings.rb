class AddUserToGlobalSettings < ActiveRecord::Migration[5.1]
  def change
    add_reference :global_settings, :user, foreign_key: true    
  end
end
