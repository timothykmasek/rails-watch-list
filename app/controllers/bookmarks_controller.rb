class BookmarksController < ApplicationController

    def create
    @bookmark = Bookmark.new(bookmark_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark.destroy
  end
end
