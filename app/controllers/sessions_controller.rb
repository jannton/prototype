  class SessionsController < ApplicationController

  def new

  end

  def create
  @talent = Talent.find_by_email(params[:session][:email])
  if @talent && @talent.authenticate(params[:session][:password])
    session[:user_id] = @talent.id
    redirect_to '/talents'
  else
    redirect_to '/login'
  end
end

def destroy
  session[:user_id] = nil
  redirect_to '/'
end

end
