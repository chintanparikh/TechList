class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :html

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      flash[:error] = exception.message
      redirect_to root_url
    else
      redirect_to new_user_session_path
    end
  end
end
