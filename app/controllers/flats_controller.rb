class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show]

  # GET /flats
  def index
    @flats = Flat.all
  end

  # GET /flats/:id
  def show
  end

  # GET /flats/new
  def new
    @flat = Flat.new
  end

  # POST "flats"
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :phone_number, :category)
  end
end
