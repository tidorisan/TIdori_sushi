class AddDisplayStatusToStoreEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :store_equipments, :display_status, :boolean, default: true, null: false
  end
end
