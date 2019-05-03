# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @order = Order.all
  end

  def show
    @orders = Order.find(params[:id])
  end

  def new; end

  def update; end

  def destroy; end
end
