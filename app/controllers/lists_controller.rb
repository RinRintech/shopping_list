class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def create
    List.create(list_params)
    redirect_to '/'
  end

  def show
    @list = List.find(params[:id])
  end

  private
  def list_params
    params.require(:list).permit(:title, :shopping_date, :place, :item, :note)
  end
end
