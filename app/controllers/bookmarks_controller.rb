class BookmarksController < ApplicationController
  def index
    @likes = current_user.likes
  end
end
