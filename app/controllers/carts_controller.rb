# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @cart = current_order
    @order_total = @cart.total
  end
end
