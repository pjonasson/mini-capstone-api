class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "Carted")
    calculated_subtotal = 0
    carted_products.each do |carted_products|
      calculated_subtotal += carted_products.quantity * carted_products.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if order.save
      carted_products.update_all(status: "Purchased", order_id: order.id)
      render json: order, include: "carted_products.product"
    else
      render json: { errors: order.errors.full_messages }, status: 422
    end
  end

  def show
    order = Order.find_by(id: params["id"], user_id: current_user.id)
    render json: order, include: "carted_products.product"
  end

  def index
    order = current_user.orders
    render json: order, include: "carted_proucts.product"
  end
end
