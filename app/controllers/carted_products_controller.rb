class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    cart = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      order_id: nil,
    )
    if cart.save
      render json: cart
    else
      render json: { errors: cart.errors.full_message }
    end
  end
end
