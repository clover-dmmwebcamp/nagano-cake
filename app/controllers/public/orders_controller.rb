class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

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
    @order.name = @customer.first_name
    @delivery_cost = 800
    @total = @cart_products.inject(0) { |sum, product| sum + product.subtotal }
    @total_pay = @total + @delivery_cost

    # select_addressで選択された番号をもとに住所を変更する。
    if params[:order][:select_address] == "0"
      @order.postcode = @customer.postcode
      @order.address = @customer.address
      @order.name = @customer.full_name
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

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id

    if @order.save
      current_customer.cart_products.each do |cart_product|
        @order_detail = OrderDetail.new
        @order_detail.product_id = cart_product.product_id
        @order_detail.order_id = @order.id
        @order_detail.quantity = cart_product.quantity
        @order_detail.include_tax = (cart_product.product.without_tax * 1.1).floor
        @order_detail.save
      end
      redirect_to complete_orders_path
      current_customer.cart_products.destroy_all
    else
      flash.now[:notice] = "入力情報を確認してください。"
      redirect_to new_order_path
    end

  end

  def complete
    # 文字表示のみのため不要
  end

  def index
    @orders_all = current_customer.orders
    @orders = @orders_all.page(params[:page])
  end

  def show
    @order = Order.find(params[:id])
  end

private
  def order_params
    params.require(:order).permit(:customer_id, :pay_type, :postcode, :address, :name, :delivery_cost, :total_pay)
  end
end
