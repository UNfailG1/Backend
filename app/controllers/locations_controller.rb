class LocationsController < ApplicationController

  before_action :authenticate_player_profile
  before_action :set_location, only: [:show, :update, :destroy]

  # GET /locations
  def index

    @locations = Location.getByNameLike(params[:loc_name]).
      paginate(page: 1, per_page: 5)

    render json: @locations, each_serializer: LocationSerializer
  end

  # GET /locations/1
  def show
    render json: @location, serializer: LocationSerializer
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def location_params
      params.fetch(:location, {})
    end
end
