class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      order_id: nil,
    )
    if carted_products.save
      render json: carted_products
    else
      render json: { errors: carted_products.errors.full_message }
    end
  end

  def index
    carted_products = CartedProduct.where(user_id: current_user.id).where(status: "Carted")
    render json: carted_products
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id])
    carted_product.status = "Removed"
    carted_product.save
    render json: { message: "Carted product removed successfully!" }
  end
end
