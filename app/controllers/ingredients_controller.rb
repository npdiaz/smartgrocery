class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredients.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    # we need @list in our `simple_form_for`
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    # we need `list_id` to asssociate ingredient with corresponding list
    @ingredient.list = @list
    if @ingredient.save
      redirect_to list_path(@list), notice: 'New ingredient added'
    else
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :price, :list_id, :buyer_id)
  end
end
