class MenuController < ApplicationController
  def index
    @section_names = {"breakfast" => "Breakfast", "lunch" => "Lunch", "dinner" => "Dinner", "drinks" => "Drinks"}

    @menu_items = Hash.new

    @menu_items['breakfast'] = MenuItem.where(section: 'breakfast')
    @menu_items['breakfast'] = [] if @menu_items['breakfast'] == nil

    @menu_items['lunch'] = MenuItem.where(section: 'lunch')
    @menu_items['lunch'] = [] if @menu_items['lunch'] == nil

    @menu_items['dinner'] = MenuItem.where(section: 'dinner')
    @menu_items['dinner'] = [] if @menu_items['dinner'] == nil

    @menu_items['drinks'] = MenuItem.where(section: 'drinks')
    @menu_items['drinks'] = [] if @menu_items['drinks'] == nil
  end
end
