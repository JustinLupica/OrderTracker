class CustomersController < ApplicationController
    before_action :authorize
    helper_method :sort_column, :sort_direction

    def index
        @customers = Customer.order(sort_column + " " + sort_direction)
    end

    def show
        @customer = Customer.find_by(id: params[:id])
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer.save 
            redirect_to customers_path
        else
            @errors = @customer.errors.full_messages
            render :new
        end
    end

    def destroy
        @orders = Order.where(customer_id: params[:id])
        @orders.each do |order|
            order.destroy
        end
        customer = Customer.find_by(id: params[:id])
        if customer.destroy
            flash[:notice] = "Customer Deleted"
            redirect_to customers_path
        else
            @errors = @order.errors.full_messages
            redirect_to customers_path
        end
    end

    private
    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email)
    end

    def sort_column
        Customer.column_names.include?(params[:sort]) ? params[:sort] : "last_name"
    end

    def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end

