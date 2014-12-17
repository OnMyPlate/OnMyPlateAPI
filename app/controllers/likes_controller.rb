class LikesController < ApplicationController

  def show
    @like = Like.find(params[:id])
  end

end