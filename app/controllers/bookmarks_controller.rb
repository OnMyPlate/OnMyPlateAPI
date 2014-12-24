class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
        render json: @bookmark, status: :created
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])

    @bookmark.destroy

    head :no_content
  end

  private

    def bookmark_params
      params.require(:bookmark).permit(:bookmarked, :user_id, :food_id)
    end
end