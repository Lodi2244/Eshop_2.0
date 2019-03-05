# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.all
    @item_sample = @items.sample(4)
  end
end
