class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new(category_params)
    if @category.valid?
      @category.save
      puts "Category was successfully created!"
    else
      puts "Failed to create category. ):"
    end
  end

  private

  def category_params
    params.require(:categories).permit(:title)
  end
end
