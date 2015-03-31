class CommentsController < ApplicationController
  def index
    @establishment = Establishment.friendly.find(params[:establishment_id])
    @comments = @establishment.comments.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def new
    @establishment = Establishment.friendly.find(params[:establishment_id])
    @comment = Comment.new
  end

  def create
    @establishment = Establishment.friendly.find(params[:establishment_id])
    @comment = @establishment.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to establishment_path(@establishment), notice: "Thanks! Your comment has been added!"
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @establishment, notice: "Comment was deleted"
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :stars)
  end
end
