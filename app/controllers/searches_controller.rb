class SearchesController < ApplicationController
  def search
    @content = params[:content]
    @products = Product.partial_search(@content)
    @results = @products.page(params[:page])
  end
end

   