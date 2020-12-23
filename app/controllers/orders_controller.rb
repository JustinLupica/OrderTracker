class OrdersController < ApplicationController
    before_action :current_user

    def show
        @order = Order.find_by(id: params[:id])
    end

    def index
        @orders = Order.all 
    end

    def new
        customer = Customer.find(params[:customer_id])
        @order = customer.orders.new

    #  @order = Order.new
    #  @customer = Customer.find_by(id: params[:customer_id])
    end

    def create
        @order = Order.new(order_params)
        # @order.customer = Customer.find_or_create_by(id: params[:order][:customer][:id])
        # binding.pry
        if @order.save
            flash[:notice] = "Order created successfully"
            redirect_to customer_order_path(@order)
        else
        @errors = @order.errors.full_messages
        render :new
        end
    end

    def edit
        @order = Order.find_by(id: params[:id])
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
        params.require(:order).permit(:pickup_date, product_ids: [], customer_attributes: [:first_name, :last_name])
    end
end
