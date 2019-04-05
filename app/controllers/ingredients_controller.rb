class IngredientsController < ApplicationController
  def index
    @ingredient = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to list_path(@list), notice: 'New ingredient added'
    else
      render :new
    end
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :price, :buyer_id)
  end
end
