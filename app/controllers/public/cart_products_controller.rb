class Public::CartProductsController < ApplicationController
  def index
    @cart_products = current_customer.cart_products.all
    @total = @cart_products.inject(0){ |sum, product| sum + product.subtotal}
  end

  def update
    @cart_product = CartProduct.find(params[:id])
    @cart_product.update(cart_product_params)
    redirect_to request.referer
  end

  def destroy
    @cart_product = CartProduct.find(params[:id])
    @cart_product.destroy
    redirect_to request.referer
  end

  def destroy_all
    @cart_products = current_customer.cart_products.all
    @cart_products.destroy
    redirect_to request.referer
  end
  
  # # ネットから
  # def create
  #   @cart_product = CartProduct.new(cart_product_params)
  #   @cart_product.customer_id = current_customer.id
  #   @cart_products = current_customer.cart_products.all
  #     @cart_products.each do |cart_product|
  #       if cart_product.product_id == @cart_product.product_id
  #       new_quantity = cart_product.quantity + @cart_product.quantity
  #       cart_product.update_attribute(:quantity, new_quantity)
  #       @cart_product.delete
  #       end
  #     end

  #     @cart_product.save
  #     redirect_to cart_products_path
  # end
  
  # Cチーム
  # def create
  #   @cart_product = current_customer.cart_products.new(cart_product_params)
  #   if current_customer.cart_products.find_by(product_id: params[:cart_product][:product_id]).present?
  #     cart_product = current_customer.cart_products.find_by(product_id: params[:cart_product][:product_id])
  #     cart_product.quantity += params[:cart_product][:quantity].to_i
  #     cart_product.save
  #     flash[:notice] = "商品を追加しました"
  #     redirect_to cart_products_path

  #   elsif @cart_product.save
  #     flash[:notice] = "商品を追加しました"
  #     @cart_products_all = current_customer.cart_products.all
  #     redirect_to cart_products_path

  #   else

  #     redirect_to products_path
  #   end
  # end
  
  
  # Bチーム
  # def create
  #   @cart_product = CartProduct.new(cart_product_params)
  #   @cart_product.customer_id = current_customer.id

  #   @present_cart_product = CartProduct.find_by(product: @cart_product.product)
  #   if @present_cart_product.present? and @cart_product.valid?
  #     @cart_product.quantity += @present_cart_product.quantity
  #     @present_cart_product.destroy
  #   end

  #     if @cart_product.save
  #     redirect_to cart_products_path
  #     else
  #     redirect_to products_path
  #     end
  # end
  
  # def create
  #   @cart_product = CartProduct.new(cart_product_params)
  #   @cart_product.customer_id = current_customer.id
    
  #   @present_cart_product = CartProduct.find_by(product: @cart_product.product)
  #   if @present_cart_product.present? and @cart_product.valid?
  #     @cart_product.quantity += @present_cart_product.quantity
  #     @present_cart_product.destroy
  #   end
  #   if @cart_product.save
  #   redirect_to cart_products_path
  #   end
  # end
  
  def create
    @cart_product = CartProduct.new(cart_product_params)
    @cart_product.customer_id = current_customer.id
    if @cart_product.save
      redirect_to cart_products_path
    end
  end
  
  private
  
  def cart_product_params
    params.require(:cart_product).permit(:customer_id, :product_id, :quantity)
  end
end
