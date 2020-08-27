class RemoveDisplayStatusFromStoreEquipments < ActiveRecord::Migration[5.2]
  def change
    remove_column :store_equipments, :display_status?, :boolean
  end
end
