class CommentsController < ApplicationController
  def create
    @artcl_curr = Article.find(params[:article_id])
    @artcl_curr.comments.create(comment_params)
    redirect_to @artcl_curr
  end


  private

  def comment_params
    params.require(:comment).permit(:author, :body) 
  end
end
