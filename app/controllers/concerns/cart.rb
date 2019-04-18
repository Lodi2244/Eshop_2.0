# frozen_string_literal: true

module Cart
  def current_cart
    if session[:order_id]
      Order.find(session[:order_id])
    else
      cart = Order.create(user_id: current_user.id)
      session[:order_id] = cart.id
      cart
    end
  end
end
