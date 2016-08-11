class SecureController < ApplicationController

  before_action :autheticate_user!
  
  def index
    @users = User.all
  end

  def login_data
  end
end
