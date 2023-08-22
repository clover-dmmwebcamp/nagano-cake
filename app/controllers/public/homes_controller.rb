class Public::HomesController < ApplicationController
  def top
    @categories = Category.all
    @products = Product.order("created_at DESC").limit(4)
  end

  def about
  end
end
