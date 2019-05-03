# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.all
    @item_sample = @items.sample(4)
    @user = current_or_guest_user
    @order = current_order
  end
end
