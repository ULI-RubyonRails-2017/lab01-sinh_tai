class MenuItemsController < ApplicationController
  def show
    @menu_item = MenuItem.find(params[:id])
  end
end
