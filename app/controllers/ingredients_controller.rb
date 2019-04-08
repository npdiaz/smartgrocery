class IngredientsController < ApplicationController
  def bought
    @bought_ingredients = Ingredient.where(bought: true)
  end

  def index
    if params[:list_id]
      @ingredients = List.find(params[:list_id]).includes(:lists).ingredients
    else
      @ingredients = Ingredient.all
    end
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

  # def edit
  #   @list = List.find(params[:id])
  # end

  # def update
  #   @list = List.find(params[:id])
  #   @list.update(params[:list])
  #   if @list.update(list_params)
  #     redirect_to list_path(@list), notice: 'List updated'
  #   else
  #     render :edit
  #   end
  # end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :price, :list_id, :buyer_id)
  end
end
