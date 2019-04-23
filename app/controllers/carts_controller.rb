# frozen_string_literal: true

class CartsController < ApplicationController
  include Cart
  def show
    @order = current_order
    @item_orders = @order.item_orders
  end
end
