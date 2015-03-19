class LikesController < ApplicationController

  def index
    @likes = Like.all
  end

  def show
    @like = Like.find(params[:id])
  end

  def create
    @like = Like.new(like_params)

    # @like.user_id = get_user(get_token).id

    if @like.save
      render json: @like, status: :created
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy

    head :no_content
  end

  private

    def like_params
      params.require(:like).permit(:post_id, :user_id)
    end

    def get_token
      token = request.headers.env['HTTP_AUTHORIZATION'].gsub(/Token token=/, "")
    end

    # def get_user(token)
    #   User.where(token: token)[0]
    # end

end