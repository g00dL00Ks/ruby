class UserMailer < ActionMailer::Base

  default from: 'cr@goodlooks.me'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://insider.goodlooks.me/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to GoodLooks')
  end


end
