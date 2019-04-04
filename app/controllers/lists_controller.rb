class ListsController < ApplicationController
  def index
    @lists = List.where(user_id: current_user.id)
  end

  def show
    @list = List.find(params[:list_id])
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      redirect_to list_path(@list.id), notice: 'List was successfully created.'
    else
      redirect_to list_path(@list.id), notice: 'List was not created.'
    end
  end

  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :list_id, :ingredients)
    end
  # def index
  #   @lists = List.all
  # end

  # def show
  #   @list = List.find(params[:id])
  #   @ingredients = @list.ingredients
  # end

  # def new
  #   @list = List.new
  # end

  # def create
  #   @list = List.new(list_params)
  #   @list.user = current_user
  #   if @list.save
  #     redirect_to list_path(@list), notice: 'New list added'
  #   else
  #     render :new
  #   end
  #   @list.save
  # end

  # def edit
  #   @list = List.find(params[:id])
  #   @list.user = current_user
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

  # def list_params
  #   params.require(:list).permit(:name, :list_id, :ingredients)
  # end
end
