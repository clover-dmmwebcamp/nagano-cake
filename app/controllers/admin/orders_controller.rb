class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @total = @order.order_details.inject(0) {|sum, order_detail| sum + order_detail.total_price }
  end

  def update
    @order = Order.find(params[:id])
    @order_details = OrderDetail.where(order_id: params[:id])
    if @order.update(order_params)
      if @order.status == "check"
        @order_details.update_all(making_status: "wait")
      end
    redirect_to admin_order_path(@order)
    end
  end

  def individual
    @customer = Customer.find(params[:id])
    @orders = @customer.orders.page(params[:page]).order("created_at desc")
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end
end
