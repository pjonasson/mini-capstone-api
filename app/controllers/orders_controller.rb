class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params["product_id"])
    quantity = params[:quantity].to_i
    subtotal = (product.price * quantity) + (product.tax * quantity)
    tax = product.tax * quantity
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * quantity,
      tax: product.tax * quantity,
      total: subtotal + tax,
    )
    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_message }
    end
  end

  def show
    order = Order.find_by(id: params["id"], user_id: current_user.id)
    render json: order
  end

  def index
    order = current_user.orders
    render json: order
  end
end
