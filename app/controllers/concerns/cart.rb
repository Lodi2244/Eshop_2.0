# frozen_string_literal: true

module Cart
  def current_cart
    if session[:order_id]
      @current_cart = Order.find(session[:order_id])
    else
      @current_cart = Order.create(user_id: current_user.id)
      session[:order_id] = @current_cart.id
    end
    @current_cart
  end

  def add_to_cart(item_id, order_id)
      item = Item.find(params[:id])
      item_order = ItemOrder.create(order_id: current_cart.id, item_id: item)
      item_order << item
  end
end
