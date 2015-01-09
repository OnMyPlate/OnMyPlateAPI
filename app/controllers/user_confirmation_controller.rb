class UserConfirmationController < ApplicationController

  def email_to_user
    UserMailer.user_email(email_params).deliver_now
    render json: {sent: true, confirmed: false}, status: 200
  end

  def confirm_member
    User.email_confirmed(true)
    redirect_to 'http://localhost:9000/#/login'
  end

  def get_confirm
    if User.isConfirmed
      render json: {sent: true, confirmed: true}, status: 200
    else
      render json: {sent: true, confirmed: false}, status: 200
    end
  end

  private
    def email_params
      params.permit(:username, :email)
    end
end