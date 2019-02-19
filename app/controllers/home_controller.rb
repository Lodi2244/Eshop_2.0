# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_current_cart
  def index; end

  private

  def set_current_cart
    @cart = current_cart
  end
end
