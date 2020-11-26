class ApplicationController < ActionController::Base
  helper_method :current_user

  # User id is set in a session variable, returns current user object,
  # otherwise returns nil
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
