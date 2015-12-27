class UserEmail < ActionMailer::Base
  default from: "noreply@talenta.com"

  def signup_notify(talent)
    @talent = talent
    mail(:to => @talent.email, :subject => "thanks for signing up with Talnta")
  end
  
end
