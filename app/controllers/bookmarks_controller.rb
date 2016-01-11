class BookmarksController < ApplicationController
  include BookmarksHelper


  def index
    if current_user.present?
    	@bookmarks = current_user.bookmarks
      # @bookmarks = current_user.bookmarks
      # @bookmarks = current_user
      # @bookmark = @bookmarks
      # @bookmarks = Bookmark.all
    else
      redirect_to new_session_path
    end
  end

  def new
  	@bookmark = Bookmark.new
  end

  def create
    @user = User.find(current_user.id)
  	@bookmark = Bookmark.create(url: params[:bookmark][:url], user_id: @user.id)
  	redirect_to bookmarks_path
  end

  def show
    if current_user.present?
      @bookmark = Bookmark.find(params[:id])
    else
      redirect_to new_session_path
    end
  end

end
