class SessionsController < ApplicationController
@@loginStatus = "Welcome to Talnta, please Sign Up or Log In"
  def new
    @loginStatusView = @@loginStatus
  end

  def create
  @talent = Talent.find_by_email(params[:session][:email])
  if @talent && @talent.authenticate(params[:session][:password])
    session[:user_id] = @talent.id
    @@loginStatus = "Welcome to Talnta, please Sign Up or Log In"
    $loggedInTalent = @talent
    redirect_to '/talents'
  else
    @@loginStatus = "Wrong email or password"
    redirect_to '/login'
  end
end

def destroy
  session[:user_id] = nil
  $loggedInTalent = nil
  redirect_to '/'
end

end
