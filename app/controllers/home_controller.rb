# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_current_cart
  def index; end

  private

  def set_current_cart
    if session[:cart_id]
      Cart.find(session[:cart_id])
    else
      current_cart = Cart.create(user_id: current_user.id)
      session[:cart_id] = current_cart.id
      current_cart
    end
  end
end
