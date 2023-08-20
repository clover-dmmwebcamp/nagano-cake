class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
  end

  def check
    @order = Order.new(order_params)
    @customer = current_customer
    @cart_products = @customer.cart_products
    @order.postcode = @customer.postcode
    @order.address = @customer.address
    # Customerモデルにfull_nameを定義して、order.nameに入れる必要あり。↓
    @order.name = @customer.first_name
    @delivery_cost = 800
    @total = @cart_products.inject(0) { |sum, product| sum + product.sum_of_price }
    @total_pay = @total + @delivery_cost

    # select_addressで選択された番号をもとに住所を変更する。
    if params[:order][:select_address] == "0"
      @order.postcode = @customer.postcode
      @order.address = @customer.address
      @order.name = @customer.first_name
    elsif params[:order][:select_address] == "1"
      address = Address.find(params[:order][:address_id])
      @order.postcode = address.postcode
      @order.address = address.address
      @order.name = address.name
    elsif params[:order][:select_address] == "2"
      @order.postcode = params[:order][:postcode]
      @order.address = params[:order][:address]
      @order.name = params[:order][:name]
    end

    if @order.postcode.blank? || @order.address.blank? || @order.name.blank?
      flash.now[:notice] = "正しい住所を入力してください。"
      render :new
    end
  end

  def complete

  end

  def create

  end

  def index
  end

  def show
  end

private
  def order_params
    params.require(:order).permit(:pay_type, :postcode, :address, :name)
  end

end
