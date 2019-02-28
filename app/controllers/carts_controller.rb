# frozen_string_literal: true

class CartsController < ApplicationController
  def show; end

  private

  def cart_content
    @order = current_order
    @item_orders = @order.item_orders
  end
end
