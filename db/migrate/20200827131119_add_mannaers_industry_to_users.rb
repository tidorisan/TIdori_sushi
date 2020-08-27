class AddMannaersIndustryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mannaers_industry, :boolean
    add_column :users, :permit_to_store_manager, :boolean
    add_column :users, :get_restaurant_sales_permit_form, :boolean
    add_column :users, :related_with_antisocial_force, :boolean
    add_column :users, :unsubscribe_status, :boolean
  end
end
