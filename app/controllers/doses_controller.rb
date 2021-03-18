class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params_dose)
    @dose.save
    redirect_to doses_path(@dose)
  end

  private

  def params_dose
    params.require('doses').permit(:cocktail, :ingredients)
  end
end
