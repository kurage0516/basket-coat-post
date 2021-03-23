class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to basket_area_path(@comment.basket_area)
    else
      @basket_area = @comment.basket_area
      @comments = @basket_area.comments
      render 'basket_areas/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, basket_area_id: params[:basket_area_id])
  end
end
