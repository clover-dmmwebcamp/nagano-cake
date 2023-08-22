class Admin::OrdersController < ApplicationController
  def show
  end

  def update

  end
  
  def individual
    @customer = Customer.find(params[:id])
    @orders = @customer.orders.page(params[:page]).per(10).order("created_at desc")
  end
end
