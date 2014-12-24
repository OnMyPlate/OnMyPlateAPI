class BookmarksController < ApplicationController

  def index
    @bookmarks = bookmarks.all
  end
end