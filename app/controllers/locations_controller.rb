class LocationsController < ApplicationController
  before_action only: %i[ new edit ] do
    redirect_to new_user_session_path unless current_user&.admin
  end
  def index
    @locations = Location.all
  end
  def show
    @location = Location.find(params[:id])
  end
end