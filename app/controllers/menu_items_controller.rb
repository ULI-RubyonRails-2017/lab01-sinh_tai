class MenuItemsController < ApplicationController
  def show
    @menu_item = MenuItem.find(params[:id])

    total = 0
    cnt = 0
    @menu_item.reviews.each do |review|
      total += review.score
      cnt = cnt + 1
    end

    if cnt > 0
      @avg = total.to_f / cnt
    else
      @avg = "N/A"
    end
  end
end
