class AttractionsController < ApplicationController
  before_action :set_attraction, except: [:index, :new, :create]

  def new
    @attraction = Attraction.new
  end

  def index
    @attractions = Attraction.all
    @user = set_current_user
  end

  def create
    @attraction = Attraction.create(attraction_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      redirect_to :back
    end
  end

  def show
    @user = set_current_user
  end

  def edit

  end

  def update
    @attraction.update(attraction_params)
    @attraction.save
    redirect_to attraction_path(@attraction)
  end

  private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end
end
