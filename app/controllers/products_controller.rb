class ProductsController < ApplicationController
  def kobe_jersey
    product = Product.first
    render json: product.as_json
  end

  def all_product
    product = Product.all
    render json: product.as_json
  end

  def von
    product = Product.second
    render json: product.as_json
  end

  def chris
    product = Product.third
    render json: product.as_json
  end
end
