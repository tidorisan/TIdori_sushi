class RemoveDisplayStatusFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :display_status?, :boolean
  end
end
