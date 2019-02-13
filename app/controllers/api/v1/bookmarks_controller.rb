class Api::V1::BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:update]
  def index
    @bookmarks = Bookmark.all
    render json: @bookmarks
  end

  def update
    @bookmark.update(bookmark_params)
    if @bookmark.save
      render json: @bookmark, status: :accepted
    else
      render json: { errors: @bookmark.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def bookmark_params
    params.permit(:title, :content)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

end
