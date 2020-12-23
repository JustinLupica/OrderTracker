class CustomersController < ApplicationController
    def index
        @customers = Customer.all
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
            @errors = @order.errors.full_messages
            render :new
        end
    end

    private
    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email)

    end
end

