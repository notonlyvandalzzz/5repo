class ArticlesController < ApplicationController

  before_filter :authenticate_user!

  def new

  end


  def index
    @articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
    @art_comm = @article.comments.all
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

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params) 
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "Article has beed deleted"
    redirect_to articles_url
  end


  private

  def article_params
    params.require(:article).permit(:title, :text) 
  end

end
