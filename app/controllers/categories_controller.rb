class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:expenses).all
  end

  def create
    Category.create! category_params
    redirect_to categories_path
  end

  def destroy
    Category.find(params[:id]).destroy!
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
