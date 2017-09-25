class OrdersController < ApplicationController
  def show_cart
    begin
      @cart = JSON.parse(params[:cart])
    rescue

    end

    @cart_items = Hash.new

    @delivery_cost = 20000
    @total_cost = 0

    if @cart != nil
      @cart.each do |k, v|
        item = MenuItem.find(k)
        if item != nil
          @cart_items[k] = Hash.new
          @cart_items[k]["id"] = k
          @cart_items[k]["name"] = item.name
          @cart_items[k]["price"] = item.price
          @cart_items[k]["quantity"] = v
          @cart_items[k]["total"] = v * item.price
          @total_cost += @cart_items[k]["total"]
        end
      end
    end

    @cart_items_json = JSON.generate(@cart_items)
    @total_cost += @delivery_cost
  end

  def create
    anOrder = Order.new
    anOrder.user_name = params[:user_name]
    anOrder.address = params[:address]
    anOrder.cart_items = params[:cart_items]
    anOrder.delivery_cost = params[:delivery_cost]
    anOrder.total_cost = params[:total_cost]
    if anOrder.save
      @cart_items = JSON.parse(anOrder.cart_items)
      @delivery_cost = anOrder.delivery_cost
      @total_cost = anOrder.total_cost
      @user_name = anOrder.user_name
      @address = anOrder.address
      @created_at = anOrder.created_at.strftime("%A, %B %d %T")
      render "thank_you/index"
    else
      render "something_wrong/index"
    end
  end
end
