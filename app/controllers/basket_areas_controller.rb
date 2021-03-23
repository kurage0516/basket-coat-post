class BasketAreasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :item_find, only: [:show, :edit, :update, :destroy]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @basket_area = BasketArea.order('created_at DESC')
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

  def show
    @basket_area = BasketArea.new
    @basket_area = BasketArea.find(params[:id])
    @comment = Comment.new
    @comments = @basket_area.comments
  end

  def edit
  end

  def update
    if @basket_area.update(basket_area_params)
      redirect_to basket_area_path(@basket_area.id), method: :get
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @basket_area.delete
  end

  def search
    @basket_area = BasketArea.search(params[:keyword])
  end

  private

  def basket_area_params
    params.require(:basket_area).permit(:content, :image, :coat_name, :street_address, :url, :price,
                                        :time).merge(user_id: current_user.id)
  end

  def item_find
    @basket_area = BasketArea.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @basket_area.user
  end
end
