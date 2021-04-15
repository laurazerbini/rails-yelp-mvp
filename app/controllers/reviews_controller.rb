class ReviewsController < ApplicationController
def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
end

def create
  #if statement for valid params?
  # else?
end

end
