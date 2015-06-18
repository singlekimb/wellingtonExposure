class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # to give access to this method from all the views, the helper_method makes it a helper method
  # helper_method :current_user
  
  def after_sign_in_path_for(resource)
     request.env['omniauth.origin'] || stored_location_for(resource) || images_path
  end
  
  def authorize_admin
    if  current_user.user?
      redirect_to root_path 
  end
end

end