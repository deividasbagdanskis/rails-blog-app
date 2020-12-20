class ApplicationController < ActionController::Base
  helper_method :current_user, :current_user_username

  # User id is set in a session variable, returns current user object,
  # otherwise returns nil
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def current_user_username
    @current_user ||= User.find(session[:user_id])

    local_part = @current_user.email[/^[^@]+/]

    local_part.split('.').map(&:capitalize).join(' ')
  end
end
