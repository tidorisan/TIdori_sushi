class CreateEBills < ActiveRecord::Migration[5.2]
  def change
    create_table :e_bills do |t|
      t.integer :store_id
      t.string :genre_name
      t.boolean :display_status, null: false, default: true

      t.timestamps
    end
  end
end
