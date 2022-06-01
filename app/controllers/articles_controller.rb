class ArticlesController < ApplicationController
  #http_basic_authenticate_with name: "blog", password: "blog", except: [:index, :show]
  def index
    @articles = Article.all
    # render json: @articles
  end
   
  def show
    @article = Article.find(params[:id])
    # render json: @article
  end
   
  def new
    @article = Article.new
  end
   
  def edit
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'# 可使用符号：edit
    end
  end

  # render :edit
  # render action: :edit
  # render "edit"
  # render "edit.html.erb"
  # render action: "edit"
  # render action: "edit.html.erb"
  # render "articles/edit"
  # render "articles/edit.html.erb"
  # render template: "articles/edit"
  # render template: "articles/edit.html.erb"
  # render "/path/to/blog/app/views/articles/edit"
  # render "/path/to/blog/app/views/articles/edit.html.erb"
  # render file: "/path/to/blog/app/views/articles/edit"
  # render file: "/path/to/blog/app/views/articles/edit.html.erb"
   
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