class Api::V1::YachtsController < ApplicationController
  def index
    render json: Yacht.all, only: %i[price_per_hour description max_time insurence extra_person_fee]
  end
end
