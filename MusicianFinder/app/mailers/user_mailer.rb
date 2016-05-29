class UserMailer < ApplicationMailer
     default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
      @url  = 'fusician.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to Fusician')
  end
    
end
