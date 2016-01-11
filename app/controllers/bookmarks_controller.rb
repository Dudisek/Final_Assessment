class BookmarksController < ApplicationController
  def index
  	@bookamrk = Bookmark.find(:id)
  end

  def new
  	@bookmark = Bookmark.new
  end

  def create
  	bookmark = current_user.bookmarks.new(url: params[:bookmark])
  	bookmark.save
  	redirect_to bookmarks_path
  end
end
