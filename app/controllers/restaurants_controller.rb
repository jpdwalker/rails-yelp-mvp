class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    new_review

  end

  def new
    @restaurant = Restaurant.new
  end

  def edit

  end

  def create

  @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new_review
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create_review
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
