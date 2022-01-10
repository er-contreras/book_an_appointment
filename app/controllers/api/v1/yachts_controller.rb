class Api::V1::GreetingsController < ApplicationController
  def index
    render json: Yacht.all
  end
end
