class CommentsController < ApplicationController

  def create
    #binding.pry
    @comment = Comment.new(comment_params)

    red_path = "/articles/" + @comment.article.id.to_s

    if @comment.save
      flash[:notice] = "Comment was successfully created."
      redirect_to red_path
    else
      flash[:alert] = "Your message failed to be saved!"
      redirect_to red_path
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :comment, :article_id)
  end

end
