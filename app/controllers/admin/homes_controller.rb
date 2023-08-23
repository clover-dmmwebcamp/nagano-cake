class Admin::HomesController < ApplicationController
  def top
    if params[:customer_id]
      @customer = Customer.find(params[:customer_id])
      @orders = @customer.orders.page(params[:page])
    else
      @orders = Order.page(params[:page])
    end
  end
end
