class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

    def post_params
      params.require(:post).permit(:name, :rating, :image, :review, :user_id)
    end
end