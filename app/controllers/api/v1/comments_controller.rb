class Api::V1::CommentsController < ApplicationController

  before_action :find_comment, only: [:show, :update, :destroy]

    # GET /events
    def index
      @comments = Comment.all
      render json: @comments
    end

    # PATCH /events/:id
    def update
      @comment.update(comment_params)
      if @comment.save
        render json: @comment, status: :accepted
      else
        render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def comment_params
      params.permit(:user_id, :content)
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end


end
