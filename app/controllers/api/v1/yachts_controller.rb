class Api::V1::YachtsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    yachts = Yacht.all.map { |e| e.attributes.merge(picture: rails_blob_path(e.picture)) }
    render json: { data: yachts }, status: 200
  end

  def create
    yacht = Yacht.new(create_params)

    if yacht.save
      # Uses the #success_json decorator from below to present the data.
      render json: success_json(yacht), status: :created
    else
      render json: error_json(yacht), status: :unprocessable_entity
    end
  end

  def show
    item = Yacht.find_by(name: params[:id])

    if item.present?
      # Does NOT use decorator.  I just merge here the picture so it shows up in
      # the same json object for better accesibility.
      yacht = item.attributes.merge(picture: rails_blob_path(item.picture))

      render json: { yacht: yacht }, status: 200
    else
      head :not_found
    end
  end

  def getpicture
    yacht = Yacht.find_by(name: params[:id])

    if yacht&.picture&.attached?
      redirect_to rails_blob_url(yacht.picture)
    else
      head :not_found
    end
  end

  private

  def create_params
    params.require(:yacht).permit(:name, :price_per_hour, :description, :max_time, :insurance, :extra_person_fee,
                                  :picture)
  end

  def success_json(yacht)
    {
      yacht: {
        id: yacht.id,
        name: yacht.name,
        price_per_hour: yacht.price_per_hour,
        description: yacht.description,
        max_time: yacht.max_time,
        insurance: yacht.insurance,
        extra_person_fee: yacht.extra_person_fee,
        picture: rails_blob_path(yacht.picture)
      }
    }
  end

  def error_json(yacht)
    { errors: yacht.errors.full_messages }
  end
end
