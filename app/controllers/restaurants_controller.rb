class RestaurantsController < ApplicationController
  before_action :all_restaurants, only: [:index]
  before_action :find_restaurant, only: [:show]

  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # assigns a newly created but unsaved restaurant as @restaurant (FAILED - 1)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      @restaurant = Restaurant.new
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def all_restaurants
    @restaurants = Restaurant.all
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
