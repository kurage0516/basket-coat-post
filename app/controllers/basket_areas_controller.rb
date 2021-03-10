class BasketAreasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
    @basket_area = BasketArea.new
  end
end
