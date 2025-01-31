class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_cart

  private

  def set_cart
    @cart = Cart.find(session[:cart_id]) rescue Cart.create
    session[:cart_id] ||= @cart.id
  end
end
