class BookmarksController < ApplicationController
  def index
    @bookmarks.user.id = current_user.id
    @bookmarks = current_user.likes
  end
end
