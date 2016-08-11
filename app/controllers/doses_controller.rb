class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Cocktail.doses.build(dose_params)
    @dose.save
    redirect_to cocktails_path
  end

  def destroy
    @dose = Cocktail.doses.find(dose_params)
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
