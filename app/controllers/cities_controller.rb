class CitiesController < ApplicationController
  before_action :authorize_request

  # GET /alerts
  def index
    @cities = City.actives.map(&:present)

    render json: @cities
  end
end
