class UsersController < ApplicationController
  def index
    @users = User.all.includes([:foods, :posts, :likes, :bookmarks])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # :location option is setting the HTTP Location Header
      # :status is for overwriting the HTTP response generated by rails
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    head :no_content
  end

  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render json: {"token" => user.token}
    else
      # The head method can be used to send responses with only headers to the browser.
      head :unauthorized
    end
  end

  def logout
    head :ok
  end

  def is_admin?
    @user = User.find_by(email: params[:email])
    if @user.status == "admin" 
      render json: {admin: true}, status: 200
    else
      render json: {admin: false}, status: 200
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :token, :status)
    end
end