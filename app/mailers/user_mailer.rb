class UserMailer < ActionMailer::Base
  default from: ENV['GMAIL_USERNAME']
  attr_accessor :username

  def user_email(user_params)
    @username = user_params[:username]
    @email = user_params[:email]
    mail(to: @email, 
         date: Time.now,
         content_type: 'text/html',
         subject: 'OnMyPlate Email Confirmation', 
         template_path: 'user_confirmation', 
         template_name: 'email_to_user')
  end
end
