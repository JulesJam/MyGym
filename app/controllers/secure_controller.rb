class SecureController < ApplicationController

  before _action :autheticate_user!
  
  def index
  end

  def login_data
  end
end
