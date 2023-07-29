class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params_set)
    @flat.save
    redirect_to flat_path(@flat)
  end

  private

  def params_set
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
