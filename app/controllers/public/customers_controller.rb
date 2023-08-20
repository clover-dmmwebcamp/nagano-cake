class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!
  
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update

  end

  def withdraw

  end

  def check
  end
  
   private

   def customer_params
     params.require(:customer).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:postcode,:address,:phone_number,:email)
   end
end
