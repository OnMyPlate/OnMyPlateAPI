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

  private

    def bookmark_params
      params.require(:bookmark).permit(:bookmarked, :user_id, :food_id)
    end
end