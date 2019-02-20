# frozen_string_literal: true

module CurrentCart
  def current_cart
    if session[:cart_id]
      Cart.find(session[:cart_id])
    else
      current_cart = Cart.create(user_id: current_user.id)
      session[:cart_id] = current_cart.id
      current_cart
    end
  end
end
