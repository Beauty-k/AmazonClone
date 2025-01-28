class AmazonCloneController < ApplicationController
  # def index
  #  
  # end

  # def create
    
  # end
  # def show
    
  # end

    def render_form
      # respond_to do|format|
      #   format.html { render partial: "amazon_clone/signin" }
      #   format.turbo_stream { render partial: "amazon_clone/signin" }
      # end
      render partial: "amazon_clone/signin"
    end

    def render_signup
      render partial: "amazon_clone/signup"
    end

  
end
