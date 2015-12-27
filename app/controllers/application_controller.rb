class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_talent

  def current_talent
    @nil_var ||= Talent.find(session[:user_id]) if session[:user_id]
  end

  def require_talent
    redirect_to '/login' unless current_talent
  end

end
