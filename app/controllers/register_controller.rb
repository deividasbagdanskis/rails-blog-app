# frozen_string_literal: true

# Manages user registration
class RegisterController < ApplicationController
  # before_action :check_input_fields_are_not_empty, only: [:register]
  def register_form
    @user = User.new
  end

  def register
    check_input_fields_are_not_empty(user_params)
    check_passwords_match(user_params)
    check_email_is_unique(user_params[:email])

    save_new_user(user_params)

    redirect_to root_path
  rescue StandardError => e
    flash[:error] = e
    redirect_to action: :register_form
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def check_input_fields_are_not_empty(user_params)
    input_fields_empty = user_params[:email] == '' || user_params[:password] == '' ||
                         user_params[:password_confirmation] == ''
    raise 'Input fields cannot be empty' if input_fields_empty
  end

  def check_passwords_match(user_params)
    raise 'Passwords do not match' if user_params[:password] != user_params[:password_confirmation]
  end

  def check_email_is_unique(email)
    registered_user = User.find_by(email: email)

    raise 'This email is already registered' if registered_user
  end

  def save_new_user(user_params)
    @new_user = User.new(user_params)
    @new_user.is_admin = false
    @new_user.save

    session[:user_id] = @new_user.id
  end
end
