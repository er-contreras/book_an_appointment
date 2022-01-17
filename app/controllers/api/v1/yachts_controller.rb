class Api::V1::YachtsController < ApplicationController
  def index
    render json: Yacht.all, only: %i[price_per_hour name description max_time insurence extra_person_fee]
  end

  def create; end

  def show
    yacht = Yacht.find_by(name: params[:id])
    render json: yacht
  end

  private

  def yacht_params
    params.require(:yacht).permit!
    # (:name, :price_per_hour, :description, :max_time, :insurance, :extra_person_fee)
  end
end
