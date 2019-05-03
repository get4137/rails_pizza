class OrdersController < ApplicationController
  USERS = { 'admin' => 'admin' }.freeze
  before_action :authenticate

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end

  def order_params
    params.require(:order).permit(:title, :description, :name, :email, :phone)
  end
end