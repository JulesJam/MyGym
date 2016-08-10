class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :user_image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :admin_level, :date_of_birth, :image, :accept_comms, :accept_proms, :mobile_tel_number, :accept_texts, :other_tel_number, :post_code, :house_flat_name_number, :street_address, :locality, :city, :profile, :user_image, :membership_expiry_date])
    
  end





  def after_sign_in_path_for(resource)
    qr_codes_create_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
