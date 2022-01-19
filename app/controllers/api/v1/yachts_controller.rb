class Api::V1::YachtsController < ApplicationController
  def index
    @yachts = Yacht.all.map { |e| e.attributes.merge(picture: rails_blob_path(e.picture)) }
    render json: { data: @yachts }, status: 200

    # data = { yachts: Yacht.all.as_json, pictures: rails_blob_path }

    # render json: Yacht.all, only: %i[price_per_hour name description max_time insurence extra_person_fee]
  end

  def create; end

  def show
    item = Yacht.find_by(name: params[:id])
    yacht = item.attributes.merge(picture: rails_blob_path(item.picture))
    # picture = rails_blob_path(yacht.picture)
    render json: { yacht: yacht }, status: 200
  end

  private

  def yacht_params
    params.require(:yacht).permit!
    # (:name, :price_per_hour, :description, :max_time, :insurance, :extra_person_fee)
  end
end
