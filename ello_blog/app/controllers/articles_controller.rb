class ArticlesController < ApplicationController
  # A frequent practice is to place the standard
  # CRUD actions in each controller in the following
  # order: index, show, new, edit, create, update and destroy.

  # GET all articles: /articles
  def index
    @articles = Article.all
    # Automatically looks for and renders views/articles/index.html.erb
    # Have access to instance var in the view and can redirect to it directly
  end

  # GET one article: /articles/:id
  def show
    @article = Article.find(params[:id])
    # Automatically looks for and renders views/articles/show.html.erb
  end

  # GET FORM for new article: articles/new
  def new
    @article = Article.new
  end

  # GET FORM to edit one article: articles/:id/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST new article: /articles
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # PUT updates to one article: articles/:id
  def update
    @article = Article.find(params[:id])

    # Can pass only the attributes you want to update
    if @article.update(article_params)
      redirect_to @article
    else
      render "edit"
    end
  end

  # DELETE one article: articles/:id
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
   def article_params
    params.require(:article).permit(:author_id, :category_id, :title, :body, :header_img_path)
   end
end
