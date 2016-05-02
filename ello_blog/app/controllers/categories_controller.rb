class CategoriesController < ApplicationController
  include ApplicationHelper
  # A frequent practice is to place the standard
  # CRUD actions in each controller in the following
  # order: index, show, new, edit, create, update and destroy.

  # GET all categories: /categories
  # def index
  #   @categories = Category.all
  #   # Automatically looks for and renders views/categories/index.html.erb
  #   # Have access to instance var in the view and can redirect to it directly
  # end

  # GET one category: /categories/:id
  def show
    @category = Category.find(params[:id])
    @articles = @category.articles
    # Automatically looks for and renders views/categories/show.html.erb
  end

  # GET FORM for new category: categories/new
  def new
    if admin
      @category = Category.new
    else
      redirect_to categories_path
    end
  end

  # GET FORM to edit one category: categories/:id/edit
  def edit
    if admin
      @category = Category.find(params[:id])
    else
      redirect_to categories_path
    end
  end

  # POST new category: /categories
  def create
    if admin
      @category = Category.new(category_params)

      if @category.save
        redirect_to @category
      else
        render 'new'
      end
    else
      redirect_to categories_path
    end
  end

  # PUT updates to one category: categories/:id
  def update
    if admin
      @category = Category.find(params[:id])

      # Can pass only the attributes you want to update
      if @category.update(category_params)
        redirect_to @category
      else
        render "edit"
      end
    else
      redirect_to categories_path
    end
  end

  # DELETE one category: categories/:id
  def destroy
    if admin
      @category = Category.find(params[:id])
      @category.destroy
    else
      redirect_to categories_path
    end
  end

  private
   def category_params
    params.require(:category).permit(:name)
   end
end
