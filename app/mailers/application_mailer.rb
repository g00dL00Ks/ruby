# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default from: "cr@goodlooks.me"
  layout 'mailer'  
end