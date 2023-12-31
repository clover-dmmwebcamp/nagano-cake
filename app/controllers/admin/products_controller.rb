class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @category = Category.all
    @products = Product.page(params[:page])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @categories = Category.all
    if @product.save
      flash[:notice] = "商品情報を登録しました"
      redirect_to admin_product_path(@product)
    else
      render "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    @product = Product.find(params[:id])
    @categories = Category.all
    if @product.update(product_params)
      flash[:notice] = "商品情報を変更しました"
      redirect_to admin_product_path(@product)
    else
      render "edit"
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_image, :name, :introduction, :category_id, :without_tax, :is_active)
  end

end
