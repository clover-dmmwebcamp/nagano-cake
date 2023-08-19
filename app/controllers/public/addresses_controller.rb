class Public::AddressesController < ApplicationController
  def index
    @addresses = Address.all
    @address = Address.new
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new
    @address.user.id = cuurent_castomer.id
    @book.save
    redirect_to request.referer
  end

  def update
    @aderss = Address.find(params[:id])
    @address.update(address_params)
    redirect_to request.referer
  end

  def destroy
    address = Address.find(params[:id])
    address.desroy
    redirect_to request.referer
  end
end
