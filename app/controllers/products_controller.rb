class ProductsController < ApplicationController
  def index
  end

  def search
    @products = Product.search(search_params[:search_text])
    render :index
  end

  private
  def search_params
    params.permit(:search_text)
  end
end
