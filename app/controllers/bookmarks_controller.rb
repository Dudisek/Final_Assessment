class BookmarksController < ApplicationController
  def index
  	@bookmark = Bookmark.all
  end

  def new
  	@bookmark = Bookmark.new
  end

  def create
  	@bookmark = current_user.bookmarks.new(url: params[:bookmark])
  	@bookmark.save
  	redirect_to bookmarks_path
  end

  def show
    @bookmark = Bookmark.find(:id)
  end

end
