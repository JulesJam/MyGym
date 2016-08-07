class SecureController < ApplicationController

  before _action :autheticate_user!
  
  def index
    @users = User.all
  end

  def login_data
  end
end
