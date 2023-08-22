class SearchesController < ApplicationController
  def search
    @content = params[:content]
    @results = Product.partial_search(@content)
  end
end
