class PlantsController < ApplicationController
  before_action :set_plant, only: [ :show, :edit, :update, :destroy ]
  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def show; end

  def destroy
    @plant.delete
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :image, :description)
  end
end
