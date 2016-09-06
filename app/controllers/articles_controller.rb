class ArticlesController < ApplicationController

  def new

  end


  def index
    @articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
  end


  def create
    @artcl = Article.new(article_params)
    if @artcl.valid?
      @artcl.save
      redirect_to @artcl
    else
      render action: 'new'
    end
  end



  private

  def article_params
    params.require(:article).permit(:title, :text) 
  end

end
