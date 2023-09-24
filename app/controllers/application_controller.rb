class ApplicationController < ActionController::Base
  before_action :set_current_user # this method is called before every action in the application
  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end
end
