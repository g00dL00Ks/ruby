# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default from: "anne@goodlooks.me"
  layout 'mailer'  
end