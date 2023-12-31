class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @addresses = current_customer.addresses.all
    @address = Address.new
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    @addresses = current_customer.addresses.all
    if @address.save
      redirect_to request.referer
      flash[:notice] = "配送先の登録に成功しました"
    else
      render :index
    end
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to addresses_path
      flash[:notice] = "配送先の更新に成功しました"
    else
      render :edit
    end
  end

  def destroy
    address = Address.find(params[:id])
    address.destroy
    redirect_to request.referer
    flash[:notice] = "配送先を削除しました"
  end

  private

  def address_params
    params.require(:address).permit(:postcode, :address, :name)
  end
end