class UserConfirmationController < ApplicationController

  def email_to_user
    UserMailer.user_email(email_params).deliver_now
  end

  private
    def email_params
      params.permit(:username, :email)
    end
end