class CommentsController < ApplicationController
  def create
    @artcl_curr = Article.find(params[:article_id])
    if User.find_by username: comment_params[:comment][:author] && !user_signed_in?
      @artcl_curr.comments.create(comment_params)
      redirect_to @artcl_curr
    else
      redirect_to articles_url
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:author, :body) 
  end
end
