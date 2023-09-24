class MainController < ApplicationController
  # def index
  #   flash.now[:notice] = "Logged in successfully"
  #   flash.now[:alert] = "Invalid email or password"
  # end
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end
end