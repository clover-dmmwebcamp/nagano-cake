class Public::ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.page(params[:page])
    @product_all = Product.all
  end

  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @cart_product = CartProduct.new
  end
end
