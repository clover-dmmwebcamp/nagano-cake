class Admin::CategoriesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "ジャンル名を登録しました"
      redirect_to admin_categories_path
    else
      @categories = Category.all
      render "index"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "ジャンル名を変更しました"
      redirect_to admin_categories_path
    else
      render "edit"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
