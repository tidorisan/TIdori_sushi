class Users::StoreEquipmentsController < ApplicationController
  def index
    @store_equipments = StoreEquipment.all
    @store_equipment = StoreEquipment.new
  end

  def create
     @store_equipment = StoreEquipment.new(store_equipment_params)
    if @store_equipment.save
      redirect_to users_store_equipments_path
    else
      render 'users/store_equipments/index'
    end
  end

  def edit
    @store_equipment = StoreEquipment.find(params[:id])
  end

  def update
  	@store_equipment = StoreEquipment.find(params[:id])
    if @store_equipment.update(store_equipment_params)
      redirect_to users_e_bills_path
    else
      render 'users/e_bills/edit'
    end
  end

  private
  def store_equipment_params
    params.require(:store_equipment).permit(:genre_name, :display_status?)
  end
end
