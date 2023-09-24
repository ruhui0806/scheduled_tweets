class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password]) # comes from the "has_secure_password" in the user model, to check if the password is valid for the user
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end
