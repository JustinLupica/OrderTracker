class OrdersController < ApplicationController

    def show
        @order = Order.find_by(params[:id])
    end

    def index
        @orders = Order.all 
    end

    def new
        @order = Order.new
    end

    def create
        order = Order.create(order_params)
        redirect_to order_path(order)
    end

    def edit
        @order = Order.find_by(params[:id])
    end

    def update
        order = Order.find_by(params[:id])
        order.update(order_params)
        redirect_to order_path(order)
    end

    def destroy
        order = Order.find_by(params[:id])
        order.destroy
        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:pickup_date)
    end
end
