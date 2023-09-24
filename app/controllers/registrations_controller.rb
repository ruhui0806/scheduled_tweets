class RegistrationsController < ApplicationController
  def new # display the form for new record
    @user = User.new
  end

  def create # save the new record
    @user = User.new(user_params) 

    if @user.save
      redirect_to root_path, notice: 'Successfully created account'
    else
      render :new
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end