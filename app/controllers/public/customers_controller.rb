class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      flash[:notice] = "登録情報を変更しました"
      redirect_to customers_mypage_path
    else
      render :edit
    end
  end

  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行しました"
    redirect_to root_path
  end

  def check
  end

   private

   def customer_params
     params.require(:customer).permit(
       :first_name,
       :last_name,
       :first_name_kana,
       :last_name_kana,
       :postcode,
       :address,
       :phone_number,
       :email
       )
   end
end
