class RegistrationsController < Devise::RegistrationsController

  protected
    def after_update_path_for(resource)
      menu_path
    end
end