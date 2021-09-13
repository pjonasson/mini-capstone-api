class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    product = Product.all
    render json: product
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
    )
    if product.save
      Image.create(product_id: product.id, url: params[:image_url])
      render json: product
    else
      render json: { errors: product.error.full_messages }, status: 422
    end
  end

  def update
    product = Product.find_by(id: params["id"])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    if product.save
      render json: product
    else
      render json: { errors: product.error.full_messages }, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: "Your product has been removed."
  end
end
