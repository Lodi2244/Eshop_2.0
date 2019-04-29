# frozen_string_literal: true

module ApplicationHelper
  def current_order
    if session[:order_id].nil?
      order = Order.create!(user_id: current_or_guest_user.id)
      session[:order_id] = order.id
    else
      order = Order.find_by(id: session[:order_id])
      if order.nil?
        session[:order_id] = nil
        current_order
      end
    end
    order
  end
end
