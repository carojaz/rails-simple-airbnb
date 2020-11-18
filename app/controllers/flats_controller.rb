class FlatsController < ApplicationController

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(&flat)
    else
      rend :new
    end
  end

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(flat[:id])
  end

  def edit
    @flat = Flat.find(flat[:id])
  end

  def update
    @flat = Flat.find(flat[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end