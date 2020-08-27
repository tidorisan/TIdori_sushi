class RemoveMannaersIndustryFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :mannaers_industry?, :boolean
    remove_column :users, :permit_to_store_manager?, :boolean
    remove_column :users, :get_restaurant_sales_permit_form?, :boolean
    remove_column :users, :related_with_antisocial_force?, :boolean
    remove_column :users, :mannaers_industry?, :boolean
    remove_column :users, :unsubscribe_status?, :boolean
  end
end
