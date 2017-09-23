class MenuController < ApplicationController
  def index
    @menu_items_breakfast = MenuItem.where(section: 'breakfast')
    @menu_items_breakfast = [] if @menu_items_breakfast == nil

    @menu_items_lunch = MenuItem.where(section: 'lunch')
    @menu_items_breakfast = [] if @menu_items_breakfast == nil

    @menu_items_dinner = MenuItem.where(section: 'dinner')
    @menu_items_breakfast = [] if @menu_items_breakfast == nil

    @menu_items_drinks = MenuItem.where(section: 'drinks')
    @menu_items_breakfast = [] if @menu_items_breakfast == nil
  end
end
