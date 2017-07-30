class ArticlesController < ApplicationController
  def show
    # /articles/:id
    # /articles/1

    @article = Article.find(params[:id])
    @comments = @article.comments

  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Article was successfully created."
      redirect_to @article
    else
      render "new"
    end

  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author)
  end
end
