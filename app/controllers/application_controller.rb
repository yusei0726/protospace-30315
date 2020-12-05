class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :move_to_index, only: :edit

  before_action :authenticate_user!, except: [:index, :show, :new]
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :occupation, :position, :profile])
  end
end
