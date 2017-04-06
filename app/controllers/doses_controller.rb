class DosesController < ApplicationController

  def index
  end

  # def new
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.new
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient

    if @dose.save
      redirect_to dose_path(@dose)
    else
      render 'new'
    end
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
