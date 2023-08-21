class Public::CartProductsController < ApplicationController
  def index
  end

  def update

  end

  def destroy
    @cart_product = Cart_product.find(params[:id])
    @cart_product.destroy
    redirect_to request.referer
  end

  def destroy_all
    
  end

  def create

  end
end
