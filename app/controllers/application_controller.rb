class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # to give access to this method from all the views, the helper_method makes it a helper method
  helper_method :current_user

  def after_sign_in_path_for(resource)
     request.env['omniauth.origin'] || stored_location_for(resource) || images_path
  end
  
  def authorize_admin
      redirect_to root_path, alert: 'Access Denied' unless current_user.admin?
  end

  private
  def current_user
    # checks for a User based on the session’s user id that was stored when they logged in, and stores result in an instance variable
    @current_user ||= ((User.find(session[:user_id]) if session[:user_id]) || User.new)
  end
  
  def is_an_admin?
    if current_user && current_user.admin?
    end
  end

  # basic authorization, user must be logged in!
  def authorize
    redirect_to root_path, alert: "You must be admin in to perform this action" 
      if current_user.nil?
      end
  end
end