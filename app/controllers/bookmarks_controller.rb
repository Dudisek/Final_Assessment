class BookmarksController < ApplicationController
  def index
  	@bookmark = Bookmark.all
  end

  def new
  	@bookmark = Bookmark.new
  end

  def create
  	@bookmark = current_user.bookmarks.new(url: params[:bookmark][:url])
  	@bookmark.save
  	redirect_to bookmark_path(@bookmark)
  end

  def show
    if current_user.present?
      @bookmark = Bookmark.find(params[:id])
    else
      redirect_to new_session_path
    end
  end

end
