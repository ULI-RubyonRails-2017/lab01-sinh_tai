class MenuController < ApplicationController
  def index
    @section_names = {"breakfast" => "Breakfast", "lunch" => "Lunch", "dinner" => "Dinner", "drinks" => "Drinks"}

    @section_filter = params[:section_filter] || cookies[:section_filter];
    @section_filter = "all" if @section_filter == nil;
    cookies[:section_filter] = @section_filter;

    @sort = params[:sort] || cookies[:sort];
    cookies[:sort] = @sort;

    @menu_items = Hash.new

    if @section_filter == "all" or @section_filter == "breakfast"
      @menu_items['breakfast'] = MenuItem.where(section: 'breakfast')
      @menu_items['breakfast'] = [] if @menu_items['breakfast'] == nil
    end

    if @section_filter == "all" or @section_filter == "lunch"
      @menu_items['lunch'] = MenuItem.where(section: 'lunch')
      @menu_items['lunch'] = [] if @menu_items['lunch'] == nil
    end

    if @section_filter == "all" or @section_filter == "dinner"
      @menu_items['dinner'] = MenuItem.where(section: 'dinner')
      @menu_items['dinner'] = [] if @menu_items['dinner'] == nil
    end

    if @section_filter == "all" or @section_filter == "drinks"
      @menu_items['drinks'] = MenuItem.where(section: 'drinks')
      @menu_items['drinks'] = [] if @menu_items['drinks'] == nil
    end

    @menu_items.each do |k, v|
      if @sort == "alpha"
        sorted = @menu_items[k].sort_by { |item| item.name}
        @menu_items[k] = sorted
      elsif @sort == "l2h"
        sorted = @menu_items[k].sort_by { |item| item.price}
        @menu_items[k] = sorted
      elsif @sort == "h2l"
        sorted = @menu_items[k].sort_by { |item| item.price}.reverse
        @menu_items[k] = sorted
      end
    end
  end
end
