class Admin::ProductsController < ApplicationController
  load_and_authorize_resource
  before_action :load_category
  def index
  end

  def new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = t "controllers.flash.common.create_success",
        objects: t("activerecord.model.product")
      redirect_to admin_products_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update_attributes product_params
      flash[:success] = t "controllers.flash.common.update_success",
        objects: t("activerecord.model.product")
      redirect_to admin_products_url
    else
      render :edit
    end
  end

  def destroy
    if @product && @product.destroy
      flash[:success] = t "controllers.flash.common.destroy_success",
        objects: t("activerecord.model.product")
    else
      flash[:danger] = t "controllers.flash.common.destroy_error",
        objects: t("activerecord.model.product")
    end
    redirect_to admin_products_url
  end

  private
  def product_params
    params.require(:product).permit Product::ATTRIBUTES_PARAMS
  end
  
  def load_category
    @category = Category.parent_category.order(:title)
  end
end
