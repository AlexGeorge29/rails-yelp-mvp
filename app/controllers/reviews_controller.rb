class ReviewsController < ApplicationController

def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
end

  def create
    # POST /restaurants/:restaurant_id/reviews
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)

    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

# def show

# end

private

def review_params
  params.require(:review).permit(:content, :rating, :restaurant)
end
end

# params.require(:review).permit(:content)
