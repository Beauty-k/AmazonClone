class MenuController < ApplicationController
  def render_partial
    render partial: "amazon_clone/menu"
  end
end
