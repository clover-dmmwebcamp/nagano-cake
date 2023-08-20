class Admin::ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @categories = Category.all
    if @product.save
      redirect_to admin_product_path(@product)
    else
      render "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update

  end
  
  private
  
  def product_params
    params.require(:product).permit(:product_image, :name, :introduction, :category_id, :without_tax, :is_active)
  end
  
end
