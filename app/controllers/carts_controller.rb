class CartsController < ApplicationController
  before_action :set_cart
  def show
  end

  def add_product
    product = Product.find(params[:product_id])
    cart_item = @cart.cart_items.find_by(product: product)

    if cart_item
      cart_item.update(quantity: cart_item.quantity + 1)
    else
      @cart.cart_items.create(product: product, quantity: 1)
    end

    redirect_to cart_path

  end

  def remove_product
    cart_item = @cart.cart_item.find_by(product_id:params[:product_id])
    cart_item.destroy if cart_item
    redirect_to cart_path
  end

  private

  def set_cart
    @cart = Cart.find(session[:cart_id]) rescue Cart.create
    session[:cart_id] ||= @cart_id
  end
end
