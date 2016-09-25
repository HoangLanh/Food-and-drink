class Admin::CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :select_parent
  def index
    @categories = @categories.children.order("parent_id")
  end

  def new
  end

  def create
    if @category.save
      flash[:success] = t "controllers.flash.common.create_success",
        objects: t("activerecord.model.category")
      redirect_to admin_categories_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update_attributes category_params
      flash[:success] = t "controllers.flash.common.update_success",
        objects: t("activerecord.model.category")
      redirect_to admin_categories_url
    else
      render :edit
    end
  end

  def destroy
    if @category && @category.destroy
      flash[:success] = t "controllers.flash.common.destroy_success",
        objects: t("activerecord.model.category")
    else
      flash[:danger] = t "controllers.flash.common.destroy_error",
        objects: t("activerecord.model.category")
    end
    redirect_to admin_categories_url
  end

  private
  def category_params
    params.require(:category).permit :title, :parent_id
  end

  def select_parent
    @parent =Category.parent_category.collect {|category| [category.title, category.id]}
  end
end
