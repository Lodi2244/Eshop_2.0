# frozen_string_literal: true

module CurrentCart
  def current_cart
    if session[:order_id]
      Order.find(session[:order_id])
    else
      current_cart = Order.create(user_id: current_user.id)
      session[:order_id] = current_cart.id
      current_cart
    end
  end
end
