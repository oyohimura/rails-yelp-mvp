class ReviewsController < ApplicationController
  before_action :all_reviews, only: [:index]
  before_action :find_restaurant, only: [:create, :new]

  def index; end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def all_reviews
    @reviews = Review.all
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
