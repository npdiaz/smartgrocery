class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
    @ingredients = @list.ingredients
  end

  def new
    @list = List.new
  end

  def create
    @list =
  end


  def list_params
    params.require(:list).permit(:name, :list_id, :ingredient)
  end
end
