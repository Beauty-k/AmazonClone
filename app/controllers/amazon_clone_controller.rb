class AmazonCloneController < ApplicationController
  # def index
  #   @amazons = AmazonClone.all
  # end

  # def create
    
  # end
  # def show
    
  # end

    def render_form
      respond_to do|format|
        format.html { render partial: "amazon_clone/signin" }
        format.turbo_stream { render partial: "amazon_clone/signin" }
      end
    end

  private

  # def amazon_clone_params
  #   # params.require(:amazon).permit(:search)
  # end
end
