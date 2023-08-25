class Public::CartProductsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @cart_product = current_customer.cart_products.new
    @cart_products = current_customer.cart_products.all
    @total = @cart_products.inject(0){ |sum, product| sum + product.subtotal}
  end

  def update
    @cart_product = CartProduct.find(params[:id])
    if @cart_product.update(cart_product_params)
      redirect_to request.referer
      flash[:notice] = "数量を変更しました"
    else
      redirect_to request.referer
      flash[:notice] = "数量を選択してください"
    end
  end

  def destroy
    @cart_product = CartProduct.find(params[:id])
    @cart_product.destroy
    redirect_to request.referer
  end

  def destroy_all
    @cart_products = current_customer.cart_products.all
    @cart_products.destroy_all
    redirect_to request.referer
  end

  def create
    @cart_product = current_customer.cart_products.new(cart_product_params)
    if current_customer.cart_products.find_by(product_id: params[:cart_product][:product_id]).present?
      if @cart_product.quantity.present?
        cart_product = current_customer.cart_products.find_by(product_id: params[:cart_product][:product_id])
        cart_product.quantity += params[:cart_product][:quantity].to_i
        cart_product.save
        flash[:notice] = "商品を追加しました"
        redirect_to cart_products_path
      else
        redirect_to request.referer
        flash[:notice] = "商品を追加できませんでした/数量を選択してください"
      end
    elsif @cart_product.save
      flash[:notice] = "商品を追加しました"
      @cart_products_all = current_customer.cart_products.all
      redirect_to cart_products_path
    else
      redirect_to request.referer
      flash[:notice] = "商品を追加できませんでした/数量を選択してください"
    end
  end


  private


  def cart_product_params
    params.require(:cart_product).permit(:product_id, :quantity)
  end
end
