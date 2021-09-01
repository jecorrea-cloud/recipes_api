class CommentsController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def create
        comment = @user.comments.create(comment_params)
        render json: comment, status: :created
    end

    def destroy
        comment = @user.comments.find(params[:id])
        comment.destroy
        render json: comment
    end

    def update
        comment = @user.comments.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end

    private

    def comment_params 
        params.permit(:comment, :like, :dislike)
    end
end
