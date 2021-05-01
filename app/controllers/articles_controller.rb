class ArticlesController < ApplicationController
  # will ask authentication to create, update and destroy article
  http_basic_authenticate_with name: "juzer", password: "123", except: [:index, :show]

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  # home
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end

  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end

  end

  def destroy
    @article.destroy

    redirect_to root_path
  end

  private
    # a single function to avoid duplicates
    def find_user
      @article = Article.find(params[:id])
    end
    # whitelist attributes to be saved in the articles model
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
end
