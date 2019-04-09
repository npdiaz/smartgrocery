class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @ingredient = Ingredient.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'New list added'
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(params[:list])
    if @list.update(list_params)
      redirect_to list_path(@list), notice: 'List updated'
    else
      render :edit
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :list_id, :ingredients)
  end
end
