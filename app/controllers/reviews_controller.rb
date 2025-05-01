class ReviewsController < ApplicationController

  def new
    @review = Review.new()
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(create_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurants_path(@restaurant), notice: "Review added successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def create_params
    params.require(:review).permit(:rating, :content)
  end

  def valid_submit(params)
    params[review: :rating] != ""
  end
end
