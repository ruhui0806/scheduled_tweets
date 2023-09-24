class ApplicationController < ActionController::Base
  before_action :set_current_user # this method is called before every action in the application
  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in! #the method will throw an exception on failure rather than failing silently
    redirect_to sign_in_path, alert: 'You must be signed in to do that!' if Current.user.nil?
  end
end
