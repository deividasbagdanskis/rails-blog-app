class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @request_user = User.new(user_params)

    user = User.find_by(email: @request_user.email)

    if user && user.authenticate(@request_user.password)
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = 'Email or password is invalid'
      redirect_to action: :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
