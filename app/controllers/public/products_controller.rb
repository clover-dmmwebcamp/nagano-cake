class Public::ProductsController < ApplicationController
  def index
    @categories = Category.all
    if params[:category_id]
    	@category = Category.find(params[:category_id])
    	@products = @category.products.page(params[:page])
    	@category_product_all = @category.products.all
    else
    	@products = Product.page(params[:page])
    	@product_all = Product.all
    end
  end

  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @cart_product = CartProduct.new
  end
end
