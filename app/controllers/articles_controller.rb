# frozen_string_literal: true

# Articles controller
class ArticlesController < ApplicationController
  around_action :helloworld, only: :index

  def helloworld
    print 'I am around action'
    yield

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
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
      render 'edit'
    end
  end

  def preview
    @article = Article.find(params[:id])
  end

  def search
    @article = Article.find(params[:query])
    print 'Query check kr ra hai:' + params[:query]
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    # yield
    @articles = Article.all
  end

  def all
    # yield
    @articles = Article.where(id: [1, 2, 4])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
