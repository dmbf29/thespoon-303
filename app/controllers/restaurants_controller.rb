class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Mos Burger", address: "Meguro", category: "burgers" },
    2 => { name: "Butcher", address: "Meguro", category: "bento" },
    3 => { name: "Madhuban", address: "Meguro", category: "indian" }
  }

  def index
    # params[:food_type] # what the user sent
    if params[:category]
      @restaurants = RESTAURANTS.select do |_key, restaurant|
        restaurant[:category] == params[:category]
      end
    else
      @restaurants = RESTAURANTS
    end
    # @restaurants = Restaurant.all
    #render restaurants/index.html.erb
  end

  def create
    # Create an instance of a restaurant with the params
    # restaurant = Restaurant.new(params)
    # restaurant.save
    # redirect_to :index
    # render :index

  end

  def show
    # @restaurant = Restaurant.find(params[:id])
    @restaurant = RESTAURANTS.find { |id, _r| id == params[:id].to_i }
  end
end






