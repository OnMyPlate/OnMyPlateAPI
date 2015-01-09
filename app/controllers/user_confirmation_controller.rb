class UserConfirmationController < ApplicationController

  def email_to_user
    UserMailer.user_email(email_params).deliver_now
    render json: {sent: true, confirmed: false}, status: 200
  end

  def confirm_member
    @user = User.find_by(username: params[:username])
    @user.update({status: "member"})
    redirect_to 'http://localhost:9000/#/login'
  end

  def get_confirm
    @user = User.find_by(email: params[:email])
    if @user.status == "member"
      render json: {sent: true, confirmed: true}, status: 200
    elsif @user.status == "admin"
      render json: {admin: true}, status: 200
    else
      render json: {sent: true, confirmed: false}, status: 200
    end
  end

  private
    def email_params
      params.permit(:username, :email)
    end
end