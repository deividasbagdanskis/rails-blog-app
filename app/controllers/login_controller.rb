# Handles user login and logout
class LoginController < ApplicationController
  def login_form
    @user = User.new
  end

  # Authenticates a user and saves user id in session
  def login
    @request_user = User.new(user_params)

    user = User.find_by(email: @request_user.email)

    if user && user.authenticate(@request_user.password)
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = 'Email or password is invalid'
      redirect_to action: :login_form
    end
  end

  # User log out
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
