# frozen_string_literal: true

class ItemOrdersController < ApplicationController
  def create
    ItemOrder.create!(order_id: current_order.id, item_id: params[:id])
  end

  def update; end

  def destroy
    @item_order = ItemOrder.find(params[:id])
    @item_order.destroy success: 'Item was successfully deleted.'
    redirect_to :back
  end
end
