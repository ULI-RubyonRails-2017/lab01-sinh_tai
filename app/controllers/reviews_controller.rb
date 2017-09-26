class ReviewsController < ApplicationController
  def create
    @menu_item = MenuItem.find(params[:menu_item_id])
    @review = @menu_item.reviews.create(review_params)
    redirect_to menu_item_path(@menu_item)
  end

  private
    def review_params
      params.require(:review).permit(:score, :review_text)
    end
end
