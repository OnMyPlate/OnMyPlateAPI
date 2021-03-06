class PostsController < ApplicationController
  
  def index
    @posts = Post.all.includes(:likes, :food_image)
  end

  def show
    @post = Post.find(params[:id])
    @food_image = @post.food_image
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = get_user(get_token).id

    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])
    
    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    head :no_content
  end

  private

    def post_params
      params.require(:post).permit(:rating, :review, :user_id, :food_id)
    end

    def get_token
      token = request.headers.env['HTTP_AUTHORIZATION'].gsub(/Token token=/, "")
    end

    def get_user(token)
      User.where(token: token)[0]
    end
end