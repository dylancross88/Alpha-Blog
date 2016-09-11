class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.paginate(page: params[:page], per_page: 5)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Category created successfully"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    if @category.destroy
      flash[:danger] = "Category deleted successfully"
      redirect_to categories_path
    else
      flash.now[:danger] = "Unable to delete category"
      render 'index'
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

    def set_category
      Category.find(params[:id])
    end

end