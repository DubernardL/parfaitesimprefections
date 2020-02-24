class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  include CurrentCart
  before_action :set_cart

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom, :nom, :adresse, :ville, :code_postal])
    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom, :nom, :adresse, :ville, :code_postal])
  end
end
