class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :destroy]
  before_action :set_dose, only: [ :show, :destroy ]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
