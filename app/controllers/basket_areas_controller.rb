class BasketAreasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
    @basket_area = BasketArea.new
  end

  def create
    @basket_area = BasketArea.new(basket_area_params)
    if @basket_area.save
      redirect_to root_path
    else
      render :new
    end
  end

  def basket_area_params
    params.require(:basket_area).permit(:content, :image, :coat_name, :street_address, :url, :price,
                                        :time).merge(user_id: current_user.id)
  end
end
