class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def create
    Product.create(product_params)
    redirect_to root_path
  end
  private
  def product_params
    params.require(:product).permit(:name, :brand, :description)
  end
end
