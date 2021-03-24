class EnemiesController < ApplicationController
  # change
  before_action only: %i[ new edit ] do
    redirect_to new_user_session_path unless current_user&.admin
  end
  def index
  end
end