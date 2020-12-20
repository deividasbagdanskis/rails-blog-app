class RegisterController < ApplicationController
  def register_form
    @user = User.new
  end

  def register
    @new_user = User.new(user_params)

    begin
      check_input_fields_are_not_empty(@new_user)
      check_passwords_match(@new_user.password, @new_user.password_confirmation)
      check_email_is_unique(@new_user.email)

      @new_user.is_admin = false
      @new_user.save

      session[:user_id] = @new_user.id
      redirect_to root_path
    rescue Exception => ex
      flash[:error] = ex
      redirect_to action: :register_form
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def check_input_fields_are_not_empty(user)
    if user.email == '' || user.password == '' || user.password_confirmation == ''
      raise 'Input fields cannot be empty'
    end
  end

  def check_passwords_match(password, password_confirmation)
    if password != password_confirmation
      raise 'Passwords do not match'
    end
  end

  def check_email_is_unique(email)
    registered_user = User.find_by(email: email)

    if registered_user
      raise 'This email is already registered'
    end
  end
end
