class SessionsController < ApplicationController
    def new
        
    end

    def create

        if params[:login].blank?
            flash[:alert] = "Please provide an email or phone number."
            redirect_to root_path and return
          end
        customer = if params[:login].present? && params[:login].match?(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
                        Customer.find_by(email: params[:login])
                    else
                        Customer.find_by(phone_number: params[:login])
                    end
        
        if customer
            session[:customer_id] = customer.id
            flash[:notice] = "Logged in successfully."
            redirect_to root_path 
        else
            flash[:alert] = "Invalid login credentials."
            redirect_to render_form_path
        end
        
    
    end

    def destroy
        session[:customer_id] = nil
        flash[:notice] = "Logged out successfully."
        redirect_to root_path
    end

    private

    def info_params
        params.require(:customer).permit(:login)
    end
end
