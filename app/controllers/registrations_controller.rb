class RegistrationsController < ApplicationController
    def index
        @customers = Customer.all
    end
    def new
        @customer = Customer.new
    end
    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            redirect_to root_path,  notice: "Account created successfully"
        else
            render :new
        end
    end

    private

    def customer_params
        params.require(:customer).permit(:Name, :email, :phone_number, :password, :password_confirmation)
    end
end
