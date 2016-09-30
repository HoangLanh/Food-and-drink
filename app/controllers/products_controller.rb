class ProductsController < ApplicationController
  load_and_authorize_resource
  def index
    @products = Product.order("price")
  end

  def show
    @product = Product.find_by id: params[:id]
    unless @product
      flash[:danger] = t "products.show.noproduct"
      redirect_to products_path
    end
  end
end
